# セットアップ
adafruit が[ライブラリ](https://github.com/adafruit/Adafruit_CircuitPython_ADS1x15)を用意してくれているのでそれを使う

```bash:pipでのインストール
pip3 install adafruit-circuitpython-ads1x15
```

```bash:システム全体にインストールする場合
sudo pip3 install adafruit-circuitpython-ads1x15
```

# ADS1115
```py3
import time
import board
import busio
import adafruit_ads1x15.ads1115 as ADS
from adafruit_ads1x15.analog_in import AnalogIn

# Create the I2C bus
i2c = busio.I2C(board.SCL, board.SDA)

# Create the ADC object using the I2C bus
ads = ADS.ADS1115(i2c)

# シングルエンド信号を使う場合(GNDとの電位差)
# Create single-ended input on channel 0
#chan = AnalogIn(ads, ADS.P0)

# 作動入力信号を使う場合(+,-の電位差)
# Create differential input between channel 0 and 1
chan = AnalogIn(ads, ADS.P0, ADS.P1)

while True:
    v = round(chan.voltage, 4)#電圧
    amp = v / 250 * 1000#電流
    p = (amp - 4.6) * 0.15772#圧力
    print("{:.3f}V, {:.3f}mA, {:.3f}MPa".format(v, amp, p))
    time.sleep(0.5)
```

import している board と busio はライブラリインストール時に一緒に入っている
