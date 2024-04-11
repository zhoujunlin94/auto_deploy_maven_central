# FROM maven:3.8.1-openjdk-8

# # 将发布脚本添加到容器中
# COPY publish.sh /publish.sh

# # 设置可执行权限
# RUN chmod +x /publish.sh

# # 运行发布脚本
# ENTRYPOINT ["/publish.sh"]


# Container image that runs your code
FROM alpine:3.10

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY publish.sh /publish.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/publish.sh"]
