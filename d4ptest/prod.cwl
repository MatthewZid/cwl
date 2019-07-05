cwlVersion: v1.0
class: CommandLineTool
baseCommand: python

inputs:
  pyfile:
    type: File
    default:
      class: File
      location: rndm_prod.py
    inputBinding:
      position: 1

outputs:
  wordout:
    type: File
    outputBinding:
      glob: words.txt

  numout:
    type: File
    streamable: true
    outputBinding:
      glob: nums.txt