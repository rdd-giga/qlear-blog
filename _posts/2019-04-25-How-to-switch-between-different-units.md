---
layout: post
title: ---
layout: post
title: How to switch between different units
tags: [product]
---

硬件发送上来的数据是一个固定的数值，当你想用其他单位显示数据时QLEAR可以根据您输入的自定义公式将原始数据转换，让数据展示更加贴近标准和专业。

## 第一步 打开kiosk setting

![image](https://user-images.githubusercontent.com/26155270/56710981-4ba06b00-675b-11e9-9a1e-4639e2f9d52f.png)

## 第二步 在content栏，找到想要更改的参数

![image](https://user-images.githubusercontent.com/26155270/56715953-aa6de080-676b-11e9-972e-0da750f87e6e.png)

## 第三步 点开下拉 会看到输入公式和选择单位的地方

![image](https://user-images.githubusercontent.com/26155270/56716045-e43ee700-676b-11e9-9d16-49d9daa69624.png)

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

## 第五步 选择单位

## 第六步 保存更改


