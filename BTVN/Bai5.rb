class Nguoi
  attr_accessor :hoTen_156, :tuoi_156, :cmnd_156

  def initialize(hoten_156, tuoi_156, cmnd_156)
    @hoTen_156 = hoten_156
    @tuoi_156 = tuoi_156
    @cmnd_156 = cmnd_156
  end

  def show
    puts "Ho ten: #{@hoTen_156}"
    puts "Tuoi: #{@tuoi_156}"
    puts "CMND: #{@cmnd_156}"
  end
end

class Phong
  attr_accessor :soNgayThue_156, :nguoiThue_156

  def initialize(soNgayThue_156, nguoiThue_156)
    @soNgayThue_156 = soNgayThue_156
    @nguoiThue_156 = nguoiThue_156
  end

  def show
    puts "So ngay thue: #{@soNgayThue_156}"
    puts "-- Thong tin nguoi thue --"
    @nguoiThue_156.show
  end
end

class PhongA < Phong
  attr_accessor :gia_156, :loaiPhong_156

  def initialize(soNgayThue_156, nguoiThue_156)
    super(soNgayThue_156, nguoiThue_156)
    @gia_156 = 500
    @loaiPhong_156 = "Loai A"
  end

  def show
    puts "Loai phong: #{@loaiPhong_156}"
    super
  end

  def tienThue
    tienThue_156 = @soNgayThue_156 * @gia_156
    puts "Tien thue: #{tienThue_156}"
  end
end

class PhongB< Phong
  attr_accessor :gia_156, :loaiPhong_156

  def initialize(soNgayThue_156, nguoiThue_156)
    super(soNgayThue_156, nguoiThue_156)
    @gia_156 = 300
    @loaiPhong_156 = "Loai B"
  end

  def show
    puts "Loai phong: #{@loaiPhong_156}"
    super
  end

  def tienThue
    tienThue_156 = @soNgayThue_156 * @gia_156
    puts "Tien thue: #{tienThue_156}"
  end
end

class PhongC < Phong
  attr_accessor :gia_156, :loaiPhong_156

  def initialize(soNgayThue_156, nguoiThue_156)
    super(soNgayThue_156, nguoiThue_156)
    @gia_156 = 100
    @loaiPhong_156 = "Loai C"
  end

  def show
    puts "Loai phong: #{@loaiPhong_156}"
    super
  end

  def tienThue
    tienThue_156 = @soNgayThue_156 * @gia_156
    puts "Tien thue: #{tienThue_156}"
  end
end

class Khachsan
  attr_accessor :listPhong

  def initialize
    nguoithue1 = Nguoi.new("Ong A", 23, "09902")
    nguoithue2 = Nguoi.new("Ong B", 19, "12345")
    nguoithue3 = Nguoi.new("Ong C", 20, "42226")

    phong1 = PhongA.new(2, nguoithue1)
    phong2 = PhongB.new(3, nguoithue2)
    phong3 = PhongC.new(1, nguoithue3)

    @listPhong = [phong1, phong2, phong3]
  end

  def show
    i = 1
    puts "DANH SACH PHONG"
    listPhong.each do |val|
      print i.to_s + ". "
      val.show
      puts "\n----------------"
      i += 1
    end
  end
end

KS = Khachsan.new()
KS.show
