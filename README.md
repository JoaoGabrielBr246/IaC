```markdown
# Script de Criação de Usuários, Grupos, Diretórios e Permissões no Linux

Este repositório contém um script em **Bash** que automatiza a criação de **usuários**, **grupos**, **diretórios** e a **configuração de permissões** em um sistema Linux. O script é interativo e permite que o usuário escolha quais componentes deseja criar durante a execução.

## Funcionalidade

O script realiza as seguintes ações, dependendo das respostas do usuário:

1. **Criação de Grupos**: O script pergunta se o usuário deseja criar um novo grupo e, em caso afirmativo, solicita o nome do grupo e o cria no sistema.
2. **Criação de Usuários**: O script permite a criação de usuários, atribuindo-os a um grupo específico e configurando um diretório home para cada um.
3. **Criação de Diretórios**: Após a criação dos usuários, o script permite que o usuário crie diretórios específicos para cada usuário.
4. **Configuração de Permissões**: O script também permite configurar permissões de leitura, escrita e execução para diretórios criados, de acordo com as necessidades do usuário.

## Como Usar

1. Clone este repositório em seu servidor ou máquina Linux:

   ```bash
   git clone https://github.com/JoaoGabrielBr246/IaC
   cd iac
   ```

2. Torne o script executável:

   ```bash
   chmod +x iac.sh
   ```

3. Execute o script:

   ```bash
   sudo ./iac.sh
   ```

   O script fará uma série de perguntas sobre a criação de grupos, usuários, diretórios e permissões. Responda conforme necessário.

## Exemplo de Execução

```bash
Você deseja criar um grupo? (s/n)
s
Digite o nome do grupo:
devs
Grupo 'devs' criado com sucesso!

Você deseja criar um usuário? (s/n)
s
Digite o nome do usuário:
user1
Digite o grupo principal para o usuário:
devs
Usuário 'user1' criado com sucesso!

Você deseja criar diretório para o usuário? (s/n)
s
Digite o nome do diretório para o usuário (ex: /home/$1/projetos):
/home/user1/projetos
Diretório '/home/user1/projetos' criado com sucesso!

Você deseja configurar permissões para os diretórios? (s/n)
s
Digite o diretório para definir permissões (ex: /home/$1):
/home/user1
Digite as permissões (ex: 755):
755
Permissões 755 definidas para '/home/user1'.
```

## Contribuições

Se você deseja contribuir para o projeto, fique à vontade para abrir **issues** ou enviar **pull requests**. Para isso, basta seguir os passos abaixo:

1. Faça um **fork** do repositório.
2. Crie uma nova branch (`git checkout -b minha-branch`).
3. Realize as alterações e faça commit (`git commit -am 'Adicionando nova funcionalidade'`).
4. Envie para o repositório remoto (`git push origin minha-branch`).
5. Abra um **pull request**.

## Licença

Este projeto está licenciado sob a **MIT License**. Consulte o arquivo LICENSE para mais detalhes.
