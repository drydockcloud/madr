# Markdown Architectural Decision Records

Docker image of the [MADR template and log tool](https://github.com/adr/madr).

## Adding MADR to your project

1. Add the `activate` file in this repo to your project repo.
2. Add the following service to your docker-compose configuration, such as the `docker-compose.yml` file.
```
  services:
    madr:
      image: drydockcloud/madr
      user: ${UID_GID}
      volumes:
        - .:/src
```
3. Pull the image: `docker-compose pull madr`

# Usage

1. Activate the new commands: `. activate`
2. Initialize the files:
```
$ madr-init
$ ls docs/decisions/
0000-use-markdown-architectural-decision-records.md
index.md
template.md
```

  Note that the UID_GID is set in the `activate` file. This is to make the file permissions match the user when it creates the initial template when `madr-init` is called.

3. Use the log tool help: `adr-log -h`
4. Typical usage: `adr-log -d docs/decisions -i docs/decisions/index.md`
