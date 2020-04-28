#!/usr/bin/ruby

require 'irb/ext/save-history'
require 'irb/completion'
require 'rubygems'

IRB.conf[:PROMPT_MODE] = :SIMPLE
IRB.conf[:AUTO_INDENT] = true

IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb_history"

def r
  reload!
end
