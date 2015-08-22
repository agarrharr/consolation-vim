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
    execute "normal! :Consolate\<cr>"
    Expect getreg('"') == 'a'
    Expect getline(1) == 'console.log(a);'
  end
end
