## fib.litcoffee

This program prints all Fibonacci numbers. It is written in Literate CoffeeScript.

Fibonacci is a common example for teaching recursive functions and complexity theory.


### What are the Fibonacci numbers?

Every Fibonacci Number (`fib(n)`) is built by the following rules.

- fib(1) = 1
- fib(2) = 1
- fib(n) = fib(n-1) + fib(n-2)

The last rule is the recursion step.

As a recursive CoffeeScriptIn a recursive style this would be written like this:

    # simple fibonacci function
    fib = (n) ->

      # first rules
      if n in [ 1 , 2 ]
        return 1

      # recursion step
      fib( n-1 ) + fib( n-2 )

    # call the function like this
    fib(1) # => fib(2) + fib(1) # => 1 + 1 # => 1
    fib(2) # => fib(2) + fib(1) # => 1 + 1 # => 1
    fib(3) # => fib(2) + fib(1) # => 1 + 1 # => 2
    fib(4) # => fib(3) + fib(2) # => 2 + 1 # => 3
    fib(5) # => fib(4) + fib(3) # => 3 + 2 # => 5

### Complexity Theory

For bigger n the recursion step is going to require more and more time.
To improve the time requirement and speed up computation we can use a
hash as computation cache.

    cache =
      1: 1
      2: 1

    fib = (n) ->
      unless cache[n]
        cache[n] = fib(n-1) + fib(n-2)
      cache[n]

    for n in [1..100]
      console.log "fib(#{n}) => #{fib(n)}" 


