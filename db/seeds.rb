# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create!(fullname: "Lý Thanh Hùng",
    email: "admin_ht@gmail.com",
    role: "QuanLyHeThong",
    password: "123456",
    phone: "0923123123",
    address: "Kí túc xá Khu A - Đại Học Quốc Gia TP.HCM, Khu phố 6, Phường Linh Trung, Thành Phố Thủ Đức"
)

User.create!(fullname: "Tiêu Thái Ngọc",
    email: "admin_cm@gmail.com",
    role: "QuanLyChuyenMon",
    password: "123456",
    phone: "0923123123",
    address: "Kí túc xá Khu A - Đại Học Quốc Gia TP.HCM, Khu phố 6, Phường Linh Trung, Thành Phố Thủ Đức"
)

User.create!(fullname: "Phan Hải Hà",
    email: "giasu1@gmail.com",
    role: "GiaSu",
    password: "123456",
    phone: "0923123123",
    address: "Kí túc xá Khu A - Đại Học Quốc Gia TP.HCM, Khu phố 6, Phường Linh Trung, Thành Phố Thủ Đức"
)

User.create!(fullname: "Phạm Lê Bảo",
    email: "giasu2@gmail.com",
    role: "GiaSu",
    password: "123456",
    phone: "0923123123",
    address: "Kí túc xá Khu A - Đại Học Quốc Gia TP.HCM, Khu phố 6, Phường Linh Trung, Thành Phố Thủ Đức"
)

User.create!(fullname: "Lê Minh Châu",
    email: "n_giasu@gmail.com",
    role: "NguoiCanTimGiaSu",
    password: "123456",
    phone: "0923123123",
    address: "Kí túc xá Khu A - Đại Học Quốc Gia TP.HCM, Khu phố 6, Phường Linh Trung, Thành Phố Thủ Đức"
)
