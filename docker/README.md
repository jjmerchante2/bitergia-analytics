# Bitergia Analytics

[Bitergia Analytics Platform](https://bitergia.com/bitergia-analytics/)
fetches, stores, and analyzes data from software
development repositories or platforms. Data is processed in several ways to produce
metrics such as the evolution over time of activity, people, or organizations;
time to respond on issues and pull requests; diversity; BMI; elephant factor;
onion model analysis, among others.

The platform is built on top of [GrimoireLab](https://chaoss.github.io/grimoirelab/),
an open source project developed in Python and JavaScript, that provides the core
components to fetch and analyze data. Data visualizations and storage are provided
by [OpenSearch](https://opensearch.org/).

This docker image runs a container preinstalled with a certain release of
GrimoireLab, including all libraries and programs.

## How to use this image

The image will run the GrimoireLab orchestrator - sirmordred - by default. This
needs a `setup.cfg` and a `projects.json` file. You can find more
information about how to define these two files either on the
[GrimoireLab](https://github.com/chaoss/grimoirelab/tree/master/docker) or
[Sir Mordred](https://github.com/chaoss/grimoirelab-sirmordred) repositories

You will also need the Bitergia Analytics Opensearch, Opensearch Dashboards, and
SortingHat containers running.

Once everything is ready, run the following command to start using Bitergia
Analytics:

```
docker run --net=host \
    -v <projects_json_path>:/home/grimoire/conf/projects.json \
    -v <setup_cfg_path>:/home/grimoire/conf/setup.cfg \
    -t bitergia/bitergia-analytics
```

## License

Bitergia Analytics is licensed under GNU General Public License (GPL), version 3
or later.

However, this image is based on the [GrimoireLab docker image](https://hub.docker.com/repository/docker/grimoirelab/grimoirelab/general)
which is also based on the [Debian docker image](https://hub.docker.com/_/debian),
Check the [license information](https://www.debian.org/social_contract#guidelines)
for the type of software is contained on them.
