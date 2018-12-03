# Latex Archetype

[![Build in Jenkins](https://jenkins.empty-stack.com/statusbadges-build/icon?job=build_projects/latex/latex-archetype-builds/master)](https://jenkins.empty-stack.com/job/build_projects/job/latex/job/latex-archetype-builds/job/master/)

My personal latex archetype.

Used as starter in other latex-documents.


## Start

- Clone this repository
  - `git clone https://github.com/mam10eks/latex-archetype.git`
- Go into the repository
  - `cd latex-archetype`
- Remove old git history and create new initial git repository
  - `make init-as-fresh-git-repository`
- Remove this Start Section
- Have fun :)

## Usage (Bare Metal)

Run `make` to compile the document.
See the result in [output/document.pdf](output/document.pdf)

## Usage ([Visual Studio Code](https://code.visualstudio.com/) with [Latex-Workshop-Extension](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop))

Use the following settings.json:
```
{
    "latex-workshop.latex.outputDir": "../output",
    "latex-workshop.latex.tools": [
        {
            "name": "make",
            "command": "make",
            "args": ["-C", "%DIR%/.."]
        },
    ],
    "latex-workshop.latex.recipes": [
        {
            "name": "make",
            "tools": ["make"]
        },
    ]
}
```
