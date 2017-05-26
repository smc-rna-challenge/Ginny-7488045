class: Workflow
cwlVersion: v1.0
dct:creator: {'@id': 'http://orcid.org/0000-0002-7681-6415', 'foaf:mbox': Ginny@synapse.org,
  'foaf:name': Ginny}
doc: 'SMC-RNA challenge fusion detection submission

  Fusion detection workflow'
hints: []
id: main
inputs:
- {id: TUMOR_FASTQ_1, type: File}
- {id: TUMOR_FASTQ_2, type: File}
name: main
outputs:
- {id: OUTPUT, outputSource: Hera/out_file, type: File}
steps:
- id: Hera
  in:
  - {id: fastq_1, source: TUMOR_FASTQ_1}
  - {id: fastq_2, source: TUMOR_FASTQ_2}
  - {default: ./, id: outpath}
  - {default: 32, id: thread_num}
  out: [out_file]
  run: Hera.cwl
