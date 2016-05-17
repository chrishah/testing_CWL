#!/usr/bin/env cwl-runner

class: CommandLineTool

cwlVersion: "cwl:draft-3"

requirements:
  - $import: envvar-global.yml
  - $import: mira-docker.yml
  - class: InlineJavascriptRequirement

id: mirabait
inputs:
  - id: bait-fasta
    type: File
    label: "Bait file"
    description: "Fasta file containing sequences to be used as bait"
    inputBinding:
      prefix: -b
      separate: true
      position: 1
  - id: kmer-size
    type: int
    default: "31"
    label: "k-mer length"
    description: "k-mer length used for baiting (default: 31)"
    inputBinding:
      prefix: -k
      separate: true
      position: 2
  - id: threads
    type: int
    default: "1"
    label: "Number of threads to use (default=1; maximum 4 CPU cores)"
    description: "Number of threads to use (default=1; maximum 4 CPU cores)"
    inputBinding:
      prefix: -t
      separate: true
      position: 3
  - id: infile-pe-interleaved
    type: File
    label: "Input sequences"
    description: "Paired end sequences (interleaved) in fastq format"
    inputBinding:
      prefix: -P
      separate: true
      position: 4
  - id: outfile
    type: string
    label: "Name of output file"
    description: "Target file to write the baited sequences to"
    default: "out.fastq"
    inputBinding:
      prefix: -o
      separate: true
      position: 5

outputs:
  - id: mirabait-outfile
    type: File
    label: "mirabait output file"
    description: "baited sequences"
    outputBinding:
      glob: $(inputs.outfile)
  - id: mirabait-stdout
    type: File
    label: "mirabait log"
    description: "mirabait log"
    outputBinding:
      glob: mirabait.log

baseCommand: mirabait
stdout: mirabait.log
