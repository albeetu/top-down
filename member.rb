require 'rubygems' 

Class Member

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

   def initialize(mem_name,mem_description,import,mem_id,tags)
      @name = mem_name
      @description = mem_description
      @import = import_member(import)
      @groups = Array.new
      @tags = Array.new
   end 

end

