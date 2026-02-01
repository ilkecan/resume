// Imports
#import "@preview/brilliant-cv:3.1.1": cv-section, cv-entry


#cv-section("Projects")

#cv-entry(
  title: [Co-researcher],
  society: [Guided Research Project],
  date: [Mar 2020 - Jun 2020],
  location: [Ankara, Turkey],
  description: list(
    [Participated in a research project about a CycleGAN based, context aware video stream enhancer.],
    [The project was selected by AdımODTÜ (METU Development Foundation) for an undergrad research grant.],
    [It also gained second place at the METU CEng Guided Research Symposium 2020.],
  ),
  tags: (
    "CycleGAN",
    "Python",
  ).sorted(),
)

#pagebreak()

#cv-entry(
  title: [Software/DevOps Engineer],
  society: [Graduation Project],
  date: [Oct 2019 - Jun 2020],
  location: [Ankara, Turkey],
  description: list(
    [Delivered a graduation project centered on a trust-aware, community-detection-based recommender system for e-commerce.],
    [Took responsibility for backend and infrastructure components, CI/CD pipelines, automated testing, and database design.],
  ),
  tags: (
    "Jenkins",
    "Neo4j",
    "Nginx",
    "Python",
    "TypeScript",
  ).sorted(),
)
