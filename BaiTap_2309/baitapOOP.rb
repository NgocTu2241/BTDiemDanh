class Man
    attr_accessor :name, :gender, :height, :weight, :phone, :email
    def initialize name, gender, height, weight, phone, email
        @man_name = name
        @man_gender = gender
        @man_height = height
        @man_weight = weight
        @man_phone = phone
        @man_email = email
    end
    def inThongTin
        puts "Tên #@man_name"
        puts "Giới tính #@man_gender"
        puts "Chiều cao #@man_height"
        puts "Cân nặng #@man_weight"
        puts "Số điện thoại #@man_phone"
        puts "Email #@man_email"
     end
  end

  class Student < Man
    attr_accessor :school, :id, :class1, :grade
    def initialize name, gender, height, weight, phone, email, school, id, class1, grade
        super name, gender, height, weight, phone, email
        @std_school = school
        @std_id = id
        @std_class = class1
        @std_grade = grade
    end
    def inThongTin
        super
        puts "Trường #@std_school"
        puts "ID #@std_id"
        puts "Lớp #@std_class"
        puts "Điểm #@std_grade"
     end
  end

  man = Man.new("Nguyen Ngoc tu", "Male", "167", "60", "0123487999", "hehehe@gmail.com")
  std = Student.new("Nguyen Ngoc Tu", "Male", "167", "60", "0123487999", "hehehe@gmail.com", "DHSPKT", "1911505310156", "19T1", "12")
  std1 = Student.new("Luong Vinh Long", "Male", "168", "60", "0992736289", "longnnnnn@gmail.com", "DHSPKT", "1911505310135", "19T1", "12")

  stds = [std, std1]
  stds = stds.sort_by { |a| [a.grade] }
  stds = stds.reverse
  puts "#{stds}"

  puts "#{man.inThongTin}"
  puts "#{std.inThongTin}"
  puts "#{std1.inThongTin}"

