#!/usr/bin/env -S just --justfile
# https://just.systems

set fallback := true

[private]
@default:
    just --list --list-submodules

branch := `git branch --show-current`

letter name=branch:
  mkdir -p letters
  nix run '.#letter'
  mv letter.pdf letters/ilkecan-bozdogan-letter-{{ name }}.pdf

resume name=branch:
  mkdir -p resumes
  nix run '.#resume'
  mv resume.pdf resumes/ilkecan-bozdogan-resume-{{ name }}.pdf
