FROM frontrunnerio/dev-base
MAINTAINER Andreas Böhrnsen <andreas@frontrunner.io>

# Install in user space
USER $DEV_USERNAME

# install Node
RUN \
	/bin/bash -c '\
		source ~/.nvm/nvm.sh && \
		nvm install 4.2.2 && \
		nvm alias default 4.2.2 \
	'

# install Node packages
RUN \
	/bin/bash -c '\
		source ~/.nvm/nvm.sh && \
		npm install -g \
			bower \
			ember-cli@1.13.12 \
			phantomjs \
	'

# Install Ruby
RUN \
	/bin/bash -c '\
		export PATH="$HOME/.rbenv/bin:$PATH" && \
		eval "$(rbenv init -)" && \
		rbenv install 2.2.3 && \
		rbenv global 2.2.3 \
	'

