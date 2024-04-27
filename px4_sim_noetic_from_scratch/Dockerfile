FROM px4io/px4-dev-ros-noetic:latest
LABEL maintainer "nidhirajr@gmail.com"

RUN apt-get update; apt-get -y install \
        python3-pip \
        vim \
        tmux \
        tmuxinator \
        iputils-ping \
        git \
        ;
#making sure to avoid conflits while submodule updating
# RUN git config --global --add safe.directory '*'
# RUN make submodulesupdate

#download the required version of px4 with recurssive command
#RUN git clone https://github.com/PX4/PX4-Autopilot.git --recursive;




#to add cntrl+b+k to work
RUN touch ~/.tmux.conf; echo "bind k kill-session" >> ~/.tmux.conf

# Finally the command
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT /entrypoint.sh
