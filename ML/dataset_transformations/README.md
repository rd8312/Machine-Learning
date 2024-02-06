# Dataset transformations
scikit-learn provides a library of **transformers**, which may:
1. clean
2. reduce
3. expand
4. generate  

feature representations.

- These are represented by classes with a `fit` method, which learns model parameters (e.g. mean and standard deviation for normalization) from a training set, and a `transform` method which applies this transformation model to unseen data.

- `fit_transform` may be more convenient and efficient for modelling and transforming the training data simultaneously.

> transformers:  
An estimator supporting transform and/or fit_transform. A purely transductive transformer, such as manifold.TSNE, may not implement transform.

## Pipelines and composite estimators
- To build a **composite estimator** `Pipeline`, `transformers` are usually combined with `other transformers` or with `predictors` (such as classifiers or regressors).

- Pipelines require all steps except the last to be a transformer. The last step can be anything, a `transformer`, a `predictor`, or a `clustering estimator` which might have or not have a `.predict(...)` method.

- A pipeline exposes all methods provided by the last estimator: 
1. If the last step provides a `transform` method, then the pipeline would have a transform method and behave like a **transformer**. 
2. If the last step provides a `predict` method, then the pipeline would expose that method, and given a data X, use all steps except the last to transform the data, and then give that **transformed data** to the `predict` method of the last step of the pipeline. 


- The **class Pipeline** is often used in combination with `ColumnTransformer` or `FeatureUnion` which concatenate the output of transformers into a composite feature space. 

- `TransformedTargetRegressor` deals with transforming the target (i.e. log-transform y)

**Reference:**
- [x] pipeline.ipynb