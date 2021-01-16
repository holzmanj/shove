# SHOVE
A little expression-oriented programming language with some fun/weird features.

*(This is really just a PL design experiment I did for fun, so don't expect it to be well thought-out or useful).*


## Syntax
Here's how you can write some programs in Shove.


### Comments
```coffee
# this is a comment
# you should know what these do
```


### Binding to Identifiers
As a language composed only of expressions, Shove doesn't have variables in the traditional sense.
It does, however, let you statically bind values to an identifier.
```coffee
let foo = 10
let bar = foo + 5   # bar = 15
```
The values these bindings hold are immutable, but an identifier can be re-bound to a new value as many times as you want.
```coffee
let foo = 10
let foo = 7
let bar = foo + 5   # bar = 12
```


### Types and Values
Shove's type system is pretty basic (for now).
It supports most of the primitive types you are probably used to.
```coffee
# booleans
let a = true
let b = false

# integers
let c = 10

# floating-point
let d = 3.1415

# characters and strings
let e = 'h'
let f = "hello"

# void, representing the absence of a value
let g = void
```

Shove also lets you build lists of values.
```coffee
let h = [1, 2, 3, 4]
# list elements aren't restricted to a single type
let i = ["blah", 21, false]
# lists can be concatenated together with `+`
let j = [2, 4] + [6, 8] # j = [2, 4, 6, 8]
```
Behind the scenes, lists behave like stacks (akin to other functional languages).  Elements are added to the front of a list with the `::` (cons) operator.
```coffee
let k = 4 :: [3, 2, 1]  # k = [4, 3, 2, 1]
let l = 5 :: k          # l = [5, 4, 3, 2, 1]
let m = true :: []      # m = [true]
```


### Lambdas
Lambdas (or functions) in Shove have some strange behavior that you are probably not used to.
But first let's look at the basics.

Lambdas are defined by wrapping an expression between curly braces.
```coffee
let n = { 2 + 3 }
```
This is a very boring function because it always evaluates to 5.
You can specify parameters for a lambda by listing them at the beginning of your lambda expression, followed by a `|`.
```coffee
let double = { x | x * 2 }
let add = { x, y | x + y }  # multiple parameters are separated by commas
```
Shove is whitespace agnostic, so you can break up larger lambdas across multiple lines.
```coffee
let linear = { m, b, x |
  m * x + b
}
```
Arguments are applied to lambdas in typical ML fashion by following the lambda with a number of whitespace-separated values.
```coffee
let o = double 3
let p = add 4 6

# you can also partially apply arguments to lambdas
let q = add 10
let r = q 5
let s = add 10 5    # q and s are equivalent
```
Now the part that might seem odd is that `o` and `p` don't immediately evaluate to `6` and `10` respectively. Even `n`, which we defined above, doesn't actually hold the value `5`.

Lambdas in Shove are *very* lazily evaluated, which means that `n`, `o`, and `p` are actually suspended expressions which won't evaluate to a value until they're explicitly told to.

The way you evaluate a lambda is by using the `!` (force) operator.
```coffee
let o = !double 3   # o = 6
let p = !add 4 6    # p = 10
```
Now we can actually get results from our functions. Very cool!



### Pipelines
There is also a kind of similar "shove" operator (the namesake of the language) that is written as `->`.
The shove operator will take the value on its left, apply it to the value on its right, and then force the evaluation of the result. This might sound confusing so let's look at an example.
```coffee
let val = 10 -> double   # val = 20
```
The `->` takes `10`, applies it to `double` and then forces `double 10` to evaluate to `20`.
An important detail is that, by default, `->` will always apply its left operand as the last argument of the lambda to its right.
```coffee
let val = 5 -> add 3
# the above can be rewritten as:
let val = !add 3 5
```

This is really just some syntactic sugar, but the idea here is that we can elegantly chain operations together into a sort of data pipeline.
`->` is left-associative and has the lowest operator precedence in the language, which means everything to the left of the operator gets evaluated 
```coffee
let val = 10 -> double -> add 3 -> double    # val = 46
```
Now for example let's say we have a subtraction function defined like this:
```coffee
let sub = { x, y | x - y }
```
Ok so far so good.
Now let's say we also have some number bound to `n`, and we want to use our subtraction function to do `n - 5` (a stupid example, but bear with me).

If we were to do:
```coffee
n -> sub 5
```
That would become `!sub 5 n`, which is actually `5 - n`! So what can we do?

Introducing yet another special operator: `~` (defer). On a practical level, the defer operator lets us change which parameter on the right receives `->`'s left operand.
```coffee
n -> sub ~ 5
```
Now instead of `n` being applied as `sub`'s *second* argument, it gets applied as its *first* argument! Wow! Now we've actually got `n - 5` just like we wanted.

Behind the scenes, `~` actually *defers* whichever parameter the lambda is expecting next, so that it is instead the last argument that gets applied to the lambda.

For example, let's make a function that concatenates three strings.
```coffee
let cat3 = { a, b, c | a + b + c }

let val1 = cat3 "foo" "bar" "baz"
let val2 = cat3  ~ "bar" "baz" "foo"
let val3 = cat3 "foo" ~ "baz" "bar"
```
`val`, `val2`, and `val3` are all equivalently evaluated as `"foobarbaz"`
(`val2` defers `cat3`'s `a` param to be the last positional argument, and `val3` instead defers the `b` param to be the last positional argument).

Technically you can add multiple `~`s in a row which would just continue rotating the lambda's remaining unapplied parameters, but you probably shouldn't ever do that because it serves no purpose other than making your code confusing and unreadable.

In general, it's best to simply think of `~` as a placeholder for the input of a function in a pipeline.



### Lambdas are First-Class
If you hadn't already guessed, lambdas are first-class values just like integers, strings, etc.
They can be passed as arguments to, and returned from, other lambdas.
```coffee
let do_twice = { f |    # here we assume `f` is a 1-argument lambda
  { x | x -> f -> f }
}

let val = 10 -> !do_twice { n | n + 1 }  # val = 12
```
This example might look a little complicated, but we're not doing anything crazy.
`do_twice` takes a lambda `f` as an argument, and then evaluates to a lambda which applies `f` twice in a row to whatever argument it receives.

We calculate `val` by giving `do_twice` a lambda that increments a number by `1`, we force `do_twice` to evaluate into a new function that takes an argument and increments it twice in a row, and then we shove `10` into it, producing `12`.



### Control Flow
Currently Shove has one special expression for control flow which is the *if-else-then* expression.  You can probably guess how this works.
```coffee
let val = if 2 >= 3 then "yes" else "no"    # val = "no"
```
The expression between `if` and `then` must evaluate to a boolean value (no implicit type coercions à la Python or Javascript).  Otherwise I feel like this is pretty self explanatory.



### Let Expressions
Shove's *let-in* expression behaves just like those in other functional languages.
It simply lets you create some additional bindings that you can use in an expression.
```coffee
let f = { x |       # f(x) = x^2 + x
  let 
    sq = { n | n * n }
  in
    x + !sq x
}
```
Any bindings between `let` and `in` are in scope only for the expression following the `in`.
You can also specify multiple bindings by separating them with commas.
```coffee
let g = 
  let
    foo = "a string.",
    bar = "another string."
  in
    foo + bar   # g = "a string.another string."
```



### Recursion
Like other expression-oriented languages, Shove has no loops and so instead we iterate by means of recursive functions.
We can use the `@` operator to reference a lambda from within its own body.
```coffee
let count_down = { n |
  if n < 0
    then []
    else n :: (n - 1 -> @)
}

let l = !count_down 5  # l = [5, 4, 3, 2, 1, 0]
```
This is a bit more flexible than calling the function by name (like you're probably used to), because now we can create anonymous functions that recurse.

For example, if we wanted to quickly calculate 10 factorial without defining a separate `factorial` function, we could just do this:
```coffee
10 -> { n | if n = 1 then n else n * (n - 1 -> @)}
```
Wow, that's pretty neat!



### To be continued
Like the language itself, this documentation is still incomplete.  I'll try to flesh it out over time as Shove develops.