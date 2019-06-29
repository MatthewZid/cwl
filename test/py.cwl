cwlVersion: v1.0
class: CommandLineTool
baseCommand: python

requirements:
  InitialWorkDirRequirement:
    listing:
      - $(inputs.fromcut)

inputs:
  cutin:
    type: File
    inputBinding:
      position: 2
  fromcut:
    type: File
    inputBinding:
      position: 1

outputs:
  final:
    type: stdout
stdout: final.txt