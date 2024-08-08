It appears I have to learn Fortran for my PhD...

# Notes

## Variables

Fortran is a *strongly typed* language, which means that each variable must have a type.

There are 5 built-in data types in Fortran:

- `integer`
- `real`
- `complex`: pair consisting of a real part and an imaginary number.
- `character`
- `logical`

## Declaring variables

The syntax for declaring variables is:

```
<variable_type> :: <variable_name>
```

Variable names must start with a letter and can consist of letters, numbers and underscores.

Fortran code is **case-insensitive**.

The statement `implicit none` tells the compiler that all variables will be explicitly declared; without this statement, variables will be implicitly typed according to the letter they begin with.

To assign a value to a variable, use `=`. Characters are surrounded by either single (') or double quotes ("). Logical or boolean values can be either .true. or .false..

## Floating-point precision

The desired floating-point precision can be explicitly declared using a `kind` parameter. the `iso_fortran_env` intrinsic module provodes `kind` parameters for the common 32-bit and 64-bit floating-point types.

Use `real32` and `real64` with the `iso_fortran_env` module and `c_float` and `c_double` with the `iso_c_binding`.