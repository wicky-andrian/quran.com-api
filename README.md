#README

-------
NOTES
=====

Elasticsearch
-------------

It's painful. But this will help a lot:

* Web portal: sudo plugin -install mobz/elasticsearch-head
    * Git: https://github.com/mobz/elasticsearch-head
    * `open http://localhost:9200/_plugin/head/`
* To view all indices
    * http://localhost:9200/_cat/indices?v
* Problems with indices or routing? (RoutingMissingException)
    * Delete the index
    * http://www.elasticsearch.org/guide/en/elasticsearch/reference/current/indices-delete-index.html
* View mappings:
    * http://localhost:9200/bookstore/_mapping

