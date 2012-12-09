require 'rubygems'
require 'group.rb'
require 'ruby-debug'
#puts group_config
#puts Crack::XML.parse(group_config).inspect

# Testing the Group object
puts "========Testing Group object=========="
topdown = Group.new(nil,nil,"group.xml")
topdown.list_members()
topdown.list_admin()
topdown.is_admin("Albert Tu")
topdown.is_admin("Mihai")
topdown.is_admin("Hello Kitty")

# Testing the Member object
puts
puts

puts "========Testing Member object========="
tags = ["Tag 1", "Tag 2"]
id = 12345
name = "John Henry"
description = "I'm a new member"
import = nil
status = nil

member = Member.new(id,name,description,tags,status,import)
member.print()
 
