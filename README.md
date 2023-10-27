# tact.vim

<center>
  <img src=".github/BANNER.png" alt="Tact.Vim"/>
</center>

🚀 Adds syntax highlighting, grammar completion and miscellaneous support for the [Tact programming language](https://tact-lang.org/) to Vim 8+.

⚡ Tact is a new programming language for TON blockchain that is focused on efficiency and simplicity. It is designed to be easy to learn and use, and to be a good fit for smart contracts, because it is a statically typed language with a simple syntax and a powerful type system.

Does whasd asda asd asd asd asd a asd asd asdasd asdasda asdasdas asdd as das asdasda asdasda asdadas asd asd asd asd asd asdasdasd ad asdas adasd asdasda asda sasdasdasdasda asdasdad asdasdasda assdasdasd assdasda sdasdsad asd asdasd asdasd asdasd asda dasdasdadasdasdas asdasdasdads

## Features

- [Syntax highlighting](#highlighting), which closely follows Tact specification in its [Ohm grammar file](https://github.com/tact-lang/tact/blob/main/src/grammar/grammar.ohm)
- [Indentation](#indentation), as well as single-line and multi-line comments support
- [Basic indentation & folding support](#folding)
- [Compiler integration support](#usage)
- [Abbreviations](#abbreviations) in INSERT mode
- Auto-imports of stdlib traits for contracts once you type them!
- Omnicompletion (omnifunc) support of static (global) and extension (methods on types) functions from stdlib, and all of the basic grammar \
  (use `ctrl-x ctrl-o` to trigger it or setup shortcuts as you wish)
- Basic linting, which automatically triggers on omnicompletion. Don't forget to close your braces {}, parenthesis () and names, or use keyword completion instead ;)

See the highlighting showcase below (uses `One Dark` color scheme).\
Note, that you can [disable highlighting of identifiers](#highlighting), if you want to :)

<img src=".github/SHOWCASE.png" alt="Highlighting showcase" width="70%" style="display:inline;" />

## Installation

<details>
<summary>Vim's 8+ built-in package manager</summary>

This is the recommended installation method if you use at least Vim 8 and you don't use another package manager.
More about Vim's built-in package manager: [`:help packages`](https://vimhelp.org/repeat.txt.html#packages).

For Linux/macOS:

```sh
git clone 'https://github.com/novusnota/tact.vim.git' '~/.vim/pack/novusnota/start/tact'
```

For Windows/PowerShell:

```powershell
git clone 'https://github.com/novusnota/tact.vim.git' $HOME\vimfiles\pack\novusnota\start\tact
```

Don't forget to restart Vim after :)

</details>

<details>
<summary>Vundle</summary>

Info about Vundle: [Vundle repository](https://github.com/VundleVim/Vundle.vim).

Steps:
1. Add `tact.vim` to your plugin list in `~/.vimrc` (or `~/_vimrc` on Windows) by inserting
   the line that starts with `Plugin`:

   ```vim
   call vundle#begin()
     " ...
     Plugin 'novusnota/tact.vim'
     " ...
   call vundle#end()
   ```

2. Restart Vim or run `:source ~/.vimrc`.
3. Run `:PluginInstall`.

</details>

<details>
<summary>vim-plug</summary>

Info about vim-plug: [vim-plug repository](https://github.com/junegunn/vim-plug).

Steps:
1. Add `tact.vim` to your plugin list in `~/.vimrc` (or `~/_vimrc` on Windows) by inserting
   the line that starts with `Plug`:

   ```vim
   call plug#begin()
     "...
     Plug 'novusnota/tact.vim'
     "...
   call plug#end()
   ```

2. Restart Vim or run `:source ~/.vimrc`.
3. Run `:PlugInstall`.

</details>

## Configuration

### Completion

By default this plugin sets an `omnifunc` option to provide auto-completions by triggering <kbd>CTRL-x</kbd><kbd>CTRL-o</kbd> in INSERT mode. However, if you're using an LSP client for Tact language, it may overwrite this option and disable the completion and basic linting capabilities provided by this plugin alongside of it.

In order to prevent that behaviour in such niche case, you may want to bind completion features of this plugin to a `competefunc` option (which is quite conveniently triggered by <kbd>CTRL-x</kbd><kbd>CTRL-u</kbd> in INSERT mode). Add the following to your `~/.vimrc` (or `~/_vimrc` on Windows) if you'd like to prefer and bind `completefunc` over `omnifunc`:

```vim
" CTRL-x CTRL-u instead of CTRL-x CTRL-o
let g:tact_prefer_completefunc = 1
```

### Indentation

Add the following to your `~/.vimrc` (or `~/_vimrc` on Windows) to enable preferred indentation style for Tact:

```vim
let g:tact_style_guide = 1
```

### Highlighting

If you want to disable highlighting of identifiers: variables and constants (but not structures), add the following option:

```vim
let g:tact_blank_identifiers = 1
```

To disable highlighting of structures (names of traits, messages, contracts and structs), add the following:

```vim
let g:tact_blank_structures = 1
```

### Formatting

Basic code formatting can be done by a series of Vim motions: `gg=G` (plus <kbd>Ctrl-o</kbd> twice to return to the original cursor position), or by invoking a `:TactFmt` command, which does all that for you *without* messing up with your cursor. Use both with caution, as Vim-native indentation handling is known to be prone to errors.

### Folding

To enable code-folding add the following snippet. This one might have an impact on editing performance, proceed with
caution:

```vim
augroup tact_folding
    au!
    au FileType tact setlocal foldmethod=syntax
augroup END
```

### Abbreviations

To trigger an abbreviation, type it in followed by punctuation such as a space or comma, and it would get expanded into a code snippet. It's advised to use space for this as it usually produces best results.

These abbreviations (and auto-completions of their names) are available right away:

1. `a_fun` — expands to the function declaration
1. `a_extfun` — expands to the extension function declaration
1. `a_mutfun` — expands to the mutable function declaration
1. `a_natfun` — expands to the native function declaration
1. `a_co` — expands to the contract declaration
1. `a_tr` — expands to the trait declaration
1. `a_st` — expands to the struct declaration
1. `a_me` — expands to the message declaration
1. `a_se` — expands to send(SendParameters{...}) call

**Keep in mind** that abbreviations are always there and you can always type them in, even if they're not shown by omnicompletion when deemed not suitable for the current completion context.

To avoid expansion in INSERT mode, type Ctrl-V after the last character of the abbreviation (on Windows, type Ctrl-Q instead of Ctrl-V).

To completely disable abbreviations provided by this plugin only, add this to your `~/.vimrc` (or `~/_vimrc` on Windows):

```vim
let g:tact_disable_abbreviations = 1
```

### Linting

Simply run `:Tact` command to try to compile using Tacts' compiler and look for errors. See [Usage section](#usage) for more info on the command.

### Miscellaneous

For the ease of omnicompletion usage, you may want to add this or similar bindings:

```vim
" Open omnicompletion menu on ctrl-space
inoremap <silent> <c-space> <c-x><c-o>
```

It's often useful to combine results from omnicompletion (<kbd>Ctrl-x</kbd><kbd>Ctrl-o</kbd>) with the regular keyword completion (<kbd>Ctrl-x</kbd><kbd>Ctrl-n</kbd>), as omnicompletion has no notion of declared identifiers, such as fields, constants or variables. However, it tries to find best context options, conditionally falling back to syntaxcomplete. As a final measure when there are no syntax matches available, omnicompletion triggers the built-in keyword completion automatically, without you pressing any extra keys! As always, if omnicompletion doesn't suit a particular use-case, try keyword one!

## Usage

For your convenience there's a `:Tact` command available whenever you open any `.tact` files. It tries to run the `build` script from your `package.json` project file, which, as shown in [this official example here](https://docs.tact-lang.org/start#getting-started-from-scratch), should invoke a Tact compiler. You're expected to have a Node.js of the current LTS (or later) version installed on your system, alongside of `npm` for the `:Tact` command to work.

It's generally recommended to go over the [example](https://docs.tact-lang.org/start#getting-started-from-scratch), as it shows how to get started with Tact.
Alternatively, use the [official project template](https://github.com/tact-lang/tact-template): either copy or create a new repository based off of it.

Wish you good luck and fun exploring Tact! ⚡

## Useful Tact links

- [Official Website](https://tact-lang.org/)
- Discussion Group in [Telegram](https://t.me/tactlang)
- [X/Twitter](https://twitter.com/tact_language)

## License

Distributed under the same terms as Vim itself. See `:help license`.
