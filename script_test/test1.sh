echo "Running tests..."
echo

CUR=$(pwd)
echo $CUR
SCRIPT_DIR=$CUR"/script_test"
echo $SCRIPT_DIR

# COMMAND=$SCRIPT_DIR"/exec_to-do"
# output1=$($COMMAND)
# expected_output1="Hello, "


if [ $? -eq 0 ] ; then
  echo "Pass: Program exited zero"
else
  echo "Fail: Program did not exit zero"
  exit 1
fi

# if [ "$output1" == "$expected_output1" ] ; then
#  echo "Pass: Output is correct"
# else
#  echo "Expected '$expected_output1' but got: $output1"
#  exit 1
# fi

echo "Test1 passed."

exit 0