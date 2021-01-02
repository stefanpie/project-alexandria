set signals {
    qadd_tb.a
    qadd_tb.b
    qadd_tb.c
}

gtkwave::addSignalsFromList $signals
gtkwave::highlightSignalsFromList $signals # THIS DOES NOT WORK FOR SOME REASON >:(



# gtkwave::setTraceHighlightFromNameMatch "qadd_tb.a" on
# gtkwave::highlightSignalsFromList $signals
# foreach signal $signals { 
    
#     # puts $signal
# }

# set num_added [ gtkwave::addSignalsFromList "qadd_tb.c" ]
# gtkwave::/Edit/Data_Format/Signed_Decimal
# gtkwave::/Edit/Data_Format/Fixed_Point_Shift/Specify "4"


# Zoom full
# gtkwave::/Edit/UnHighlight_All
# gtkwave::/Time/Zoom/Zoom_Full
