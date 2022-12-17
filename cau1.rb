puts 'Nhập n:'
n_115 = gets.to_i
sum_115 = 0

(0..n_115).each do |i_115|
  if i_115 % 2 == 0
    sum_115 = sum_115 + i_115
  end
end

puts ("Tổng các số chẵn là: #{sum_115}")
