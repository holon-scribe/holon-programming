Errata

`<program> ::= <holon>` (p.19). This declares a program to be one 
holon, but example programs have many holons; should be `<holon>+`.

`<holon name with parameters>` (p.19). The alternatives are either
text or all `%id%`, not both; but many examples have both, such
as `Invert matrix %A% with bounds %N% %M%`.
