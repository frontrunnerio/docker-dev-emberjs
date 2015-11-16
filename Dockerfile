FROM frontrunnerio/dev-base
MAINTAINER Andreas Böhrnsen <andreas@frontrunner.io>

ENV NODE_VERSION 5.0.0
ENV EMBER_CLI_VERSION 1.13.12

# Install in user space
USER $DEV_USERNAME

# install Node
RUN \
	/bin/bash -c '\
		source ~/.nvm/nvm.sh && \
		nvm install $NODE_VERSION && \
		nvm alias default $NODE_VERSION \
	'

# install Node packages
RUN \
	/bin/bash -c '\
		source ~/.nvm/nvm.sh && \
		npm install -g \
			bower \
			ember-cli@$EMBER_CLI_VERSION \
			phantomjs \
	'

