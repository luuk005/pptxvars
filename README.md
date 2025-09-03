# pptxvars

**Replace {{KEY}} tokens in PPTX while preserving styling**

---

steps:

1. create a custom powerpoint presentation
2. Define your variables in powerpoint textboxes by {{VARIABLE_NAME}}
3. Define in a YAML file what values must replace the {{KEYS}}
4. Execute replacement:

```PowerShell
pptxvars --template templates/example_prs.pptx `
         --vars templates/example.yml `
         --out 'output/{STEM}_{DATE}.pptx'
```
