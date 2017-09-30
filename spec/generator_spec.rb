require 'generator'

describe Generator do
  subject(:generator) { described_class.new() }
  it { is_expected.to be_a Generator }
  describe "Uppcase Array" do
    it 'Is an Array' do
      expect(Generator::UPCASE_CHARS).to be_an_instance_of(Array)
    end
    it 'Is 26 elements long' do
      expect((Generator::UPCASE_CHARS).length).to equal(26)
    end
    it 'Contains all strings' do
      expect(Generator::UPCASE_CHARS).to all(be_an_instance_of(String))
    end
  end
  describe "Lowercase Array" do
    it 'Is an Array' do
      expect(Generator::DOWNCASE_CHARS).to be_an_instance_of(Array)
    end
    it 'Is 26 elements long' do
      expect((Generator::DOWNCASE_CHARS).length).to equal(26)
    end
    it 'Contains all strings' do
      expect(Generator::DOWNCASE_CHARS).to all(be_an_instance_of(String))
    end
  end
  describe "Numbers Array" do
    it 'Is an Array' do
      expect(Generator::NUMBERS).to be_an_instance_of(Array)
    end
    it 'Is 10 elements long' do
      expect((Generator::NUMBERS).length).to equal(10)
    end
    it 'Contains all fixed numbers' do
      expect(Generator::NUMBERS).to all(be_an_instance_of(Fixnum))
    end
  end
  describe "Special Array" do
    it 'Is an Array' do
      expect(Generator::SPECIAL).to be_an_instance_of(Array)
    end
    it 'Is 7 elements long' do
      expect((Generator::SPECIAL).length).to equal(7)
    end
    it 'Contains all fixed numbers' do
      expect(Generator::SPECIAL).to  all(be_an_instance_of(String))
    end
  end
  describe "Valid Chars Array" do
    it 'Is an Array' do
      expect(Generator::VALID_CHARACTERS).to be_an_instance_of(Array)
    end
    it 'Is empty' do
      expect(Generator::VALID_CHARACTERS).to be_empty
    end
  end
end
