# Industrial Benchmark (Python)

Requires: Python 2.7

Documentation: The documentation is available online at: https://arxiv.org/abs/1709.09480
	Source: D. Hein, S. Depeweg, M. Tokic, S. Udluft, A. Hentschel, T.A. Runkler, and V. Sterzing. 
	"A Benchmark Environment Motivated by Industrial Control Problems". arXiv preprint arXiv:1709.09480, 2017. 

## Citing Industrial Benchmark

To cite Industrial Benchmark, please reference:
	D. Hein, S. Depeweg, M. Tokic, S. Udluft, A. Hentschel, T.A. Runkler, and V. Sterzing. "A Benchmark Environment 
		Motivated by Industrial Control Problems". arXiv preprint arXiv:1709.09480, 2017. 

	D. Hein, S. Udluft, M. Tokic, A. Hentschel, T.A. Runkler, and V. Sterzing. "Batch Reinforcement 
		Learning on the Industrial Benchmark: First Experiences," in 2017 International Joint Conference on Neural
		Networks (IJCNN), 2017, pp. 4214–4221.

	S. Depeweg, J. M. Hernández-Lobato, F. Doshi-Velez, and S. Udluft. "Learning and
		policy search in stochastic dynamical systems with bayesian neural networks." arXiv
		preprint arXiv:1605.07127, 2016.


## Run Example

### On Debian/Ubuntu

	# Install native requirements
	sudo apt-get update
	awk -vORS=" " '{ print $1 }' requirements.apt.txt \
        | xargs sudo apt-get install -y

	# Install python requirements
	sudo pip install -r requirements.txt

	# Run the OpenAI example (requires Python 2.7)
	python example_openai.py

### Using docker.io

	docker build -t py-ind-bench .
	docker run py-ind-bench

