---
title: "Welcome to Underland"
date: 2022-11-13T09:20:44-05:00
categories: ["welcome"]
tags: ["welcome"]
draft: false
---

Hello! I have wanted to get back into writing for a _long_ time. I experiment
a lot in topics ranging from systems to infrastructure to even some very rudimentary 3D graphics.
In the spirit of open source I want to start writing about my projects. First, to share and
possibly help (or show how _not_ to do it) others. Additionally, I am hopeful that
in sharing success, failures, design, etc. it will help myself get better.

I have several topics planned. For the first series, I'm planning to do a "tour of my homelab".
This covers several subjects including the following:

## Infrastructure
In typical ops fashion, I prefer to run everything on my own infra. I have a 42U rack
in my basement that has various metal. In the first part of the series I'm going to walk through all
of the pieces that provides the foundation for my compute. I think about redundancy and
high availability for almost everything including dual WAN and redundant switches with bonded
links at the nodes to try to eliminate single points of failure as much as possible.
The infrastructure posts will focus mostly on the hardware.

## Provisioning
When I started building my homelab I spent quite a bit of time thinking about systems management
specifically around provisioning and configuration. I had several requirements including
using pxe boot and redudancy. I have simplicity as a primary focus and try to keep complexity (and dependencies)
to a minimum. I really, really like how [Alpine](https://alpinelinux.org) can use an `apkovl` (overlay)
at boot time to configure and provision a system. For these reasons, I created a small provisioning system
called `Ion` that handles netboot requests and sends specific overlays
to the requesting node. The provision posts will cover the following:

- `Hydrogen`: a custom Alpine OS that I manage for kernel customizations and mirroring
- `Atom`: a simple hypervisor management system to manage virtual machines
- `Ion`: a provisioning and configuration management system for Alpine

The posts will detail how I separate out core functions like WAN access from boot dependent configuration
and compute infra.

## Platform
Being a homelab enthusiast I run as many self-hosted apps as possible. I am a container nerd so
I run as many things in containers as possible and I am a huge fan of [containerd](https://containerd.io)
(it's awesome you should check it out if you don't know about it!). I was a core maintainer
of Docker so everything around containers is a passion of mine. I have been involved in container platforms
for a _long_ time ranging from early pre-Swarm prototype clustering to various open and closed source
systems. I also ran Kubernetes for a while but ended up migrating back to a new version of my
[Stellar](https://github.com/ehazlett/stellar) container platform for application workloads.

Hopefully these will be useful and spark some good discussion :)

You will see the reference to `Underland` quite a bit in the upcoming posts. I am an Alice in Wonderland
fan, specifically the Mad Hatter and this is a reference to that. So please, join me as we take
a journey down the rabbit hole :)

![down the rabbit hole](./images/alice.jpg)
