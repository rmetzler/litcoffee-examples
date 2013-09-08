#! /usr/bin/env coffee

This is the fizzbuzz test in literate CoffeeScript.

The fizzbuzz test should print:

- 'fizz' for every number dividable by 3,
- 'buzz' for every number dividable by 5,
- 'fizzbuzz' if the number is dividable by 3 and 5
- else: just print the number.

  fizzbuzz = (number) ->
    return 'fizzbuzz' if 0 == number % 15
    return 'buzz'     if 0 == number % 5
    return 'fizz'     if 0 == number % 3
    number.toString()

  for x in [1..100]
    console.log "#{x}\t->\t#{fizzbuzz x}"
