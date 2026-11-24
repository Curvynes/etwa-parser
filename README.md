# The product
My product should work like this:
```bash
bash parser.sh <file> <key>
```
Output:\
`<value_of_key>`


# Day 1:

- Coding my first bash program

- Finding out about Regex, it's difficulties and complexity, reference: https://www.geeksforgeeks.org/linux-unix/sed-command-in-linux-unix-with-examples/

- My first sed pattern
```bash
`FILE_CONTENT="$(cat $1 | sed 's/\b{\\|}\//d/g')";` # (Did not work at all)
```

- Realisation that sed and regex is different

- My first sed pattern
```bash
echo "$FILE_CONTENT" | sed ':a;N;$!ba;s/\n//g'` # (Worked to an extend)
```

### `sed` dictionary for my pattern

#### Loop
`:a` - define a checkpoint to jump back to\
`;` - end of statement\
`N` - append to the next line\
`$` - the last line of input\
`!` - negation like !=\
`b` - "branch" means jump to point x\
`a` - the label to jump to
#### Pattern
`s/` - substitute\
`\n` - new line character\
`//` - empty string / replace with nothing\
`/g` - replace it everywhere

###### *ended up not working :/*

## End of day 1:

### `bash` dictionary after my first day of coding with it

`$` - to reference something like a variable\
`$#` - references to the arguments used with the file\
`$0` - references to the file itself\
`$1-9` - reference to arguments so `$2` is the second argument\
`-ne` - not equal to so its the same as !=\
`&2` - sends an error\
`[![:space:]]` - any non-white space characters, the `!` inverts it\
`{VALUE%%}` - removes the longest suffix starting at X character\
`[[:space:]]` - indicator for `grep` that it should match with a space\
`${VALUE%}` % removes a trailing symbol/character\
`${VALUE#}` # removes a leading symbol/character

- Finished a basic json parser with a bunch of flaws

- learned about the basics of bash scripting

- plan for tomorrow: **make the parser able to parse json-objects aswell**