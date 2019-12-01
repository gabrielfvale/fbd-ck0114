from dependency import Dependency
from rules import Rules

'''
Relação r
Conjunto de dependências F
'''
def calc_fplus(r: list, F: list):
  rules = Rules()
  Fplus = F
  resultado_alterado = True

  while resultado_alterado:
    resultado_alterado = False

    # Inclusao
    for alpha in r:
      for beta in r:
        derived = rules.inclusion(alpha, beta)
        if derived and derived not in Fplus:
          resultado_alterado = True
          Fplus.append(derived)

    # Reflexividade
    for alpha in r:
        derived = rules.reflexivity(alpha)
        if derived and derived not in Fplus:
          resultado_alterado = True
          Fplus.append(derived)

    # Transitividade
    for dep1 in F:
      for dep2 in F:
        derived = rules.transitivity(dep1, dep2)
        if derived and derived not in Fplus:
          resultado_alterado = True
          Fplus.append(derived)

    # Aumento
    for dep in F:
      for beta in r:
        derived = rules.augmentation(dep, beta)
        if derived and derived not in Fplus:
          resultado_alterado = True
          Fplus.append(derived)
          if not (dep.alpha.union(beta) in r):
            r.append(dep.alpha.union(beta))
          if not (dep.beta.union(beta) in r):
            r.append(dep.beta.union(beta))

    # Uniao
    for dep1 in F:
      for dep2 in F:
        derived = rules.union(dep1, dep2)
        if derived and not derived in Fplus:
          resultado_alterado = True
          Fplus.append(derived)
          if not dep1.beta.union(dep2.beta) in r:
            r.append(dep1.beta.union(dep2.beta))

    # Decomposição
    for dep in F:
      for beta in r:
        for gamma in r:
          derived = rules.decomposition(dep, beta, gamma)
          if derived:
            if not derived[0] in Fplus:
              resultado_alterado = True
              Fplus.append(derived[0])
            if not derived[1] in Fplus:
              resultado_alterado = True
              Fplus.append(derived[1])

    # Pseudo-transitividade
    for dep1 in F:
      for dep2 in F:
        for gamma in r:
          derived = rules.pseudo_transitivity(dep1, dep2, gamma)
          if derived and not derived in Fplus:
            resultado_alterado = True
            Fplus.append(derived)
            if not dep1.alpha.union(gamma) in r:
              r.append(dep1.alpha.union(gamma))

  return Fplus
