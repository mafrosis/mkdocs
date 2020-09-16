MkDocs Playground
=================

A page which simply demonstrates the things we can do with markdown in this system.


## Native support for .drawio images

Render .drawio files as SVG during the site build.

**Demo**

![A drawio file](demo.drawio)

**Syntax**

```
![A drawio file](demo.drawio)
```
Powered by the [`LukeCarrier/mkdocs-drawio-exporter`](https://github.com/LukeCarrier/mkdocs-drawio-exporter)


## Render arbitrary HTML attributes

Control the HTML attributes on the rendered markdown. If you inspect the following demo text, you
will see the `someid`, `someclass` and `somekey` attributes added to the rendered `<p>` tag.

**Demo**

This is demo text
{: #someid .someclass somekey='some value' }

**Syntax**

```
This is demo text
{: #someid .someclass somekey='some value' }
```
Powered by the [python-markdown `attr_list` extension](https://python-markdown.github.io/extensions/attr_list)


## Render emoji

Put emojis in your doco :memo:.

**Syntax**

```
:memo:
```
Powered by the [pymdownx emoji extension](https://facelessuser.github.io/pymdown-extensions/extensions/emoji)
