## About

nanoc-weasyprint.rb is a
[nanoc](https://nanoc.app)
filter that integrates
[weasyprint](https://github.com/Kozea/WeasyPrint)
into nanoc.
The filter can create PDF documents from markdown
and other markup languages during the
[nanoc](https://nanoc.app)
build process.

## Examples

__Defaults__

The following example uses the
[default command-line options](https://0x1eef.github.io/x/nanoc-weasyprint.rb/Nanoc/WeasyPrint/Filter#default_options-class_method):

``` ruby
# Rules
require "nanoc-weasyprint"
compile "/example.md" do
  layout("/default.*")
  filter(:kramdown)
  write("/example.html")
  filter(:weasyprint)
  write("/example.pdf")
end
```

__Options__

The following example forwards command-line options to
[weasyprint](https://github.com/Kozea/WeasyPrint):

```ruby
# Rules
require "nanoc-weasyprint"
compile "/example.md" do
  layout("/default.*")
  filter(:kramdown)
  write("/example.html")
  filter(:weasyprint, argv: ["--encoding", "UTF-8"])
  write("/example.pdf")
end
```

## <a id='install'>Install</a>

**Rubygems.org**

nanoc-weasyprint.rb can be installed via rubygems.org.

    gem install nanoc-weasyprint.rb

## Sources

* [GitHub](https://github.com/0x1eef/nanoc-weasyprint.rb#readme)
* [GitLab](https://gitlab.com/0x1eef/nanoc-weasyprint.rb#about)

## License

[BSD Zero Clause](https://choosealicense.com/licenses/0bsd/).
<br>
See [LICENSE](./LICENSE).
