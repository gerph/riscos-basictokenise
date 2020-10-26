# BASICTokenise

This repository contains a very simple tool for converting BBC BASIC files
from text into the tokenised form used by BBC BASIC. It is written in
perl, to be cross platform - the same code will run on Perl on both RISC OS
and unix-like systems.

## Usage

On unix-like systems:

    ./tokenise.pl <input> <output>

On RISC OS systems, it is expected that the took be invoked as a directory
in your library, with the !Run file invoking the tool. As such, this would
be:

    BASICTokenise <input> <output>
