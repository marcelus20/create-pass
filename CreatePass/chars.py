### Module to call for a list of chars to generate a random string.
import string

def get_list_of_chars():
  letters = string.ascii_letters
  digits = string.digits
  punctuation = string.punctuation

  #creating a list with everything
  return list(letters + digits + punctuation)