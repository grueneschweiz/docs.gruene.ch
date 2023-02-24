---
title: FAQ
---

## How can I edit the get active button?

See chapter [Header](3-3-header.md#get-active-button).


## How do I add a page with all my posts / news?

Pages with all your posts are called archives (read more about 
[archives](1-2-terms.md#archive)). Archives are created automatically, you 
don't have to add a page or post for it. If for example you want to create an archive
with all your _news_ posts, all you have to do is:

1. assign those posts the category _news_ (see 
   [categories](2-4-post.md#categories)).
2. Link the category in the navigation (see 
   [navigation](2-8-navigation.md#edit-the-navigation)).


## The latest press release is not displayed on the front page. Why?

See [Latest Press Release](2-2-front.md#latest-press-release).


## Can I add a social media feed?

No. We did not implement this feature on purpose. As soon as a social feed is 
embedded, data is automatically transmitted to Facebook and Co. The data 
protection regulation requires us to ask visitors to opt in to this, before
any data is transmitted. The feed would thus only be shown, after the visitor
accepts the data transmission. Thus, the whole thing is somewhat useless, and 
we recommend to simply add a link to the social media profile instead.


## How do I make a supporter list where people can sign up?

On the [sample site for candidates](https://extern18.gruene.ch/musterperson/angebot)
you'll find an 
[example implementation](https://extern21.gruene.ch/musterperson/unterstuetzungskomitee).
It consists basically of two elements:
- A [content block](2-3-page.md/#content-blocks) of type text, in which you 
  enter all supporters.
- A form block, with a [form](2-7-form.md) where the supporters can subscribe 
  themselves.

The experience with a previous system has shown misuse of the form, if the form 
data is automatically added to the list. Trolls and spammers like to take 
advantage of such behavior. And also legitimate subscribers like to have their 
typos corrected, before they appear in the list ;) We have therefore decided to 
always add supporters manually and thus not implemented an automatism for it.

You can set up a [notification](2-7-form.md/#notification) to your e-mail 
address for new subscriptions. So you know, when you have to add a new supporter
to the list.