# testing_CWL

Dockerfile to build a self containing Docker images to run cwl-runner can be found here.

Image is on Docker hub here.

To run as an executable:
```bash
sudo docker run --privileged --rm -it -v $(pwd):/home chrishah/cwl-runner:v1.0.0 cwl-runner
```

To enter the container:
```bash
sudo docker run --privileged --rm -it -v $(pwd):/home chrishah/cwl-runner:v1.0.0 /bin/bash
```
