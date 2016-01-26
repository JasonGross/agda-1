
module _ where

open import Common.Prelude
open import Common.Reflection
open import Common.TC

postulate
  stuck : TC ⊤

macro
  not-so-good : Tactic
  not-so-good hole = stuck

fail : Nat
fail = not-so-good
