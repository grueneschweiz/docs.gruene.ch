---
title: Landingpage
---

## Precondition

- We assume you have already gathered some experience with your website and 
  know the basics terms, how to edit or add a post etc.
- You know how to use post or page [templates](2-4-post.md#template).


## General idea
A landing page is a single web page that is primarily intended to encourage 
visitors to follow it's embedded call-to-action. Any distracting elements 
are hidden from the page, so the visitors focus stays on the call-to-action. 
This should increase the conversion rate.

A landing page is typically used to generate donations, memberships, 
signatures etc. Visitors usually come to this page by following a direct 
link received through a marketing email, social media, QR code etc.


## What the template _Landing Page_ does
Our implementation of the Landing Page template distinguishes between 
visitors coming from an external source (by direct link) and visitors that 
hit the page following a link on the website itself.

### Visitors coming from an external source
To remove as much distraction as possible, visitors coming from an external 
source:

- never see the green bar on the top of the page 
  ([tagline](3-3-header.md/#edit-the-header-with-the-customizer)).
- always see the mobile menu (hamburger), even if they are on a desktop device.
- don't see meta information like tags, categories, etc.
- only see the contact widget (and text widgets if in use).

### Visitors referred by an internal link 
People hitting the landing page after following a link on an other page on the 
website are possibly just browsing the website and have probably already 
gotten used to the sites design. So we don't want to break their browsing 
experience. So no elements are removed from the page and also the default 
menu is shown.

However, this makes it harder for you to test the page in its distraction 
free design. And there might also be cases, where you want an internal link 
to explicitly show the page distraction free, as for visitors coming from an 
external source. Therefore, we added a possibility to force the distraction 
free design.

**Force distraction free design**

Just append `?focus` to the link. Example:

- Only distraction free for visitors coming from an external source: 
  [`https://grunee.ch/spende`](https://gruene.ch/spende)
- Always distraction free: 
  [`https://grunee.ch/spende?focus`](https://gruene.ch/spende?focus)


## Advice for editors

- The call to action should be close to the top.
- If there is a lot of content after the call to action, consider providing an
  anchor link that lets the visitor jump back to the call to action.
- It might be a good idea to leave out the header image, so the visitors 
  have to scroll less until they reach the interesting part. You can add a 
  preview image for social media using the 
  [SEO settings](2-2-front.md/#search-engines-and-social-media). 
- Think about hiding the share buttons (you'll find the corresponding 
  control in the page editor, just below the main content section.)

