class Generator
  UPCASE_CHARS = ('A'..'Z').to_a
  DOWNCASE_CHARS = ('a'..'z').to_a
  NUMBERS = (0..9).to_a
  SPECIAL = "!$%&*@^".split('')
  VALID_CHARACTERS = []
end

  def test_add
    VALID_CHARACTERS << UPCASE_CHARS
    VALID_CHARACTERS.flatten!
  end
end
