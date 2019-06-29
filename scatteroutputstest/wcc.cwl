cwlVersion: v1.0
class: CommandLineTool
baseCommand: wc
arguments: ["-c"]

inputs:
  wordfile:
    type: File
    inputBinding:
      position: 2

outputs:
  wcout2:
    type: stdout
stdout: wcout2.txt