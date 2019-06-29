cwlVersion: v1.0
class: CommandLineTool
baseCommand: python

inputs:
  pyfile:
    type: File
    inputBinding:
      position: 1

outputs:
  pyout:
    type: stdout
stdout: str.txt