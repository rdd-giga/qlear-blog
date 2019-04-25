---
layout: post
title: ---
layout: post
title: How to switch between different units
tags: [product]
---

硬件发送上来的数据是一个固定的数值，当你想用其他单位显示数据时QLEAR可以根据您输入的自定义公式将原始数据转换，让数据展示更加贴近标准和专业。

例如，如图场所显示PM2.5单位为ug/m3

![image](https://user-images.githubusercontent.com/26155270/56717615-a774ef00-676f-11e9-8d53-cc00a8baeac1.png)

下面将展示如何将PM2.5单位做转换：

### 第一步 在导航栏找到Kiosk选项，选择想要编辑的场所，点击kiosk setting

![image](https://user-images.githubusercontent.com/26155270/56717846-24a06400-6770-11e9-922b-38549555d236.png)

![image](https://user-images.githubusercontent.com/26155270/56710981-4ba06b00-675b-11e9-9a1e-4639e2f9d52f.png)

### 第二步 在Content栏找到想要更改的参数

![image](https://user-images.githubusercontent.com/26155270/56717387-26b5f300-676f-11e9-9ca8-74d4e06e67f7.png)

### 第三步 点开这个参数，会看到输入公式和选择单位的地方

![image](https://user-images.githubusercontent.com/26155270/56717464-464d1b80-676f-11e9-822b-b9955f5e9bbb.png)

## 第四步 输入转换公式，我们支持以下运算：

默认当前类型的值为 `x`

### 加法运算

![image](https://user-images.githubusercontent.com/6499/56714217-bacf8c80-6766-11e9-9142-c83581f4cd92.png)


```
x + 0.5
```

### 减法运算

![image](https://user-images.githubusercontent.com/6499/56714208-b4411500-6766-11e9-8d1a-d3a119826879.png)

```
x - 0.5
```

### 乘法运算

![image](https://user-images.githubusercontent.com/6499/56714252-d20e7a00-6766-11e9-903d-ea6680e3d65f.png)

```
x * 0.5
```

### 除法运算

![image](https://user-images.githubusercontent.com/6499/56714265-dcc90f00-6766-11e9-9233-488d1e271145.png)

```
x / 2
```

### 平方运算

![image](https://user-images.githubusercontent.com/6499/56714301-008c5500-6767-11e9-9261-34ce43345d11.png)

```
x ** 2
```

### 混合运算

可以通过括号将上面的四则运算进行任意组合，如 

Sample: 简单的一元二次转换

![image](https://user-images.githubusercontent.com/6499/56714322-10a43480-6767-11e9-9c9b-53a447a3ad0d.png)

```
x ** 2 + 2 * x + 1
```

### 带变量运算
除了自身变量 `x` 外，还支持 同一时段其他指标数据的相应引用，其具体的变量名称为：

| 名称        | 描述                              |
| -           | -                                        |
| temperature | temperature                        |
| humidity    | relative humidity                   |
| hcho        | formaldehyde                    |
| co2         | carbon dioxide               |
| tvoc        | total volatile organic compounds  |
| pm2p5       | PM 2.5 particulate matter      |
| pm10        | PM 10 particulate matter        |
| pm100       | PM 100 particulate matter        |
| co          | carbon monoxide                 |
| so2         | sulphur dioxide                   |
| no2         | nitrogen dioxide     |
| o3          | ozone                         |

Sample： 某品牌的甲醛质量浓度转体积浓度的公式为

![image](https://user-images.githubusercontent.com/6499/56713966-e736d900-6765-11e9-978c-0bcc1719ed8a.png)

其中用到了当前的温度，则可以直接使用 temperature 作为变量

```
x / 30* (273.0 + temperature) / 273.0 + 22.4
```

### 第五步 选择单位

那么现在我将PM2.5的单位从ug/m3转换为mg/m3，在formula栏输入`x * 0.001`,单位选择mg/m3

![image](https://user-images.githubusercontent.com/26155270/56718485-6ed61500-6771-11e9-821f-9d71581c95d2.png)

## 第六步 保存更改

我们会看到

