#-*-coding: utf-8-*-
#!/bin/sh
# author: xq    date:16/04/19
# create link for tensorflow with python

#echo '进入root用户'
src='/usr/local/lib64/libstdc++.so.6.0.25'
dst='/usr/lib64/libstdc++.so.6'
sudo unlink $dst
if [ "$?" == "0" ]; then
    echo '删除"$dst"成功'
else
    echo '删除"$dst"失败'
    exit 1
fi
sudo ln -s $src $dst
if [ "$?" == "0" ]; then
    echo '创建"$dst"成功'
else
    echo '创建"$dst"失败'
    exit 2
fi

ls -l /usr/lib64/libstdc++.so.6*
#echo '退出root用户'
