# Music Genre Classification
Developing a ML model to classify a audio file to 10 music genre and then run the app on streamlit.
![image](https://github.com/Mythanos99/Music-Genre-Classification/assets/76528489/29bf1b39-6139-4492-9290-f896a0e3dcf5)


To run the app run the following code block in the terminal of the root directory
```
pip install requirements.txt
sudo apt get packages.txt
streamlit run app.py
```
To deploy the app upload the code to a repository in github and select the deploy app on streamlit website.
###Docker Support
Docker support is enabled for the app. To push  the image on docker hub follow the following code
```
INSTALL DOCKER
-->change environment..yml to environemnt.yml
docker build -t <appname>:v1 .
docker run --rm -p 8880:8501 <appname>:v1
 --Make account of docker hub--
docker login -u <username> -p <password> docker.io
docker tag <appname>:v1 <username>/<appname>:version1
docker push <username>/<appname>:version1

```
To access the current image from docker hub-
```
docker pull novapro21/mgc:version1
```
## About the project
The dataset for the project is taken form the GTZAN dataset.
--https://www.kaggle.com/datasets/andradaolteanu/gtzan-dataset-music-genre-classification
The GTZAN dataset contains 100 audio files of 30 seconds each of all 10 genres. To increase the
proportion of data the audio files are further broken into 10 parts each of 3 seconds

### Visualization of the Dataset
Violin plot:The violin plot helps us understand the distribution of numerical data
![image](https://github.com/Mythanos99/Music-Genre-Classification/assets/76528489/b04dbe53-c66b-464a-ab08-f26aba147357)


MFCC’s plot:The MFCC plot for different genre are plotted.The MFCC plot tries to capture
the capture the time power spectrum of the audio signals.Further the plots of coorealation,chroma
shift,zero crossing rate,roll off and spectral features were plotted to help us understand the features
which helped us in feature extraction.

![image](https://github.com/Mythanos99/Music-Genre-Classification/assets/76528489/8a4dbda6-1531-4a5f-95f7-f5b94f592c25)

### Models used
The following models were run 
* Decision Tree Classifier
* Gradient Boosting Classifier
* Random Forest Classifier
* Extra Tree Classifier
* Bagging Classifier
* LGBM Classifier


### Evaluation of the Models

The models implemented were evaluated using techniques like -accuracy,precision , recall ,f1 score,
Confusion matrix , ROC plots and cross validation scores.Table 1 contains the score of the mean
of the cross validation scores on different models.Figure 4 shows the classwise accuracy plot for the
differernt models.
![image](https://github.com/Mythanos99/Music-Genre-Classification/assets/76528489/d6ea111e-6f8c-4454-b990-845c16788dba)
![image](https://github.com/Mythanos99/Music-Genre-Classification/assets/76528489/7afa7ec9-85f6-4226-a517-a6ce9dc34a65)

*The best scoring model LIGHTGBM was hyper-parameterised further.*

### Result

![image](https://github.com/Mythanos99/Music-Genre-Classification/assets/76528489/e917cbc9-6199-418a-b691-af5a4dfcb8e2)

For very less false positive rate we have achieved more than 0.8 accuracy for almost all classes of
music given in the dataset.Even the area under the curve for all the classes is greater than 0.99.
As the false positive rate increases forward the true positive rate tends to 1. The saturation level
4is achieved when the false positive rate is in between 0.4 to 0.6. The consequences of all these
observations leads us to the conclusion that the model is not overfitted and can be considered as a
good model

