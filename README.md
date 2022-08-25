# 执行脚本时可能出现source 命令未找到的情况：source: not found，主要原因是ubuntu系统下的/bin/sh 链接的是dash:
1. 使用命令查看：
ls -l /bin/sh
显示为： /bin/sh -> dash

2. 修改默认链接，使用命令：
sudo dpkg-reconfigure dash
弹出界面选择“No”

3. 使用上述1再次查看链接：
显示为： /bin/sh -> bash
经过上述就可以使用source命令了

