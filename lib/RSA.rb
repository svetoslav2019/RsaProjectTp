require 'openssl'
require 'prime'

class RSA
   def initialize (n, e, d)
		@n = n
		@e = e
		@d = d
     #initializes this instance of RSA with a n,e and d variables of type int. 'n','e' are the public key and 'd' is the private one. This n,e,d should be used when encrypting and decrypting the message
   end
   
   def n
      return n
   end
   
   def e
	  return e
   end
   
   def d
      return d
   end
   
	def gcd (e, another)
		if e>another
			gcd = e
		else gcd = another
		
		end
		
		while gcd != 1 do
			if(e%gcd == 0)
				if(another%gcd==0)
					return gcd		
									
				
				else gcd = gcd - 1
				end
			
			else gcd = gcd-1
			end		
	end




   def new_key
      
		p = Random.new_seed
		q = Random.new_seed

		while Prime.prime?(p)!= true do
			p.rand(10..99)
		end
		while Prime.prime?(q)!= true do
			q.rand(10..99)
		end

		n = p*q
	
		another = (p-1)*(q-1)
		
		e = Random.new_seed
	
		while(e<1 || e>another)
			if(gcd!=1)
				e=Random.new_seed
			end
		end
		
		common = Array.new(3)
			common.push( n, e, d)

			@n = n
			@e = e
			@d = d 
		end
		


   end
   






   def encrypt message
		message.each_byte do |ascii_codes|
		string = string+ascii_codes.to_s
		n = string.to_i
		end

	m = e%n
	c = n^m
	return c		

   end
   
   def decrypt message
      	message.each_byte do |ascii_codes|
		string = string+ascii_codes.to_s
		c = string.to_i
		end
	l = e%n
	n = c^l
	n=string.to_s
	return n

   end

end





