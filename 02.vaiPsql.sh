#Executa os arquivos Sql em um diretorio
#contra um banco de dados especifico.
#Postgresql

SCRIPTS_DIR=CaminhoParaDiretorioQueContemArquivosSql
DATABASE_NAME=NomedoBancoDeDados
HOST=localhost

createdb -h $HOST -U govnet $DATABASE_NAME;

for file in $SCRIPTS_DIR/*.sql
    do sudo -u postgres psql -h 10.0.0.16 -U govnet -d $DATABASE_NAME -f $file
done
