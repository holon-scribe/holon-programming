Errata

p. 19: `<program> ::= <holon>`. This declares a program to be one 
holon, but example programs have many holons.

Correction proposed by @meta-ed:
```
- <program> ::= <holon>
+ <program> ::= <holon>+
```

p.19: `<holon name with parameters>`. The alternatives are either
text or all `%id%`, not both; but many examples have both, such
as `Invert matrix %A% with bounds %N% %M%`.

Correction proposed by @meta-ed:
```
<holon name with parameters> ::=
     <element of the unreserved symbols set>+
-      | (<left identifier bracket><identifier><right identifier bracket>)+
+      (<left identifier bracket><identifier><right identifier bracket><element of the unreserved symbols set>*)+
```