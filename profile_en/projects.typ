// Imports
#import "@preview/brilliant-cv:4.1.0": cv-entry, cv-section


#cv-section("Selected Projects")

#cv-entry(
  title: [Open-Source Project],
  society: link("https://github.com/ilkecan/flutter-nix")[flutter-nix],
  date: [Nov 2021 - Jan 2022],
  location: [Remote],
  description: list(
    [Built an experimental open-source Nix framework providing reproducible Flutter development environments across Linux, web and Android, plus deterministic Linux and web application builds.],
    [Developed its Haskell translator as a Cabal CLI that parsed Flutter package metadata, prefetched Pub and SDK dependencies concurrently, reused cached hashes and generated JSON lock data for sandboxed Nix builds.],
  ),
  tags: (
    "Haskell",
    "Nix",
    "Cabal",
    "Functional Programming",
    "Developer Tooling",
  ),
)
#cv-entry(
  title: [Guided Research Project],
  society: [GAN-Based Streaming Enhancement],
  date: [Mar 2020 - Jun 2020],
  location: [Ankara, Türkiye],
  description: list(
    [Co-researched a CycleGAN-based video-conferencing enhancement system that fine-tuned a shared model during streaming using compressed and periodically transmitted high-quality frames.],
    [Built the data and evaluation infrastructure: a Bash/FFmpeg pipeline and Python/PyTorch tooling over a 305-video corpus, including 8,400 aligned pre-training frame pairs and codec comparisons using SSIM/MS-SSIM.],
    [Co-authored the six-page paper and presented the project at the 2020 METU CEng Guided Research Symposium, where it placed second; the project also received an undergraduate research grant.],
  ),
  tags: (
    "Python",
    "Machine Learning",
    "PyTorch",
    "Computer Vision",
    "FFmpeg",
  ),
)

#cv-entry(
  title: [Senior Design Project],
  society: [TACoRec: Trust-Aware Product Recommender],
  date: [Oct 2019 - Jun 2020],
  location: [Ankara, Türkiye],
  description: list(
    [Co-developed and deployed a trust-aware recommender system in a four-person team using Neo4j, Goldberg's densest-subgraph algorithm, collaborative filtering and trust-propagation methods.],
    [Owned its VM, Nginx deployment and Jenkins CI/CD pipeline, which built, tested, analyzed and continuously deployed the application to a live development server.],
    [Built most of the TypeScript/Pug frontend, contributed Python backend modules, authored the Python unit-test suite and created custom Neo4j interfaces and migration tooling.],
  ),
  tags: (
    "Python",
    "TypeScript",
    "Neo4j",
    "Algorithms",
    "Jenkins",
    "Nginx",
  ),
)
