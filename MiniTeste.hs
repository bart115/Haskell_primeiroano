{- |
Module : Exemplo
Description : Módulo Haskell contendo exemplos de uma função recursiva
Copyright : Gonçalo Freitas <a104350@alunos.uminho.pt>;

Este módulo contém definições Haskell para o cálculo de funções
recursivas simples.
-}
module MiniTeste where

{- |A função ’f’ calcula a soma dos elementos de uma lista e forma uma lista com esses elementos  (@f [[n,n1],[n2,n3]]@ retorna uma lista
em que os seus elementos são as somas entre os valores das listas,ou seja, @[n+n1,n2+n3]@).


==Definição dos tipos :
>>> :: Int 
>>> ->Int  

== Exemplos de utilização:
>>> f [[]]
[]
>>> f [[1],[1,2,3],[3,-4,1]] 
 [1,13] -}

f :: [[Int]] -> [Int]
f [[]] = []
f((x:y):t) |x + head y == 0 = []
           |otherwise = x + head y : f t


   

--DOCUMENTAÇÃO
--cd src onde ta a funcao
--no normal 
--haddock -h -o doc/ MiniTeste.hs
---------------------espaço----------
--entrar no doc(diretoria)
--open index.html 