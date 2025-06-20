## Fohn Group Vscode devcontainer

Enable development of Fohn-Ui, Fohn-Js and Fohn-Css within the same devcontainer using Visual Studio.

### Content

Create docker services:

 - Web: PHP with XDebug3, Apache and SQLite with some extra php extensions.
 - mysql: Data is kept into the app-data/mysql directory for persisting purpose.

The Web container clone three repositories from Fohn-Group:
- Fohn-Ui
- Fohn-Js
- Fonh-Css

All three repositories are added to the Visiual Studio Code workspace.
It allow to develop Fohn-Js and Fohn-Css files and see result in Fohn-Ui pages.

When container start, all  dependencies for each repo are installed giving you a ready to use environement in Visual Studio Code editor.

### Fohn-Js / Fohn-Css development inside the devcontainer

By default, Fohn-Ui use cdn in order to load javascript and css files dependencies. For Fohn-Js and Fohn-Css development, you will need to load build js or css files within Fohn-Ui. 

At the devcontainer terminal for js build:
```
cd fohn-js
npm run dev
```

At the devcontainer terminal for css build:

```
cd fohn-css
npm run dev
```

The above command will build js ans css files and place them inside the `/public` directory of Fohn-Ui. In order to be able to load build js and css files, instead of production file from cdn, simply set the 'env' config variable to Ui::DEV_ENV from the config.local.php file. This file is located inside the fohn-ui directory.



<div style="text-align: right"> config.local.php </div>

```php
                                                              
    // previous file content
    /*
     * Environment setting.
     * Uncomment this line in order to develop fohj-js and foh-css.
     * You will need to run `npm run dev` in the fohn-js and fohn-css directories.
     */
    'env' => Ui::DEV_ENV,
    // next file content
```
