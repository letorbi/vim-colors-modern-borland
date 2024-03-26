# Modern Borland colour scheme for Vim

The Modern Borland colour scheme for [Vim](https://www.vim.org/) is a tribute to the classic Turbo Pascal & Turbo C++ IDEs developed by Borland International Inc. in the early 1990'ties. It mimics the look of the interface and the syntax highlighting. Modern Borland is not related to the [Borland colorscheme](https://www.vim.org/scripts/script.php?script_id=92) that often ships with Vim.

Modern Borland offers two style variants. The *modern style* (default) has some colours changed slightly to make the code easier to read and to give the scheme also a more modern look. On the other hand the *classic style* uses exactly the same colours as the original IDE.

| Modern style  | Classic style |
| ------------- | ------------- |
| ![Vim with Modern Borland modern style](https://github.com/letorbi/vim-colors-modern-borland/raw/main/doc/screenshot_modern.png)  | ![Vim with Modern Borland classic style](https://github.com/letorbi/vim-colors-modern-borland/raw/main/doc/screenshot_classic.png)  |

## Installation

The Modern Borland colour scheme can be easily installed via a plugin-manager like [Plug](https://github.com/junegunn/vim-plug/) or [Vundle](https://github.com/VundleVim/Vundle.vim/). Just add the address of the GitHub repo to your list of plugins:

  * **Plug:** `Plug 'letorbi/vim-colors-modern-borland'`
  * **Vundle:** `Plugin 'letorbi/vim-colors-modern-borland'`

Some might want to use Vim's native plugin-management or [Pathogen](https://github.com/tpope/vim-pathogen/) instead. In that case you just have to clone the repository into the appropriate path in your Vim config-directory:

    git clone https://github.com/letorbi/vim-colors-modern-borland ~/.vim/pack/github/start/vim-colors-modern-borland

If you don't want to use a plugin-manager at all, you can simply clone the repository and copy the file *colors/borland.vim* into your Vim config-directory:

    git clone https://github.com/letorbi/vim-colors-modern-borland /tmp/vim-colors-modern-borland
    cp /tmp/vim-colors-modern-borland/colors/borland.vim ~/.vim/colors/borland.vim

## Options

The colour scheme can be configured by a set of global variables:

| Variable         | Values              | Description                                           |
|------------------|---------------------|-------------------------------------------------------|
| `g:BorlandStyle` | `modern`, `classic` | change the colour style (see screenshots above)       |
| `g:BorlandParen` | `0`, `1`            | (de)activate highlighting of brackets and parenthesis |

## Font

I recommend to use the font [Perfect DOS VGA 437](https://dafont.com/perfect-dos-vga-437.font) by [Zeh Fernando](http://zehfernando.com/) along with the Modern Borland colour scheme. The font emulates the look of the classic VGA text mode characters and is - at least in my opinion - quite readable. Just take a look at the screenshots above to get your own impression.

If you want to use Perfect DOS VGA 437 with the GTK-version of Vim (Gvim) or [MacVim](https://github.com/macvim-dev/macvim/), just install the font and add the following lines to your config-file:

    if has("gui_running")
	    set guifont=Perfect\ DOS\ VGA\ 437\ Win\ 12
	    set noantialias
    endif
 
If you want to use Perfect DOS VGA 437 with the text-version of Vim or [Neovim](https://neovim.io/), there is no way to set the font via the config-file. You will have to change the font of your terminal instead.

----

Copyright 2016-2024 Torben Haase \<[https://letorbi.com](https://letorbi.com)>
