puts "Nhap vao a va b:"
a_115 = gets.chomp.to_i
b_115 = gets.chomp.to_i

def Calculation_115(a_115, b_115)
  ((3 * Math.sqrt(a_115))/(a_115 + Math.sqrt(a_115 * b_115) + b_115) - ( (3 * a_115) / ((a_115 * Math.sqrt(a_115)) - (b_115*Math.sqrt(b_115)))) + (1/ (Math.sqrt(a_115) - Math.sqrt(b_115))))
end

puts "Ket qua: " + Calculation_115(a_115, b_115).to_s
