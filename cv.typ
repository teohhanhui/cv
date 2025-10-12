#import "@preview/catppuccin:1.0.1": catppuccin, flavors

#let flavor = flavors.mocha
#show: catppuccin.with(flavor)
#let palette = flavor.colors

#let text-font = "CommitMono"
#let code-font = "CommitMono"

#set page(paper: "a4")
#set text(font: text-font)
#show heading: it => block(above: 1em, below: 1em, sticky: true)[
  #{
    set text(fill: palette.overlay0.rgb)
    let level = 0
    while level < it.level {
      [\#]
      level = level + 1
    }
  }
  #{
    let fill = text.fill
    if it.level == 1 {
      fill = palette.red.rgb
    }
    if it.level == 2 {
      fill = palette.green.rgb
    }
    set text(fill: fill)
    it.body
  }
]
#set par(spacing: 1.5em)
#set list(marker: [
  #set text(fill: palette.subtext0.rgb)
  --
])
#show link: underline
#show raw: set text(font: code-font)

#let subtitle(fill: palette.subtext0.rgb, content) = {
  set text(fill: fill)
  content
}
#let job-title(title) = subtitle(fill: palette.blue.rgb, title)
#let institution(title) = subtitle(fill: palette.blue.rgb, title)
#let time-period(title) = {
  show "(": set text(fill: palette.subtext0.rgb)
  show ")": set text(fill: palette.subtext0.rgb)
  show sym.dash.en: set text(fill: palette.subtext0.rgb)
  subtitle(fill: palette.yellow.rgb, title)
}

#let tech(tech) = {
  set text(fill: palette.subtext0.rgb)
  show "|": set text(fill: palette.sapphire.rgb)
  tech
}

= Summary

I am a software developer with more than 10 years of experience, with a focus on
backend web development.

I have more than 5 years of experience in the #link(
  "https://rust-lang.org/",
)[Rust] programming language.

I take pride in writing elegant and maintainable code.

I love and prefer working with and contributing to open source software
projects.

= Projects

== #link("https://github.com/teohhanhui/cyclers")[cyclers]

#time-period[(July 2025--Present)]

#subtitle[[WIP]]

A functional and reactive framework.

Inspired by #link("https://cycle.js.org/")[Cycle.js].

#tech[
  | `Rust` | `async` | `FRP` | `GitHub Actions` |
]

== #link("https://github.com/teohhanhui/hexciv")[Hexciv]

#time-period[(September 2024--June 2025)]

#subtitle[[WIP]]

Civ VI inspired game, written in Rust using the Bevy game engine.

#tech[
  | `Rust` | `Bevy` | `tile map` | `procedural generation` |
]

== #link("https://github.com/hykilpikonna/hyfetch")[HyFetch]

#time-period[(June 2024--October 2024)]

#link("https://github.com/hykilpikonna/hyfetch/pull/317")[Ported] the entire
project from Python to Rust.

Released since #link(
  "https://github.com/hykilpikonna/hyfetch/releases/tag/2.0.1",
)[hyfetch 2.0.1].

#tech[
  | `Rust` | `CLI` |
]

== #link("https://github.com/AsahiLinux/muvm")[muvm]

#time-period[(April 2024--Present)]

#link("https://github.com/AsahiLinux/muvm/pull/1")[Ported] the entire project
from C to Rust.

I am a co-maintainer of the project.

#tech[
  | `Rust` | `CLI` |
]

= Experience

== CariBid

#job-title[Software Engineer (Contractor)]

#time-period[(November 2024--Present)]

- Revamped and hardened authentication system.
  - Integrated #link(
      "https://openid.net/specs/openid-connect-core-1_0.html",
    )[OpenID Connect] for authentication with Amazon Cognito.
  - Implemented #link(
      "https://datatracker.ietf.org/doc/html/draft-ietf-oauth-browser-based-apps#section-6.2",
    )[Token-Mediating Backend] pattern and other security best practices.
- Implemented bid processing for online auctions.
  - Implemented validation for placement of bids from authorized users for both
    public and private auctions.
  - Integrated real-time push of bid updates using #link(
      "https://developer.mozilla.org/en-US/docs/Web/API/Server-sent_events",
    )[server-sent events].
- Implemented background processing for completed auctions.
  - Implemented scheduling of background jobs for performing post-auction close
    tasks.

#tech[
  | `Rust` | `Tokio` | `axum` | \
  | `Diesel` | `PostgreSQL` | \
  | `OpenID Connect` | \
  | `Docker` | `Docker Compose` | `GitHub Actions` |
]

== Bowtie

#job-title[Software Engineer (Contractor)]

#time-period[(August 2022--December 2023)]

- Integrated OpenID Connect for authentication.
- Refactored project to enforce architectural design with cleaner separation and
  higher maintainability.
- Migrated away from in-house legacy persistence layer to higher-level
  integration library by Automerge upstream.

#tech[
  | `Rust` | `Tokio` | `axum` | \
  | `Automerge` | `CRDT` | \
  | `OpenID Connect` | \
  | `GitLab CI` |
]

== Les-Tilleuls.coop

#job-title[Lead Developer]

#time-period[(February 2018--July 2020)]

- Maintained #link("https://api-platform.com/")[API Platform] framework as a
  Core Team member.
- Planned and executed upgrade process of LVMH projects to newer Symfony and API
  Platform versions.
- Developed new features and delivered quality improvements for Corum Asset
  Management project.

#tech[
  | `PHP` | `Symfony` | `API Platform` | \
  | `Hydra` | `JSON-LD` | `OpenAPI` | \
  | `Doctrine` | \
  | `Varnish` | \
  | `Docker` | `Docker Compose` | `GitLab CI` |
]

== Tripviss

#job-title[Software Engineer]

#time-period[(July 2015--August 2017)]

- Designed and built backend web API for travel e-commerce platform startup.
  - Maintained database of travel destinations and POIs, queryable by geometry.
  - Implemented tagging of travel destinations and POIs in tour and activity
    itineraries.
  - Implemented full-text search for tour and activity products.
- Contributed to API Platform development, and thereafter made a Core Team
  member.

#tech[
  | `PHP` | `Symfony` | `API Platform` | \
  | `Hydra` | `JSON-LD` | `OpenAPI` | \
  | `Doctrine` | `PostgreSQL` | `PostGIS` | \
  | `Redis` | `Varnish` | \
  | `Docker` | `Docker Compose` | `GitLab CI` |
]

== Company27

#job-title[Font-end Developer]

#time-period[(September 2014--December 2014)]

- Developed new web project for The Battery Shop.
- Developed new web project for Lacelle Malaysia.

== Corpick

#job-title[Software Engineer]

#time-period[(April 2013--August 2014)]

- Designed and built web-based system for home and gifts e-commerce store
  startup.

#tech[
  | `PHP` | `Symfony` | \
  | `Doctrine` | `MySQL` | \
  | `Redis` |
]

== SeedNet Technologies

#job-title[Software Development Engineer]

#time-period[(March 2013)]

- Developed and integrated stored procedures for web-based plant operations
  system for Petronas Chemicals.

= Education

== Bachelor of Computer Science

#institution[RMIT University, Australia]

#time-period[(2012)]

== Diploma in Information Technology

#institution[INTI International College Penang, Malaysia]

#time-period[(2010)]
