# Docker-markdownlint

A Docker image for markdownlint-cli, command line Interface for markdownlint
(node js).

## Using the docker image

To check a single file :

```bash
docker run --rm -v ${PWD}:/data gouvinb/docker-markdownlint my_file.md
```

Or, to check all files in a directory:

```bash
docker run --rm -v ${PWD}:/data gouvinb/docker-markdownlint .
```

## Building from a docker file

The following will tag and upload a new release. Replace X.Y.Z as appropriate
version.

```bash
docker build -t gouvinb/docker-markdownlint:latest -t gouvinb/docker-markdownlint:X.Y.Z .
docker push gouvinb/docker-markdownlint:latest
docker push gouvinb/docker-markdownling:X.Y.Z
```

## Feedback

All feedback is welcome. Let me know if you have any suggestions, questions, or
criticisms. If something is not idiomatic to Docker, please let me know know so
we can make it better.

## Contributing

1.  Fork it!
2.  Create your feature branch: `git checkout -b my-new-feature`
3.  Commit your changes: `git commit -am 'Add some feature'`
4.  Push to the branch: `git push origin my-new-feature`
5.  Submit a pull request :D

## LICENSE

Copyright 2016 gouvinb. All rights reserved. Use of this source code is governed
by a BSD-style license that can be found in the LICENSE.md file.