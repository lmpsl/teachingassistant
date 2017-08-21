Scenario: Preenchimento correto da auto-avalia��o 
Given O aluno �Matheus dos Santos� ainda n�o preencheu sua auto-avalia��o da disciplina �ESS�
And A disciplina �ESS� possui �4� metas
And Ele est� na p�gina �Auto-avalia��o� para a disciplina �ESS"
When o aluno �Matheus dos Santos� preenche sua auto-avalia��o com os conceitos �MA�, �MA�,�MA�,�MA�
And Seleciona a op��o de �Salvar�
Then Ele v� uma mensagem de confirma��o.
And Ele vai para a p�gina �Notas�

Scenario: Preenchimento correto da auto-avalia��o (Controller)
Given O aluno �Matheus dos Santos� ainda n�o preencheu sua auto-avalia��o da disciplina �ESS�
And A disciplina �ESS� possui �4� metas
When o aluno �Matheus dos Santos� preenche sua auto-avalia��o com os conceitos �MA�, �MA�,�MA�,�MA�
Then o sistema salva os conceitos �MA�, �MA�,�MA�,�MA� auto-avaliados para o aluno �Matheus dos Santos� na disciplina de �ESS�.

Scenario: Preenchimento incorreto da auto-avalia��o 
Given O aluno �Matheus dos Santos� ainda n�o preencheu sua auto-avalia��o da disciplina �ESS�
And A disciplina �ESS� possui �4� metas
And Ele est� na p�gina �Auto-avalia��o� para a disciplina �ESS"
When o aluno �Matheus dos Santos� preenche sua auto-avalia��o com os conceitos �MA�, �MA�,�MA�
And Seleciona a op��o de �Salvar�
Then Ele v� uma mensagem de erro.
And Ele segue na p�gina de �Auto-avalia��o� da disciplina �ESS�
And A meta "4" ainda n�o preenchida fica "laranja"

Scenario: Listar discrepancias sem alunos discrepantes 
Given O aluno �Matheus dos Santos� preencheu sua auto-avalia��o da disciplina �ESS� com �MA,MA,MA,MA,MA� e o professor o avaliou com �MA,MA,MA,MA,MPA�
And O aluno �Lucas dos Anjos� preencheu sua auto-avalia��o da disciplina �ESS� com �MPA,MPA,MPA,MPA,MPA� e o professor o avaliou com �MA,MA,MA,MA,MA�
And O aluno �Kevin dos Fernandes� preencheu sua auto-avalia��o da disciplina �ESS� com �MA,MA,MA,MA,MA� e o professor o avaliou com �MA,MA,MA,MA,MA�
And Apenas estes alunos preencheram a auto-avalia��o
When O professor solicita �Lista de Alunos com auto-avalia��o discrepante�
Then Ele v� uma lista vazia

Scenario: Listar discrepancias com alunos discrepantes 
Given O aluno �Matheus dos Santos� preencheu sua auto-avalia��o da disciplina �ESS� com �MA,MA,MA,MA,MA� e o professor o avaliou com �MA,MA,MA,MPA,MPA�
And O aluno �Lucas dos Anjos� preencheu sua auto-avalia��o da disciplina �ESS� com �MPA,MPA,MPA,MPA,MPA� e o professor o avaliou com �MA,MA,MA,MA,MA�
And O aluno �Kevin dos Fernandes� preencheu sua auto-avalia��o da disciplina �ESS� com �MA,MA,MA,MA,MA� e o professor o avaliou com �MA,MA,MA,MA,MA�
And Apenas estes alunos preencheram a auto-avalia��o
When O professor solicita �Lista de Alunos com auto-avalia��o discrepante�
Then Ele v� uma lista com o aluno �Matheus dos Santos�