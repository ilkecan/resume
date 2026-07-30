// Imports
#import "@preview/brilliant-cv:4.1.0": (
  cv-entry, cv-entry-continued, cv-entry-start, cv-section,
)

#cv-section("Professional Experience")

#cv-entry(
  society: [Kekik Teknoloji],
  logo: image("../assets/logos/kekik.png"),
  title: [Software and DevOps Engineer],
  date: [Sep 2023 - Dec 2025],
  location: [Remote],
  description: list(
    [Served as Plettora's primary full-time engineer in a small product team, working across its Rails application, Python data platform, AWS infrastructure and delivery systems.],
    [Replaced request-time Athena/S3 queries and Python-side filtering with a production PostgreSQL ETL pipeline; built modular Python scraping infrastructure with five source integrations and numerous daily targets.],
    [Designed a modular, team-wide Nix environment for the Rails/Python monorepo using flake-parts and custom modules; migrated repositories and CI/CD from Azure DevOps to GitHub Actions.],
    [Migrated staging and production from EKS to ECS using a hybrid Fargate/EC2 design; built a team-adopted kubectl-style ECS CLI in Nushell for inspection, logs, exec, restarts and scaling.],
    [Cut ARM64 multi-architecture builds from more than 90 minutes to two to three minutes using native BuildKit builders; also stopped recurring ivdIQ production OOM incidents by deploying jemalloc.],
    [Owned Plettora's technical SEO and internationalization, achieving first-page listing rankings; built automated content translation and production loan, lease and rental calculators with example- and invariant-based tests.],
  ),
  tags: (
    "Nix",
    "Python",
    "Ruby on Rails",
    "AWS",
    "Terraform",
    "OpenTofu",
    "Amazon ECS",
    "Kubernetes",
    "Docker",
  ),
)

#cv-entry(
  society: [NixOS Foundation],
  logo: image("../assets/logos/nixos-foundation.png"),
  title: [Nix Packager (Summer of Nix)],
  date: [Aug 2021 - Oct 2021],
  location: [Remote],
  description: list(
    [Selected from 99 applicants as one of 35 participants in the inaugural paid, full-time, eight-week program funded through the European Commission's Next Generation Internet initiative.],
    [Packaged five projects spanning CMake, OCaml, Electron/Node.js, Python and Rust, delivering upstream or standalone flakes validated with Hydra jobs and NixOS VM tests.],
    [Upstreamed the EgilSCIM and EEZ Studio flakes; for EgilSCIM, built a NixOS VM test and a GDB-ready development shell using dependency debug symbols and source paths.],
    [Added URLExtract to Nixpkgs as its maintainer, fixed Ghidra for cwe\_checker and contributed accepted documentation to Nix.],
  ),
  tags: (
    "Nix",
    "Nixpkgs",
    "NixOS",
    "Software Packaging",
    "GDB",
    "Rust",
    "Node.js",
  ),
)

#cv-entry(
  society: [Kekik Teknoloji],
  logo: image("../assets/logos/kekik.png"),
  title: [Software and DevOps Engineer],
  date: [Sep 2020 - Aug 2021],
  location: [Adana, Türkiye],
  description: list(
    [Served as Kekik's sole technical contributor on a Ministry of Trade project, designing a permissioned Ethereum/IPFS framework and implementing Solidity contracts, Node.js integration services and its Docker/Kubernetes environment.],
    [Owned Kordsa's Azure infrastructure workstream through production cutover: provisioned three environments with Terraform/Terragrunt, built cross-organization Azure DevOps pipelines and implemented blue/green deployment over private networking.],
    [Migrated an AWS account spanning 75 resource types to Terraform, building a Rust/Rusoto tool that discovered resources and generated reviewable import scripts for resource-specific handling.],
    [Additional client work included Ansible/Dokku deployments, Nginx configuration, ELK/APM observability, MySQL migrations and browser/mobile automation with TypeScript/Playwright and Python/Appium.],
  ),
  tags: (
    "Nix",
    "Terraform",
    "Rust",
    "AWS",
    "Azure",
    "Kubernetes",
    "Docker",
    "Node.js",
  ),
)

#cv-entry(
  society: [in4mo Oy],
  logo: image("../assets/logos/in4mo.jpg"),
  title: [Testing Engineer Trainee],
  date: [Jun 2019 - Sep 2019],
  location: [Espoo, Finland],
  description: list(
    [Tested mobile and web workflows across iOS, Android and Windows UWP; traced defects using source code, server logs and logcat and reported reproducible findings in Jira.],
    [Worked with Robot Framework, Selenium and Appium, set up a local Jenkins instance to study the CI workflow and built a Python generator for cross-environment log retrieval.],
  ),
  tags: (
    "Python",
    "Test Automation",
    "Jenkins",
    "Robot Framework",
    "Appium",
    "Selenium",
  ),
)

#pagebreak()

#cv-entry(
  society: [Kekik Teknoloji],
  logo: image("../assets/logos/kekik.png"),
  title: [Software Engineer Intern],
  date: [Jun 2018 - Aug 2018],
  location: [Adana, Türkiye],
  description: list(
    [Built a Python socket-based file-sharing CLI with authentication, configuration and lightweight schema migrations, then ported it from Python 2.7 to 3.7.],
    [Implemented the initial PostgreSQL-to-Amazon Redshift ETL pipeline, including type conversion, logging, recoverable error handling and unit tests; the refined pipeline was deployed on AWS Glue.],
  ),
  tags: (
    "Python",
    "ETL",
    "PostgreSQL",
    "Amazon Redshift",
    "AWS Glue",
  ),
)
