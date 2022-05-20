
HOST_NAME=prod-database
PASSWORD_K=somepass

for i in  1 6 9 12 15 17 19 20
do
    echo "------------------For facility $i---------------"
    cqlsh -u cassandra -p $PASSWORD_K $HOST_NAME -e "select COUNT(*) from facility_$i.billing_v1;" | awk "NR==4"
    cqlsh -u cassandra -p $PASSWORD_K $HOST_NAME -e "select COUNT(*) from facility_$i.billing_v26;" | awk "NR==4"
    echo # for new line
    cqlsh -u cassandra -p $PASSWORD_K $HOST_NAME -e "select COUNT(*) from facility_$i.treatment_time_v1;" | awk "NR==4"
    cqlsh -u cassandra -p $PASSWORD_K $HOST_NAME -e "select COUNT(*) from facility_$i.treatment_time_v26;" | awk "NR==4"
    echo
    cqlsh -u cassandra -p $PASSWORD_K $HOST_NAME -e "select COUNT(*) from facility_$i.therapy_productivity_report_v1;" | awk "NR==4"
    cqlsh -u cassandra -p $PASSWORD_K $HOST_NAME -e "select COUNT(*) from facility_$i.therapy_productivity_report_v26;" | awk "NR==4"
    echo
    cqlsh -u cassandra -p $PASSWORD_K $HOST_NAME -e "select COUNT(*) from facility_$i.charge_capture_v1;" | awk "NR==4"
    cqlsh -u cassandra -p $PASSWORD_K $HOST_NAME -e "select COUNT(*) from facility_$i.charge_capture_v26;" | awk "NR==4"
    echo "-----------------------------------------------"
    echo

done