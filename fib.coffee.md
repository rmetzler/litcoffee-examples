#! /usr/bin/env coffee

This program prints all Fibonacci numbers. It is written in Literate CoffeeScript.

What are the Fibonacci numbers?


We use a memory structure to speed up the computation.

    mem =
      0: 1
      1: 1


Fibonacci is a recursive function.

    fib = (n) ->
      unless mem[n]
        mem[n] = fib(n-1) + fib(n-2)
      mem[n]


    for n in [0..100]
      console.log "fib(#{n}) => #{fib(n)}" 

    #console.log mem
