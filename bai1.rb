# puts "Nhập họ tên của bạn:"
# name1 = gets
# puts "Xin chào #{name1}"

# puts "Nhập họ tên của bạn:"
# name2 = gets
# puts "Xin chào #{name2}"

# puts "Nhập họ tên của bạn:"
# name3 = gets
# puts "Xin chào #{name3}"

# print("Xin chào" + name1 + name2 + name3) #{name3}"

# x = 100
# puts x # hiển thị: 100
# x = "một trăm"
# puts x # hiển thị: một trăm

print "Nhập họ tên của bạn: "
name1 = gets
print "Nhập mã sinh viên của bạn: "
name2 = gets
print "Xin chào " + name1 + name2
print "Nhập 1 số từ bàn phím: "
number = gets
print "Số vừa nhập: " + number
puts "Nhập 2 số để so sánh"
print "Nhập số 1: "
number1 = gets
print "Nhập số 2: "
number2 = gets
if number1 > number2
    print "Số lớn hơn là: " + number1
elsif number1 < number2
    print "Số lớn hơn là: " + number2
else
    print "2 số bằng nhau: " + number1
end
