#!/bin/bash

# 导入已存在的 GPG 密钥
gpg --batch --import public.key
gpg --batch --import private.key
gpg --list-keys


export GPG_TTY=zhoujunlin

echo "no-tty" >> ~/.gnupg/gpg.conf

chmod -R +x /github/workspace

pwd

# 执行 Maven 构建并发布到 Maven 中央仓库
mvn --batch-mode clean package verify deploy -DskipTests=true -Dgpg.passphrase=zhoujunlin --settings .github/maven-settings.xml --file pom.xml -X


# mvn clean install -X

find /github/workspace/ -print