MkDocs Playground
=================

A page which simply demonstrates the things we can do with markdown in this system.


## Code

Show code snippets with syntax highlighting.

**Demo**

```python
def fibonacci():
    '''Generator for the fibonacci series'''
    a = 0
    b = 1
    while True:
        yield a
        a, b = b, a + b
```

**Syntax**

```
```python
def fibonacci():
  '''Generator for the fibonacci series'''
  a = 0
  b = 1
  while True:
      yield a
      a, b = b, a + b
````
```
The final trailing backtick must be removed from your markdown - it's here so the example renders
correctly.


## Tabs

Separate content with tabbed blocks.

**Demo**

===! "Tab 1"
    Markdown **content**

    Multiple paragraphs

=== "Tab 2"
    More Markdown __content__

    - list item a
    - list item b

    ```js
    for(i=0;++i<101;console.log(i%5?f||i:f+'Buzz'))f=i%3?'':'Fizz'
    ```

**Syntax**

```
===! "Tab 1"
    Markdown **content**

    Multiple paragraphs

=== "Tab 2"
    More Markdown __content__

    - list item a
    - list item b

    ```js
    for(i=0;++i<101;console.log(i%5?f||i:f+'Buzz'))f=i%3?'':'Fizz'
    ```
```
Powered by the [pymdownx `tabbed` extension](https://facelessuser.github.io/pymdown-extensions/extensions/tabbed)


## Info box

Render an info box, or "callout" box. These can default to render either open, or closed.

**Demo**

???+ "Open info box"
    Some content

???+ warning "Another open info box, with custom icon"
    Some more content

    ??? danger "Nested and closed info box"
        And more content again.

**Syntax**

```
???+ "Open info box"
    Some content

???+ danger "Another open info box, with custom icon"
    Some more content

    ??? "Nested and closed info box"
        And more content again.
```
Powered by the [pymdownx `details` extension](https://facelessuser.github.io/pymdown-extensions/extensions/details)


## Footnotes

Support for references or footnotes in body text. Most useful for repeated references to an external
source.

**Demo**

A initial reference[^1] to some remote source[^1]. Followed by a second reference[^2].

[^1]: https://example.com/footnote1
[^2]: https://example.com/footnote2

**Syntax**

```
A initial reference[^1] to some remote source[^1]. Followed by a second reference[^2].

[^1]: https://example.com/footnote1
[^2]: https://example.com/footnote2
```
Powered by the [python-markdown `footnotes` extension](https://python-markdown.github.io/extensions/footnotes)


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
