rocks
=====
`rocks` is a CodeSpells mod! Learn more at https://codespells.org.

### Installation

Clone this repo

```
cd rocks
raco pkg install
raco codespells-install
```

Open up `main.rkt` and adjust the `codespells-workspace` accordingly. Run.

### Including this Rune Collection as a Package

`(require-mod rocks)`

This gives you access to `rocks:my-mod-lang` which you can combine into your mod's rune lang with `append-rune-langs`.

### Unreal Development

If you want to start up the Unreal project (`/Unreal`), install the following:
* Huge Rocks Pack: https://www.unrealengine.com/marketplace/en-US/product/huge-rocks-pack
  * Place in: `Plugins/Rocks/Content/HugeRocksPack`

### Releasing New Content

If you have only changed the Racket code, just push to Github.

If you have changed or added Unreal assets, push to Github and run `raco codespells-release`.
