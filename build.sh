#!/bin/sh

# version 0.0.1 (@2015/05/17 01:45)
# version 0.0.2 (@2015/05/24 22:35)
# version 0.0.3 (@2015/05/25 00:25)
# version 0.0.5 (@2015/05/25 01:30)
# version 0.1.0 (@2015/06/13 19:25)
if [ $# == 1 ]; then
  python make_ui_table.py original/$1.png > tmp/$1.az
  python make_parts_map.py tmp/$1.az > tmp/$1.u
  python make_html.py tmp/$1.u > tmp/$1.div
fi
