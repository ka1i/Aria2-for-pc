## 使用的模块(use library)
- [libaria2](https://github.com/aria2/aria2.git)
```
./configure --enable-libaria2 --with-openssl --without-gnutls
make -j9
```
目标位置：./src/.lib
<br>
- libed2k
- [libcomponents](https://github.com/laserpants/qt-material-widgets.git)
```
cd build
qmake ../
make -j9
```
目标位置：./components

## 编译(build)
<code>注意(notice):本程序自带编译好的以上库,你也可以自行重新编译链接</code>
```
mkdir build
cmake ../
make -j9
```
程序位置:bin


## 编译libaria2(build libaria2)
如果你想自行编译(if you want to compile this library yousele)

官网Github仓库传送门[Aria2](https://github.com/aria2/aria2)
