all:
	./01-fosdem-fwd.sh
	./02-fosdem-router.sh
	./03-fosdem-stuffs.sh
	./04-fosdem-history.sh
	./05-fosdem-compare.sh

clean:
	rm -rf testie2*

clean_results:
	rm -rf results
	rm -rf 0*results/*.svg
