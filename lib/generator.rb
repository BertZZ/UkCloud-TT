class Generator
  UPCASE_CHARS = ('A'..'Z').to_a
  DOWNCASE_CHARS = ('a'..'z').to_a
  NUMBERS = (0..9).to_a
  SPECIAL = "!$%&*@^".split('')
  VALID_CHARACTERS = []

  attr_reader :length, :uppercase, :lowercase, :numbers, :special

  def initialize (length, uppercase, lowercase, numbers, special)
    @length = length
    @uppercase = uppercase
    @lowercase = lowercase
    @numbers = numbers
    @special = special
  end
  #
  # def generate_password()
  #   password = ''
  # end

  def add_upcase
    VALID_CHARACTERS << UPCASE_CHARS
    VALID_CHARACTERS.flatten!
  end

  def add_downcase
    VALID_CHARACTERS << DOWNCASE_CHARS
    VALID_CHARACTERS.flatten!
  end

  def add_numbers
    VALID_CHARACTERS << NUMBERS
    VALID_CHARACTERS.flatten!
  end

  def add_special
    VALID_CHARACTERS << SPECIAL
    VALID_CHARACTERS.flatten!
  end

  def clear_valid_characters
    VALID_CHARACTERS.clear
  end
end
