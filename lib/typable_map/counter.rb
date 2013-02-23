#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

module TypableMap
  class Counter
    def initialize(max_count = 100)
      @n = 0
      @max_count = max_count
    end

    def next
      retval = @n
      @n += 1
      @n = @n % @max_count
      retval
    end
  end
end
