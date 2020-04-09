# PHP 注解文档生成

从easyswoole组件中抽离出来 适用于php-fpm环境

## 安装

```
composer require siam/php-docs
```

## 默认使用

适用于普通环境，非框架

```
php vendor/bin/siam-docs tests [要扫描的目录名]
```

## 框架使用

以TP5.1为例，控制器、model等类文件是由框架内置的`自动加载逻辑`完成，所以我们需要自定义一个脚本，来初始化框架的事件


在根目录下新建一个文件`docs.php(任意名字)`，内容如下 `注意查看注释`

```php
<?php

use Siam\Docs\Doc\Render;
use think\Container;

require_once getcwd().'/thinkphp/base.php';
Container::get('app')->path(getcwd()."/app/")->run()->send();

// 主要是修改上面几行，下面是跟组件默认脚本步骤一致的
// 以上内容来源：TP的入口文件，入口文件即调用了框架初始化功能。我们复制过来即可

$array = $argv;
array_shift($array);
$file = array_shift($array);
if(empty($file)){
    $file = 'App/HttpController'; // 如果不传递目录名 则默认扫描的目录
}

$extra = array_shift($array);
if(!empty($extra) && is_file($extra)){
    $extra = file_get_contents($extra);
}else{
    $extra = null;
}

echo "scan dir: {$file}\n";

$string = Render::renderDir($file,$extra);

if(!empty($string)){
    file_put_contents('easy_doc.html',$string);
    echo "extra to  file: easy_doc.html\n";
}else{
    echo "no any api doc found\n";
}
```