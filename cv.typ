#import "@preview/catppuccin:1.0.1": catppuccin, flavors

#let flavor = flavors.mocha
#show: catppuccin.with(flavor)
#let palette = flavor.colors

#let text-size = 11pt
#let text-font = "CommitMono"
#let code-font = "CommitMono"

#set page(paper: "a4")
#set text(size: text-size, font: text-font)
#show heading: it => block(above: 1.1em, below: 0.5em, sticky: true)[#{
  let text-fill = text.fill
  let marker-fill = palette.overlay0.rgb
  if it.level == 1 {
    text-fill = palette.red.rgb
  }
  if it.level == 2 {
    text-fill = palette.green.rgb
  }
  set text(size: text-size)
  {
    let level = 0
    while level < it.level {
      text(fill: marker-fill)[\#]
      level = level + 1
    }
  }
  set text(fill: text-fill)
  [ #it.body]
}]
#set par(spacing: 0.65em)
#set list(marker: text(fill: palette.subtext0.rgb)[--])
#show link: underline
#show raw: set text(font: code-font)

#let skills(content) = {
  let text-size = 0.9em
  let separator-fill = palette.sapphire.rgb
  set text(size: text-size)
  set par.line(
    numbering: _ => text(size: text-size, fill: separator-fill)[|],
    number-clearance: -0.6 * text-size,
  )
  set list(marker: text(fill: separator-fill)[|])
  show list.item: it => box[#it.body #list.marker]
  block(inset: (left: 1.2em))[#content]
}
#let project(content) = box(content)
#let timeframe(content) = {
  let text-size = 0.9em
  let text-fill = palette.yellow.rgb
  let symbol-fill = palette.subtext0.rgb
  set text(size: text-size, fill: text-fill)
  show "(": set text(fill: symbol-fill)
  show ")": set text(fill: symbol-fill)
  show sym.dash.en: set text(fill: symbol-fill)
  content
}
#let wip(content) = {
  let text-fill = palette.subtext0.rgb
  set text(fill: text-fill)
  content
}
#let experience(content) = box(content)
#let job-title(content) = {
  let text-size = 0.9em
  let text-fill = palette.blue.rgb
  set text(size: text-size, fill: text-fill)
  content
}
#let education(content) = box(content)
#let institution(content) = {
  let text-size = 0.9em
  let text-fill = palette.blue.rgb
  set text(size: text-size, fill: text-fill)
  content
}

#set document(title: "CV")

= Summary

I am a software developer with more than 10 years of experience, with a focus on
backend web development. I have more than 5 years of experience in the #link(
  "https://rust-lang.org/",
)[Rust] programming language. I take pride in writing elegant and maintainable
code. I love and prefer working with and contributing to open source software
projects.

= Skills

#skills[
  - Rust
  - Tokio
  - axum
  - Diesel
  - PostgreSQL
  - PostGIS
  - Redis
  - Varnish
  - OpenID Connect
  - OpenAPI
  - JSON-LD
  - Hydra
  - Automerge
  - CRDT
  - FRP
  - Docker
  - Docker Compose
  - GitHub Actions
  - GitLab CI
  - Bash
  - Linux
]

= Projects

== #link("https://codeberg.org/teohhanhui/tapir2p")[tapir2p]

#project[
  #timeframe[(May 2026--Present)]

  #wip[[WIP]] A peer-to-peer ActivityPub experiment.
]

== #link("https://github.com/teohhanhui/cyclers")[cyclers]

#project[
  #timeframe[(July 2025--November 2025)]

  #wip[[WIP]] A functional and reactive framework. Inspired by #link(
    "https://cycle.js.org/",
  )[Cycle.js].
]

== #link("https://github.com/teohhanhui/hexciv")[Hexciv]

#project[
  #timeframe[(September 2024--June 2025)]

  #wip[[WIP]] Civ VI inspired game, written in Rust using the Bevy game engine.
]

== #link("https://github.com/hykilpikonna/hyfetch")[HyFetch]

#project[
  #timeframe[(June 2024--October 2024)]

  #link("https://github.com/hykilpikonna/hyfetch/pull/317")[Ported] the entire
  project from Python to Rust. Released since #link(
    "https://github.com/hykilpikonna/hyfetch/releases/tag/2.0.1",
  )[hyfetch 2.0.1].
]

== #link("https://github.com/AsahiLinux/muvm")[muvm]

#project[
  #timeframe[(April 2024--Present)]

  #link("https://github.com/AsahiLinux/muvm/pull/1")[Ported] the entire project
  from C to Rust. I am a co-maintainer of the project.
]

= Experience

== CariBid

#experience[
  #job-title[Software Engineer (Contractor)]

  #timeframe[(November 2024--June 2026)]

  - Revamped and hardened authentication system. Integrated #link(
      "https://openid.net/specs/openid-connect-core-1_0.html",
    )[OpenID Connect] for authentication with Amazon Cognito. Implemented #link(
      "https://datatracker.ietf.org/doc/html/draft-ietf-oauth-browser-based-apps#section-6.2",
    )[Token-Mediating Backend] pattern and other security best practices.
  - Implemented bid processing for online auctions. Implemented validation for
    placement of bids from authorized users for both public and private
    auctions. Integrated real-time push of bid updates using #link(
      "https://developer.mozilla.org/en-US/docs/Web/API/Server-sent_events",
    )[server-sent events].
  - Implemented background processing for completed auctions. Implemented
    scheduling of background jobs for performing post-auction close tasks.
]

== Bowtie

#experience[
  #job-title[Software Engineer (Contractor)]

  #timeframe[(August 2022--December 2023)]

  - Integrated OpenID Connect for authentication.
  - Refactored project to improve separation and maintainability.
  - Migrated away from in-house legacy persistence layer to higher-level
    integration library by Automerge upstream.
]

== Les-Tilleuls.coop

#experience[
  #job-title[Lead Developer]

  #timeframe[(February 2018--July 2020)]

  - Maintained #link("https://api-platform.com/")[API Platform] framework as a
    Core Team member.
  - Planned and executed upgrade process of LVMH projects to newer Symfony and
    API Platform versions.
  - Developed new features and delivered quality improvements for Corum Asset
    Management project.
]

== Tripviss

#experience[
  #job-title[Software Engineer]

  #timeframe[(July 2015--August 2017)]

  - Designed and built backend web API for travel e-commerce platform startup.
    Maintained database of travel destinations and POIs, queryable by geometry.
    Implemented tagging of travel destinations and POIs in tour and activity
    itineraries. Implemented full-text search for tour and activity products.
  - Contributed to API Platform development, and thereafter made a Core Team
    member.
]

== Company27

#experience[
  #job-title[Front-end Developer]

  #timeframe[(September 2014--December 2014)]
]

== Corpick

#experience[
  #job-title[Software Engineer]

  #timeframe[(April 2013--August 2014)]

  - Designed and built web-based system for home and gifts e-commerce store
    startup.
]

== SeedNet Technologies

#experience[
  #job-title[Software Development Engineer]

  #timeframe[(March 2013)]

  - Developed and integrated stored procedures for web-based plant operations
    system for Petronas Chemicals.
]

= Education

== Bachelor of Computer Science

#education[
  #institution[RMIT University, Australia]

  #timeframe[(2012)]
]

== Diploma in Information Technology

#education[
  #institution[INTI International College Penang, Malaysia]

  #timeframe[(2010)]
]
