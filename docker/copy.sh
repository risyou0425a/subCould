#!/bin/sh

# 复制项目的文件到对应docker路径，便于一键生成镜像。
usage() {
	echo "Usage: sh copy.sh"
	exit 1
}


# copy sql
echo "begin copy sql "
cp ../sql/ry_20230706.sql ./mysql/db
cp ../sql/ry_config_20220929.sql ./mysql/db

# copy html
echo "begin copy html "
cp -r ../shinetech-ui/dist/** ./nginx/html/dist


# copy jar
echo "begin copy shinetech-gateway "
cp ../shinetech-gateway/target/shinetech-gateway.jar ./shinetech/gateway/jar

echo "begin copy shinetech-auth "
cp ../shinetech-auth/target/shinetech-auth.jar ./shinetech/auth/jar

echo "begin copy shinetech-visual "
cp ../shinetech-visual/shinetech-monitor/target/shinetech-visual-monitor.jar  ./shinetech/visual/monitor/jar

echo "begin copy shinetech-modules-system "
cp ../shinetech-modules/shinetech-system/target/shinetech-modules-system.jar ./shinetech/modules/system/jar

echo "begin copy shinetech-modules-file "
cp ../shinetech-modules/shinetech-file/target/shinetech-modules-file.jar ./shinetech/modules/file/jar

echo "begin copy shinetech-modules-job "
cp ../shinetech-modules/shinetech-job/target/shinetech-modules-job.jar ./shinetech/modules/job/jar

echo "begin copy shinetech-modules-gen "
cp ../shinetech-modules/shinetech-gen/target/shinetech-modules-gen.jar ./shinetech/modules/gen/jar

