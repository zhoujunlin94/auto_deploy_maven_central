#!/bin/bash

# 导入已存在的GPG私钥
MAVEN_USER_NAME=$3
MAVEN_PASSWORD=$4


cat <(echo -e "$GPG_PRIVATE_KEY") | gpg --batch --import

gpg --list-keys

# 执行 Maven 构建并发布到 Maven 中央仓库
# mvn --batch-mode clean package verify deploy -DskipTests=true -Dgpg.passphrase=$GPG_PASSPHRASE --settings .github/maven-settings.xml --file pom.xml