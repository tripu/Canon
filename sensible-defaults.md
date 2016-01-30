# Sensible defaults

These general principles apply to all platforms, all programming languages and all data formats, unless explicitly stated otherwise.
(Rationale for some decisions is in parenthesis, like this.)

1. [*Physical* properties](#1-physical-properties)
  1. [Character set](#11-character-set)
  1. [Character encoding](#12-character-encoding)
  1. [New lines](#13-new-lines)
  1. [Filenames](#14-filenames)
1. [Formatting](#2-formatting)
  1. [Indentation](#21-indentation)
  1. [Gutter](#22-gutter)
  1. [Blank lines](#23-blank-lines)
  1. [Markup language](#24-markup-language)
1. [Style](#3-style)

## 1 *Physical* properties

### 1.1 Character set

[Unicode](http://www.unicode.org/versions/latest/).

### 1.2 Character encoding

[UTF-8](https://tools.ietf.org/html/rfc3629).

### 1.3 New lines

UNIX-style, ie ASCII `LF` (`0x0A`).

A *newline* must be the last things to appear in a text file.
(By definition, a text file ends with a line.
And by definition, a line ends with a *newline*.
Possible exception: empty files.)

### 1.4 Filenames

* Stick to ASCII characters.
* Avoid spaces, any kind of quotes, `/`, `\` and other OS-sensitive characters.
* Separate words with hyphens, `like-in-this-example`.
* Don't use uppercase at the beginning.
  Or anywhere else, unless it would make sense in natural language, eg `all-DNS-servers.cfg`, `David-expenses-2014/`.
* Use more and longer extensions (to be explicit and verbose about contents); eg `.jpeg` instead of `.jpg`, `.tar.bz2` instead of `.tbz2`.
* Be reasonably verbose; use longer filenames to convey more information.
* *Prepend* additional extensions in common scenarios.
  Examples:
  * `canvas-controller.OLD.js` is a deprecated version of that JS controller.
  * `portrait-thumbnail.BACKUP.jpeg` is a temporary backup of an image.
  * `.htaccess.DISABLED` is a file that we don't want the system to use right now.

## 2 Formatting

### 2.1 Indentation

Using spaces.
4 spaces.

Avoid `\t` altogether (it messes up with indentation if the *length* of tab isn't predictable, eg when printing on a terminal).

Align stuff vertically in columns when it improves readability and gives structure to the content, as long as it doesn't look awkward.

### 2.2 Gutter

Maximum line length: 160 visible characters.
(It's exactly double of what we used to have on old, *physical* consoles.
It's an even number.
It's divisible by 5, and by 10.
In fact, it's divisible by 32, which is a nice power of 2.
That makes it convenient to divide the width of lines in equal columns.
It also seems a reasonable compromise for the IT infrastructure we use nowadays.)

### 2.3 Blank lines

Insert a **blank line** wherever it make sense to separate logical blocks.

Although I'd prefer to have a blank line at the beginning and end of files for clarity also, I have found this to be one of most contingent aspects in coding
style.
My blank lines at the beginning and at the end of files have been &ldquo;corrected&rdquo; or at least questioned multiple times in different projects.
So to avoid discussions about that in the future, I'm not doing that any more (those lines are useful to signal boundaries when multiple files are being
`cat`ted on a console, for example).

Avoid two or more consecutive blank lines.
(They don't add information, much in the same way than two or more spaces between words don't add more meaning to that word separation.
If “two blank lines” is intended to mean something different from “only one blank line”, that difference should be clear; often it's not.
Consecutive blank lines are too verbose; waste screen real estate.
Consecutive blank lines are difficult to spot, and difficult to count, for the naked eye.)

### 2.4 Markup language

When possible, **use Markdown**.
When using Markdown, **opt for [CommonMark](http://commonmark.org/)**.

## 3 Style

When writing natural language in a context where newlines don't matter, eg Markdown, **break the line every time a new sentence begins**.
(It improves readability of the source code; ideas are clearly separated in different lines.
It also has the added benefit that sentences that are maybe too long stick out from the rest.)

Exploit the richness of Unicode: don't settle for `3x4... 12 OK` when you can do `3×4… 12 ✓`.

When writing natural language (a Markdown document, a comment in a source file), **always end sentences with a full stop**.
Exceptions are: headings; and chunks of code were a colon at the end might induce confusion or constitute a syntax error.
(Full stops help detect broken lines or missing copy that might have been removed inadvertently; they also make sentences easier to parse automatically.)
