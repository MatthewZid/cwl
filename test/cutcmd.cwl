cwlVersion: v1.0
class: CommandLineTool
baseCommand: cut
arguments: ["-f", "1", "-d", " "]

requirements:
  InitialWorkDirRequirement:
    listing:
      - $(inputs.fromtest)

inputs:
  testin:
    type: File
    inputBinding:
      position: 3
  fromtest:
    type: File

outputs:
  wcount:
    type: stdout
  topy:
    type: File
    outputBinding:
      glob: $(inputs.fromtest.basename)
stdout: wcount.txt