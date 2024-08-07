## Centos系统文档

|  说明 | 命令行  |
|---|---|
|  查看所有目录 | `ls`  |
|  查看当前地址 | `pwd`  |
|  切换到系统根目录 | `cd /`  |
|  编辑器 | `vi  <name>`  |
|  查看器 | `cat <name>`  |

## 编辑文本

```shell
cat alemon.toml #查看alemon.toml
```
```shell
vi alemon.toml #修改alemon.toml
```
进入后按`i`切换编辑模式

这时你可以任意更改字符

确认更改完毕后

按`ESC`退出编辑模式

同时输入`:wq!`并回车

表示强制保存当前文件


## 手动安装

> 安装**git**

```shell
yum -y install git
```

> 安装**nodejs**

```shell
yum install -y nodejs
```

> 安装**npm**

```shell
yum install -y npm
```

> 安装**redis-server**

```shell
yum -y install redis
```

> 启动**redis-server**

```shell
redis-server --daemonize yes
```

> 开机自启**redis-server**

```shell
systemctl enable redis.service
```

> 安装**必要环境**

<details>

  <summary>点击这里展开/折叠内容</summary>

pango.x86_64：用于处理文字布局和渲染的库。

libXcomposite.x86_64：X Window System 的扩展库，提供了窗口管理器可以使用的一些功能。

libXcursor.x86_64：用于设置和显示光标的 X Window System 库。

libXdamage.x86_64：X Window System 的扩展库，提供了窗口损坏事件的支持。

libXext.x86_64：X Window System 的扩展库，提供了各种扩展功能。

libXi.x86_64：X Window System 的输入设备库，用于处理输入设备事件。

libXtst.x86_64：X Window System 的测试库，用于模拟和生成测试事件。

cups-libs.x86_64：用于打印系统（CUPS）的库。

libXScrnSaver.x86_64：X Window System 的屏幕保护程序库。

libXrandr.x86_64：X Window System 的屏幕分辨率和旋转库。

GConf2.x86_64：GNOME 配置系统的库，用于应用程序配置管理。

alsa-lib.x86_64：Advanced Linux Sound Architecture（ALSA）的库，用于音频功能。

atk.x86_64：用于创建可访问性功能的库。

gtk3.x86_64：基于 GTK+ 的现代用户界面工具包

</details>

```sh
yum install pango.x86_64 libXcomposite.x86_64 libXcursor.x86_64 libXdamage.x86_64 libXext.x86_64 libXi.x86_64 libXtst.x86_64 cups-libs.x86_64 libXScrnSaver.x86_64 libXrandr.x86_64 GConf2.x86_64 alsa-lib.x86_64 atk.x86_64 gtk3.x86_64 -y 
```

<details>

  <summary>点击这里展开/折叠内容</summary>

libdrm：Direct Rendering Manager（DRM）库，用于管理计算机图形硬件设备的内核接口。

libgbm：通用缓冲管理器（Generic Buffer Manager）库，用于管理图形缓冲区的内存和共享。

libxshmfence：共享内存同步库，用于进程间的同步操作，特别是在多个图形应用程序之间。

</details>

```shell
yum install libdrm libgbm libxshmfence -y
```

> 安装**网络安全服务** 

```shell
yum install nss -y
yum update nss -y
```


>chrome浏览器生成`图片`

```shell
node ./node_modules/puppeteer/install.js
```

>文字安装解决`帮助图无文字`

```shell
yum groupinstall fonts -y 
```
