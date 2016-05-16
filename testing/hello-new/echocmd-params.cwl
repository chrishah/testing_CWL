#!/usr/bin/env cwl-runner

class: CommandLineTool

cwlVersion: "cwl:draft-3"

id: echocmd
inputs:
  - id: echo-in-message
    type: string
    label: "Message"
    description: "The message to print"
    default: "Hello World"
    inputBinding: {}
  - id: echo-in-outputfile
    type: string
    label: "Output file"
    description: "The file containing the message" 
outputs:
  - id: echo-out-filename
    type: File
    label: "Printed Message"
    description: "The file containing the message"
    outputBinding:
      glob: $(inputs['echo-in-outputfile'])
baseCommand: echo
arguments:
  - "-n"
  - "-e"
stdout: $(inputs['echo-in-outputfile'])
