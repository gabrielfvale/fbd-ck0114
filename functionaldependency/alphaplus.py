def calc_alphaplus(alpha: set, F: set):
  resultado = alpha
  resultado_alterado = True
  while resultado_alterado:
    resultado_alterado = False
    for fd in F:
      if fd.alpha.issubset(resultado):
        # resultado := resultado ∪ γ
        resultado = resultado.union(fd.beta)
        resultado_alterado = True
