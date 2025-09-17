# Examples for stereonet_plot_general.py

## 1) Single group (no group column)
```bash
python stereonet_plot_general.py example_one_group.csv --out-prefix ex1
```

## 2) Two groups, label column 'Set'
```bash
python stereonet_plot_general.py example_two_groups.csv --group-col Set --out-prefix ex2
```

## 3) Three groups, only Strike + Dip (derive Dip Direction)
```bash
python stereonet_plot_general.py example_three_groups_strike.csv --group-col Group --dip-col Dip --out-prefix ex3
```

## 4) Combined 'Dip/DipDir' column called Dip_DD
```bash
python stereonet_plot_general.py example_combined_column.csv --group-col Domain --out-prefix ex4
```

Tips:
- If running headless (e.g., on servers/WSL), set a non-GUI backend for Matplotlib:
  `MPLBACKEND=Agg` before the command, e.g. `MPLBACKEND=Agg python stereonet_plot_general.py ...`
- Export size/appearance: use `--figsize` to scale the whole plot without changing stroke widths.
- Pairwise intersections: `--intersections auto|none|all|A|B,B|C`.
