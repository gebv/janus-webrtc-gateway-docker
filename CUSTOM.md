
Дириктория `origfiles` содержит оригинальные файлы из дирикторий
* `/usr/local/share/janus` -> `origfiles/share/janus`
* `/usr/local/etc/janus` -> `origfiles/etc/janus`

```bash
docker cp janus:/usr/local/etc/janus ./janus_orig
docker cp janus:/usr/local/share/janus ./janus_plugins
```

Кастомное

* выставлено в `janus.transport.http.jcfg` `admin_http = true`
* в случае если запущен в сети docker то следует в `janus.jcfg` в разделе `nat`
    * `nat_1_1_mapping` значение равное публичному IP сервера (TODO: добавить лог ошибки в качестве примера)
    * `keep_private_host` выставить значение `true` (зачем???)
