# vagrant

## vagrant install
```
brew cask install vagrant
```

## 初期処理
```
# こっちでもいいかも vagrant init ubuntu/trusty64
# こっちでもいいかも vagrant box add ubuntu_14.04 https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box
vagrant init bento/ubuntu-14.04
```

```
# vagrant 1.8.7 は curl がバグってるので削除.
rm -rf /opt/vagrant/embedded/bin/curl
```

## コマンド
```
# 起動
vagrant up

# 停止
vagrant halt

# 再起動
vagrant reload

# 廃棄
vagrant destroy

# 状態確認
vagrant status
vagrant share

# 接続
vagrant ssh
vagrant ssh-config
```


## メモ

仮想マシンのエクスポート

```
$ vagrant package
→package.boxという名前のBoxファイルが生成される。
それを配布し、受け取った側は

$ vagrant box add new_box package.box
で利用できる。
```

## TODO

* vagrant up したら `Warning: Remote connection disconnect. Retrying` が表示されて ssh出来ない
* 調査中


