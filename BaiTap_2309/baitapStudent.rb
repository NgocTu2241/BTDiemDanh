class SinhVien
    def initialize msv, ten, sdt, email, diem1, diem2, diem3
       @sv_msv = msv
       @sv_ten = ten
       @sv_sdt = sdt
       @sv_email = email
       @sv_diem1 = diem1
       @sv_diem2 = diem2
       @sv_diem3 = diem3
    end
    def inThongTin
       puts "MSV #@sv_msv"
       puts "Ten SV #@sv_ten"
       puts "SDT #@sv_sdt"
       puts "Email #@sv_email"
    end
    def tinhDiem
        puts 'Diem Trung Binh la %.2f' % [(@sv_diem1.to_f+@sv_diem2.to_f+@sv_diem3.to_f)/3]
    end
 end

 # Create Objects
 sv1 = SinhVien.new("1911505310156", "Nguyen Ngoc Tu", "0888888888", "hehehe@gmail.com", "8", "10", "8")

 # Call Methods
 sv1.inThongTin()
 sv1.tinhDiem
