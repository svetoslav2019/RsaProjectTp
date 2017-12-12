require_relative '../lib/RSA.rb'


  Rspec.describe RSA do


		it "Returning N" do
		send = RSA.new(15, 48,60)
		expect(rsa.n).to eql(15)
		end


		it "Returning E" do
		send = RSA.new(15, 48,60)
		expect(rsa.e).to eql(48)
		end

		
		it "Returning D" do
		send = RSA.new(15, 48,60)
		expect(rsa.n).to eql(60)
		end



			it "Encrypt A " do
				send =RSA.new(221,43, 67)
				expect(send.encrypt[106]).to eql ('A')
			end

			it "Decrypt A " do
				send =RSA.new(221,43, 67)
				expect(send.encrypt['A']).to eql (106)
			end

			it "Encrypt B " do
				send =RSA.new(1403,19, 139)
				expect(send.encrypt[81]).to eql ('B')
			end			

			it "Decrypt B " do
				send =RSA.new(1403,19, 139)
				expect(send.encrypt['B']).to eql (81)
			end
			



end
