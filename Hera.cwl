baseCommand: [/hera/fusion/build/hera, quant, -i, /hera/fusion/hera_index]
class: CommandLineTool
cwlVersion: v1.0
hints:
- {class: DockerRequirement, dockerPull: 'quay.io/smc-rna-challenge/Ginny-7488045-fusion:1.0.0'}
inputs:
- id: fastq_1
  inputBinding: {position: 4}
  type: File
- id: fastq_2
  inputBinding: {position: 5}
  type: File
- id: outpath
  inputBinding: {position: 2, prefix: -o}
  type: string
- id: thread_num
  inputBinding: {position: 3, prefix: -t}
  type: int
outputs:
- id: out_file
  outputBinding: {glob: fusion.bedpe}
  type: File
requirements:
- {class: InlineJavascriptRequirement}
- {class: ResourceRequirement, coresMin: 16, ramMin: 60000}
