⍝ function.apl
MyFunction ← {
    x ← ⍵ + 10
    x ← x > 15: x - 5 ⋄ x + 5
    x + +/⍳3
}

input ← ⎕
⎕ ← MyFunction ⎕←⍎input
