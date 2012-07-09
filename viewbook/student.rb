require 'csv'

class Student
 
  def first_name
    return @first_name
  end
  
  def first_name= f_name
    @first_name = f_name
  end
  
  def last_name
    return @last_name
  end
  
  def last_name= l_name
    @last_name = l_name
  end
  
  def hometown
    return @hometown
  end
  
  def hometown= h_town
    @hometown = h_town
  end

  def full_name
    return "#{first_name} #{last_name}"
  end
  
  def Student.all
    students_array = []
    CSV.foreach("students.csv", :headers => true) do |row|
      s = Student.new
      s.first_name= row['First Name']
      s.last_name= row['Last Name']
      s.hometown= row['Hometown']
      students_array << s
    end
    return students_array
  end
  
  
end
