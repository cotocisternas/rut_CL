module RutCL
  class << self
    ## Base
    def raw(rut)
      rut.gsub(/[^0-9 k K]/, "")
    end

    def strip_digit(rut)
      rut = raw(rut).reverse.from(1).split("").map(&:to_i)
      rut.insert(3, '.').insert(7, '.').reverse.join.to_s
    end

    def strip_dots(rut)
      rut.gsub(/[^0-9 k K -]/, "")
    end

    def length(rut)
      return true if raw(rut).length <= 9 && raw(rut).length >= 7
      return false
    end

    def get_multi
      [2,3,4,5,6,7,2,3,4,5,6,7]
    end

    def get_validdv
      Array(0...9) + ['k','K']
    end

    ## Validate
    def get_dv(rut)
      rut = raw(rut).reverse.split("").map(&:to_i)
      (11-(rut.zip(get_multi).map { |x,y| x*y }.reduce(:+)%11)).to_s.gsub(/10/,'k').gsub(/11/,'0')
    end

    def is_valid?(rut)
      length(rut) && get_dv(strip_digit(rut)).downcase == raw(rut).last.downcase
    end

    ## Generate
    def generate
      num = (10000000+rand(89999999)).to_s
      num = num.to_s+get_dv(num).to_s
      format(num)
    end

    ## Format
    def format(rut)
      rut = raw(rut).reverse.from(1).split("").map(&:to_i)
      rut = rut.insert(3, '.').insert(7, '.').reverse.join.to_s
      [rut, RutCL.get_dv(rut).to_s].join('-')
    end
  end
end