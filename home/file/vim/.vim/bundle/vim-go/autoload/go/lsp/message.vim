" don't spam the user when Vim is started in Vi compatibility mode
let s:cpo_save = &cpo
set cpo&vim

function! go#lsp#message#Initialize(wd)
  return {
          \ 'notification': 0,
          \ 'method': 'initialize',
          \ 'params': {
            \ 'processId': getpid(),
            \ 'rootUri': go#path#ToURI(a:wd),
            \ 'capabilities': {
              \ 'workspace': {},
              \ 'textDocument': {}
            \ }
          \ }
       \ }
endfunction

function! go#lsp#message#Definition(file, line, col)
  return {
          \ 'notification': 0,
          \ 'method': 'textDocument/definition',
          \ 'params': {
          \   'textDocument': {
          \       'uri': go#path#ToURI(a:file)
          \   },
          \   'position': s:position(a:line, a:col)
          \ }
       \ }
endfunction


function! go#lsp#message#TypeDefinition(file, line, col)
  return {
          \ 'notification': 0,
          \ 'method': 'textDocument/typeDefinition',
          \ 'params': {
          \   'textDocument': {
          \       'uri': go#path#ToURI(a:file)
          \   },
          \   'position': s:position(a:line, a:col)
          \ }
       \ }
endfunction

function! s:position(line, col)
  return {'line': a:line - 1, 'character': a:col-1}
endfunction

" restore Vi compatibility settings
let &cpo = s:cpo_save
unlet s:cpo_save

" vim: sw=2 ts=2 et
