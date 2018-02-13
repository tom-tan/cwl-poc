class: CommandLineTool
cwlVersion: v1.0
baseCommand: python
inputs:
  - id: source
    type: File
    default:
      class: File
      location: branch.py
    inputBinding:
      position: -1
  - id: input
    type: string
    inputBinding:
      position: 0
outputs:
  output1:
    type: File?
    outputBinding:
      glob: output1.txt
  output2:
    type: File?
    outputBinding:
      glob: output2.txt
requirements:
  - class: DockerRequirement
    dockerPull: python:alpine
