---
description: Work in progress, migrating the Astroshop CI/CD pipelines into this repository. Runs the Astroshop with CPU, memory and N+1 problem patterns on a Kubernetes cluster monitored by Dynatrace, to show how to optimize application runtime.
tags:
  - classic
  - work-in-progress
  - kubernetes
  - runtime-optimization
---

!!! warning "Work in progress"
    This repository is **work in progress**. We are migrating the Astroshop CI/CD pipelines into
    it, and it is where we are building out how to **optimize the runtime** of an application with
    Dynatrace. Expect pages and functions to change.

--8<-- "snippets/disclaimer.md"

# Astroshop Runtime Optimization

This repository deploys the **Astroshop** — Dynatrace's build of the OpenTelemetry demo web shop —
on a local Kubernetes ([k3d](https://k3d.io/){target="_blank"}) cluster monitored by Dynatrace. It
carries the problem patterns shown at Perform 2024 for developer observability, so you can analyze
the runtime of a service in Dynatrace:

- CPU analysis
- Memory analysis
- Thread analysis

<div class="grid cards" markdown>
- [Let's begin :octicons-arrow-right-24:](2-getting-started.md)
</div>
