# Serie M1: Uso Inadecuado de Credenciales (Hardcoded Credentials)

Este repositorio contiene el **laboratorio práctico** de la serie **M1: Uso Inadecuado de Credenciales**. Aquí aprenderás **qué NO hacer** en una app Flutter, cómo un atacante extrae tus secretos y cómo reproducirlo paso a paso.

---

## 📖 Contenido

- **`lib/main.dart`**  
  Demo que carga 3 métodos inseguros para almacenar una API Key:
  1. Hardcode en texto plano (`apiKeyPlain`)  
  2. Constante pública en `constants.dart` (`AppConstants.apiKeyConst`)  
  3. `.env` incluido como asset (`EnvLoader.apiKeyEnv`)

- **`lib/constants.dart`**  
  Define la constante `apiKeyConst`.

- **`lib/env_loader.dart`**  
  Carga el archivo `.env` desde assets.

- **`.env`**  
  Archivo de ejemplo con `API_KEY_ENV=MI_API_KEY_SECRETA_ENV_456`.

- **`proguard-rules.pro`**  
  Reglas mínimas para R8/ProGuard en Android.

- **`README.md`**  
  Este documento.

---

## 🛠 Requisitos

- [Flutter SDK](https://flutter.dev/docs/get-started/install)  
- Java 8+ (para `jadx`)  
- [jadx](https://github.com/skylot/jadx) (GUI o CLI)  
- [Cutter](https://cutter.re/) o [Ghidra](https://ghidra-sre.org/) (para análisis de `.so` nativo)  
- Terminal / PowerShell / Git Bash


