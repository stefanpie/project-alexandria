proc findFiles { basedir pattern } {
    set basedir [string trimright [file join [file normalize $basedir] { }]]
    set fileList {}
    foreach fileName [glob -nocomplain -type {f r} -path $basedir $pattern] {
        lappend fileList $fileName
    }
    foreach dirName [glob -nocomplain -type {d  r} -path $basedir *] {
        set subDirList [findFiles $dirName $pattern]
        if { [llength $subDirList] > 0 } {
            foreach subDirFile $subDirList {
                lappend fileList $subDirFile
            }
        }
    }
    return $fileList
}

# set contents [glob -directory ./hdl/ *.v]
# puts "Directory contents are:"
# foreach item $designs {
#     puts $item
# }

set designs [findFiles ./hdl/ *.v] 
foreach d $designs {
    yosys read_verilog $d
    # puts $d
}

yosys hierarchy -check -top [lindex $argv 0]

yosys flatten
yosys opt
# yosys opt
# yosys alumacc

yosys proc
yosys opt
yosys fsm
yosys opt
yosys memory
yosys opt




yosys show -prefix [lindex $argv 0]_vis [lindex $argv 0]