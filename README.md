# My Docker playground
The purpose of this repository is to practice creating a local development app 

### Prerequisites
- Windows 10/11
- Docker Desktop
- Git Bash

**Important:**Be sure run all lsited commands form the root of the repo unless otherwised specified

## Shell Scripting
I will embed docker CLi commands into shell scripts, This way I don't have to remember all the steps.
### Running
```bash
./scripts/run-go.sh
```

## Custom Docker Image: Go Runner
I will build a docker image with a go program precompiled. Then I can run it when creating a container from it. A shell script gives these commands.
### Running
```bash
./scripts/run-go-with-Dockerfile.sh
```

### Notes
If you want the image to get deleted, uncomment the corresponding in [run-go-with-Dockerfile.sh](scripts/run-go-with-Dockerfile.sh).

## Custom Docker Image: Pocketbase Runner From Scratch
`
### Prerequisistes
Download, extract, and place the binary (named as such) into [executables](executables).

### Running
```bash
 ./scripts/pocketbase.sh
```

### Notes
Change the command passed to `docker run` to change the pocketbase command. (see [pocketbase.Dockerfile](./docker/pocketbase.Dockerfile))