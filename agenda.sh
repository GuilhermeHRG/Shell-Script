#!/bin/bash

echo "MEUS CONTATOS"
echo "1- listar todos"
echo "2- novo contato"
echo "3- excluir contato"
echo "4- pesquisar por nome"
echo "5- sair"

read op
case $op in
	1)
		echo "op 1, LISTAR TODOS"
		sort  alunos.txt
	;;
	2)
		echo "op 2, NOVO CONTATO"
		echo "Digite o código numérico"
		read codigo
		echo "Digite o nome: "
		read nome
		echo "Digite o telefone: "
		read telefone
		echo "${codigo};${nome};${telefone}" >> alunos.txt
	;;
	3)
		echo "op 3, EXCLUIR CONTATINHO"
		echo "quem excluir??"
		read NOME
		grep -i -v $NOME alunos.txt > alunos-tmp
		mv alunos-tmp alunos.txt
	;;
	4)
		echo "op 4 PESQUISAR POR NOME"
		read NOMEP
		grep -i $NOMEP alunos.txt
	;;
	5)
		echo "op5 SAIR"
	;;
	*)
		echo " digitou errado aí fiotão"
	;;
esac
