ARG BASE_IMAGE=jetbot/jetbot:jupyter-0.4.3-32.5.0
FROM ${BASE_IMAGE}

ENV DRAWBOT_HOME=/opt/drawbot
COPY . ${DRAWBOT_HOME}
RUN cd ${DRAWBOT_HOME} && ls && sh install_jetpack_docker.sh
