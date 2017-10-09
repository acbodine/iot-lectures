# Developer Advocacy presentation template for Reveal

This presentation template is based on [Reveal.js + Pug](https://github.com/jlengstorf/reveal.js-jade).

To run this locally, [download IBM Plex Sans](https://www.ibm.com/innovate/brand/typography/) for proper display.

## Displaying and developing presentation(s)

To run this presentation locally, run the following:

```bash
# clone the repo
git clone git@github.ibm.com:DeveloperAdvocacy/sample-lecture-template.git my-presentation

# move into the repo
cd my-presentation/

# install dependencies
npm install

# start the development server
npm start
```

This start a local server and opens a new tab at `http://localhost:8000/`.

### NOTE: You only need to edit the `index.pug` file in the templates directory.

Presentations built with this template should be kept in a repository separate from other assets used in a loot crate. Ideally, when complete the presentation and associated repository would be located on an public github repository. Turn on Github Pages, which will allow the main presentation on `index.html` to be viewable at https://github.com/<org>/<presentation-repo> .

While developing, changes to `templates/index.pug` will overwrite the `index.html` file in the project root. This means that any changes to `index.html` will be overwritten the next time `index.pug` is saved.

You can create multiple presentations within the repository tree by starting with your own `.pug` file in the `templates/` folder. There's already an example `templates/demo.pug` which is built by grunt to `demo.html` and accessible at `http://localhost:8000/demo.html`. For new `.pug` files added to `templates/` update the `Gruntfile.js` by adding the files to the `pug.compile.files` property in the config. For example to add `templates/myfile.pug` to the build list:

```
...
pug: {
  compile: {
    options: {
      pretty: true,
      doctype: 'html'
    },
    files: {
      "index.html": "templates/index.pug",
      "demo.html": "templates/demo.pug",
      "myfile.html": "templates/myfile.pug"
    }
  }
},
...
```
