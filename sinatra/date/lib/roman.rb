class Roman

  def self.convert(num)
number=num.to_i
          if (number < 1 || number > 4000)
        return "Invalid Roman Number Value"
    end
    String s = ""
  a = [1000,500,100,50,10,9,5,4,3,2,1]
  b = ["M","D","C","L","X","IX","V","IV","III","II","I"]
  for i in 0...11
     while number >= a[i] && number > 0 do
       s = s + b[i]
       number -= a[i]
     end
 end
 return s
  end
end 

