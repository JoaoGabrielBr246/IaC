#!/bin/bash

# Função para criar grupo
criar_grupo() {
    echo "Digite o nome do grupo:"
    read nome_grupo
    groupadd -f $nome_grupo
    echo "Grupo '$nome_grupo' criado com sucesso!"
}

# Função para criar usuário
criar_usuario() {
    echo "Digite o nome do usuário:"
    read nome_usuario
    echo "Digite o grupo principal para o usuário:"
    read grupo_usuario
    useradd -m -g $grupo_usuario -s /bin/bash $nome_usuario
    echo "Usuário '$nome_usuario' criado com sucesso!"
}

# Função para criar diretório
criar_diretorio() {
    echo "Digite o nome do diretório para o usuário (ex: /home/$1/projetos):"
    read dir_usuario
    mkdir -p $dir_usuario
    echo "Diretório '$dir_usuario' criado com sucesso!"
}

# Função para definir permissões
configurar_permissoes() {
    echo "Digite o diretório para definir permissões (ex: /home/$1):"
    read dir_permissoes
    echo "Digite as permissões (ex: 755):"
    read permissoes
    chmod $permissoes $dir_permissoes
    echo "Permissões $permissoes definidas para '$dir_permissoes'."
}

# Perguntar se deseja criar grupo
echo "Você deseja criar um grupo? (s/n)"
read resposta
if [ "$resposta" == "s" ]; then
    criar_grupo
fi

# Perguntar se deseja criar usuário
echo "Você deseja criar um usuário? (s/n)"
read resposta
if [ "$resposta" == "s" ]; then
    criar_usuario
fi

# Perguntar se deseja criar diretório
echo "Você deseja criar diretório para o usuário? (s/n)"
read resposta
if [ "$resposta" == "s" ]; then
    criar_diretorio $nome_usuario
fi

# Perguntar se deseja configurar permissões
echo "Você deseja configurar permissões para os diretórios? (s/n)"
read resposta
if [ "$resposta" == "s" ]; then
    configurar_permissoes $nome_usuario
fi

echo "Script executado com sucesso!"

