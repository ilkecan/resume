// Required fonts: Roboto, Source Sans 3 (or Source Sans Pro), and the
// Font Awesome 7 Free desktop OTFs (Regular, Solid, Brands) — get them from
// https://fonts.google.com/specimen/Roboto,
// https://fonts.google.com/specimen/Source+Sans+3, and
// https://fontawesome.com/download. Install locally for desktop Typst.
// On typst.app, the web app does not bundle Font Awesome — upload the three
// .otf files to your project instead, or contact icons render as boxes.
// See https://yunanwg.github.io/brilliant-CV/ (Troubleshooting) for details.

// Imports
#import "@preview/brilliant-cv:4.1.0": letter

// Each profile lives in its own folder with a self-contained metadata.toml.
// Switch profile at compile time:
//   typst compile letter.typ --input profile=fr
#let profile = sys.inputs.at("profile", default: "en")
#let metadata = toml("profile_" + profile + "/metadata.toml")


#show: letter.with(
  metadata,
  // sender-address defaults to metadata.personal.address if set, or override here:
  sender-address: (
    metadata.personal.info.email,
    metadata.personal.info.phone,
    metadata.personal.info.location.split(" · ").at(0),
  ).join(" · "),
  // "ilkecan@protonmail.com · +90 507 371 49 11 · Türkiye",
  recipient-name: "<company>",
  // Supports multiline addresses:
  recipient-address: "<city>, <country>",
  // date defaults to today; pass a string to override:
  date: datetime.today().display(),
  subject: "<subject>",
  // Scanned signatures are personal and sensitive — avoid committing real ones to public git repos.
  // signature: image("assets/signature.png"),
  address-style: "normal",  // use "normal" to disable smallcaps on addresses
)

<letter>
