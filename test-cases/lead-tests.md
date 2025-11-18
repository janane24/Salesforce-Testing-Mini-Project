# Cas de test - Gestion des Leads Salesforce

## Test 1 : Création d’un Lead valide
- Aller à Sales → Leads
- Cliquer New
- Remplir les champs obligatoires
- Enregistrer
### Résultat attendu :
✔️ Lead créé, ID généré

## Test 2 : Validation Rule
- Laisser Email vide
- Choisir Lead Source = Web
### Résultat attendu :
✔️ Message d’erreur : "Email is required for Web leads"

## Test 3 : Conversion Lead
- Ouvrir un Lead
- Cliquer Convert
### Résultat attendu :
✔️ Account créé  
✔️ Contact créé  
✔️ Opportunity créée

