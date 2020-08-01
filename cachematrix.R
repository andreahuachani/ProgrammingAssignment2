## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# # Uso: Pase el resultado de una llamada makeCacheMatrix a cacheSolve

# Función util que establece la matriz y la inversa en un entorno
# @param x una matriz invertible
makeCacheMatrix <- function(x = matrix()) {
  inv  <-  NULL
  establecer  <-  función ( y ) {
    x  <<-  y
    inv  <<-  NULL
  }
  obtener  <-  función () x
  setinverse  <-  función ( inversa ) inv  <<-  inversa
  getinverse  <-  función () inv
  lista ( set  =  set , get  =  get ,
          setinverse  =  setinverse ,
          getinverse  =  getinverse )

}


## Write a short comment describing this function
# Calcular y almacenar en caché el inverso de una matriz
# @param x el resultado de una llamada anterior makeCacheMatrix
# @param ... argumentos adicionales para pasar para resolver la función

cacheSolve <- function(x, ...) {
        
  # # Devuelve una matriz que es la inversa de 'x'
  inv  <-  x $ getinverse ()
  if ( ! is.null ( inv )) {
    mensaje ( " obtener el inverso de la matriz en caché " )
    volver ( inv )
  }
  datos  <-  x $ get ()
  inv  <- resolver ( datos , ... )
  x $ setinverse ( inv )
  inv
}
