# TrafficLight
### Switching traffic lights
* One-screen application
* First used func viewWillLayoutSubviews() for dynamic rounding
```
    override func viewWillLayoutSubviews() {
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        yellowLightView.layer.cornerRadius = redLightView.frame.width / 2
        greenLightView.layer.cornerRadius = redLightView.frame.width / 2
    }
```

![Traffic Light](https://user-images.githubusercontent.com/100304243/158055486-c1de98cc-e4cd-4469-946f-71481f2932b8.png)
