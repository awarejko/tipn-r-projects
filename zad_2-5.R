fibonacci <- function(n, a = 0, b = 1) {
  if(n == 1) {
    return(0)
  } else if(n ==2) {
    return(b)
  } else {
    return(fibonacci(n - 1, b, a + b))
  }
}
