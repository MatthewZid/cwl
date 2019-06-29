cwlVersion: v1.0
class: CommandLineTool
baseCommand: cut
arguments: ["-f", "1", "-d", " "]

inputs:
  fromwc:
    type: File
    inputBinding:
      position: 5

outputs:
  count:
    type: stdout
stdout: $(inputs.fromwc.nameroot)_final$(inputs.fromwc.nameext)