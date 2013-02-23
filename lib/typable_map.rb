
# https://github.com/shunirr/FacebookIrcGateway/blob/master/lib/facebook_irc_gateway/typable_map.rb

require "typable_map/version"

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
      @max_size = opts.fetch(:max_size, @seq.size)
      shuffle = opts.fetch(:shuffle, nil)
      @seq.shuffle! if shuffle
      @seq.freeze
      @n = 0
    end

    def push(obj)
      id = generate(@n)
      self[id] = obj
      @n += 1
      @n %= @max_size
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
