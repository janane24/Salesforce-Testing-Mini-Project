# Test Plan – Salesforce Lead Management

## 1. Introduction
L’objectif de ce plan de test est de valider la fonctionnalité de création d’un Lead dans Salesforce.

## 2. Scope
Fonctionnalités incluses :
- Login Salesforce
- Navigation vers “Leads”
- Création d’un lead
- Validation que le lead est ajouté

Fonctionnalités exclues :
- Edition des Leads
- Suppression des Leads
- Tests API Salesforce

## 3. Environnement de test
- Navigateur : Chrome (dernière version)
- Outil : Selenium WebDriver & Robot Framework
- URL : https://login.salesforce.com

## 4. Types de Tests
- Test Fonctionnel
- Test d’Interface
- Test d’Automatisation (UI)
- Test de validation de formulaire

## 5. Prérequis
- Un compte Salesforce valide
- Accès au module Lead
- Connexion Internet stable

## 6. Risques
- Salesforce peut bloquer les connexions (captcha)
- UI change souvent → maintenance nécessaire

## 7. Critères d'acceptation
- Le lead est créé avec les données saisies
- Il apparaît dans la liste des leads
- Aucun message d’erreur inattendu

