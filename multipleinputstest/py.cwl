cwlVersion: v1.0
class: CommandLineTool
baseCommand: python

inputs:
  pyfile:
    type: File
    inputBinding:
      position: 1

  arg1:
    type: File
    inputBinding:
      position: 2

  arg2:
    type: File
    inputBinding:
      position: 3

outputs:
  pyout:
    type: stdout
stdout: final.txt