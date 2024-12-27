alias vsc = code -r --no-sandbox

alias suc = nu ~\AppData\Roaming\nushell\update_scoop.nu

alias explorer = start .

alias cr = cargo run
alias cb = cargo build
alias ct = cargo test
alias crr = cargo run --release
alias cbr = cargo build --release
alias ctr = cargo test --release

alias nv = neovide

alias astral = nu ~\AppData\Roaming\nushell\update_astral.nu

alias cf = clang-format

def taplo_init [] {
    cp C:\Users\ASUS\taplo\taplo.toml ./taplo.toml;
}

def cland_default_config [] {
    clang-format --style="{BasedOnStyle: llvm, IndentWidth: 4}" --dump-config | save -f .clang-format
}

def gitcm [msg: string, --push] {
    git.exe add -A;
    git.exe commit -am $msg;

    if $push {
        git.exe push;
    }
} 
