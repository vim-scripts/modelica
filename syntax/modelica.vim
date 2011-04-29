" Vim syntax file
" Language:	Modelica
" Credits:	Antoine Viel, <antoine.viel@yahoo.com>
" $Id$

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Case is significant
syn case match

" Modelica keywords
syn keyword modelicaStatement algorithm
syn keyword modelicaStatement annotation
syn keyword modelicaStatement assert
syn keyword modelicaStatement block
syn keyword modelicaStatement break
syn keyword modelicaStatement class
syn keyword modelicaStatement connect
syn keyword modelicaStatement connector
syn keyword modelicaStatement constant
syn keyword modelicaStatement der
syn keyword modelicaStatement discrete
syn keyword modelicaStatement edge
syn keyword modelicaStatement else
syn keyword modelicaStatement elseif
syn keyword modelicaStatement elsewhen
syn keyword modelicaStatement encapsulated
syn keyword modelicaStatement end
syn keyword modelicaStatement enumeration
syn keyword modelicaStatement equation
syn keyword modelicaStatement extends
syn keyword modelicaStatement external
syn keyword modelicaStatement final
syn keyword modelicaStatement fixed
syn keyword modelicaStatement flow
syn keyword modelicaStatement for
syn keyword modelicaStatement function
syn keyword modelicaStatement if
syn keyword modelicaStatement import
syn keyword modelicaStatement in
syn keyword modelicaStatement initial
syn keyword modelicaStatement inner
syn keyword modelicaStatement input
syn keyword modelicaStatement loop
syn keyword modelicaStatement model
syn keyword modelicaStatement noEvent
syn keyword modelicaStatement outer
syn keyword modelicaStatement output
syn keyword modelicaStatement package
syn keyword modelicaStatement parameter
syn keyword modelicaStatement partial
syn keyword modelicaStatement partial
syn keyword modelicaStatement pre
syn keyword modelicaStatement protected
syn keyword modelicaStatement public
syn keyword modelicaStatement record
syn keyword modelicaStatement redeclare
syn keyword modelicaStatement replaceable
syn keyword modelicaStatement return
syn keyword modelicaStatement sample
syn keyword modelicaStatement size
syn keyword modelicaStatement smooth
syn keyword modelicaStatement start
syn keyword modelicaStatement terminal
syn keyword modelicaStatement then
syn keyword modelicaStatement type
syn keyword modelicaStatement when
syn keyword modelicaStatement while
syn keyword modelicaStatement within

" Global variables
syn keyword modelicaGlobal time

" Predifined Modelica types
syn keyword modelicaType Real Integer Boolean String

" Boolean values
syn keyword modelicaBoolean true false

" Character strings
syn match  modelicaCharacter "'.'"
syn region modelicaString start=/"/  skip=/\\"/ end=/"/

" Floating numbers
syn match modelicaNumber "-\=\<\d\+\.\d\+\([Ee][+\-]\=\d\+\)\>"
syn match modelicaNumber "-\=\<\d\+\.\d\+\>"

" Integer numbers
syn match modelicaNumber "-\=\<\d\+\([Ee][+\-]\=\d\+\)\>"
syn match modelicaNumber "-\=\<\d\+\>"

" Operators
syn keyword modelicaOperator and or not
syn match   modelicaOperator "[><=:+\-*\/\^]"

" Comments
syn match modelicaComment "//.*$"
syn region modelicaComment start=/\/\*/ end=/\*\//

" Annotations
"syn region modelicabetweenpar start=/(/ end=/)/ contained contains=modelicabetweenpar 
"syn region modelicaAnnotation start=/annotation\s*(/ end=/)/ contains=modelicabetweenpar 

" Define the default highlighting.

  highlight link modelicaStatement Statement
  highlight link modelicaCharacter String
  highlight link modelicaString    String
  highlight link modelicaBoolean   String
  highlight link modelicaComment   Comment
  highlight link modelicaNumber    String
  highlight link modelicaType      Type
  highlight link modelicaOperator  Type
  highlight link modelicaGlobal    Identifier
"  highlight link modelicaAnnotation Comment

let b:current_syntax = "modelica"

" vim: ts=8
