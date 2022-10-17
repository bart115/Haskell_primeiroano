Module
--ta tudo na ficha 4 documentado para fazer isto 






module Aula4 where 
import Test.HUnit

-- / A função teste recebe 2 valores e cria uma lista com esses valores.
teste :: Int -> Int -> [Int]
teste n1 n2 = [n1,n2]

 
teste1 = "Testa se os numeros estão na posição correta" ~: [1,2] ~=? teste 1 2 

