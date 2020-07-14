init_block_logs:
	gzip -kfd data/2015_07_22_mktplace_shop_web_log_sample.log.gz

init_stream_logs:
	cat < /dev/null > stream.log

run_socket:
	jupyter-nbconvert --debug --execute --ExecutePreprocessor.timeout=21600 Socket-Text-Stream.ipynb

run_balancer:
	jupyter-nbconvert --debug --execute --ExecutePreprocessor.timeout=21600 AWS-Elastic-Load-Balancer.ipynb
