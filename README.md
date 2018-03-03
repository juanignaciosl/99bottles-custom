# WeCode attendees

Suggestion: ignore this and just read the book.

[Slides](https://docs.google.com/presentation/d/16arc6BbPqrBIY6m34Xe5jubAiHys-9SmDYFPw7Ox05Y/edit#slide=id.g35f391192_09), totally uninteresting.

Take a look at the branches, there are the steps. Anyway, just read the book.

Really. Read-the-book :D

PS: and thank you very much for attending and for your warm feedback. We all knew that it should've been at least 2-hours long but you were really understanding :)

# 99 Bottles Kata

Based on [99 Bottles of OOP book](https://www.sandimetz.com/99bottles/) by Sandi Metz and Katrina Owen.

I'll follow the Ruby solution of the book, but feel free to checkout `initial` branch and make a version for your
language, or pick the tests from [the polyglot repo](https://github.com/sandimetz/99bottles-polyglot).

## Instructions

We'll assume that you have Ruby 1.9+.

1. `git clone <this repo>`.
2. `git fetch origin initial && git checkout initial`.
3. `bundle install`.
4. `ruby test/bottles_test.rb` should run with `8 runs, 0 assertions, 0 failures, 1 errors, 7 skips` result.

## Before the workshop...

... it'd be great if you did the exercise. This is the way that the authors suggest:

> The test suite contains one failing test, and many skipped tests. Your goal is to write code that passes all of the tests. Follow this protocol:

> 1. run the tests and examine the failure
> 2. write only enough code to pass the failing test
> 3. unskip the next test (this simulates writing it yourself)

> Repeat the above until no tests is skipped, and you’ve written code to pass each one.
> Work on this task for 30 minutes. The vast majority of folks do not finish in 30 minutes, but it’s useful, for later comparison purposes, to record how far you got. Even if you can’t force yourself to stop at that point, take a break at 30 minutes and save your code.
