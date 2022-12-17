n=0
loop do

 print "Nhap vao n pt: "
    n = gets.to_i
break if n>0

end

arr = Array.new
sum = 0
for i in 0..n-1
    loop do

        print "nhap vao pt [#{i}] = "
        arr[i] = gets.to_i
        break if n.is_a?(Integer)
    end   
end
puts "AVG = #{arr.sum/arr.size}"
