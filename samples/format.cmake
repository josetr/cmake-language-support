#copyright

if(1 = 1 AND(1 = 2 AND(3 = 4)))
  msg(NAME name
    stage${A}
    ${C}stage
    1.5${A}TRUE${B}CMP1010
    #comment
    #[=[CMT]=] COMMAND
    ${C}/c
    ${C}.cmake@ONLY
    ${C}.cmake @ONLY
    --add-gnu-debuglink=$<TARGET_FILE:${name}>.debug
    name::name
    dammit"quoted"
    ####   -Dvar="smt"  #TODO
    -Dvar= "smt")
  msg(1 # cmt
  )
elseif()
  if()
    msg#[=[CMT]=](#[=[CMT]=])
  endif()
else()
  if()
    msg()
  endif()
endif()

macro()
  msg()
endmacro()

function(f)
  msg()
endfunction()

foreach()
  msg()
endforeach()

while()
  msg()
endwhile()