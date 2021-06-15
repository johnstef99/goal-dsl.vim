" Vim syntax file
" Language:     Goal-dsl
" Maintainer:   johnstef
"               john@johnstef.com
" Last Change:  Tue Jun 15 02:38:01 PM EEST 2021
" Version:      0.1
" Remark:       Does not recognize *all* keywords yet
"               but the most commonly used ones are.

if exists("b:current_syntax")
  finish
endif

syn keyword goalTodo contained TODO
syn match goalComment "\/\/.*$" contains=goalTodo
syn match goalNumber "\<[0-9]\+D\=\>"

" Goal DSL Special
syn match goalType "\<[A-Z].*Goal\>"
syn keyword goalType
   \ GoalSequence
   \ AMQPBroker MQTTBroker RedisBroker
   \ BrokerAuthPlain
   \ Target

syn region goalString start=/"/ skip=/\\"/ end=/"/ oneline
syn region goalString start=/'/ skip=/\\'/ end=/'/ oneline

syn keyword goalImport import

syn match goalEnum "\<[A-Z_]*\>"
" Operators
syn match goalOperator "\v\=\="
syn match goalOperator "\v\>"
syn match goalOperator "\v\<"
syn match goalOperator "\v\!\="
syn match goalOperator "\v\~"
syn match goalOperator "\v\-\>"


hi def link goalComment Comment
hi def link goalEnum Keyword
hi def link goalNumber Number
hi def link goalType Type
hi def link goalString String
hi def link goalImport Include
hi def link goalOperator Operator

let b:current_syntax = "goal"
