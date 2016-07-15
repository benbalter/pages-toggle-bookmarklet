# Pages toggle bookmarklet

A bookmarklet to toggle between GitHub Pages site and source

[![Build Status](https://travis-ci.org/benbalter/pages-toggle-bookmarklet.svg?branch=master)](https://travis-ci.org/benbalter/pages-toggle-bookmarklet)

## What it does

If you're on a GitHub Pages site like `https://sroberts.github.io/`, clicking the bookmarlet will redirect you to `https://github.com/sroberts/sroberts.github.io`.

If you're on a GitHub Pages repo like 'https://github.com/benbalter/benbalter.github.io', clicking the bookmarklet will redirect you to `http://ben.balter.com`.

If you're on a GitHub Pages site like `http://ben.balter.com`, clicking the bookmarklet will do absolutely nothing. That's crazy talk.

## How it works

Guessing and blind luck. Mostly just reading the URL, moving some things around, and hoping the resulting page exists. It's not an exact science. YMMV.

## Usage

1. Visit [ben.balter.com/pages-toggle-bookmarklet/](http://ben.balter.com/pages-toggle-bookmarklet/)
2. Drag the link to your bookmark bar
3. Click bookmarklet to toggle between site and source

## Developing locally

I'd love your help making the script better. The source lives in `src` and the built files live in `dist`. To build locally:

1. Clone down the repo and `cd` into the directory
2. `script/bootstrap`
3. Make your changes
4. `script/build`
