cwlVersion: v1.0
class: CommandLineTool
baseCommand: wc
arguments: ["-w"]

inputs:
  wordfile:
    type: File
    inputBinding:
      position: 2

outputs:
  wcout1:
    type: stdout
stdout: wcout1.txt