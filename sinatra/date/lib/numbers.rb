class Numbers

def convert(num)
n=num.to_i
if n < 10
s=comp(n)
return "#{n}"+s
else
m=n%10
s=comp(m)
return "#{n}"+s
end    
end

def comp(number)
if number ==1
'st'
elsif number ==2
'nd'
elsif number ==3
'rd'
else
'th'
end
end
end 
