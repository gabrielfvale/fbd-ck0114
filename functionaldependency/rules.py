from dependency import Dependency

class Rules:

  '''
  Se β ⊆ α, então α⟶β
  '''
  def inclusion(self, alpha: set, beta: set):
    if beta.issubset(alpha):
      # Dependencia (α, β)
      return Dependency(alpha, beta)

  '''
  Como α ⊆ α, α⟶α
  '''
  def reflexivity(self, alpha: set):
    # Dependencia (α, α)
    return self.inclusion(alpha, alpha)

  '''
  Se α⟶β e β⟶γ, então α⟶γ
  '''
  def transitivity(self, fd1: Dependency, fd2: Dependency):
    if fd1.beta == fd2.alpha:
      # Dependencia (α, γ)
      return Dependency(fd1.alpha, fd2.beta)

  '''
  Se α⟶β, então αγ⟶βγ
  '''
  def augmentation(self, fd: Dependency, gamma):
    # Dependencia (α ∪ γ, β ∪ γ)
    return Dependency(fd.alpha.union(gamma), fd.beta.union(gamma))

  '''
  Se α⟶β e α⟶γ, então α⟶βγ
  '''
  def union(self, fd1: Dependency, fd2: Dependency):
    if fd1.alpha == fd2.alpha:
      # Dependencia (α, β ∪ γ)
      return Dependency(fd1.alpha, fd1.beta.union(fd2.beta))

  '''
  Se α⟶βγ, então α⟶β e α⟶γ
  '''
  def decomposition(self, fd: Dependency, beta: set, gamma: set):
    if fd.beta == beta.union(gamma):
      # Dependencia (α, β) e (α, γ)
      return {Dependency(fd.alpha, beta), Dependency(fd.alpha, gamma)}

  '''
  Se α⟶β e γβ⟶ω, então αγ⟶ω
  '''
  def pseudo_transitivity(self, fd1: Dependency, fd2: Dependency, gamma: set):
    if fd1.beta.issubset(fd2.alpha) and gamma.union(fd1.beta) == fd2.alpha:
      # Dependencia (α ∪ γ, ω)
      return Dependency(fd1.alpha.union(gamma), fd2.beta)
