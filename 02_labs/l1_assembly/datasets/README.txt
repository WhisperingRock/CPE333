converted the solution to hex, prefixed with leading zeros using vim 
`:%s/.*/\=printf("%08X", str2nr(submatch(0)))/g`

to force all alpha to uppercase
:%s/[A-Za-z]/\=toupper(submatch(0))/g
