cwlVersion: v1.0
class: Workflow

inputs:
  inp: string # '1' or others

outputs: []

steps:
  br:
    run: branch.cwl
    in:
      input: inp
    out: [output1, output2]

  path1:
    run: path1.cwl
    in:
      input: br/output1 # optional parameter を pass できない！
    out: []
  path2:
    run: path2.cwl
    in:
      input: br/output2
    out: []
