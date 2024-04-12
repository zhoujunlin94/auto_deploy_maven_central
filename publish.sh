#!/bin/bash

# 导入已存在的GPG私钥

cat private.key

# echo $INPUT_GPG_PRIVATE_KEY >> private.key

gpg --batch --import private.key

gpg --list-keys

# 执行 Maven 构建并发布到 Maven 中央仓库
# mvn --batch-mode clean package verify deploy -DskipTests=true -Dgpg.passphrase=$GPG_PASSPHRASE --settings .github/maven-settings.xml --file pom.xml