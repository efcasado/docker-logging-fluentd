# Docker logging with FluentD

### Getting Started

```
make up
```

```
curl -XGET http://localhost:8080/hello[/:name]
```

Point your browser to [http://localhost:8000](http://localhost:8000).
The password can be found in the `docker-compose.yml` file included in
this repository.


### Resources

- [Logging drivers in Docker](https://docs.docker.com/config/containers/logging/configure/)
- [FluentD logging driver](https://docs.docker.com/config/containers/logging/fluentd/)
- [Splunk's Docker image](https://splunk.github.io/docker-splunk/)
- [FluentD output plugin for Splunk](https://github.com/splunk/fluent-plugin-splunk-hec)
