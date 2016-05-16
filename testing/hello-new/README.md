### Echo message to file

```bash
#echocmd.cwl contains the description of the tool
#check if it's ok
cwl-runner echocmd.cwl 

#hello-new.cwl describes the workflow that makes use of the above tool
cwl-runner hello-new.cwl 
```

### Allow parameter input 

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
