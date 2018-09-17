# Notes for problem authors

# Scientific notation

When using `contectScientificNotation.pl`, __always__ add regular multiplication.
We prefer to enter scientific notation with `*` rather than `x`, so that it
will work even in regular "Numeric" context.  This is what you want:

```Perl
Context("ScientificNotation");
Context()->operators->add(
         '*' => {precedence => 3, associativity => 'left', type => 'bin',
                    TeX => '\times ', class => 'ScientificNotation::BOP::x'},
    );
```

# Answer precision

Lots of issues with answer precision.  Do not require ridiculously precise
answers, that does not make any sense.  If your question requires students to
enter a probability approximation to 4 decimal places in order to see whether
they use some particular method of approximating the probability, it is a __bad
question__!

# Interfacing with R

* Plots: use ggplot2 or ggformula if possible
