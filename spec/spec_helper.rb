#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

require 'coveralls'
Coveralls.wear!

$LOAD_PATH.unshift(File.expand_path('../../lib', __FILE__))

require 'rubygems'
require 'bundler/setup'

require 'minitest'
require 'minitest/unit'
require 'minitest/autorun'

require 'typable_map'
require 'typable_map/counter'
