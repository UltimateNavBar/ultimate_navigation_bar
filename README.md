# ultimate_navigation_bar
[![pub package](https://img.shields.io/pub/v/ultimate_navigation_bar.svg)](https://pub.dev/packages/ultimate_navigation_bar)

The ultimate navigation bar for flutter.

## How to use
Ultimate Navigation Bar work with `Scaffold` by setup its `bottomNavigationBar`.
To use this plugin, add `ultimate_navigation_bar` as a [dependency in your pubspec.yaml file](https://flutter.dev/docs/development/platform-integration/platform-channels).

```yaml
dependencies:
  ultimate_navigation_bar: ^0.1.5
```

### UltimateNavBar

| Attributes        | Description                                                                       | Type          |
|-------------------|-----------------------------------------------------------------------------------|---------------|
| `backgroundColor` | AppBar background                                                                 | `Color`       |
| `itemsColor`      | Color of items                                                                    | `Color`       |
| `barHeight`       | AppBar height                                                                     | `int`         |
| `iconsSize`       | Size of icons                                                                     | `double`      |
| `isFloating`      | Nav Bar Floating                                                                  | `bool`        |
| `items`           | List of Items                                                                     | `List`        |
| `alignmentItems`  | Alignment vertical of icons/text                                                  | `TextAlign`   |
| `borderRadiusBar` | Border Radius of Bar (work if isFloating = true)                                  | `BorderRadius` |
| `gradientColors`  | List of colors that make the Nav Bar background gradient (min. 2 colors required) | `List<Colors>` |
| `gradientType`    | Orientation of the gradient (GradientType.horizontal or GradientType.vertical)    | `GradientType` |

### NavBarItem

| Attributes | Description                                                                      | Type        |
|------------|----------------------------------------------------------------------------------|-------------|
| `label`    | Label (if empty not visible)                                                     | `String`    |
| `icon`     | Icon                                                                             | `IconData`  |
| `onTap`    | Function to execute on tap                                                       | `Functions` |

### Documentation

### Example

``` dart
 bottomNavigationBar: UltimateNavBar(
          backgroundColor: Colors.grey.shade500,
          itemsColor: Colors.white,
          iconsSize: 30,
          items:[
            NavBarItem(
              label: 'Home',
              icon: Icons.search,
              onTap: () {
                print('tapped');
              }
            ),
            NavBarItem(
              label: 'Search',
                icon: Icons.search,
                onTap: () {
                  print('tapped');
                }
            ),
            NavBarItem(
              label: 'Profile',
                icon: Icons.search,
                onTap: () {
                  print('tapped');
                }
            ),
          ]
        ),
```
