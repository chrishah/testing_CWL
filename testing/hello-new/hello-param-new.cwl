#!/usr/bin/env cwl-runner

class: Workflow

cwlVersion: "cwl:draft-3"

id: main
label: "Hello World"
description: "Puts a message into a file using echo"
inputs:
  - id: usermessage
    type: string
  - id: useroutput
    type: string
outputs:
  - id: output
    type: File
    source: "#step0/echo-out-filename"
steps:
  - id: step0
    run: "echocmd-params.cwl"
    inputs:
      - { id: echo-in-message, source: "#usermessage" }
      - { id: echo-in-outputfile,  source: "#useroutput"  }
    outputs:
      - { id: echo-out-filename }
