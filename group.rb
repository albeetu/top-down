require 'rubygems'
require 'crack'
require 'xmlsimple'
require 'pp'
require 'member.rb'
class Group
   
   @name = nil
   @description = nil
   @id = nil
   @admins = Array.new
   @members = Array.new

   def add_member(member,authorized_by)
   end
 
   def delete_member(member,authorized_by)
     # if admin, then delete
   end

   def import_group(config)
       #config is a well formed XML string
       group = XmlSimple.xml_in(config)
       @name = group['name']
       @description = group['description']
       @id = group['id']
       @admins = group['admin']
       @members = process_members(group['Members'])
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
       puts "Members are ==========="
       pp @members
   end

   def process_members(raw_members_list)
      members = Array.new
      raw_members_list.each{ |mem|
               mem.each {|key,value|
                         value.each{|rec|
                               members << Member.new(nil,nil,nil,nil,nil,rec)} 
                        }
      }
      return members
   end


   def is_member(member)
      #if member is in group then return true
   end

   def is_admin(member)
     # if member == one of the admins, then return true
     return @admins.include?(member)
   end

   def make_admin(member,authorized_by)
   end

   def remove_admin(member,authorized_by)
   end

   def count_members()
   end

   def list_admin()
     puts "The admin(s) are ==============="
     p @admins
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

