cwlVersion: v1.0
class: Workflow

inputs:
  prodpy: File
  countpy: File
  averagepy: File
  reducepy: File

outputs:
  result:
    type: File
    outputSource: reduce/print

steps:
  prod:
    run:  prod.cwl
    in:
      pyfile: prodpy
    out: [wordout, numout]

  count:
    run: count.cwl
    in:
      pyfile: countpy
      words: prod/wordout
    out: [countout]

  average:
    run: average.cwl
    in:
      pyfile: averagepy
      nums: prod/numout
    out: [avgout]

  reduce:
    run: reduce.cwl
    in:
      pyfile: reducepy
      wordsin: count/countout
      numsin: average/avgout
    out: [print]