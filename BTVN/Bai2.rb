class TaiLieu
  attr_accessor :maTaiLieu_156, :tenNXB_156, :soBanPhatHanh_156
  def initialize maTaiLieu_156, tenNXB_156, soBanPhatHanh_156
      @maTaiLieu_156 = maTaiLieu_156
      @tenNXB_156 = tenNXB_156
      @soBanPhatHanh_156 = soBanPhatHanh_156
  end
  def display
      puts "Mã tài liệu #@maTaiLieu_156"
      puts "Tên NXB #@tenNXB_156"
      puts "Số bản phát hành #@soBanPhatHanh_156"
  end
end
class Sach < TaiLieu
  attr_accessor :tenTacGia_156, :soTrang_156
  def initialize maTaiLieu_156, tenNXB_156, soBanPhatHanh_156, tenTacGia_156, soTrang_156
      super maTaiLieu_156, tenNXB_156, soBanPhatHanh_156
      @tenTacGia_156 = tenTacGia_156
      @soTrang_156 = soTrang_156
  end
  def display
      super
      puts "Tên tác giả #@tenTacGia_156"
      puts "Số trang #@soTrang_156"
  end
end
class TapChi < TaiLieu
  attr_accessor :soPhatHanh_156, :thangPhatHanh_156
  def initialize maTaiLieu_156, tenNXB_156, soBanPhatHanh_156, soPhatHanh_156, thangPhatHanh_156
      super maTaiLieu_156, tenNXB_156, soBanPhatHanh_156
      @soPhatHanh_156 = soPhatHanh_156
      @thangPhatHanh_156 = thangPhatHanh_156
  end
  def display
      super
      puts "Số phát hành #@soPhatHanh_156"
      puts "Tháng phát hành #@thangPhatHanh_156"
  end
end
class Bao < TaiLieu
  attr_accessor :ngayPhatHanh_156
  def initialize maTaiLieu_156, tenNXB_156, soBanPhatHanh_156, ngayPhatHanh_156
      super maTaiLieu_156, tenNXB_156, soBanPhatHanh_156
      @ngayPhatHanh_156 = ngayPhatHanh_156
  end
  def display
      super
      puts "Ngày phát hành #@ngayPhatHanh_156"
  end
end
class QuanLySach
  @@qlsach=Array.new
  def addBook(qlsach)
      @@qlsach.push(qlsach)
  end
  def deleteById (id)
      deleteList = @@qlsach.delete_if {|x| x.maTaiLieu_156.chomp.eql?id}
      puts "Xoá thành công"
      puts "<---------******---------->"
  end
  def showListInforBook()
      @@qlsach.each {|qlsach| qlsach.display}
      puts ("<---------******---------->")
  end
  def timKiemNhaXuatBan(key)
      searchList = @@qlsach .select {|o| o.tenNXB_156 == key}
      searchList.each{|sl| sl.display}
      puts "<---------******---------->"
  end
end
class Main
  dem = 0
  quanLy = QuanLySach.new()
  until dem == 1 do
      puts "1. Them"
      puts "2. Xoa"
      puts "3. Hien Thi"
      puts "4. Tim Kiem"
      puts "5. Thoat"
      dem=gets
      if dem.to_i == 1
        sach = Sach.new(1, "NXB Giáo dục", 100, "Kim Đồng", 200)
        tapChi = TapChi.new(2, "NXB Phương Đông", 200, "AH123", "4/2022")
        bao = Bao.new(3, "NXB An Nam", 150, "3/2021")
        quanLy.addBook(sach)
        quanLy.addBook(tapChi)
        quanLy.addBook(bao)
        puts "Thêm thành công"
        puts "<---------******---------->"
      end
            if dem.to_i == 2
            puts ("ID can xoa la")
            iDCanXoa_156 = gets.chomp.to_s
            quanLy.deleteById(iDCanXoa_156)
            end
                    if dem.to_i == 3
                      puts "====DS Sách===="
                      quanLy.showListInforBook()
                    end
                          if dem.to_i == 4
                            puts "NXB cần tìm là"
                            NXBCT_156 = gets.chomp.to_s
                            quanLy.timKiemNhaXuatBan(NXBCT_156)
                          end
                                    if dem.to_i == 5
                                        exit
                                    end
  end
end
