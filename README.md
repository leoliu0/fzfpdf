# fzfpdf
A tool to search all pdf front page in a given directory using fzf, a replacement for fast-p (https://github.com/bellecp/fast-p)

Dependencies:
- fzf
- pdftotext
- parallel
- bash/zsh or other posix compliant shells

1. copy fzfpdf.sh to your PATH
1. make it executable: chmod +x fzfpdf.sh
1. add the following lines in your bashrc / zshrc

```
fp() {
	find -name "*.pdf" -type f | parallel fzfpdf.sh {} | fzf --preview 'pdftotext $(cut -d ":" -f1 <<< {}) -' | cut -d ":" -f1 | xargs xdg-open
}
```

If you do not have xdg-open set up, replace xdg-open with your favourite program to open PDF files.

Now go to a directory, try type "fp", this opens up fzf with each lines extracted from all pdf front pages in the given directory. You can type and search stuff.

Enjoy.
