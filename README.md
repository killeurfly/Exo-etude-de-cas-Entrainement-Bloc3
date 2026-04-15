# Exo-etude-de-cas-Entrainement-Bloc3

# ShopWise - Workflow Git

## 📌 Présentation

Le projet ShopWise utilise un workflow Git inspiré de Git Flow afin d’organiser le développement, faciliter la collaboration et assurer la qualité du code.

---

## 🌿 Organisation des branches

### 🔵 main
- Branche de production
- Contient uniquement les versions stables
- Aucun développement direct

### 🟠 develop
- Branche principale de développement
- Contient les fonctionnalités validées avant mise en production

### 🟢 feature/*
- Branches dédiées aux fonctionnalités
- Une branche par user story
- Créées à partir de `develop`

Exemples :
- feature/client-management
- feature/appointment-management
- feature/loyalty-system
- feature/auth-client

---

## 🔁 Workflow Git

1. Création d’une issue GitHub pour chaque user story
2. Création d’une branche feature liée à l’issue
3. Développement de la fonctionnalité sur la branche
4. Commits réguliers avec convention
5. Lien entre commits et issues via `#ID`
6. Ouverture d’une Pull Request vers `develop`
8. Merge dans `develop`
9. Merge final dans `main` pour livraison

---

## 🔗 Lien entre commits et issues

Chaque commit est lié à une issue grâce à son numéro.

Exemple :
```bash
feat: ajout création client #1
```

Pour fermer automatiquement une issue :
```bash
feat: finalisation client management closes #1
```

---

## ✍️ Convention de commits

Nous utilisons la convention suivante :

- `feat:` ajout d’une fonctionnalité
- `fix:` correction d’un bug
- `test:` ajout ou modification de tests
- `docs:` documentation
- `refactor:` amélioration du code sans ajout de fonctionnalité
- `chore:` configuration, Docker, CI/CD

Exemples :

```bash
feat: ajout API gestion clients
fix: correction filtre rendez-vous
test: ajout tests fidélité
docs: mise à jour README
```

---

## 🚀 Objectif du workflow

Ce workflow permet :
- Une organisation claire du code
- Un suivi précis des fonctionnalités
- Une collaboration efficace via GitHub
- Une traçabilité entre code, commits et issues
```
