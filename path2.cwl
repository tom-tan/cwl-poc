class: CommandLineTool
cwlVersion: v1.0
baseCommand: [echo, Path2!]
inputs:
  - id: input
    type: File?
    inputBinding:
      position: 0
      valueFrom: |
        ${
          return self == null ? '' : self.basename;
        }
outputs: []
requirements:
  - class: DockerRequirement
    dockerPull: alpine
  - class: InlineJavascriptRequirement
