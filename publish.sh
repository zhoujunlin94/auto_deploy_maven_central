#!/bin/bash

# 导入已存在的 GPG 密钥
gpg --batch --import public.key

gpg --batch --import private.key

gpg --list-keys

export GPG_TTY=zhoujunlin

# 执行 Maven 构建并发布到 Maven 中央仓库
# mvn clean deploy -DskipTests=true -Dgpg.passphrase=zhoujunlin --settings .github/maven-settings.xml  -X

mvn clean install
