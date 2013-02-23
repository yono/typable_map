#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

$LOAD_PATH.unshift(File.expand_path('../../lib', __FILE__))

require 'rubygems'
require 'bundler/setup'

require 'minitest/unit'
require 'minitest/autorun'

require 'typable_map'
require 'typable_map/counter'
