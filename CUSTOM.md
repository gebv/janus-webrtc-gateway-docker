
Дириктория `origfiles` содержит оригинальные файлы из дирикторий
* `/usr/local/share/janus` -> `origfiles/share/janus`
* `/usr/local/etc/janus` -> `origfiles/etc/janus`

```bash
docker cp janus:/usr/local/etc/janus ./janus_orig
docker cp janus:/usr/local/share/janus ./janus_plugins
```

Кастомное

* выставлено в `janus.transport.http.jcfg` `admin_http = true`
* ...
