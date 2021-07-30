import chars
import random

## Model to store the list of passwords to be generated.
class CreatePass:
  def __init__(self, password_length, number_of_passwords):
    self.password_length = password_length
    self.number_of_passwords = number_of_passwords
    self.passwords = self.__generate_passwords()

  #function to generate the random string of a given length
  def __generate_random_string(self, len):
    local_pass = ''
    #creating a list with everything
    everything = chars.get_list_of_chars()

    #iterating over it
    for i in range(0, len):
      random.shuffle(everything)
      local_pass += everything[i]
    return local_pass


  def __generate_passwords(self):
    passwords = []
    for i in range(1, self.number_of_passwords + 1):
      passwords.append(self.__generate_random_string(self.password_length))
    return passwords
