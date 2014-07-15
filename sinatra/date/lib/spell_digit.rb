class Spell_digit

def self.convert(num)
n=num.to_i
if n>0 and n<10
a=ones(n)
elsif n>9 and n<100
a=tens(n)
elsif n>99 and n<1000
a=hundreds(n)
elsif n>999 and n<10000
a=thousands(n)
elsif n>9999 and n<100000
a=tthousands(n)
elsif n>99999 and n<1000000
a=lakhs(n)
elsif n>999999 and n<10000000
a=tlakhs(n)
else n==10000000
a="one crore"
end
return a
end


def self.ones(n)
s1 = comp(n) 
return s1
end

def self.tens(n)
if n%10==0 
s1=comp(n)
return s1
elsif n>10 and n<20
s1=comp(n)
return s1
else
m=n%10
s1=comp(m)
n=n-m
s2=comp(n)
return s2+s1
end
end

def self.hundreds(n)
if n%100==0
a=n%100
s=tens(a)
n=n-a
n=n/100
s4=" hundred"
s5=comp(n)
return s5+s4+s
else
a=n%100
s=tens(a)
n=n-a
if n==0
return s
else
n=n/100
s3=" and "
s4=" hundred"
s5=comp(n)
return s5+s4+s3+s
end
end
end

def self.thousands(n)
if n%1000==0
n=n/1000
s1=comp(n)
s2="thousand"
return s1+s2
else
a=n%1000
s=hundreds(a)
n=n-a
n=n/1000
s1=comp(n)
s2=" thousand "
return s1+s2+s
end
end

def self.tthousands(n)
if n%10000==0
n=n/10000
s1=comp(n)
s2="thousand"
return s1+s2
else
a=n%1000
s=hundreds(a)
n=n-a
n=n/1000
s1=tens(n)
s2="thousand"
return s1+s2+s
end
end

def self.lakhs(n)
if n%100000==0
n=n/100000
s1=comp(n)
s2="lakh"
return s1+s2
else
a=n%100000
s=tthousands(a)
n=n-a
n=n/100000
s1=comp(n)
s2=" lakh "
return s1+s2+s
end
end

def self.tlakhs(n)
if n%1000000==0
n=n/1000000
s1=comp(n)
s2="lakhs"
return s1+s2
else
a=n%100000
s=tthousand(a)
n=n-a
n=n/100000
s1=comp(n)
s2=" lakhs "
return s1+s2+s
end
end


def self.comp(number)
if number ==0
""
elsif number == 1
"one"
elsif number ==2
"two"
elsif number ==3
"three"
elsif number ==4
"four"
elsif number ==5
"five"
elsif number ==6
"six"
elsif number ==7
"seven"
elsif number ==8
"eight"
elsif number ==9
"nine"
elsif number ==10
"ten"
elsif number ==11
"eleven"
elsif number ==12
"twelve"
elsif number ==13
"thirteen"
elsif number ==14
"fourteen"
elsif number ==15
"fifteen"
elsif number ==16
"sixteen"
elsif number ==17
"seventeen"
elsif number ==18
"eighteen"
elsif number ==19
"ninteen"
elsif number ==20
"twenty"
elsif number ==30
"thirty"
elsif number ==40
"fourty"
elsif number ==50
"fifty"
elsif number ==60
"sixty"
elsif number ==70
"seventy"
elsif number ==80
"eighty"
else number ==90
"ninty"
end
end
end
