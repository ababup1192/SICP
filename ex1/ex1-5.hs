infinity :: Integer -> Integer
infinity 0 = 1
infinity x = infinity(x)

test :: Integer -> Integer -> Integer
test 0 _ = 1
test _ y = y

-- $ ghci
-- > :load ex1-5.hs
-- > infinity 1 // 無限ループ
-- > test 0 (infinity 1) // y つまり infinity 1 は評価されないので無限ループしない
-- > test 1 (infinity 1) // y つまり infinity 1 が評価されて無限ループする
