module MiniTeste_Spec where 

import Test.HUnit 
import MiniTeste


test1 =  "A solução de usando a função e a lista [[1],[2,3],[4,1]]" ~:[1,5,5] ~=? f [[1],[2,3],[4,1]]
test2 =  "A solução de usando a função e a lista [[]]" ~:[] ~=? f [[]]
test3 =  "A solução de usando a função e a lista [[1],[2,3],[4,-4]]" ~:[1,5] ~=? f [[1],[2,3],[4,-4]]
 