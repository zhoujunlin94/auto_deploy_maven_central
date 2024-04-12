#!/bin/bash

# 导入已存在的GPG私钥
gpg --batch --import private.key

gpg --list-keys

# 执行 Maven 构建并发布到 Maven 中央仓库
mvn --batch-mode clean deploy -DskipTests=true -Dgpg.passphrase=$INPUT_GPG_PASSPHRASE --settings maven-settings.xml --file pom.xml