class ThiSinh
  attr_accessor :soBaoDanh_156, :hoTen_156, :diaChi_156, :mucUuTien_156
  def initialize soBaoDanh_156, hoTen_156, diaChi_156, mucUuTien_156
      @soBaoDanh_156 = soBaoDanh_156
      @hoTen_156 = hoTen_156
      @diaChi_156 = diaChi_156
      @mucUuTien_156 = mucUuTien_156
  end
  def show
      puts ("Số báo danh: #{@soBaoDanh_156}")
      puts ("Tên: #{@hoTen_156}")
      puts ("Địa chỉ: #{@diaChi_156}")
      puts ("Mức độ ưu tiên: #{@mucUuTien_156}")
  end
end
class ThiSinhKA < ThiSinh
  attr_accessor :toan_156, :ly_156, :hoa_156
  def initialize soBaoDanh_156, hoTen_156, diaChi_156, mucUuTien_156, toan_156, ly_156, hoa_156
      super soBaoDanh_156, hoTen_156, diaChi_156, mucUuTien_156
      @toan_156 = toan_156
      @ly_156 = ly_156
      @hoa_156 = hoa_156
  end
  def show
      super
      puts ("Điểm toán: #{@toan_156}")
      puts ("Điểm lý: #{@ly_156}")
      puts ("Điểm hóa: #{@hoa_156}")
  end
end
class ThiSinhKB < ThiSinh
  attr_accessor :toan_156, :hoa_156, :sinh_156
  def initialize soBaoDanh_156, hoTen_156, diaChi_156, mucUuTien_156, toan_156, hoa_156, sinh_156
      super soBaoDanh_156, hoTen_156, diaChi_156, mucUuTien_156
      @toan_156 = toan_156
      @hoa_156 = hoa_156
      @sinh_156 = sinh_156
  end
  def show
      super
      puts ("Điểm toán: #{@toan_156}")
      puts ("Điểm hóa: #{@hoa_156}")
      puts ("Điểm sinh: #{@sinh_156}")
  end
end
class ThiSinhKC < ThiSinh
  attr_accessor :van_156, :su_156, :dia_156
  def initialize  soBaoDanh_156, hoTen_156, diaChi_156, mucUuTien_156, van_156, su_156, dia_156
      super soBaoDanh_156, hoTen_156, diaChi_156, mucUuTien_156
      @van_156 = van_156
      @su_156 = su_156
      @dia_156 = dia_156
  end
  def show
      super
      puts ("Điểm văn: #{@van_156}")
      puts ("Điểm sử: #{@su_156}")
      puts ("Điểm địa: #{@dia_156}")
  end
end
class TuyenSinh
  @@thiSinh = Array.new
  def addCandidate(thiSinh)
      @@thiSinh.push(thiSinh)
  end
  def timkiemtheoSobaodanh(id)
      searchList = @@thiSinh .select { |o| o.soBaoDanh_156 == id}
      searchList.each{ |sl| sl.show}
  end
  def showts()
      @@thiSinh.each{ |thiSinh| thiSinh.show}
  end
end
qlTuyenSinh = TuyenSinh.new()
tsA = ThiSinhKA.new(1,"Nguyen Van A", "Da Nang", "1", 9,9,9)
tsB = ThiSinhKB.new(2,"Tran van C", "Quang Nam", "1", 8,8,8 )
tsC = ThiSinhKC.new(3, "Le Thi B", "Hue", "2", 7,7,7)

qlTuyenSinh.addCandidate(tsA)
qlTuyenSinh.addCandidate(tsB)
qlTuyenSinh.addCandidate(tsC)
qlTuyenSinh.showts()
puts "<---------*******-------->"
puts "Kết quả tìm kiếm"
qlTuyenSinh.timkiemtheoSobaodanh(2)
