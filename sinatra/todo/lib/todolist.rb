class Todolist
attr_accessor :filename,:todo,:completed,:pending

#initialize method
def initialize(filename)
@filename=filename
@todo=[]
@pending=[]
@completed=[]
end

#pending method
def pending
return @pending
end

#add method
def add(item)
@pending << item 
return @pending
end

#empty method
def empty
@todo.clear
@pending.clear
@completed.clear
end


#complete method
def complete(linenumber)
@completed << @pending[linenumber-1]
@pending.delete_at(linenumber - 1)
return @completed
end

#completed method
def completed
return @completed
end

#list method
def list
@todo = @pending + @completed
return @todo
end

#delete method
def delete(linenumber)
@completed.delete_at(linenumber - 1)
return @completed
end

#modify method
def modify(linenumber,item)
@pending[linenumber-1]=item
return @pending
end


#show pending method
def show_pending(linenumber)
return @pending[linenumber-1]
end

#show completed method
def show_completed(linenumber)
return @completed[linenumber-1]
end

#save
def save
f = File.open(@filename, "w")
str =""
str = @todo
f.puts(str)
f.close
return str
end

#save to file
def save_to_file(filename)
f = File.open(filename,"w")
str = ""
str = @todo
f.puts(str)
f.close
end

#to load a file
def load1
f = File.read(@filename)
f.each_line do |line|
if line.match('#undone')
@pending << line
else
@completed << line
end
end
return @pending
end

#changing the status
def complete_it(linenumber)
@completed << @pending[linenumber - 1]
@completed.each do |s|
s.gsub!(/#undone/,"#done")
puts""
end
@pending.delete_at(linenumber-1)
end

#load from file
def load_from_file(filename)
f= File.open(filename,"r+")   
f.each_line do |line|
if line.match('#undone')
@pending << line
else
@completed << line
end
end
return @pending
end

end
