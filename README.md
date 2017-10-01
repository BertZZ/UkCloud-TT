# UkCloud-TT

## Specifications

The task was to build a password generator that had the option of adding Uppercase, Lowercase, Numbers and Special Symbols to the password.

## Quick Start Guide
```
bundle install
rspec
generator = Generator.new(length, Upercase, Lowercase, Numbers, Symbols)
#For the variables, enter true if you would like to make them avalible in the password and false if you would not.
```

## Issues
The instructions were not clear as to if the program had to guarentee
the presence of any data type entered as true, for example if you select true for Uppercase, Lowercase and Numbers do I have to guarentee at least 1 Uppercase letter, 1 Lowercase letter and 1 number in the password. I chose not to implement this feature so as to not overcomplicate the code. However I have thought about how I would implement this feature. 
