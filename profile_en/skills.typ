// Imports
#import "@preview/brilliant-cv:4.1.0": (
  cv-section, cv-skill, cv-skill-tag, cv-skill-with-level, h-bar,
)


#let skill-type-width = 27%

#let wide-cv-skill = cv-skill.with(
  type-width: skill-type-width,
)

#cv-section("Skills")

#wide-cv-skill(
  type: [Programming & Paradigms],
  info: (
    "Nix",
    "Haskell",
    "Python",
    "Rust",
    "Functional Programming",
    "Declarative Programming",
  ).join(h-bar()),
)

#wide-cv-skill(
  type: [Infrastructure & Delivery],
  info: (
    "Terraform",
    "OpenTofu",
    "Infrastructure as Code",
    "GitHub Actions",
    "CI/CD",
    "Git",
  ).join(h-bar()),
)

#wide-cv-skill(
  type: [Cloud & Containerization],
  info: (
    "Amazon Web Services (AWS)",
    "Microsoft Azure",
    "Kubernetes",
    "Amazon ECS",
    "Docker",
  ).join(h-bar()),
)

#wide-cv-skill(
  type: [Systems & Developer Tooling],
  info: (
    "NixOS",
    "Linux",
    "Software Packaging",
    "Shell Scripting",
    "Performance Tuning",
  ).join(h-bar()),
)

#wide-cv-skill(
  type: [Backend & Data Processing],
  info: (
    "PostgreSQL",
    "SQL",
    "Ruby on Rails",
    "Data Engineering",
    "ETL",
  ).join(h-bar()),
)

#wide-cv-skill(
  type: [Human Languages],
  info: (
    "English (Fluent)",
    "Turkish (Native)",
  ).join(h-bar()),
)
