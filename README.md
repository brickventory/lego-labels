# BrickVentory Labels

This is a modified version of the labels from the [LEGO Brick labels at brickarchitect.com](https://brickarchitect.com/labels/).

- using the open SVG format for easier editing of labels
- exported PDF labels for easier printing
- format 62 x 13mm -> these fit onto the Aldi small drawer boxes
- folder organization according to [BrickLink catalog categories](http://www.bricklink.com/catalogTree.asp?itemType=P)

## Label Size and Fonts

![label measurements](label-template_62x13.png)

The labels use the **Chalet London** and **Chalet New York** fonts, which are the fonts used on the original LEGO boxes. You can find the font files in the `/font` folder.
## Image creation

Use the `makebrickimage.sh` script located in the `/bin` folder. It uses the ldraw library and the ldview programm.

## Contribution

Use the `label_62x13.svg` file to add a new label to the document. Export the singel label page to a PDF and sort it into the appropriate folder under `/labels`. The new PDF file name should follow the `$elementNumber-$elementName{-$elementColor}.pdf` naming pattern.

## References

[LDView project page](https://tcobbs.github.io/ldview/)

[LDView help](https://trevorsandy.github.io/lpub3d/assets/docs/ldview/Help.html)

List of available [command line options for LDView](https://trevorsandy.github.io/lpub3d/assets/docs/ldview/Help.html#CommandLinePrefs).
