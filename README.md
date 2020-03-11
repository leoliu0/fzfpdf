# fzfpdf
A tool to search all pdf front page in a given directory using fzf, a replacement for fast-p

Dependencies:
- fzf
- pdftotext
- parallel
- bash/zsh or other posix compliant shells

copy fzfpdf.sh to your PATH

add the following lines in your bashrc / zshrc

'''bash
fp() {
	find *.pdf -type f | parallel fzfpdf.sh {} | fzf --preview 'pdftotext $(cut -d ":" -f1 <<< {}) -' | cut -d ":" -f1 | xargs xdg-open
}
'''

If you do not have xdg-open set up, replace xdg-open with your favourite program to open PDF files.

Now go to a directory, try type "fp"
