class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url 

  @@all = []

  def initialize(student_hash)
    self.send("name=", student_hash[:name])
    self.send("location=", student_hash[:location])
    self.send("profile_url=", student_hash[:profile_url])
    @@all << self 
  end

  def self.create_from_collection(students_array)
    students_array.each{|student| self.new(student)}
  end

  def add_student_attributes(attributes_hash)
    self.send("name=", attributes_hash[:name])
    self.send("location=", attributes_hash[:locaiton])
    self.send("profile_url=", attributes_hash[:profile_url])
    self.student.new(student_hash)
  end

  def self.all
    
  end
end

