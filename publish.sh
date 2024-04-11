# #!/bin/bash

# # 导入已存在的GPG私钥

# GPG_PRIVATE_KEY=$1
# GPG_PASSPHRASE=$2
# MAVEN_USER_NAME=$3
# MAVEN_PASSWORD=$4

# echo "$GPG_PRIVATE_KEY"

# echo "$GPG_PRIVATE_KEY" >> private.key

# cat private.key

# gpg --batch --import private.key

# gpg --list-keys

# # 执行 Maven 构建并发布到 Maven 中央仓库
# # mvn --batch-mode clean package verify deploy -DskipTests=true -Dgpg.passphrase=$GPG_PASSPHRASE --settings .github/maven-settings.xml --file pom.xml



#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT

