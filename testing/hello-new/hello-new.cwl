#!/usr/bin/env cwl-runner

class: Workflow

cwlVersion: "cwl:draft-3"

id: main
label: "Hello World"
description: "Puts a message into a file using echo"
inputs: []
outputs:
  - id: output
    type: File
    source: "#step0/echo-out"
steps :
  - id: step0
    run: "echocmd.cwl"
    inputs: []
    outputs:
      - { id: echo-out }
