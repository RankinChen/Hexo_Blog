# 未完成
FROM node:10.15.3-alpine
# 设置标签
LABEL author=当时我就吓傻啦 email=cll211@126.com site=http://yijinshui.com
# 设置容器内端口
EXPOSE 8000
# 添加目录
ADD . /app
# 设置当前工作目录
WORKDIR /app
# 复制文件
COPY . .
# 设置npm并且使用npm安装hexo以及相关插件，然后生成静态页并且安装hexo-server
RUN npm config set unsafe-perm true && \
    npm config set registry https://registry.npm.taobao.org && \
    npm install -g hexo-cli && \
    # hexo clean && \
    # cd src && \
    npm install hexo --save && \
    npm install hexo-neat --save && \
    npm install --save hexo-wordcount && \
    npm i -S hexo-prism-plugin && \
    npm install hexo-generator-search --save && \
    npm i hexo-permalink-pinyin --save && \
    hexo generate && \
    npm install hexo-server --save
# 设置工作目录
# WORKDIR src
# 使用hexo-server托管静态文件
ENTRYPOINT ["hexo", "server","-p","8000"]
