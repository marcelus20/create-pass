#Felipe Mantovani
#Python version 3
#Importing the random, sys and string modules
import random
import string
import sys

#function to generate the pass of a given length
def generate_pass(len):
  local_pass = ''
  letters = string.ascii_letters
  digits = string.digits
  punctuation = string.punctuation

  #creating a list with everything
  everything = list(letters + digits + punctuation)

  #iterating over it
  for i in range(0, len):
    random.shuffle(everything)
    local_pass += everything[i]
  return local_pass

#Should return only int. It tries to return args at a specific index, if it crashes, then
# it will default to whatever was passed in the default parameter.
def arg_at_index_or_default(arg_list, index, default):
  try:
    return int(arg_list[index])
  except: 
    return default

pass_len = arg_at_index_or_default(sys.argv, 1, 12)

times_to_loop = arg_at_index_or_default(sys.argv, 2, 1)

for i in range(1, times_to_loop + 1):
  print(f'pass#{i}: {generate_pass(pass_len)}')

