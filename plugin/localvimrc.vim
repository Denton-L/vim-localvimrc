let search_dir = getcwd()

while search_dir != ''
	let search_path = fnameescape(search_dir . '/.lvimrc')
	if filereadable(search_path)
		exec 'source ' . search_path
		break
	else
		let search_dir = substitute(search_dir, '^.*\zs/.*$', '', '')
	endif
endwhile
