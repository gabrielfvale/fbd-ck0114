class Dependency:
  alpha = {}
  beta = {}

  '''
  alpha ⟶ beta
  '''
  def __init__(self, a: set, b: set):
    self.alpha = a
    self.beta = b

  '''
  Igualdade de tuplas t1[a] = t2[a]
  '''
  def __eq__(self, dep: Dependency):
    if self.alpha == dep.alpha and self.beta == dep.beta:
      return True
    else:
      return False
  
  '''
  Print formatado
  '''
  def __str__(self):
    return "{}⟶{}".format(str(self.alpha), str(self.beta))
