require './student.rb'

students_array = Student.all

def to_html(student)
  "<li class='frame'>
	  <img class='thumbnail' width='200' height='200' src='images/#{student.full_name}.jpg'>
	  <p class='name'>#{student.full_name}</p>
	  <p class='hometown'>#{student.hometown}</p>
	</li>"
end



def index (array_of_students) #creates index.html file with student info


 f = File.new('index.html', 'w')
 f.puts "<html>"
 f.puts "       <head>"
 f.puts "		        <title>Hello CA</title>"
 f.puts "		        <link rel='stylesheet' href='reset.css' type='text/css'>"
 f.puts "	        	<link rel='stylesheet' href='styles.css' type='text/css'>"
 f.puts "	        	<link href='http://fonts.googleapis.com/css?family=Arvo' rel='stylesheet' type='text/css'>"
 f.puts "       </head>"
 f.puts "       <body>"
    array_of_students.each do |student|
        f.puts to_html(student)
    end
 f.puts "       </body>"
 f.puts "</html>"
 f.close
end

index(students_array)
 

  