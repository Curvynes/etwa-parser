#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Error (Invalid amount of arguments) Try: $0 <file> <key>" >&2;
    exit 1;
fi

FILE="$1";
KEY="$2";

if [ ! -f "$FILE" ]; then
    echo "Error: File '$FILE' not found" >&2;
    exit 1;
fi

LINE=$(grep -m 1 -E "\"${KEY}\"[[:space:]]*:" "$FILE") || {
    echo "Error: Key '$KEY' not found" >&2;
    exit 1;
}

VALUE=${LINE#*:};
VALUE=${VALUE%$'\r'};
VALUE="${VALUE#"${VALUE%%[![:space:]]*}"}";
VALUE="${VALUE%"${VALUE##*[![:space:]]}"}";

VALUE=${VALUE%,};
VALUE=${VALUE#\"};
VALUE=${VALUE%\"};

echo "$VALUE";