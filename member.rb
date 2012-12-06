require 'rubygems'

class Member

   def set_description(description)
   end
 
   def set_name(name)
   end

   def in_this_group(group)
   end
   
   def list_groups()
   end

   def leave_group(group)
   end

   def import_member(raw_member)
   ## tag - Array
   ## description - String
   ## id - number
   ## name - STring
   ## status - string
      @tags = raw_member["tag"]
      @name = raw_member["name"]
      @description = raw_member["description"]
      @id = raw_member["id"]
      @status = raw_member["status"]
   end

   def initialize(id,mem_name,mem_description,tags,status,import)
      @tags = Array.new()
      @name = mem_name
      @description = mem_description
      @status = status
      @id = id
      import_member(import)
   end 

end

