#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

require 'spec_helper'

describe TypableMap do
  before do
    @typable_map = TypableMap::TypableMap.new(max_size: 1000, shuffle: true)
  end

  describe 'when use default args' do
    it 'should initialize' do
      typable_map = TypableMap::TypableMap.new
      uniq_str = typable_map.push(Object.new)
      uniq_str.wont_be_nil
    end

    it 'should generate string "a" first' do
      typable_map = TypableMap::TypableMap.new
      uniq_str = typable_map.push(Object.new)
      uniq_str.must_equal "a"
    end
  end

  describe 'when use max_size args' do
    it 'should initialize' do
      typable_map = TypableMap::TypableMap.new(max_size: 1000)
      uniq_str = typable_map.push(Object.new)
      uniq_str.wont_be_nil
    end

    it 'should generate string "a" first' do
      typable_map = TypableMap::TypableMap.new
      uniq_str = typable_map.push(Object.new)
      uniq_str.must_equal "a"
    end
  end

  describe 'when use shuffle args' do
    it 'should initialize' do
      typable_map = TypableMap::TypableMap.new(shuflle: true)
      uniq_str = typable_map.push(Object.new)
      uniq_str.wont_be_nil
    end
  end

  describe 'when push object' do
    it 'should generate uniq string' do
      inserted_obj = Object.new
      uniq_str = @typable_map.push(inserted_obj)
      uniq_str.wont_equal "aaaa"
    end
  end

  describe 'when pull object' do
    it 'should retern the object' do
      inserted_obj = Object.new
      uniq_str = @typable_map.push(inserted_obj)

      fetched_obj = @typable_map[uniq_str]
      fetched_obj.must_equal inserted_obj
    end
  end
end
