class Nguoi
  attr_accessor :name_156, :age_156, :work_156, :cmnd_156
  def initialize name_156, age_156, work_156, cmnd_156
      @name_156 = name_156
      @age_156 = age_156
      @work_156 = work_156
      @cmnd_156 = cmnd_156
  end
  def initialize
  end
  def enter_infomation
      print "Nhập tên : "
      @name_156 = gets.chomp
      print "Nhập tuổi : "
      @age_156 = gets.to_i
      print "Nhập nghê nghiêp: "
      @work_156 = gets.chomp
      print "Nhập số chưng minh nhân dân : "
      @cmnd_156 = gets.to_i
  end
  def info
      puts "Tên : #{@name_156}"
      puts "Tuối : #{@age_156}"
      puts "Nghê nghiệp : #{@work_156}"
      puts "Chứng minh nhân dân #{@cmnd_156}"
  end
end

class HoGiaDinh < Nguoi
  attr_accessor :home_156, :member_156, :members_156
  def initialize name_156, age_156, work_156, cmnd_156, home_156, member_156, members_156
      super name_156, age_156, work_156, cmnd_156
      @home_156 = home_156
      @member_156 = member_156
      @members_156 = members_156
  end
  def initialize
  end
  def enter_infomation
      @members_156 = []
      print "Nhập số nhà: "
      @home_156 = gets.chomp
      print "Nhập số thành viên : "
      @member_156 = gets.to_i
      for i in (0..@member_156 - 1) do
          puts "====Nhập thành viên thứ #{i+1}===="
          member1_156 = Nguoi.new
          member1_156.enter_infomation
          @members_156 << member1_156
      end
  end

  def info
      puts "Số nhà : #{@home_156}"
      puts "Số thành viên : #{@member_156}"
      i =1
      @members_156.each do |member_156|
          puts "===thông tin thành viên thứ #{i}==="
          member_156.info
          i = i+1
      end
  end
end
class KhuPho
  def initialize
  end
  $hogiadinhs_156 = []
  def addHoGiaDinh
      print "Nhập số hộ gia đình : "
      @soluong_156 = gets.to_i
      for i in (0..@soluong_156 - 1) do
          puts "=====Nhập hộ gia đình thứ #{i+1}======"
          hogiadinh_156 = HoGiaDinh.new
          hogiadinh_156.enter_infomation
          $hogiadinhs_156 << hogiadinh_156
      end
  end

  def infomatinon
      i = 1
      puts "============Thong tin Khu phố ================"
      $hogiadinhs_156.each do |hogiadinh_156|
          puts "=====Thông tin hộ gia đình thứ #{i}======"
          hogiadinh_156.info
          i = i+1
      end
  end

end

khupho_156 = KhuPho.new
khupho_156.addHoGiaDinh
khupho_156.infomatinon
