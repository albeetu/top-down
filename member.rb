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
       @status = "leaving"
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
   
   def print()
      puts "Member info"
      puts "Name:  #{@name}"
      puts "Descr: #{@description}"
      puts "ID:    #{@id}"
      puts "Status:#{@status}"
   end
   
   def initialize(id,name,description,tags,status,import)
      @tags = tags
      @name = name
      @description = description
      @status = status
      @id = id
   end 

end

