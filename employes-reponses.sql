-- Tous les employés
SELECT * 
  FROM employes

-- Tous les employés du département 30 avec tous leurs attributs
SELECT * 
  FROM employes
  WHERE DEPARTEMENT=30;


-- Tous les employés du département 30 avec leur numéro, leur nom et le numéro du département triés par ordre alphabétique
SELECT NUMERO, nom, DEPARTEMENT
  FROM employes
  WHERE DEPARTEMENT=30
  ORDER BY nom;


-- Tous les managers du départements 20
SELECT *
  FROM employes
  WHERE DEPARTEMENT=20
    AND fonction='MANAGER';


-- Tous les managers des départements 20 ou 30
SELECT *
  FROM employes
  WHERE DEPARTEMENT=20 AND DEPARTEMENT=30 -- pas bon : il ne reste rien
    AND fonction='MANAGER'; 

SELECT *
  FROM employes
  WHERE fonction='MANAGER'
    AND (DEPARTEMENT=20 OR DEPARTEMENT=30);

SELECT *
  FROM employes
  WHERE fonction='MANAGER'
    AND DEPARTEMENT in (20,30);


-- Salaire maximum des employés (la fonction pour avoir le maximum est : max())
SELECT MAX(SALAIRE)
  FROM employes;

-- remarque :
SELECT FONCTION, MAX(SALAIRE)
  FROM employes
  GROUP BY fonction;


-- Salaire minimum des managers
SELECT MIN(SALAIRE)
  FROM employes
  WHERE fonction='MANAGER';


-- Nombre d'employés de la société (la fonction pour compter les lignes est count(*)
SELECT COUNT(*)
  FROM employes;


-- Nombre de managers de la société.
SELECT COUNT(*)
  FROM employes
  WHERE fonction='MANAGER';
