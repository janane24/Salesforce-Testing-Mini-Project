# Test Cases – Salesforce Lead Creation

## TC-001 – Login Salesforce
**Objectif :** Vérifier qu’un utilisateur peut se connecter.  
**Étapes :**
1. Aller vers https://login.salesforce.com
2. Saisir username
3. Saisir password
4. Cliquer Login  
**Résultat attendu :** La page d’accueil s’affiche sans erreur.

---

## TC-002 – Accéder au module Leads
**Étapes :**
1. Depuis la Home page → Cliquer "App Launcher"
2. Rechercher "Leads"
3. Cliquer sur "Leads"  
**Résultat attendu :** La page “Leads” s’ouvre.

---

## TC-003 – Créer un nouveau Lead
**Étapes :**
1. Cliquer sur “New”
2. Remplir :  
   - First Name  
   - Last Name  
   - Company  
3. Cliquer sur “Save”  
**Résultat attendu :** Le lead est créé et visible dans la liste.

---

## TC-004 – Validation des champs obligatoires
**Étapes :**
1. Cliquer sur "New"
2. Laisser les champs vides
3. Cliquer "Save"  
**Résultat attendu :** Message d’erreur : "Complete this field"
