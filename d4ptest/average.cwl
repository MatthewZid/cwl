cwlVersion: v1.0
class: CommandLineTool
baseCommand: python

inputs:
  pyfile:
    type: File
    default:
      class: File
      location: average.py
    inputBinding:
      position: 1

  nums:
    type: File
    streamable: true
    inputBinding:
      position: 2

outputs:
  avgout:
    type: File
    streamable: true
    outputBinding:
      glob: avg.txt