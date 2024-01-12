# ultimate_navigation_bar
[![pub package](https://img.shields.io/pub/v/ultimate_navigation_bar.svg)](https://pub.dev/packages/ultimate_navigation_bar)

The ultimate navigation bar for flutter.

## How to use
Ultimate Navigation Bar work with `Scaffold` by setup its `bottomNavigationBar`.
To use this plugin, add `ultimate_navigation_bar` as a [dependency in your pubspec.yaml file](https://flutter.dev/docs/development/platform-integration/platform-channels).

```yaml
dependencies:
  ultimate_navigation_bar: ^0.1.7

```


### Adapts to any use case

#### E-commerce
<img width="343" alt="image" src="https://github.com/UltimateNavBar/ultimate_navigation_bar/assets/67431499/43cdf7ad-1806-45cb-a69d-7125c1a567c9">


#### Social
<img width="342" alt="image" src="https://github.com/UltimateNavBar/ultimate_navigation_bar/assets/67431499/7d14132c-52b0-42f8-95c5-bf4ce91a7d84">

#### Finance
<img width="347" alt="image" src="https://github.com/UltimateNavBar/ultimate_navigation_bar/assets/67431499/7d55ccb3-f38d-4793-90f5-8527d76fa182">

#### Chat
<img width="348" alt="image" src="https://github.com/UltimateNavBar/ultimate_navigation_bar/assets/67431499/0bd577a2-a0b9-4e9c-a1fd-5493829b56d2">



### UltimateNavBar
![Untitled](https://github.com/UltimateNavBar/ultimate_navigation_bar/assets/67431499/54d2ab30-fc76-464e-a078-75573fb03f59)



| Attributes        | Description                                                                       | Type          |
|-------------------|-----------------------------------------------------------------------------------|---------------|
| `backgroundColor` | AppBar background                                                                 | `Color`       |
| `itemsColor`      | Color of items                                                                    | `Color`       |
| `barHeight`       | AppBar height                                                                     | `int`         |
| `iconsSize`       | Size of icons                                                                     | `double`      |
| `isFloating`      | Nav Bar Floating                                                                  | `bool`        |
| `items`(required)           | List of Items                                                                     | `List`        |
| `showIndicator`  | Shows the current tab indicator under the item label                                                  | `boolean`   |
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
