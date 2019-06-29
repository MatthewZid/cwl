cwlVersion: v1.0
class: Workflow

requirements:
  ScatterFeatureRequirement: {}

inputs:
  wf: File[]
  pyf: File

outputs:
  pyresult:
    type: File[]
    outputSource: py/pyout

steps:
  wc:
    run:  wc.cwl
    scatter: wordfile
    in:
      wordfile: wf
    out: [wcout1]
  
  wcc:
    run: wcc.cwl
    scatter: wordfile
    in:
      wordfile: wf
    out: [wcout2]

  py:
    run: py.cwl
    scatter: [arg1, arg2]
    scatterMethod: dotproduct
    in:
      pyfile: pyf
      arg1: wc/wcout1
      arg2: wcc/wcout2
    out: [pyout]