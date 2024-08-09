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

### Declaring variables

The syntax for declaring variables is:

```
<variable_type> :: <variable_name>
```

Variable names must start with a letter and can consist of letters, numbers and underscores.

Fortran code is **case-insensitive**.

The statement `implicit none` tells the compiler that all variables will be explicitly declared; without this statement, variables will be implicitly typed according to the letter they begin with.

To assign a value to a variable, use `=`. Characters are surrounded by either single (') or double quotes ("). Logical or boolean values can be either .true. or .false..

### Floating-point precision

The desired floating-point precision can be explicitly declared using a `kind` parameter. the `iso_fortran_env` intrinsic module provodes `kind` parameters for the common 32-bit and 64-bit floating-point types.

Use `real32` and `real64` with the `iso_fortran_env` module and `c_float` and `c_double` with the `iso_c_binding`.


## Arrays and strings

Arrays in Fortran are one-based by default; this means that the first element along any dimension is at index 1.

### Array declaration

There are two common notations for declaring array variables: using the `dimension` attribute or by appending the array dimensions in parentheses to the variables name.


## Operators and flow control

### Logical operators

| Operator | Alternative | Description |
| :--------: | :-----------: | ----------- |
| == | .eq. | Test for equality of two operands |
| /= | .ne. | Tests for inequality of two operands |
| > | .gt. | Tests if left operand is strictly greater than right operand |
| < | .lt. | Tests if left operand is strictly less than right operand |
| >= | .ge. | Tests if left operand is greater than or equal to right operand |
| <= | .le. | Tests if left operand is less than or equal to right operand |

| Operator | Description |
| :------: | ----------- |
| .and. | TRUE if both left and right operands are TRUE |
| .or. | TRUE if either left or right or both operands are TRUE |
| .not. | TRUE if right operand is FALSE |
| .eqv. | TRUE if left operand has same logical value as right operand |
| .neqv. | TRUE if left operand has the opposite logical value as right operand |

### Parallelizable loop (`do concurrent`)

The `do concurrent` loop is used to explicitly specify that *inside the loop there are no interdependencies*; this informs the compiler that it may use parallelization to speed up execution of the loop.

**`parameter` keyword**

`parameter` is important for declaring constants that otehrwise will require going beyond the language and using the preprocessor.

## Organising code structure

We can collect commonly-used code into *procedures* that cna be reused by *calling* them from other sections of code.

Fortran has two forms of procedure:

- **Subroutine**: invoked by a `call` statement
- **Function**: invoked within an expression or assignment to which it returns a value

**`intent` keyword**

The `intent` is used inside a subroutine in order to declare what the variable will be used for. Variables that are input though calling the function, i.e., arguments and will not be changed within the subroutine should be labelled as `intent(in)` (read-only), whereas variables that are simply placeholders should use `intent(out)` (write-only). Variables that will be read from the call and rewritten should use `intent(inout)` (read-write).
