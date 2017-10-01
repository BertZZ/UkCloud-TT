class Generator
  UPCASE_CHARS = ('A'..'Z').to_a
  DOWNCASE_CHARS = ('a'..'z').to_a
  NUMBERS = ('0'..'9').to_a
  SPECIAL = "!$%&*@^".split('')
  VALID_CHARACTERS = []

  attr_reader :length, :uppercase, :lowercase, :numbers, :special, :password

  def initialize (length, uppercase, lowercase, numbers, special)
    @length = length
    @uppercase = uppercase
    @lowercase = lowercase
    @numbers = numbers
    @special = special
    @password = ""
  end

  def generate_password
    get_valid_characters
    if @uppercase == false && @lowercase == false && @numbers == false && @special == false
      raise "Please select at least one field to make up your Password"
    else
      @length.times do
        char = VALID_CHARACTERS.sample
        @password << char
      end
    end
    puts "Your password is " + @password
    clear_password
  end

  def get_valid_characters
    if @uppercase == true
      add_upcase
    end
    if @lowercase == true
      add_downcase
    end
    if @numbers == true
      add_numbers
    end
    if @special == true
      add_special
    end
  end

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

  def clear_password
    @password = ''
  end
end
