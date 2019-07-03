class Course
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def self.all
        sql = "SELECT * FROM courses;"
        results = DB[:conn].execute(sql)

        results.map do |row|
            Course.new(row["title"])
        end
    end

    # return an array of Student objects for students in this course
    def students
        sql = <<-SQL
            SELECT students.id, name
            FROM students
            JOIN enrollments ON enrollments.student_id = students.id
            JOIN courses ON enrollments.course_id = courses.id
            WHERE courses.title = ?
        SQL
        results = DB[:conn].execute(sql, @title)
        results.map do |row|
            Student.new(row["id"], row["name"])
        end
    end
end