require 'rubygems'
require 'crack'
require 'pp'

class Group
   
   def add_member(member)
   end
 
   def delete_member(member)
   end

   def import_group(config)
       #config is a well formed XML string
       group = Crack::XML.parse(config)

       @name = group['Group']['name']
       @description = group['Group']['description']
       return group
       #error handling?
   end

   def set_name(new_name)
     @name = new_name
   end
   
   def set_description(new_description)
     @description = new_description
   end

   def list_members()
       puts "Hello #{@name}, You are all #{@description}"
       @list['Group']['Members']['Member'].each {|k| puts "#{k.inspect}" }
       puts "goodbye!!!!!!!"
   end

   def is_member(member)
   end

   def is_admin(member)
   end

   def test()
   end

   def print()
   end

   def initialize(gr_name=nil,gr_description=nil,import=nil)
      @name = gr_name
      @description = gr_description
      @list = import_group(import)
   end

end

