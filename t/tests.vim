runtime! plugin/consolation.vim

describe 'vspec'
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

  it 'can exercise user-defined mappings'
    normal ggwyiw
    normal x
    Expect getreg('"') == 'a'
    Expect getline(1) == 'console.log(a);'
  end
end
