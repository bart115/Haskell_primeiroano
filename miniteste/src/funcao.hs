{-|
Module : Exemplo
Description : Módulo Haskell contendo exemplos de funções recursivas
Copyright : Gonçalo Freitas <goncalorochafreitas10@gmail.com>;

Este módulo contém definições Haskell para o cálculo de funções
recursivas simples (obs: isto é apenas uma descrição mais
longa do módulo para efeitos de documentação...).
-}
module Funcao where

{- |A função ’fact’ calcula o factorial (@fact n@ retorna o factorial
de de um inteiro @n@).
Alternativamente, a função poderia ser definida da seguinte forma:
@
fact n = if n>0
then n*fact (n-1)
else 1
@

==Definição dos tipos :
>>> :: o tipo 

== Exemplos de utilização:
>>> fact 5
120
>>> fact 0
1 -}


soma:: Int -> Int -> Int 
soma x y = x + y 

--DOCUMENTAÇÃO
--cd src onde ta a funcao
--no normal 
--haddock -h -o ../doc/ funcao.hs 
---------------------espaço----------
