runtime! plugin/consolation.vim

describe 'Consolate'
  before
    new
    put! = 'var a = 5;'
  end

  after
    close!
  end

  it 'can read the contents of the buffer'
    Expect getline(1) == "var a = 5;"
  end

  it 'can add a console.log with whatever is in the register'
    normal! ggwyiw
    Expect getreg('"') == 'a'

    execute "normal! :Consolate\<cr>"
    Expect getline(1) == 'console.log(a);'
  end

  it 'indents correctly'
    set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
    normal! gg>>wyiw
    Expect getreg('"') == 'a'

    execute "normal! :Consolate\<cr>"
    Expect getline(1) == '  console.log(a);'
  end
end
