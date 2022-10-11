# Để quản lý các hộ dân cư trong một khu phố, 
# người ta cần các thông tin sau: 
# Số thành viên trong gia đình, Số nhà, 
# thông tin mỗi cá nhân trong gia đình. 
# Với mỗi cá nhân, người ta quản lý các thông tin sau: 
# Họ tên, Tuổi, Nghề nghiệp, số chứng minh nhân dân(duy nhất cho mỗi người).

# Yêu cầu 1: Hãy xây dựng lớp Nguoi để quản lý thông tin của mỗi cá nhân.

# Yêu cầu 2: Xây dựng lớp HoGiaDinh để quản lý thông tin của từng hộ gia đình.

# Yêu cầu 2: Xây dựng lớp KhuPho để quản lý các thông tin của từng hộ gia đình.

# Yêu cầu 3: Nhập n hộ dân. (n nhập từ bàn phím), hiển thị thông tin của các hộ trong khu phố.


class Person 
    @id
    @name
    @age
    @job

    attr_accessor :id,:name,:age,:job

    def initialize(id,name,age,job)
        @id = id
        @name = name 
        @age = age 
        @job = job 
    end

    def to_s
        "Person:" + "ID= #{@id}" + ",Name= #{@name}" + ",Age= #{@age}" + ",Job = #{@job} "
    end
    

end


