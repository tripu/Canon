
# Sensible defaults

These general principles apply to all platforms, all programming languages and all data formats, unless explicitly stated otherwise.
(Rationale for some decisions is in parenthesis, like this.)

## *Physical* properties

### Character set

[Unicode](http://www.unicode.org/versions/latest/).

### Character encoding

[UTF-8](https://tools.ietf.org/html/rfc3629).

### New lines

UNIX-style, ie ASCII `LF` (`0x0A`).

A *newline* must be the last things to appear in a text file.
(By definition, a text file ends with a line.
And by definition, a line ends with a *newline*.
Possible exception: empty files.)

### Filenames

* Stick to ASCII characters.
* Avoid spaces, any kind of quotes, `/`, `\` and other OS-sensitive characters.
* Separate words with hyphens, `like-in-this-example`.
* Don't use uppercase at the beginning.
  Or anywhere else, unless it would make sense in natural language, eg `all-DNS-servers.cfg`, `David-expenses.`.
* Use more and longer extensions (to be explicit and verbose about contents); eg `.jpeg` instead of `.jpg`, `.tar.bz2` instead of `.tbz2`.
* Be verbose while reasonable; use longer filenames to convey more information.
* *Prepend* additional extensions in common scenarios.
  Examples:
  * `canvas-controller.OLD.js` is a deprecated version of that JS controller.
  * `portrait-thumbnail.BACKUP.jpeg` is a temporary backup of an image.
  * `.htaccess.DISABLED` is a file that we don't want the system to use right now.

## Formatting

### Indentation

Using spaces.
4 spaces.

Avoid `\t` altogether (it messes up with indentation if the *length* of tab isn't predictable, eg when printing on a terminal).

Align stuff vertically in columns when it improves readability and gives structure to the content, as long as it doesn't look awkward.

### Gutter

Maximum line length: 160 visible characters.
(It's exactly double of what we used to have on old, *physical* consoles.
It's an even number.
It's divisible by 5, and by 10.
In fact, it's divisible by 32, a nice power of 2.
Seems a reasonable compromise for the IT infrastructure we use nowadays.)

### Blank lines

Insert a blank line wherever it make sense to separate logical blocks.
Use also for clarity at the beginning and end of files (it'll be useful to signal boundaries when multiple files are being `cat`ted on a console).

Avoid two or more consecutive blank lines.
(They don't add information, much in the same way than two or more spaces between words don't add more meaning to that word separation.
If “two blank lines” is intended to mean something different from “only one blank line”, that difference should be clear; often it's not.
Consecutive blank lines are too verbose; waste screen real estate.
Consecutive blank lines are difficult to spot, and difficult to count, for the naked eye.)

### Markup language

When possible, use Markdown.
When using Markdown, opt for [CommonMark](http://commonmark.org/).

## Style

When writing natural language in a context where newlines don't matter, eg Markdown, break the line every time a new sentence begins.
(It improves readability of the source code; ideas are clearly separated in different lines.
It also has the added benefit that sentences that are maybe too long stick out from the rest.)

Exploit the richness of Unicode: don't settle for “3x4... 12 OK” when you can “3×4… 12 ✓”.
