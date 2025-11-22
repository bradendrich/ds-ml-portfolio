
# CHANGELOG — Integrated Project (Gold Recovery Prediction)

## [1.0.0] — Initial GitHub Release
- Cleaned notebook by removing reviewer/platform comments.
- Added README.md with detailed project overview.
- Added CHANGELOG.md with release notes.
- Added requirements.txt.
- Documented preprocessing, anomaly detection, and sMAPE evaluation steps.

## Potential Enhancements (v1.1+)
- Add visualizations comparing rougher vs final concentrate recovery.
- Implement multiple regressors (CatBoost, LightGBM) for comparison.
- Separate utility functions (recovery calc, sMAPE) into a `src/` module.
- Add SHAP values for interpretability of feature contributions.
- Build automated pipeline for aligning features across train/test sets.
