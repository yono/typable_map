
# https://github.com/shunirr/FacebookIrcGateway/blob/master/lib/facebook_irc_gateway/typable_map.rb

require "typable_map/version"
require "typable_map/counter"

module TypableMap
  class TypableMap < Hash
    Roman = %w[
a i u e o ka ki ku ke ko sa si su se so
ta ti tu te to na ni nu ne no ha hi fu he ho
ma mi mu me mo ya yu yo ra ri ru re ro
wa wo
ga gi gu ge go za ji zu ze zo da de do
ba bi bu be bo pa pi pu pe po
    ].freeze

    def initialize(opts = {})
      @seq = Roman.dup
      @seq.shuffle! if opts.fetch(:shuffle, nil)
      @seq.freeze
      @counter = Counter.new(opts.fetch(:max_size, @seq.size))
    end

    def push(obj)
      id = generate(@counter.next)
      self[id] = obj
      id
    end
    alias :<< :push

    private 

    def generate(n)
      ret = []
      begin
        n, r = n.divmod(@seq.size)
        ret << @seq[r]
      end while n > 0
      ret.reverse.join
    end

    :[]=
    
  end
end
