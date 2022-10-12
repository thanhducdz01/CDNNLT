require_relative 'XeMay.rb'
require_relative 'XeTai.rb'
require_relative 'Oto.rb'
require_relative 'Xe.rb'

class QLPTGT 
    @dsXe_109 = Array.new

    attr_accessor :dsXe

    def initialize
        @dsXe_109 = Array.new
    end


    def themDS(item)
        @dsXe_109 << item 
    end

    def inDS()
        for @item in @dsXe_109
            if @item.is_a?(Oto)
                p @item.to_s
            end
        end

        for @item in @dsXe_109
            if @item.is_a?(XeMay)
                p @item.to_s
            end
        end

        for @item in @dsXe_109
            if @item.is_a?(XeTai)
                p @item.to_s
            end
        end
    end

    def check_DuplicateID(id)
        for @item in @dsXe_109
            if @item.id.to_s == id 
                return true
            end
        end
        return false
    end

    def deleteTL(id)
        for @item in @dsXe_109
            if @item.id.to_s == id 
                @dsXe_109.delete_if { |i| i == @item }
            end
        end
    end

    def search_HSX(hsx)
        for @item in @dsXe_109
            if @item.hsx.to_s == hsx
                p @item.to_s
            end
        end
    end

    def search_Mau(mau)
        for @item in @dsXe_109
            if @item.mau.to_s == mau
                p @item.to_s
            end
        end
    end

    def search_BienSo(bien)
        for @item in @dsXe_109
            if @item.bienso.to_s == bien
                p @item.to_s
            end
        end
    end
end