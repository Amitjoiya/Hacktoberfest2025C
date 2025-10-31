#!/usr/bin/env bash
LICENSE="// Copyright (c) $(date +%Y)"
for f in $(git ls-files "*.js" "*.py" "*.sh"); do
  head -n1 "$f" | grep -q "Copyright" || (echo -e "$LICENSE\n$(cat $f)" > "$f")
done
