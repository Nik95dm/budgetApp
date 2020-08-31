postgres:
	docker exec -it budget-psql psql -Ubudget budget
migrateup:
	migrate -source file://pkg/postgres/migrations -database postgres://budget:budget@localhost:54320/budget?sslmode=disable up
migratedown:
	migrate -source file://pkg/postgres/migrations -database postgres://budget:budget@localhost:54320/budget?sslmode=disable down