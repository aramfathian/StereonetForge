#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/examples_general"

# ensure non-GUI backend if needed
export MPLBACKEND=${MPLBACKEND:-Agg}

python ../stereonet_plot_general.py example_one_group.csv            --out-prefix ex1
python ../stereonet_plot_general.py example_two_groups.csv           --group-col Set    --out-prefix ex2
python ../stereonet_plot_general.py example_three_groups_strike.csv  --group-col Group  --dip-col Dip --out-prefix ex3
python ../stereonet_plot_general.py example_combined_column.csv      --group-col Domain --out-prefix ex4

echo "Wrote: ex1.png/svg/pdf, ex2.png/svg/pdf, ex3.png/svg/pdf, ex4.png/svg/pdf"
