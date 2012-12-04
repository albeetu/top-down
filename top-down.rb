require 'rubygems'
require 'group.rb'
require 'crack'

group_config = File.read("group.xml")
#puts group_config
#puts Crack::XML.parse(group_config).inspect


topdown = Group.new(nil,nil,group_config)
topdown.list_members()

