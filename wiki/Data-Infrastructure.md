# Data infrastructure

> Small, well-specified tools that a consortium actually uses, built quickly with guided AI coding: I write the specification, data rules and tests, and review the generated code.

## PhAMiG / QRes DB: raw microbial growth curves

- **Raw data only.** Model-fitted or normalised curves are rejected. As of October 2026: 12,965 datasets, 30 species, ~73,000 wells and 314,688 evolution transfer cycles from 14 published sources.
- **One dataset, five tools.** Model-free metrics, gcplyr, growthrates, DGrowthR and KinBiont.jl run on identically preprocessed curves, so users compare methods instead of picking one by habit.
- **Submission built for real labs:** plate templates, required metadata, release immediately, on a date or when the preprint appears, and key-protected delete or re-upload of corrected data.
- **Search** goes from a rule parser to keyword matching, with an LLM only as a fallback.
- **Stack:** R/Shiny, DuckDB/Parquet, Julia. A regression check runs after every change.

→ [PhAMiG](https://github.com/vierocka/PhAMiG)

## GridION manager: one sequencer, seven groups

- **Purpose:** a Shiny + SQLite app for the consortium's shared Oxford Nanopore GridION.
- **Features:** flow-cell inventory with age and reuse tracking, monthly booking of the five flow-cell positions, kit stock, an audit log and in-app bug reports.
- **Access:** group logins with hashed passwords; read-only for anyone not logged in.
