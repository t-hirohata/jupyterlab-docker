FROM jupyter/datascience-notebook:python-3.8.6

RUN pip install --upgrade pip wheel setuptools \
  && pip install jupyterlab \
  && jupyter serverextension enable --py jupyterlab \
  && jupyter labextension install @lckr/jupyterlab_variableinspector \
  && jupyter labextension enable @lckr/jupyterlab_variableinspector

CMD jupyter lab --ip=* --port=8888 --no-browser --notebook-dir=/home/jovyan --allow-root
