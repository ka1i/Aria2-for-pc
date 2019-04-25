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


## How to build Aria2

```sh
libgnutls-dev（HTTPS，BitTorrent，Checksum支持需要）
nettle-dev（BitTorrent，Checksum支持需要）
libgmp-dev（BitTorrent必需）
libssh2-1-dev（SFTP支持需要）
libc-ares-dev（异步DNS支持需要）
libxml2-dev（Metalink支持需要）
zlib1g-dev（gzip需要，HTTP中的deflate解码支持）
libsqlite3-dev（Firefox3 / Chromium cookie支持需要）
pkg-config（检测已安装的库所必需的）
```

您可以使用libgcrypt-dev代替nettle-dev和libgmp-dev：

- libgpg-error-dev（BitTorrent，Checksum支持需要）
- libgcrypt-dev（BitTorrent，Checksum支持需要）

您可以使用libssl-dev而不是libgnutls-dev，nettle-dev，libgmp-dev，libgpg-error-dev和libgcrypt-dev：

- libssl-dev（HTTPS，BitTorrent，Checksum支持需要）

您可以使用libexpat1-dev而不是libxml2-dev：

- libexpat1-dev（Metalink支持需要）