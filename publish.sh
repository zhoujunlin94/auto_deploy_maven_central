#!/bin/bash

# 导入已存在的 GPG 密钥
gpg --import public.key

gpg --import private.key

gpg --list-keys


# 执行 Maven 构建并发布到 Maven 中央仓库
mvn clean deploy -DskipTests=true -Dgpg.passphrase=zhoujunlin --settings .github/maven-settings.xml  -X