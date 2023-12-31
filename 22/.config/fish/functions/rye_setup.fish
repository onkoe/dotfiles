function rye_setup --description 'Enables the Rye project manager for Python'
    # gotta be real. no clue which one of these works and i'm not gonna bother finding out
    set -a PATH ~/.rye/shims
    set -a PATH ~/.rye
    set -a PATH ~/.rye/self/bin
    functions --erase rye # get rid of default rye alias          
end
