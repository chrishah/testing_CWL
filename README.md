# Exploring the _Common Workflow Language (CWL)_


CWL websites:
 - https://github.com/common-workflow-language/common-workflow-language
 - http://www.commonwl.org/draft-3/UserGuide.html

Example CWL workflows from the CWL developers [here](https://github.com/common-workflow-language/workflows).

Refernce implementation of CWL on Github [here](https://github.com/common-workflow-language/cwltool)

Dockerfile to build a self containing Docker images to run cwl-runner can be found [here](https://github.com/chrishah/testing_CWL/blob/master/Docker/Dockerfile).

Image is on Docker hub [here](https://hub.docker.com/r/chrishah/testing_cwl/).

To run as an executable:
```bash
sudo docker run --privileged --rm -it -v $(pwd):/home chrishah/testing_cwl:v1.0.0 cwl-runner
```

My own personal test workflows are [here](https://github.com/chrishah/testing_CWL/tree/master/testing).


Try to execute a very simple workflow:
```bash
cd testing/hello-new/
sudo docker run --privileged --rm -it -v $(pwd):/home chrishah/testing_cwl:v1.0.0 cwl-runner hello-new.cwl
```

To enter the container:
```bash
sudo docker run --privileged --rm -it -v $(pwd):/home chrishah/testing_cwl:v1.0.0 /bin/bash
```

If you want to use tools that make use of Docker you'll need to enter the container as described above and once there start the docker daemon:
```bash
service docker start
```

Then you're good to execute a tool that makes use of docker.
```bash
cd testing/mirabait/
cwl-runner mirabait.cwl mirabait-job.json 
```
