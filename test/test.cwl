cwlVersion: v1.0
class: CommandLineTool
baseCommand: [wc, --words]

requirements:
  InitialWorkDirRequirement:
    listing:
      - $(inputs.pyfile)

inputs:
  wordfile:
    type: File
    inputBinding:
      position: 2
  pyfile:
    type: File

outputs:
  wordcount:
    type: stdout
  pyout:
    type: File
    outputBinding:
      glob: $(inputs.pyfile.basename)
stdout: out1.txt