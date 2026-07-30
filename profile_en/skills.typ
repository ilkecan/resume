// Imports
#import "@preview/brilliant-cv:4.1.0": (
  cv-section, cv-skill, cv-skill-tag, cv-skill-with-level, h-bar,
)


#cv-section("Skills")

#cv-skill(
  type: [Languages],
  info: (
    "English (Fluent)",
    "Turkish (Native)",
  ).join(h-bar()),
)

#cv-skill(
  type: [Programming],
  info: (
    "C",
    "Haskell",
    "JavaScript",
    "Nix",
    "Python",
    "Ruby",
    "Rust",
    "SQL",
  ).sorted().join(h-bar()),
)

#cv-skill(
  type: [Tech Stack],
  info: (
    "AWS",
    "Docker",
    "Git",
    "Kubernetes",
    "Linux",
    "Nix",
    "PostgreSQL",
    "Terraform",
  ).sorted().join(h-bar()),
)

#cv-skill(
  type: [Frameworks & Libraries],
  info: (
    "NumPy",
    "Pandas",
    "Polars",
    "Rails",
  ).sorted().join(h-bar()),
)

#cv-skill(
  type: [Personal Interests],
  info: (
    "Functional programming",
    "Project Moon",
    "Reading",
  ).sorted().join(h-bar()),
)
