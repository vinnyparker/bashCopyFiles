#Executa os arquivos Sql em um diretorio
#contra um banco de dados especifico.
#Postgresql

SCRIPTS_DIR=CaminhoParaDiretorioQueContemArquivosSql
DATABASE_NAME=NomedoBancoDeDados
HOST=localhost

createdb -h $HOST -U postgres $DATABASE_NAME;

for file in $SCRIPTS_DIR/*.sql
  do 
    postgres psql -h $HOST -U postgres -d $DATABASE_NAME -f $file  
  done
