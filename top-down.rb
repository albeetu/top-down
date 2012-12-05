require 'rubygems'
require 'group.rb'

#puts group_config
#puts Crack::XML.parse(group_config).inspect


topdown = Group.new(nil,nil,"group.xml")
topdown.list_members()
topdown.list_admin()
topdown.is_admin("Albert Tu")
topdown.is_admin("Mihai")
topdown.is_admin("Hello Kitty")

