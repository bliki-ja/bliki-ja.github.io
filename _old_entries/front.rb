# -*- coding: utf-8 -*-
require 'csv'
csv = {}
CSV.open("title.csv").each do |i|
  csv[i.shift] = i.last
end

#require "time"
Dir.glob("*.md").each do |i|
  key = i.gsub(/\.md/, '')
  title = csv[key] || key
  if title == ""
    title = key
  end

  open(i,'r+'){|f|
    f.puts "---"
    f.puts "title: #{title}"
    f.puts "tags: TAGS"
    f.puts "---"
    f.puts "\n"
    f.puts open(i).read
  }
end
