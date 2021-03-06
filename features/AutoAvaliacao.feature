Feature: Auto-avaliação
                   As a aluno ou professor
                   I want to preencher a tabela de avaliação  observando  a avaliação dada pelos alunos e professores ,assim como a  quantidade,percentual e lista  de alunos com discrepância,caso  que ocorre quando a auto avaliação do aluno é maior que a do professor em pelo menos 25% das avaliações
 Eu preenchi so that eu posso receber a mensagem de confirmação Ok se tiver preenchido completamente ou de dados incompletos se não tiver preenchido completamente.

GUI:Cenário :auto avaliação bem sucedida
Given o aluno “joão” está na tabela de preenchimento da auto avaliação
When o aluno “joão”  observa a avaliação do professor que são “MANA,MANA,MANA” em “Entender conceitos de requisitos, Especificar requisitos com qualidade, entender conceitos de gerência de configuração” respectivamente
And o aluno preenche a tabela completamente  com “MA,MPA,MPA” nos requisitos respectivos
And o aluno confirma os dados preenchidos na tabela.
Then aparece uma mensagem relatando  que os dados  de auto avaliação    “MA,MPA,MPA” nos requisitos respectivos  foram salvos .
///////////////////////////////
Serviço: auto avaliação bem sucedida
Given  o aluno possui suas auto avaliações que são “MA,MPA,MPA” em “Entender conceitos de requisitos, Especificar requisitos com qualidade, entender conceitos de gerência de configuração” respectivamente
When o sistema demonstra que a avaliação do professor foi “MANA,MANA,MANA” nos requisitos respectivos
And o sistema é completamente preenchido com “MA,MPA,MPA” nos requisitos respectivos
And o sistema é confirmado com preenchimento completo
Then o sistema demonstra que dados de auto avaliação “MA,MPA,MPA” nos requisitos respectivos  foram salvos .

GUI:auto avaliação  mal sucedida
Given o aluno “joão” está na tabela de preenchimento da auto avaliação
When  O aluno observa a avaliação do professor que são “MANA,MANA,MANA” em “Entender conceitos de requisitos, Especificar requisitos com qualidade, entender conceitos de gerência de configuração “ respectivamente
And o aluno preenche “MA,MPA” nos dois primeiros requisitos respectivos
And  o alunos não preenche o último requisito respectivamente
And o aluno confirma os dados preenchidos na tabela que está incompleta
Then  aparece uma mensagem relatando  que os dados  de auto avaliação em “entender conceitos de gerência de configuração“  estão faltando
And o sistema não salva dado algum.
////////////////////////////////
Serviço: auto-avaliação mal sucedida
Given  a auto avaliação do aluno são “MA,MPA,MPA” em “Entender conceitos de requisitos, Especificar requisitos com qualidade, entender conceitos de gerência de configuração” respectivamente.
When o sistema demonstra que  as notas dadas pelo professor são “MANA,MANA,MANA” nos requisitos de forma respectiva.
And o sistema  foi preenchido com as notas “MA,MPA” nos dois primeiros requisitos respectivos
And o sistema não foi preenchido no último requisito .
And  o sistema é confirmado com preenchimento incompleto
Then o sistema demonstra que faltam dados de auto avaliação em “entender conceitos de gerência de configuração“
And o sistema não salva dado algum.
And o sistema volta a pagina de auto avaliação

Gui:Given os alunos “rafael da costa”,”carlos ferraz”e “fábio silva” estão na página de auto avaliação
When os alunos observam que as notas avaliadas pelo professor aos três foram igualmente  “MPA,MPA,MPA,MPA,MPA”
And “rafael da costa” se avalia “MA,MPA,MPA,MPA,MPA”
And ”carlos ferraz” se avalia com a mesma avaliação que o professor
And  “fábio silva” se avalia “MANA,MANA,MANA,MANA,MANA”
And os três alunos finalizam e confirmam o preenchimento completo da tabela de auto avaliação
And o professor procura os nomes “rafael da costa”,”carlos ferraz”e “fábio silva”
Na lista de alunos com discrepância.
Then os nomes “rafael da costa”,”carlos ferraz”e “fábio silva”  não aparecem na lista

Gui:Given os alunos “rafael da costa”,”carlos ferraz”e “fábio silva” estão na página de
Auto avaliação
When os alunos observam que as notas avaliadas pelo professor aos três foram   igualmente “MPA,MPA,MPA,MPA,MPA”
And os alunos preenchem completamente a tabela de auto avaliação
And “rafael da costa” se avalia “MA,MA,MA,MA,MA”
And ”carlos ferraz” se avalia com a mesma avaliação que o professor
And  “fábio silva” se avalia “MANA,MANA,MANA,MANA,MANA”
And os três alunos finalizam e confirmam o preenchimento completo da tabela de auto avaliação
And o professor procura os nomes “rafael da costa”,”carlos ferraz”e “fábio silva”
Na lista de alunos com discrepância.
Then os nomes “carlos ferraz”e “fábio silva”  não aparecem na lista mas “rafael da costa” aparece
And o professor é levado de volta a tabela de auto avaliação
"terceiro commit,realizado em master"
"primeiro commit,realizado em discrepantes"
"segundo commit,realizado em discrepantes"
"novo cenário de visualização de percentual de discrepância"
"pequeno ajuste no novo cenário de visualização de percentual de discrepância"
