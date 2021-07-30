#Felipe Mantovani
#Python version 3
#Importing the random, sys and string modules

import sys
from CreatePassView import CreatePassView
from CreatePass import CreatePass


#Should return only int. It tries to return args at a specific index, if it crashes, then
# it will default to whatever was passed in the default parameter.
def arg_at_index_or_default(arg_list, index, default):
  try:
    return int(arg_list[index])
  except: 
    return default

pass_len = arg_at_index_or_default(sys.argv, 1, 12)

times_to_loop = arg_at_index_or_default(sys.argv, 2, 1)


if __name__ == "__main__":
  create_pass = CreatePass(pass_len, times_to_loop)

  create_pass_view = CreatePassView(create_pass)

  create_pass_view.display_passwords()