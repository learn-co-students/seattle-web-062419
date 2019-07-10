class Student
    attr_reader :id
    attr_accessor :name

    def initialize(id, name)
        @id = id
        @name = name
    end

    def self.all
        sql = "SELECT * FROM students;"
        results = DB[:conn].execute(sql)

        results.map do |row|
            Student.new(row["id"], row["name"])
        end
    end

    def save
        sql = <<~SQL
            UPDATE students
            SET name = ?
            WHERE id = ?
        SQL
        DB[:conn].execute(sql, @name, @id)
    end

    def self.find_by_id(id)
        sql = <<~SQL
            SELECT * FROM students
            WHERE id = ?
        SQL
        results = DB[:conn].execute(sql, id)
        result = results.first
        Student.new(result["id"], result["name"])
    end

    def greet
        "Hello! My name is #{@name}"
    end
end