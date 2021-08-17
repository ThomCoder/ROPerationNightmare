# ROPeration Nightmare

_ROPeration Nightmare_ is a small program that is intentionally vulnerable.
But not only that, it is also set up to be an absolute security nightmare (hence the name 😉).

This means that there is not only bad code but also a terrible configuration/usage of compiler flags.
Upon further development of this project, it will be made incrementally less secure and/or even more versatile for exploitation.
In this specific case ROP ([return oriented programming](https://en.wikipedia.org/wiki/Return-oriented_programming)) is the target.

## Just why?

Being interested in IT security I stumbled upon numerous _secure coding tutorials_.
Those (at least in my experience) mostly revolve around the C language and touch on topics like "don't use this insecure function", beware of that string-thing, etc.

But I kept asking myself: Is that really all of the problem?
Are there other factors that determine the security of a C application?
If yes, which ones?

So I was on my way to find out, just from the other direction.
I try to create the most insecure (i.e. easy to exploit C application) and in the process find out, what really makes an application insecure.

## Findings:

- A great deal of current binaries' security comes from compiler features.
    - Most of them are default nowadays though (like NX or ASLR/PIE).