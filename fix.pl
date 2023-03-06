#!/usr/bin/perl

@sects = ('nada','chapter','section','subsection','subsubsection', 'paragraph');

while (<>) {
  #chomp;
  #chop;
  s/&/\&/;
  s/\$/\$/;
  s@<ul>@\\begin{itemize}@;
  s@</ul>@\\end{itemize}@;
  s@<li>(.*)@\\item $1@;
  if (m@<h2>([\d\.]+)\s*<em>(.*)\s*</em>\s*</h2>@) {
    $dots = split /\./,$1;
    $header = $sects[$dots];
    printf "\\%s{%s}\n", $header, $2;
  } elsif (m@^<p>(.*)@) {
    printf "\\par\n$1\n";
  }
  else {print;}
}

print "\n\\end{document}"."\n";
