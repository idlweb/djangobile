#!/bin/bash

rm djangobile-test.sqlite
touch djangobile-test.sqlite

if (( $? )) ; then
  echo "No se puede crear la base de datos. (Mira que Django no está corriendo y prueba de nuevo.)"
  exit 1
fi
./manage.py syncdb

if (( $? )) ; then
  echo "No se puede crear el nuevo esquema (syncdb). "
  exit 1
fi
