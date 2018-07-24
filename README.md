Modern Borland colorscheme for Vim
===========================

The Modern Borland colorscheme for Vim is a tribute to the classic IDE developed by Borland International Inc. in the
early 1990'ties. It mimics the look of the interface and the syntax highlighting. Modern Borland is not related to the
[Borland colorscheme](https://www.vim.org/scripts/script.php?script_id=92) that often ships with vim.

Modern Borland offers two style variants:

### Modern style

The modern style is the default. It has some colours changed slightly to make the code easier to read and to give the
scheme also a more modern look:

![Vim with Modern Borland modern style](https://github.com/letorbi/vim-colors-borland/raw/master/doc/screenshot_modern.png)

### Classic style

The class style can be activated by adding `let g:BorlandStyle = "classic"` to your config file. It uses exactly the
same colours as the original IDE:

![Vim with Modern Borland classic style](https://github.com/letorbi/vim-colors-borland/raw/master/doc/screenshot_classic.png)

## Installation

The Modern Borland colorscheme can be easily installed via a plugin-manager like [Plug](https://github.com/junegunn/vim-plug/)
or [Vundle](https://github.com/VundleVim/Vundle.vim/). Just add the address of the GitHub repo to your list of plugins:

  * **Plug:** `Plug 'letorbi/vim-colors-borland'`
  * **Vundle:** `Plugin 'letorbi/vim-colors-borland'`

Some might want to use Vim's native plugin-management or [Pathogen](https://github.com/tpope/vim-pathogen/) instead. In
that case you just have to clone the repository into the appropiate path in your Vim config-directory:

    git clone https://github.com/letorbi/vim-colors-borland ~/.vim/pack/github/start/vim-colors-borland

If you don't want to use a plugin-manager at all, you can simply clone the repository and copy the file
*colors/borland.vim* into your Vim config-directory:

    git clone https://github.com/letorbi/vim-colors-borland /tmp/vim-colors-borland
    cp /tmp/vim-colors-borland/colors/borland.vim ~/.vim/colors/borland.vim

## Font

I recommend to use the font [Perfect DOS VGA 437](https://dafont.com/perfect-dos-vga-437.font) by
[Zeh Fernando](http://zehfernando.com/) along with the Modern Borland colorscheme. The font emulates the look of the
classic VGA text mode characters and is - at least in my opinion - quite readable. Just take a look at the screenshots
above to get your own impression.

If you want to use Perfect DOS VGA 437 with GTK-version of Vim (Gvim) or [MacVim](https://github.com/macvim-dev/macvim/), just install the font and add the following lines to your config-file:

    if has("gui_running")
	    set guifont=Perfect\ DOS\ VGA\ 437\ Win\ 12
	    set noantialias
    endif
 
If you want to use Perfect DOS VGA 437 with the text-version of Vim or [Neovim](https://neovim.io/), there is no way to set the font via the config-file. You will have to change the font of your console instead.

----

Copyright 2016-2017 Torben Haase [\<https://pixelsvsbytes.com/\>](https://pixelsvsbytes.com/).
