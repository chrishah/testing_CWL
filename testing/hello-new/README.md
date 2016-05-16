## Simple test with 'echo'

The below examples assume that cwl-runner is installed and in your path.


__Echo message to file__

```bash
#echocmd.cwl contains the description of the tool
#check if it's ok
cwl-runner echocmd.cwl 

#hello-new.cwl describes the workflow that makes use of the above tool
cwl-runner hello-new.cwl 
```

__Allow parameter input__

```
#test the tool
cwl-runner echocmd-params.cwl

#test the worklow
cwl-runner hello-param-new.cwl
#or
cwl-runner hello-param-new.cwl -h
```

__Provide input to the workflow via a json file__
```bash
cwl-runner hello-param-new.cwl hello-param-new.json
```

__Provide input to the workflow via command line flags__
```bash
cwl-runner hello-param-new.cwl --useroutput song.txt --usermessage "testing"
```

To use the cwl-runner Docker image as executable instead of a locally installed executable:
```bash
sudo docker run --privileged --rm -it -v $(pwd):/home chrishah/testing_cwl:v1.0.0 cwl-runner hello-param-new.cwl -h
```


