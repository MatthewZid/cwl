cwlVersion: v1.0
class: CommandLineTool
baseCommand: python

inputs:
  pyfile:
    type: File
    default:
      class: File
      location: reduce.py
    inputBinding:
      position: 1

  numsin:
    type: File
    streamable: true
    inputBinding:
      position: 3

  wordsin:
    type: File
    streamable: true
    inputBinding:
      position: 2

outputs:
  print:
    type: stdout
stdout: print.txt