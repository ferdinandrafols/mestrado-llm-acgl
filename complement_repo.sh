#!/bin/bash
set -e
mkd() { mkdir -p "$1" && touch "$1/.gitkeep"; }

echo "Complementando estrutura..."

mkd data/embeddings
touch data/processed/corpus_segments.json
touch data/processed/corpus_manifest.json
touch data/embeddings/embeddings_meta.json

mkd architectures/a1_baseline
mkd architectures/a2_governed/prompts
mkd architectures/shared
touch architectures/a1_baseline/a1_baseline.ipynb
touch architectures/a1_baseline/prompts_v1.json
touch architectures/a1_baseline/run.py
touch architectures/a2_governed/a2_governed.ipynb
touch architectures/a2_governed/prompts/v1.json
touch architectures/a2_governed/governance.py
touch architectures/a2_governed/run.py
touch architectures/shared/llm_client.py
touch architectures/shared/categories.json
touch architectures/shared/metrics.py

mkd results/a1/run_01
mkd results/a2/run_01/logs
touch results/a1/run_01/outputs.json
touch results/a1/run_01/run_meta.json
touch results/a2/run_01/outputs.json
touch results/a2/run_01/run_meta.json
touch results/comparison.ipynb

mkd disciplines/machine_learning/report
mkd disciplines/visualization/dashboard_app
mkd disciplines/visualization/report
mkd disciplines/image_processing/frames
mkd disciplines/image_processing/report
mkd disciplines/genetic_algorithms/population
mkd disciplines/genetic_algorithms/report
touch disciplines/machine_learning/classifier_baseline.ipynb
touch disciplines/visualization/dashboard.ipynb
touch disciplines/image_processing/frame_extraction.ipynb
touch disciplines/image_processing/facial_analysis.ipynb
touch disciplines/genetic_algorithms/prompt_optimizer.ipynb

touch docs/notas_orientador.md
touch docs/referencias.bib

echo "✅ Pronto!"
