# UK veraPDF image

This image is meant to check the validity of provided PDF/A files according to
university provided profile.

Read more about validation here: [cuni.cz](https://cuni.cz/UK-7987.html)

# Usage

## Building the container

The docker image is built as such:
```sh
cd path/to/cuni-thesis-validator
docker build -t thesis-validator .
```

## Using the container

Once you are in the container run the verify script with your pdf as an single
argument

```
verify my-thesis.pdf
```

The command will dump the verapdf output. To gather the result as a return code
you need to do something like:

```
verify my-thesis.pdf | grep 'isCompliant="true"'
```

Note that this is highly dependent on the format of verapdf output and if 
you find a better way, please feel free to report it here as an improvement.

## TL;DR way with docker

```sh
cd path/to/thesis/directory/with/thesis/pdf
docker run -v $PWD:/thesis thesis-validator verify /thesis/thesis.pdf |grep validationReports
```
