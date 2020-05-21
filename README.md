# unityDeleteUIWebView

因为UIWebView存在于.a静态库里面，所有此脚本是在逆向.a后将里面的UIWebView去掉，然后重新生成.a替换原来的.a，具体使用步骤如下：

第一步：在工程找到libiPhone-lib.a所在文件夹路径

第二步：拷贝unityDeleteUIWebView内所有文件到此路径，并打开终端定位到该路径

例如：cd Libraries

第三步：终端开启文件权限

chmod 777 lanch.sh

第四步：执行脚本

./lanch.sh
