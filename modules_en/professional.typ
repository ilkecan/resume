// Imports
#import "@preview/brilliant-cv:3.1.1": cv-section, cv-entry, cv-entry-start, cv-entry-continued


#cv-section("Professional Experience")

#cv-entry(
  society: [Kekik Teknoloji],
  logo: image("../assets/logos/kekik.png"),
  title: [Software/DevOps Engineer],
  date: [Sep 2023 - Dec 2025],
  location: [Remote],
  description: list(
    [Created Azure DevOps (ADO) CI/CD pipelines for multiple projects and Kubernetes clusters.],
    [Created and managed GitHub Actions workflows for various CI/CD tasks.],
    [Used Terraform to manage the AWS infrastructure and the GitHub organization of an e-commerce project.],
    [Created a Nushell based CLI tool to interact with Amazon ECS resources, similar to kubectl.],
    [Used Nix to create a consistent development environment between developers for a monorepo including Python and Rails applications.],
    [Managed the calculations of a finance project regarding different amortizations & payment schedules],
    [Created an internal Ruby library for SEO to automatically manage metadata and generate sitemaps for a multi-tenant platform.],
    [Managed the underlying routing mechanism for a multi-country, multi-language, multi-domain e-commerce project written in Rails.],
  ),
  tags: (
    "Flask",
    "Nix",
    "Python",
    "Rails",
    "Ruby",
    "Terraform",
  ).sorted(),
)

#cv-entry(
  society: [NixOS Foundation],
  logo: image("../assets/logos/nixos-foundation.png"),
  title: [Summer of Nix Participant],
  date: [Aug 2021 - Oct 2021],
  location: [Remote],
  description: list(
    [I was shortlisted for this two-month train and work program funded via the European Commission’s NGI Initiative.],
    [Used Hydra and various \*2nix projects and solidified my understanding of different concepts related to Nix.],
  ),
  tags: (
    "C++",
    "Hydra",
    "Nix",
    "OCaml",
    "Python",
    "Rust",
    "TypeScript",
  ).sorted(),
)

#cv-entry(
  society: [Kekik Teknoloji],
  logo: image("../assets/logos/kekik.png"),
  title: [Software/DevOps Engineer],
  date: [Sep 2020 - Aug 2021],
  location: [Adana, Turkey],
  description: list(
    [Created a decentralized application for the Ministry of Trade of Turkey using Ethereum smart contracts and IPFS.],
    [Managed cloud infrastructures with Terraform, provisioning servers with Ansible and created CI/CD pipelines for multiple clients.],
  ),
  tags: (
    "Ansible",
    "Ethereum",
    "IPFS",
    "Terraform",
  ).sorted(),
)

#cv-entry(
  society: [in4mo Oy],
  logo: image("../assets/logos/in4mo.jpg"),
  title: [Testing Engineer Trainee],
  date: [Jun 2019 - Sep 2019],
  location: [Espoo, Finland],
  description: list(
    [Worked on automated testing systems for multi-platform applications using Python-based Robot Framework and Selenium.],
    [Focused on systematic bug discovery across Android, iOS, Windows, and web platforms.],
  ),
  tags: (
    "Confluence",
    "Jenkins",
    "Jira",
    "Robot Framework",
    "Selenium",
    "SonarQube",
  ).sorted(),
)

#cv-entry(
  society: [Kekik Teknoloji],
  logo: image("../assets/logos/kekik.png"),
  title: [Software Engineering Intern],
  date: [Jun 2018 - Aug 2018],
  location: [Adana, Turkey],
  description: list(
    [Developed a customized ETL pipeline in Python to transfer data from PostgreSQL to Amazon Redshift.],
    [Built a foundational understanding of data warehouses, schema migrations, unit testing practices, and the DRY principle.],
  ),
  tags: (
    "Amazon Redshift",
    "Postgres",
    "Python",
  ).sorted(),
)
