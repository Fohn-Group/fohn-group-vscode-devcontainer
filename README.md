# Fohn Group Vscode devcontainer

Enable development of Fohn-Ui, Fohn-Js and Fohn-Css within the same devcontainer using Visual Studio.

## Content

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
