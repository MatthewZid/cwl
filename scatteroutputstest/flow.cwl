cwlVersion: v1.0
class: Workflow

requirements:
  ScatterFeatureRequirement: {}
  MultipleInputFeatureRequirement: {}

inputs:
  wf: File[]

outputs:
  cutfile:
    type: File[]
    outputSource: cut/count

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

  cut:
    run: cut.cwl
    scatter: fromwc
    in:
      fromwc:
        source: [wc/wcout1, wcc/wcout2]
        linkMerge: merge_flattened
    out: [count]