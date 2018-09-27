import Data.Char
funcion n | n == 0 = 1 | n /= 0 = 0
signo n | n > 0 = 1 | n == 0 = 0 | n < 0 = (-1)
absoluto n = abs(n)
espar x = (mod x 2) == 0
espositivo x = (x- abs (x)) == 0
pruebapositivo x = x > 0
maximo x y 	|x > y = x 
			| otherwise = y
otropositivo x | x > 0 = True
			   | x <= 0 = False
ylogico x y | x == False = False
			| y == False = False
			| otherwise = True
uno a b c | b < 10 = a
          | b >= 10 = a + c
dos True True = False
dos True False = True
dos False True = True
dos False False = True
tres x y | x == True = False
         | y == True = False
         | otherwise = True
cuatro a b c = ((-b) + sqrt ((b ^ 2) - 4 * a * c)) / 2 * a
cinco a b c = sqrt ((a ^ 2) + (b ^2)) == c
doble :: Float -> Float
doble a = a + a
cuadruple :: Float -> Float
cuadruple x = doble (doble x)
dist :: Float -> Float -> Float -> Float -> Float
dist x1 y1 x2 y2 = sqrt (((x2 - x1) ^2) + (y2 - y1) ^2)
raiz :: Float -> Float
raiz a = sqrt (a)
crearpar :: a -> b -> (a,b)
crearpar x y = (x,y)
invertir :: (a,b) -> (b,a)
invertir (q,p) = (p,q)
distancia :: (Float,Float) -> (Float,Float) -> Float
distancia p1 p2 = sqrt ((fst p1 - fst p2) ^2 + (snd p1 - snd p2) ^2)
raices:: Float -> Float -> Float -> (Float,Float)
raices a b c = ((((-b) - sqrt ((b ^ 2) - 4 * a * c))/2),(((-b) + sqrt ((b ^ 2) - 4 * a * c))/2))
ite :: Bool -> a -> a -> a
ite a b c | a = b
          | otherwise = c
bajarnegativo a b c = [a,b..c]
listar :: a -> a -> a -> [a]
listar a b c = [a , b , c]
rangodepaso :: Integer -> Integer -> Integer -> [Integer]
rangodepaso a b c = [a,c+a..b]
pendiente :: (Float,Float) -> (Float,Float) -> Float
pendiente a b = (snd b - snd a) / (fst b - fst a)
iniciales :: String -> String -> String
iniciales a b = [toUpper (head a) , '.' , toUpper (head b) , '.']
fact n | n ==1 = 1
       | n > 1 = n * fact (n - 1)
fib :: Integer -> Integer
fib n | n == 0 = 1
      | n == 1 = 1
      | otherwise = fib (n - 1) + fib (n - 2)
par :: Integer -> Bool
par n | n == 0 = True
	  | n == 1 = False
	  | n < 0 = par (-n)
	  | otherwise = par ( n - 2 )
sumaimpares :: Integer -> Integer
sumaimpares n = n * n 
sumaimpares2 :: Integer -> Integer
sumaimpares2 n | n == 1 = 1
 			   | n >= 2 = sumaimpares2 (n-1) + n * 2 - 1
multiplotres :: Integer -> Bool
multiplotres n | n == 3 = True
       		   | n == 2 = False
       		   | n == 1 = False
       		   | n < 0 = multiplotres (-n)
       		   | otherwise = multiplotres (n - 3)
doblefact :: Integer -> Integer
doblefact n | n == 0 = 1
            | otherwise = n * doblefact (n - 2)
comb :: Integer -> Integer -> Integer
comb n m | n == m = 1
		 | m == 0 = 1
		 | otherwise = comb (n-1) m + (comb (n-1) (m-1))
pos :: Integer -> Integer
pos n | n == 0 = 1
	  | otherwise = pos (n-1)
cuad :: Integer -> Integer
cuad n = cuadaux n n
cuadaux :: Integer -> Integer -> Integer
cuadaux n m | n == 1 = 1
	        | mod n 2 == 1 && (n^2) < m = n + (cuadaux (n-1) m)
	        | otherwise = (cuadaux (n-1) m )
pertenece :: Integer -> [Integer] -> Bool
pertenece a b | b == []  = False
 			  | head b == a = True
 			  | otherwise = pertenece a (tail b)
hayrepetidos :: [Integer] -> Bool
hayrepetidos a | a == [] = False
			   | pertenece (head a) (tail a) = True
			   | otherwise =  hayrepetidos (tail a)
menores :: Integer -> [Integer] -> [Integer]
menores a b | length b == 0 = []
		    | (head b) < a = (head b) : menores a (tail b)
		    | otherwise = menores a (tail b)
quitar :: Integer -> [Integer] -> [Integer]
quitar a b | length b == 0 = b
		   | a == head b = tail b
		   | otherwise = head b : quitar a (tail b)
mayores :: Integer -> [Integer] -> [Integer]
mayores a b | length b == 0 = []
		    | (head b) > a = (head b) : mayores a (tail b)
		    | otherwise = mayores a (tail b)
maxaux :: Integer -> Integer -> Integer
maxaux a b | a >= b = a
		   | otherwise = b
maximo1 :: [Integer] -> Integer
maximo1 a | length a == 1 = head a
       	  | otherwise = maximo (head a) (maximo1 (tail a))
enbase :: Integer -> Integer -> [Integer]
enbase a b | a < b = [a]
		   | otherwise = (enbase (div a b) b) ++ [mod a b]
debase :: Integer -> [Integer] -> Integer
debase b c | length c == 1 = head c
		   | otherwise = (head c) * b^((length c)-1) + debase b (tail c)
sumadecifras :: [Integer] -> [Integer] -> [Integer]
sumadecifras a b | length a == 0 = []
				 | otherwise =  (head a + head b) : sumadecifras (tail a) (tail b)
sumacif :: [Integer] -> [Integer] -> Integer
sumacif a b | a == [] = 0
			| otherwise = (head a + head b) * 10^((length a)-1) + sumacif (tail a) (tail b)
capicuapara :: [Integer] -> [Integer]
capicuapara a | a == reverse a = a
			  | otherwise = capicuapara (enbase (sumacif a (reverse a)) 10)
cambiodebase :: Integer -> Integer -> [Integer] -> [Integer]
cambiodebase a b n = enbase (debase a n) b
nodecrece :: [Integer] -> Bool
nodecrece a | length a == 1 = True
		    | head a > head (tail a) = False
		    | otherwise = nodecrece (tail a)
sumaimpares3 :: Integer -> Integer -> Integer
sumaimpares3 a b | a > b = 0
				 | mod a 2 == 1 = a + sumaimpares3 (a+1) b
				 | otherwise = sumaimpares3 (a+1) b
maxdistaux :: Integer -> [Integer] -> Integer
maxdistaux n a | length a == 1 = n
			   | abs (head a - head (tail a)) > n = maxdistaux (abs (head a - head (tail a))) (tail a)
			   |otherwise = maxdistaux n (tail a)

maxdist :: [Integer] -> Integer
maxdist a = maxdistaux 0 a
listarepaux :: Integer -> Integer -> [Integer]
listarepaux n r | r == 0 = []
				| otherwise = [n] ++ listarepaux n (r-1)
listarep :: [(Integer,Integer)] -> [Integer]
listarep a | length a == 0 = []
		   | otherwise = listarepaux (fst (head a)) (snd (head a)) ++ listarep (tail a)
cabeza x a | x == 0 = []
		   | otherwise = [head a] ++ cabeza (x-1) (tail a)
cola x a | x == 0 = a
		 | otherwise = cola (x-1) (tail a)
partir x a = (cabeza x a, cola x a)
euclides :: Integer -> Integer -> Integer
euclides a b | a == 0 = b
			 | b == 0 = a
			 | a >= b = euclides (a-b) b
			 | otherwise = euclides a (b-a)
euclidesM :: Integer -> Integer -> Integer
euclidesM a b | a == 0 = b
			  | b == 0 = a
			  | a >= b = euclidesM (mod a b) b
			  | otherwise = euclidesM a (mod b a)
sumarvect :: (Integer , Integer) -> (Integer , Integer) -> (Integer , Integer)
sumarvect (a,b) (c,d) = (a+c , b+d)
first :: (a , b , c) -> a
first (x , y , z) = x
longitud :: [a] -> Integer
longitud [] = 0
longitud (x:[]) = 1
longitud (x:y:[]) = 2
longitud (x:y:z:[]) = 3
longitud (x:y:z:xs) = 3 + longitud xs
inicial :: [Char] -> [Char] -> [Char]
inicial nombre apellido = [n,a]
                           where (n:_) = nombre
                                 (a:_) = apellido
data Dia = Lunes | Martes | Miercoles | Jueves | Viernes | Sabado | Domingo
esfinde :: Dia -> Bool
esfinde Sabado = True
esfinde Domingo = True
esfinde x = False
diahabil :: Dia -> Bool
diahabil Sabado = False
diahabil Domingo = False
diahabil x = True
tuplas :: [a] -> [b] -> [(a,b)]
tuplas [] (x:xs) = []
tuplas (x:xs) [] = []
tuplas (a:as) (x:xs) = [(a,x)] ++ tuplas as xs
sacarepetidos :: [Integer] -> [Integer]
sacarepetidos a | a == [] = []
				| pertenece (head a) (tail a) = sacarepetidos (tail a)
				| otherwise = (head a) : sacarepetidos (tail a)
type Racional = (Integer , Integer)
potenc :: Racional -> Integer -> Racional
potenc (a,b) n = (a ^ n , b ^ n)
type Conjunto = [Integer]
union :: Conjunto -> Conjunto -> Conjunto
union [] (x:xs) = (x:xs)
union (x:xs) [] = (x:xs)
union (x:xs) (a:ad) = sacarepetidos ((x:xs) ++ (a:ad))
interseccion :: Conjunto -> Conjunto -> Conjunto
interseccion (x:xs) [] = []
interseccion [] (x:xs) = []
interseccion (x:xs) (a:as) | pertenece x (a:as) = sacarepetidos (x : interseccion xs (a:as))
						   | otherwise = interseccion xs (a:as)	
--incluido :: Conjunto -> Conjunto -> Bool
--incluido [] (x:xs) = True
--incluido (x:xs) [] = False
--incluido 
data Figura = Rectangulo Float Float Float Float | Circulo Float Float Float deriving Show
c1 :: Figura
c1 = Circulo 0 0 1
r1 :: Float -> Figura
r1 x = Rectangulo 0 0 (abs x / sqrt (2)) (abs x / sqrt (2))
area :: Figura -> Float
area (Circulo x y r) = pi * (r ^ 2)
area (Rectangulo x y a b) = abs ((x-a) * (y-b))
data Punto = Point Float Float
data Figura2 = Rectangulo2 Punto Punto | Circulo2 Punto Float
area2 :: Figura2 -> Float
area2 (Circulo2 x r) = pi * (r ^ 2)
area2 (Rectangulo2 (Point a b) (Point c d)) = abs ((a-c) * (b-d))
data Progarit = Vacio | Congruentesa Integer Integer
instance Show Progarit where
	show Vacio = "{}"
	show (Congruentesa a b) = "{x en Z / x = " ++ show a ++ " (mod " ++ show b ++ ")}" 
multiplo :: Integer -> Integer -> Bool
multiplo x n = mod x n == 0
pertenece2 :: Integer -> Progarit -> Bool
pertenece2 _ Vacio = False
pertenece2 x (Congruentesa y n) = mod x n == mod y n
incluido :: Progarit -> Progarit -> Bool
incluido Vacio _ = True
incluido _ Vacio = False
incluido (Congruentesa a b) (Congruentesa c d) = mod b d == 0 && pertenece2 a (Congruentesa c d)
--sumacong :: Progarit -> Progarit -> Progarit
--sumacong (Congruentesa a b) (Congruentesa c d) = (Congruentesa (a+c) )
data Arbol = Hoja Integer | Ramificacion Arbol Integer Arbol
esHoja :: Arbol -> Bool
esHoja (Hoja _) = True
esHoja _ = False
sumaNodos :: Arbol -> Integer
sumaNodos (Hoja x) = x
sumaNodos (Ramificacion a n b) = n + sumaNodos a + sumaNodos b
alturafacil :: Arbol -> Integer
alturafacil (Hoja _) = 0
alturafacil (Ramificacion a n b) = 1 + max (alturafacil a) (alturafacil b)
--altura :: Arbol -> Integer
--altura (Hoja _) = 0
--altura (Ramificacion a n (Hoja _)) = 1 + altura a
--altura (Ramificacion (Hoja _) n b) = 1 + altura b
aparece :: Integer -> Arbol -> Bool
aparece n (Hoja x) = n == x
aparece n (Ramificacion a x b ) | n == x = True
								| aparece n a || aparece n b = True
								| otherwise = False
data Dir = Der | Izq
--busqueda :: [Dir] -> Arbol -> Integer
--busqueda _ (Hoja n) = n
data Arbol t = Hoja t | Ramif (Arbol t) t (Arbol t)
soshoja :: Arbol a -> Bool
soshoja (Hoja _) = True
soshoja _ = False
