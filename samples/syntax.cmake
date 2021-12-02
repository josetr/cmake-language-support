function(fn)
  return()
endfunction()

macro(mc)
endmacro()

if(EXISTS path)
elseif()
else()
endif()

foreach(LOOP_VAR 1 2)
  continue()
endforeach()

while(TRUE)
  break()
endwhile()

add_test(
  UnquotedArgument
  "QuotedArgument ${R}"
  [==[Bracket ${R}
    Argument]==]
  ${REFE${REN}CE}
  b$<GENERATOR_EXPR:V${REFERENCE}AL>a
  CMP1000
  1400450234 # NUMBER
  450345034051400450234 # NUMBER
  5.1 # VERSION
  5. # VERSION
  TRUE FALSE YES NO ON OFF # BOOLEAN LITERAL
  "Escape: \r\n\t\${REF}"
  ]=!=""a$(MV)TE$(V)X${R}T"$(MAKE)ABC \t[=]$(VAR)ABC \t[=]"T #UnquotedLegacyArgument
)
