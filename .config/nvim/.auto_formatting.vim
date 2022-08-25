let g:formatdef_my_custom_java = '"astyle --style=java --pad-oper"'
let g:formatters_java = ['my_custom_java']
au BufWrite *.java :Autoformat
