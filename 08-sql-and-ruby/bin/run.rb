#!/usr/bin/env ruby
require_relative '../config/environment'

sql = <<-SQL
SELECT name, title, grade_percent
FROM enrollments
JOIN students
ON enrollments.student_id = students.id
JOIN courses
ON enrollments.course_id = courses.id
SQL

students = Student.all
courses = Course.all
enrollments = Enrollment.all

Student.find_by_id 1

puts "Enter a name of a student to search for:"
name = gets.chomp
# sql = "SELECT * FROM students WHERE name = '#{name}'"
sql = "SELECT * FROM students WHERE name = ?"
puts "querying: " + sql
puts DB[:conn].execute(sql, name)