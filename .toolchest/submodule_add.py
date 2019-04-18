org = g.get_organization("jed-frey-freenas-plugins")
epos = list(org.get_repos())
for repo in repos:
    if "-jaf-" in repo.name:
        continue
    name = repo.name
    if name.startswith("iocage-plugin-"):
        short = name.replace("iocage-plugin-", "")
    elif name.startswith("iocage-"):
        short = name.replace("iocage-", "")
    else:
        raise Exception(name)
    print("git submodule add {} {}".format(repo.clone_url, short)),
