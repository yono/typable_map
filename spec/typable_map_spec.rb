#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

require 'spec_helper'

describe TypableMap do
  before do
    max_length = 4
    shuffle = true
    @typablemap = TypableMap::TypableMap.new(max_length, shuffle)
  end

  describe 'when push object' do
    it 'should generate uniq string' do
      inserted_obj = Object.new
      uniq_str = @typablemap.push(inserted_obj)
      uniq_str.wont_equal "aaaa"
    end

    it 'should be less than args max_length' do
      1000.times do 
        inserted_obj = Object.new
        uniq_str = @typablemap.push(inserted_obj)
        uniq_str.length.must_be :<=, 4
      end
    end

    it 'should generate other uniq string' do
      1000.times do 
        inserted_obj = Object.new
        uniq_str = @typablemap.push(inserted_obj)
        other_str = @typablemap.push(inserted_obj)
        other_str.wont_equal uniq_str
      end
    end
  end

  describe 'when pull object' do
    it 'should retern the object' do
      inserted_obj = Object.new
      uniq_str = @typablemap.push(inserted_obj)

      fetched_obj = @typablemap[uniq_str]
      fetched_obj.must_equal inserted_obj
    end
  end
end
