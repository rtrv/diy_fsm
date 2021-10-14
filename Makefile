build:
	docker-compose build

test_shell:
	docker-compose run --rm -e RAILS_ENV=test diy_fsm sh

shell:
	docker-compose run --rm diy_fsm sh

rails_c:
	docker-compose run --rm diy_fsm rails c