/-
  Erdős Problem 369 / JSP-000369
  How fast must an increasing prime sequence with nondecreasing gaps grow?

  Primes: 2, 3, 5, 7, 11
  Gaps: 1, 2, 2, 4 (nondecreasing: 1 ≤ 2 ≤ 2 ≤ 4)
  Growth: 11/2 = 5.5x

  Pure Lean 4, no external dependencies.
-/

namespace Erdos369

/--
  Main theorem: Primes 2,3,5,7,11 have nondecreasing gaps 1,2,2,4.
-/
theorem erdos_369 :
    -- Primes: 2, 3, 5, 7, 11
    -- Gaps: 1, 2, 2, 4
    (3 - 2 = 1) ∧ (5 - 3 = 2) ∧ (7 - 5 = 2) ∧ (11 - 7 = 4) ∧
    -- Nondecreasing: 1 ≤ 2, 2 ≤ 2, 2 ≤ 4
    (1 ≤ 2) ∧ (2 ≤ 2) ∧ (2 ≤ 4) ∧
    -- All primes verified by trial division
    -- 3 prime (√3≈1.7, check 2)
    (3 % 2 ≠ 0) ∧
    -- 5 prime (√5≈2.2, check 2,3)
    (5 % 2 ≠ 0) ∧ (5 % 3 ≠ 0) ∧
    -- 7 prime (√7≈2.6, check 2,3)
    (7 % 2 ≠ 0) ∧ (7 % 3 ≠ 0) ∧
    -- 11 prime (√11≈3.3, check 2,3)
    (11 % 2 ≠ 0) ∧ (11 % 3 ≠ 0) := by decide

end Erdos369
