module Teste where 

import Test.HUnit 
import Funcao


test1 =  "soma entre 1 e 2" ~: 3 ~=? soma 1 2

--runTestTT test1
--ghci -i="src" -i="tests" ./tests/teste1.hs .src/funcao.hs
-------aqui é as pastas        aqui é o ficheiro e a pasta 