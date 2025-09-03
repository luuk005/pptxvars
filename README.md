# pptxvars

- **Replace {{KEY}} tokens in PPTX while preserving styling** \
- **Swap a Frame for an image in PPTX while preserving size**

---

## Replace Variables

1. Create a custom powerpoint presentation
2. Define your variables in powerpoint textboxes by {{VARIABLE_NAME}}
3. Define in a YAML file what values must replace the {{KEYS}}. YAML format: `KEY: "value"
4. Execute replacement:

```powershell
pptxvars --template templates/example_prs.pptx `
         --vars templates/example.yml `
         --out 'output/{STEM}_{DATE}.pptx'
```

Or through library:

```python
from pathlib import Path
from pptxvars import apply_vars

apply_vars(
    pptx_in=Path("templates/example_prs.pptx"),
    yaml_vars=Path("templates/example.yml"),
    pptx_out=Path("output/out.pptx"),
)
```

---

## Swap Frame for Image

1. Create a custom powerpoint presentation
2. Insert frames as placeholder for an image. In powerpoint you can find a frame shape under: `Insert>Shapes>Basic Shapes>Frame`
3. Define in a YAML file what Frames must be swaped. The Frames are swaped per slide in order (Top>Right). YAML format:

```yml
slides:
  - index: 1
    images:
      - example_img.png
```

4. Execute image swap:

```powershell

```
