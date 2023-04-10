#copia do diretorio pra frente para o diretorio
#que está
for d in */ ; do
	echo "$d"
	cp "$d"/*.sql .
	done

