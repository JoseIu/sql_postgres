# Para evitar basura en nustra base de datos como prevenir números negativos cuando tiene tiene que haber negativos usamos un CHECK

    - ALTER TABLE country ADD CHECK (surfacearea >= 0);

# Tambien podemos usar el CHECK para admitir siertos valores, como los continentes y así evitamos que se ingrese otro valor que no sean los continentes

    - ALTER TABLE country ADD CHECK (

        (continent = 'Asia'::text) OR
        (continent = 'South America'::text) OR
        (continent = 'North America'::text) OR
        (continent = 'Oceania'::text) OR
        (continent = 'Antarctica'::text) OR
        (continent = 'Africa'::text) OR
        (continent = 'Europe'::text) OR
        (continent = 'Central America'::text) OR
    );

    ## Si queremos modificar el check, porque queremos añadir más campos tenemos que eliminar el constraint

    - ALTER TABLE country DROP CONSTRAINT "country_continent_check";

# ÍNDICES: se usa para que las consultas sean más rápidas, índices unico y índices no unicos

    - Los índices unicos son más rápidos que los no unicos

    - CREATE UNIQUE INDEX "unique_country_name" ON country (
            name
    );

    - CREATE INDEX "country_continent" ON country(
        continent
    );
