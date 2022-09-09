delete.field = {keywords}
delete.field = {abstract}

key.format = short
key.generation = on

print.align = 12
print.align.key = 0
print.align.string = 0
print.indent = 2
print.line.length = 999
print.use.tab = off
print.wide.equal = on

% use braces instead of double quotes as delimiters
resource braces

sort = on





% use three letter month macros
%
% bibtool comes with a resource that addresses this problem, but sadly contained a bug.
%   https://github.com/ge-ne/bibtool/issues/88
% so instead we copy the content from the fixed resource.
rewrite.rule { month
                = "^[\"{] *\([^#]*\)january\([^#]*\) *[\"}]$"
                # "{\1} # jan # {\2}" }
rewrite.rule { month
                = "^[\"{] *\([^#]*\)february\([^#]*\) *[\"}]$"
                # "{\1} # feb # {\2}" }
rewrite.rule { month
                = "^[\"{] *\([^#]*\)march\([^#]*\) *[\"}]$"
                # "{\1} # mar # {\2}" }
rewrite.rule { month
                = "^[\"{] *\([^#]*\)april\([^#]*\) *[\"}]$"
                # "{\1} # apr # {\2}" }
rewrite.rule { month
                = "^[\"{] *\([^#]*\)may\([^#]*\) *[\"}]$"
                # "{\1} # may # {\2}" }
rewrite.rule { month
                = "^[\"{] *\([^#]*\)june\([^#]*\) *[\"}]$"
                # "{\1} # jun # {\2}" }
rewrite.rule { month
                = "^[\"{] *\([^#]*\)july\([^#]*\) *[\"}]$"
                # "{\1} # jul # {\2}" }
rewrite.rule { month
                = "^[\"{] *\([^#]*\)august\([^#]*\) *[\"}]$"
                # "{\1} # aug # {\2}" }
rewrite.rule { month
                = "^[\"{] *\([^#]*\)september\([^#]*\) *[\"}]$"
                # "{\1} # sep # {\2}" }
rewrite.rule { month
                = "^[\"{] *\([^#]*\)october\([^#]*\) *[\"}]$"
                # "{\1} # oct # {\2}" }
rewrite.rule { month
                = "^[\"{] *\([^#]*\)november\([^#]*\) *[\"}]$"
                # "{\1} # nov # {\2}" }
rewrite.rule { month
                = "^[\"{] *\([^#]*\)december\([^#]*\) *[\"}]$"
                # "{\1} # dec # {\2}" }

rewrite.rule { month = "^{ *} # " = ""}
rewrite.rule { month = " # { *}$" = ""}
