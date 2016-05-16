#!/usr/bin/env cwl-runner

class: CommandLineTool

cwlVersion: "cwl:draft-3"

id: echocmd
inputs:
  - id: echo-in
    type: string
    label: "Message"
    description: "The message to print"
    default: "Hello World"
    inputBinding: {}
outputs:
  - id: echo-out
    type: File
    label: "Printed Message"
    description: "The file containing the message"
    outputBinding:
      glob: messageout.txt
baseCommand: echo
stdout: messageout.txt

