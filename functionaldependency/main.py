from dependency import Dependency
from rules import Rules

from fplus import calc_fplus

# relação R (A, B, C, D)
r = [{"A"}, {"B"}, {"C"}, {"D"}]
# F dependencias
F = [
  Dependency({"A"}, {"C"}),
  Dependency({"D"}, {"B"}),
]

fplus = calc_fplus(r, F)

for dep in fplus:
  print(dep)

print( "\n{} dependencias encontradas para F+".format(len(fplus)) )
