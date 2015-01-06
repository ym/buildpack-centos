FROM centos:latest

ADD install.bash /install.bash

RUN /install.bash

ADD run.bash /run.bash

VOLUME ["/build"]
ENTRYPOINT ["/bin/bash", "-l"]
CMD ["-c", "/run.bash"]
