# JARVIS 100% Complete Full Archive

Complete repository and archive for the **JARVIS** project (**17.56 GB** total uncompressed).

Due to GitHub's file size limits (maximum 100 MB in Git repositories and 2 GB per Release asset), the full archive is hosted on **[GitHub Releases (v1.0.0)](https://github.com/yashraj958/jarvis.zip/releases/tag/v1.0.0)** split into 9 parts (<1.9 GB each).

---

## 📦 Download the Archive

Download all 9 parts from the **[Releases Tab](https://github.com/yashraj958/jarvis.zip/releases/tag/v1.0.0)**:

| Part | File Name | Size |
| :--- | :--- | :--- |
| **Part 1** | `jarvis.zip.001` | ~1.85 GB |
| **Part 2** | `jarvis.zip.002` | ~1.85 GB |
| **Part 3** | `jarvis.zip.003` | ~1.85 GB |
| **Part 4** | `jarvis.zip.004` | ~1.85 GB |
| **Part 5** | `jarvis.zip.005` | ~1.85 GB |
| **Part 6** | `jarvis.zip.006` | ~1.85 GB |
| **Part 7** | `jarvis.zip.007` | ~1.85 GB |
| **Part 8** | `jarvis.zip.008` | ~1.85 GB |
| **Part 9** | `jarvis.zip.009` | ~0.72 GB |

---

## 🛠️ How to Recombine & Restore `jarvis.zip`

Place all 9 downloaded parts in the same directory alongside `reconstruct.bat` (or `reconstruct.ps1`):

### Option A: Windows (Batch) - 1-Click
Double-click **`reconstruct.bat`** or run:
```cmd
reconstruct.bat
```
*(Alternatively, via manual command line)*:
```cmd
copy /b jarvis.zip.001 + jarvis.zip.002 + jarvis.zip.003 + jarvis.zip.004 + jarvis.zip.005 + jarvis.zip.006 + jarvis.zip.007 + jarvis.zip.008 + jarvis.zip.009 jarvis.zip
```

### Option B: Windows (PowerShell)
```powershell
.\reconstruct.ps1
```

### Option C: Linux / macOS
```bash
cat jarvis.zip.00* > jarvis.zip
```

Once recombined, you have the exact original **`jarvis.zip`** (17.56 GB) ready to extract.
