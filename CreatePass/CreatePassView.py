## Wrapper for the create pass blueprint. It will be responsible for displaying content in the console
class CreatePassView:
    def __init__(self, create_pass):
        self.create_pass = create_pass


    def display_passwords(self):
      for i in range(0, len(self.create_pass.passwords)):
        print(f'pass#{i+1}: {self.create_pass.passwords[i]}')