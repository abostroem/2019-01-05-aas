# demo environment variable
export TEST_PATH="/hello/this/is/a/sample/path"

# add a path to your survey.db here!


# added by Miniconda3 installer
export PATH="/Users/jfowler/miniconda3/bin:$PATH"

#python python everywhere                                                                                                                                  
source activate astroconda

# color for the terminal
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

alias switch2='source deactivate ; source activate astroconda2 '
alias switch3='source deactivate ; source activate astroconda'
alias conda_dev='source deactivate ; source activate test3'

# and sewpy?
export PYTHONPATH=${PYTHONPATH}:/user/jfowler/grisms/sewpy
export PYTHONSTARTUP='./.pythonstartup'

# how 'bout pandexo
#export PYSYN_CDBS='/'
export pandeia_refdata='/user/jfowler/exoctk_work/pandeia_dat/pandeia_data-1.2.2' 
export WEBBPSF_PATH='/user/jfowler/exoctk_work/coronograpy/webbpsf-data'
export tor_pandeia_path='/user/jfowler/exoctk_work/tor_pandeia_raw_dat/ta_and_tor-1.26.18.json'
export INTEGRATIONS_DIR='/user/jfowler/exoctk_work/tor_pandeia_raw_dat/no_tor_file.json'
export MODELGRID_DIR='/user/mhill/exoctk/models/default/'
export FORTGRID_DIR='/user/jfowler/exoctk_work/fortney/database_test/fortney_models.db'
export EXOCTKLOG_DIR='/user/jfowler/exoctk_work/log'
export EXOCTK_CONTAM_DIR='/user/jfilippazzo/Modules/ExoCTK/TOR/idlSaveFiles/'
export EXOTRANSMIT_DIR='/user/jfowler/exoctk_work/exoctk_data/exotransmit/'
export GOYALGRID_DIR='/Users/jfowler/goyal_database.hdf5'

# direct to cal files for pandeia/pysnphot
export iref='/grp/hst/cdbs/iref/'
export jref='/grp/hst/cdbs/jref/'
export jtab='/grp/hst/cdbs/jtab/'
export lref='/grp/hst/cdbs/lref/'
export oref='/grp/hst/cdbs/oref/'
export PSYN_CDBS='/grp/hst/cdbs/'

# for grizli iref/jref
alias grizli="grizli_env" 
export GRIZLI='/user/jfowler/grisms/grizli'
function grizli_env {
    export iref="/user/jfowler/grisms/iref/"
    export jref="user/jfowler/grisms/jref/"
}

# for python training
alias pt_setup="pythonTraining_setup"

function pythonTraining_setup { 
    source deactivate 
    export PATH=/Users/jfowler/anaconda3/bin:$PATH
    source activate python_training
    cd ~/python_training
}

# me being a lazy arse
alias go='cd /user/jfowler'
alias ql='cd /grp/hst/wfc3a'
alias APT='cd /eng/apt/Mac' 

# IDL?
export IDL_PATH="/Applications/exelis/idl84"

# JULIA
alias julia='cd /Applications/Julia-0.6.app/Contents/Resources/julia/bin && ./julia'
