make:
	echo "making"
test:
	gcc ./answer/exec_to-do.c -o ./exec_to-do
	gcc ./answer/hello.c -o ./hello
	gcc ./answer/myfork.c -o ./myfork
	gcc ./answer/pc_pid.c -o ./pc_pid

	./pc_pid > ./tests/pc_pid_out
	./myfork > ./tests/myfork_out
	./exec_to-do Alex > ./tests/exec_out1
	./exec_to-do > ./tests/exec_out2

	echo "The following stdout for debugging ..."
	cat ./tests/pc_pid_out
	cat ./tests/myfork_out
	cat ./tests/exec_out1
	cat ./tests/exec_out2

	bash ./script_test/test1.sh



done:
	rm -rf ./script_test/exec_to-do
	rm -rf ./script_test/hello
	rm -rf pc_pid
	rm -rf myfork
	#rm -rf ./tests/pc_pid_out
	#rm -rf ./tests/mmyfork_out
	echo "delete all"

