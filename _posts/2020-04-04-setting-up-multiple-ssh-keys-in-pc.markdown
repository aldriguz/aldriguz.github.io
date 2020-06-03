---
layout: post
title:  "Setting up multiple SSH Keys in PC"
date:   2020-04-04 00:00:00 -0500
categories: security
tags: ssh git terminal
---

Before start, check in terminal ssh agent is running

```bash
# eval $(ssh-agent -s)
```

In bash run this command using your email account for service

```bash
# ssh-keygen -t rsa -b 4096 -C "email@email.com"
```

then follow instructions, enter filename or passphrase if needed

Adding your key to ssh agent

```bash
# ssh-add ~/.ssh/id_rsa
```

Now you need to add tour ssh public key to your management site (Github or GitLab)

Use this command to add clipboard

```bash
# clip < ~/.ssh/id_rsa.pub
```

Then you can paste it to the site and save it

![/assets/Img0001.png](/assets/Img0001.png)

![/assets/Img0002.png](/assets/Img0002.png)

Testing your connection, you will see a welcome message

```bash
# ssh -T git@gitlab.com
# ssh -T git@github.com
```

![/assets/Img0003.png](/assets/Img0003.png)

Last step is to add/edit config file to use ssh in mutiple sites, you need to setup as this example.

```bash
# This is a comment 
# This file goes to ~/.ssh/config (yes, without file extention)

# Personal github account
Host github.com
   HostName github.com
   User git
   IdentityFile ~/.ssh/id_rsa_github
# Personal gitlab account

Host gitlab.com
   HostName gitlab.com
   User bgit
   IdentityFile ~/.ssh/id_rsa_gitlab
```