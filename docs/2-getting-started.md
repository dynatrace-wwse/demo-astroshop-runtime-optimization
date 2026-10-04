--8<-- "snippets/grail-requirements.md"

## 1. Launch the Codespace

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/dynatrace-wwse/demo-astroshop-runtime-optimization){target="_blank"}

!!! tip "Machine size & secrets"
    - Choose a machine with at least **4 cores**.
    - `DT_ENVIRONMENT` — the URL of your Dynatrace environment, e.g. `https://abc123.apps.dynatrace.com`
    - `DT_OPERATOR_TOKEN` — the Dynatrace Operator token (required)
    - `DT_INGEST_TOKEN` — an ingest token (optional)

While the Codespace is created, `.devcontainer/post-create.sh`:

1. checks that the Dynatrace secrets are set, and stops if a required one is missing,
2. starts a local k3d Kubernetes cluster and installs `k9s`,
3. deploys the Dynatrace Operator in application monitoring mode,
4. deploys the Astroshop, **with no problem pattern** active.

Run `printGreeting` in the terminal to see the Astroshop URL.

## 2. Roll out a problem pattern

Each function rolls out an Astroshop version that carries one problem pattern. Then open the
affected service in Dynatrace and analyze its runtime.

| Function | Astroshop version | Problem pattern |
|---|---|---|
| `deployCpuProblem` | 1.12.1 | CPU |
| `deployMemoryProblem` | 1.12.2 | Memory |
| `deployNplusOneProblem` | 1.12.3 | N+1 calls |

!!! note "Work in progress"
    The load test function `doLoadtest` is not working yet.

<div class="grid cards" markdown>
- [Cleanup :octicons-arrow-right-24:](cleanup.md)
</div>
