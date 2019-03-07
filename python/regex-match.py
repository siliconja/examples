#!/usr/bin/env python

import re

txt = "   _HIT=2001:18:e8aa:a239:9ac:6b1e:b094:2d67"
x = re.search("^   _HIT=(.*)", txt)
print "text:", x.string
print "match:", x.group(1)
