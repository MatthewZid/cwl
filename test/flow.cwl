cwlVersion: v1.0
class: Workflow

inputs:
  words: File
  pyf: File

outputs:
  complex_wordout:
    type: File
    outputSource: fin/final

steps:
  wc:
    run: test.cwl
    in:
      wordfile: words
      pyfile: pyf
    out: [wordcount, pyout]

  cut:
    run: cutcmd.cwl
    in:
      testin: wc/wordcount
      fromtest: wc/pyout
    out: [wcount, topy]
  
  fin:
    run: py.cwl
    in:
      cutin: cut/wcount
      fromcut: cut/topy
    out: [final]