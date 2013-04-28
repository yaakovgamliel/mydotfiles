if IRB.version.include?('DietRB')
  require 'rubygems'
  framework 'cocoa'
  require 'irb/ext/colorize'
  IRB.formatter.color_scheme = :light_background
  IRB.formatter.prompt = :simple
  puts 'this is MaRuby'
else
  require 'irb/completion'
  require 'pp'
  require 'irb/ext/save-history'
  require 'wirble'

  Wirble.init
  Wirble.colorize

  IRB.conf[:SAVE_HISTORY] = 1000
  IRB.conf[:AUTO_INDENT] = true
  IRB.conf[:USE_READLINE] = true
  IRB.conf[:PROMPT_MODE]  = :SIMPLE
end

