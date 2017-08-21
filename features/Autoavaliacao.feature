Scenario: Preenchimento correto da auto-avalia��o 
Given O aluno �Matheus dos Santos� ainda n�o preencheu sua auto-avalia��o da disciplina �ESS�
And A disciplina �ESS� possui �4� metas
And Ele est� na p�gina �Auto-avalia��o� para a disciplina �ESS"
When o aluno �Matheus dos Santos� preenche sua auto-avalia��o com os conceitos �MA�, �MA�,�MA�,�MA�
And Seleciona a op��o de �Salvar�
Then Ele v� uma mensagem de confirma��o.
And Ele vai para a p�gina �Notas�.

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

