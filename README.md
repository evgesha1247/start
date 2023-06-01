
## Код для смены темы
#### пример контроолера с использование провайдера
```dart

  late ThemeData _themeData = _lightTheme;
  ThemeData get getTheme => _themeData;
  ThemeController() {
    ThemeService.readData().then((value) {
      _setThemeMode(value ?? MyConstenst.LOCOL_NAME_LIGHT_THEME);
    });
  }

  Future<void> toggTheme() async {
    await _setThemeMode(
      _themeData == _lightTheme
          ? MyConstenst.LOCOL_NAME_DARK_THEME
          : MyConstenst.LOCOL_NAME_LIGHT_THEME,
    );
  }

  Future<void> _setThemeMode(String theme) async {
    _themeData = theme == MyConstenst.LOCOL_NAME_DARK_THEME ? _darkTheme : _lightTheme;
    await ThemeService.saveData(theme);
    notifyListeners();
  }

```
## Пример приложения

<br>

![header image](https://sun2-22.userapi.com/impg/RwofnBCu5B5072MMWpd3hnuty7XXF_DF-zcyWA/YzIFCvockLw.jpg?size=367x653&quality=96&sign=89ddc129110ec5c92de50cd4c55c5b79&type=album)
![header image](https://sun9-22.userapi.com/impg/j6PMG70PlkriHpvVEnE_wmBwJeuErSB6I2q5BA/XaNACElPO6w.jpg?size=367x653&quality=96&sign=38033594eb46e5b9435dd651aad0741c&type=album)

<br>
