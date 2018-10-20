# //使用 node 8.12.0 精简版作为镜像
FROM node:8.12.0-slim

# 按照nginx

RUN apt-get update \
    && apt-get install -y nginx

# 指定工作目录
WORKDIR /app

# 将当前目录下所以文件拷贝到工作目录
COPY . /app/

# 声明运行时容器提供的端

EXPOSE 80

# 1安装依赖
# 2运行npm run buil
# 3将dist目录所有文件拷贝到nginx目录
# 4删除工作目录文件，尤其时node_modules 以减少镜像提交
# 由于镜像构建的每一步都会产生新层
# 为了减少镜像体积，尽可能将一些同类操作，集成到一步

RUN yarn \
    && npm run build \
    && cp -r dist/* /var/www/html \
    && rm -rf /app

# 以前台方式启动 nginx
CMD ["nginx","-g","daemon off;"]


