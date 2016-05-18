require 'spec_helper'

describe '#caesar_cipher' do
	it "Shifts a by 1 to b" do
		expect(caesar_cipher("a", 1)).to eql("b")
	end

	it "Shifts capital letters" do
		expect(caesar_cipher("AMZ", 3)).to eql("DPC")
	end

	it "Preserves punctuation" do
		expect(caesar_cipher("Ho! What's this?", 2)).to eql("Jq! Yjcv'u vjku?")
	end

	it "Wraps alphabetically" do
		expect(caesar_cipher("ZZzzzZzz!", 4)).to eql("DDdddDdd!")
	end
end