cwlVersion: v1.0
class: CommandLineTool
baseCommand: python

inputs:
  pyfile:
    type: File
    default:
      class: File
      location: count.py
    inputBinding:
      position: 1

  words:
    type: File
    streamable: true
    inputBinding:
      position: 2

outputs:
  countout:
    type: File
    streamable: true
    outputBinding:
      glob: count.txt