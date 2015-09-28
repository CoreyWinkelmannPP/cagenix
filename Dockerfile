FROM cagenix/docker-stack

# RUN cabal update

# ADD ./cagenix.cabal /var/www/api/cagenix.cabal

# RUN cd /var/www/api && cabal install --only-dependencies -j4

ADD ./ /var/www/api
# RUN cd /var/www/api && cabal install
RUN cd /var/www/api && stack install

ENV PORT 80
ENV PATH /root/.cabal/bin:$PATH

EXPOSE 80

WORKDIR /var/www/api
CMD ["cagenix"]
