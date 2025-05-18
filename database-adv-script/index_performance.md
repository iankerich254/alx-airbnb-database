## Without Indexing

"Sort  (cost=27.59..28.09 rows=200 width=24) (actual time=0.047..0.047 rows=2 loops=1)"
"  Sort Key: (count(*)) DESC"
"  Sort Method: quicksort  Memory: 25kB"
"  ->  HashAggregate  (cost=17.95..19.95 rows=200 width=24) (actual time=0.018..0.020 rows=2 loops=1)"
"        Group Key: property_id"
"        Batches: 1  Memory Usage: 40kB"
"        ->  Seq Scan on booking  (cost=0.00..15.30 rows=530 width=16) (actual time=0.012..0.013 rows=2 loops=1)"
"Planning Time: 0.118 ms"
"Execution Time: 0.081 ms"

## With Indexing

"Sort  (cost=1.06..1.06 rows=2 width=24) (actual time=0.025..0.026 rows=2 loops=1)"
"  Sort Key: (count(*)) DESC"
"  Sort Method: quicksort  Memory: 25kB"
"  ->  HashAggregate  (cost=1.03..1.05 rows=2 width=24) (actual time=0.015..0.016 rows=2 loops=1)"
"        Group Key: property_id"
"        Batches: 1  Memory Usage: 24kB"
"        ->  Seq Scan on booking  (cost=0.00..1.02 rows=2 width=16) (actual time=0.010..0.011 rows=2 loops=1)"
"Planning Time: 0.083 ms"
"Execution Time: 0.053 ms"
