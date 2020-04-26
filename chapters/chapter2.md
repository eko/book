# My second title

## Intro

This is a sentance that goes on my chapter 2. You could write **bold things** and also *italic style* things.

It's also possible to ~~delete a text~~.

In case you want to highlight technical things such as this `src/internal/handler.go` file, you can too.

In this section, I will try to print a [link to my website](https://vincent.composieux.fr)

## A quoted string

> Ok, let's try to add a quote here.
by someone...

## A table

| Right | Left | Default | Center |
|------:|:-----|---------|:------:|
|   12  |  12  |    12   |    12  |
|  123  |  123 |   123   |   123  |
|    1  |    1 |     1   |     1  |

  : Demonstration of pipe table syntax.

## Some code example

```{.go .numberLines}
package main

func main() {
    a := 3
    b := 4

    println(add(a, b))
}

func add(a, b int) int {
    return a + b
}
```
