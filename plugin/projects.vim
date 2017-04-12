" This plugin defines a set of project types, default projections for each
" type, and the means to detect different types of projects in the absence of
" the `.projections.json` file.

" On failing to find .projections.json, projectionist fires an autocmd event
" with g:projectionist_file set to the file on which it tried.

if exists('g:loaded_my_projectionist_projects') || v:version < 704
  finish
endif
let g:loaded_my_projectionist_projects = 1

let s:json_file = expand('<sfile>:h:h') . '/data/projects.json'
let s:defs      = projectionist#json_parse(readfile(s:json_file))

fun! s:stripTrailingSlash(str)
  return split(a:str, '\v/*$')[0]
endfun

fun! s:isDir(path)
  return a:path != s:stripTrailingSlash(a:path)
endfun

" Recursively search upward for a file/directory
fun! s:find(file, fnames)
  let file = resolve(fnamemodify(a:file, ':p'))
  let prev = ''
  while file !=# prev
    " fname = [file_or_dir, value_returned]
    for [f, v] in a:fnames
      let fname = file . '/' . f
      if (s:isDir(fname) && isdirectory(fname)) ||
            \ (!s:isDir(fname) && filereadable(fname))
        return [file, v]
      endif
    endfor
    let prev = file
    let file = fnamemodify(file, ':h')
  endwhile
endfun

fun! s:find_file_projects(defs)
  let ret = []
  for def in a:defs
    if has_key(def, 'ident') && has_key(def.ident, 'file')
      let file = def.ident.file
      " call remove(def, 'ident')
      call add(ret, [file, def])
    endif
  endfor
  return ret
endfun

let s:root_mappings    = s:find_file_projects(s:defs)
let s:root_projections = map(s:root_mappings, '[v:val[0], v:val[1].projections]')

fun! s:detect()
  if !empty(getbufvar('%', 'projectionist'))
    return
  endif
  let result = s:find(g:projectionist_file, s:root_projections)
  if !empty(result)
    let [root, projections] = result
    call projectionist#append(root, projections)
  endif
endfun

autocmd User ProjectionistDetect call s:detect()
