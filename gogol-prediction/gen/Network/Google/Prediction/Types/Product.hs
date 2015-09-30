{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Prediction.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Prediction.Types.Product where

import           Network.Google.Prediction.Types.Sum
import           Network.Google.Prelude

-- | Model metadata.
--
-- /See:/ 'insert2ModelInfo' smart constructor.
data Insert2ModelInfo = Insert2ModelInfo
    { _imiModelType              :: !(Maybe Text)
    , _imiClassWeightedAccuracy  :: !(Maybe Text)
    , _imiClassificationAccuracy :: !(Maybe Text)
    , _imiMeanSquaredError       :: !(Maybe Text)
    , _imiNumberLabels           :: !(Maybe Int64)
    , _imiNumberInstances        :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Insert2ModelInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'imiModelType'
--
-- * 'imiClassWeightedAccuracy'
--
-- * 'imiClassificationAccuracy'
--
-- * 'imiMeanSquaredError'
--
-- * 'imiNumberLabels'
--
-- * 'imiNumberInstances'
insert2ModelInfo
    :: Insert2ModelInfo
insert2ModelInfo =
    Insert2ModelInfo
    { _imiModelType = Nothing
    , _imiClassWeightedAccuracy = Nothing
    , _imiClassificationAccuracy = Nothing
    , _imiMeanSquaredError = Nothing
    , _imiNumberLabels = Nothing
    , _imiNumberInstances = Nothing
    }

-- | Type of predictive model (CLASSIFICATION or REGRESSION).
imiModelType :: Lens' Insert2ModelInfo (Maybe Text)
imiModelType
  = lens _imiModelType (\ s a -> s{_imiModelType = a})

-- | Estimated accuracy of model taking utility weights into account
-- (Categorical models only).
imiClassWeightedAccuracy :: Lens' Insert2ModelInfo (Maybe Text)
imiClassWeightedAccuracy
  = lens _imiClassWeightedAccuracy
      (\ s a -> s{_imiClassWeightedAccuracy = a})

-- | A number between 0.0 and 1.0, where 1.0 is 100% accurate. This is an
-- estimate, based on the amount and quality of the training data, of the
-- estimated prediction accuracy. You can use this is a guide to decide
-- whether the results are accurate enough for your needs. This estimate
-- will be more reliable if your real input data is similar to your
-- training data (Categorical models only).
imiClassificationAccuracy :: Lens' Insert2ModelInfo (Maybe Text)
imiClassificationAccuracy
  = lens _imiClassificationAccuracy
      (\ s a -> s{_imiClassificationAccuracy = a})

-- | An estimated mean squared error. The can be used to measure the quality
-- of the predicted model (Regression models only).
imiMeanSquaredError :: Lens' Insert2ModelInfo (Maybe Text)
imiMeanSquaredError
  = lens _imiMeanSquaredError
      (\ s a -> s{_imiMeanSquaredError = a})

-- | Number of class labels in the trained model (Categorical models only).
imiNumberLabels :: Lens' Insert2ModelInfo (Maybe Int64)
imiNumberLabels
  = lens _imiNumberLabels
      (\ s a -> s{_imiNumberLabels = a})

-- | Number of valid data instances used in the trained model.
imiNumberInstances :: Lens' Insert2ModelInfo (Maybe Int64)
imiNumberInstances
  = lens _imiNumberInstances
      (\ s a -> s{_imiNumberInstances = a})

instance FromJSON Insert2ModelInfo where
        parseJSON
          = withObject "Insert2ModelInfo"
              (\ o ->
                 Insert2ModelInfo <$>
                   (o .:? "modelType") <*>
                     (o .:? "classWeightedAccuracy")
                     <*> (o .:? "classificationAccuracy")
                     <*> (o .:? "meanSquaredError")
                     <*> (o .:? "numberLabels")
                     <*> (o .:? "numberInstances"))

instance ToJSON Insert2ModelInfo where
        toJSON Insert2ModelInfo{..}
          = object
              (catMaybes
                 [("modelType" .=) <$> _imiModelType,
                  ("classWeightedAccuracy" .=) <$>
                    _imiClassWeightedAccuracy,
                  ("classificationAccuracy" .=) <$>
                    _imiClassificationAccuracy,
                  ("meanSquaredError" .=) <$> _imiMeanSquaredError,
                  ("numberLabels" .=) <$> _imiNumberLabels,
                  ("numberInstances" .=) <$> _imiNumberInstances])

-- | A list of the confusion matrix row totals.
--
-- /See:/ 'analyzeModelDescriptionConfusionMatrixRowTotals' smart constructor.
data AnalyzeModelDescriptionConfusionMatrixRowTotals =
    AnalyzeModelDescriptionConfusionMatrixRowTotals
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnalyzeModelDescriptionConfusionMatrixRowTotals' with the minimum fields required to make a request.
--
analyzeModelDescriptionConfusionMatrixRowTotals
    :: AnalyzeModelDescriptionConfusionMatrixRowTotals
analyzeModelDescriptionConfusionMatrixRowTotals =
    AnalyzeModelDescriptionConfusionMatrixRowTotals

instance FromJSON
         AnalyzeModelDescriptionConfusionMatrixRowTotals where
        parseJSON
          = withObject
              "AnalyzeModelDescriptionConfusionMatrixRowTotals"
              (\ o ->
                 pure AnalyzeModelDescriptionConfusionMatrixRowTotals)

instance ToJSON
         AnalyzeModelDescriptionConfusionMatrixRowTotals where
        toJSON = const (Object mempty)

--
-- /See:/ 'insert' smart constructor.
data Insert = Insert
    { _iStorageDataLocation      :: !(Maybe Text)
    , _iModelType                :: !(Maybe Text)
    , _iTrainingInstances        :: !(Maybe [InsertTrainingInstances])
    , _iUtility                  :: !(Maybe [InsertUtility])
    , _iStoragePMMLModelLocation :: !(Maybe Text)
    , _iSourceModel              :: !(Maybe Text)
    , _iId                       :: !(Maybe Text)
    , _iStoragePMMLLocation      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Insert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iStorageDataLocation'
--
-- * 'iModelType'
--
-- * 'iTrainingInstances'
--
-- * 'iUtility'
--
-- * 'iStoragePMMLModelLocation'
--
-- * 'iSourceModel'
--
-- * 'iId'
--
-- * 'iStoragePMMLLocation'
insert
    :: Insert
insert =
    Insert
    { _iStorageDataLocation = Nothing
    , _iModelType = Nothing
    , _iTrainingInstances = Nothing
    , _iUtility = Nothing
    , _iStoragePMMLModelLocation = Nothing
    , _iSourceModel = Nothing
    , _iId = Nothing
    , _iStoragePMMLLocation = Nothing
    }

-- | Google storage location of the training data file.
iStorageDataLocation :: Lens' Insert (Maybe Text)
iStorageDataLocation
  = lens _iStorageDataLocation
      (\ s a -> s{_iStorageDataLocation = a})

-- | Type of predictive model (classification or regression).
iModelType :: Lens' Insert (Maybe Text)
iModelType
  = lens _iModelType (\ s a -> s{_iModelType = a})

-- | Instances to train model on.
iTrainingInstances :: Lens' Insert [InsertTrainingInstances]
iTrainingInstances
  = lens _iTrainingInstances
      (\ s a -> s{_iTrainingInstances = a})
      . _Default
      . _Coerce

-- | A class weighting function, which allows the importance weights for
-- class labels to be specified (Categorical models only).
iUtility :: Lens' Insert [InsertUtility]
iUtility
  = lens _iUtility (\ s a -> s{_iUtility = a}) .
      _Default
      . _Coerce

-- | Google storage location of the pmml model file.
iStoragePMMLModelLocation :: Lens' Insert (Maybe Text)
iStoragePMMLModelLocation
  = lens _iStoragePMMLModelLocation
      (\ s a -> s{_iStoragePMMLModelLocation = a})

-- | The Id of the model to be copied over.
iSourceModel :: Lens' Insert (Maybe Text)
iSourceModel
  = lens _iSourceModel (\ s a -> s{_iSourceModel = a})

-- | The unique name for the predictive model.
iId :: Lens' Insert (Maybe Text)
iId = lens _iId (\ s a -> s{_iId = a})

-- | Google storage location of the preprocessing pmml file.
iStoragePMMLLocation :: Lens' Insert (Maybe Text)
iStoragePMMLLocation
  = lens _iStoragePMMLLocation
      (\ s a -> s{_iStoragePMMLLocation = a})

instance FromJSON Insert where
        parseJSON
          = withObject "Insert"
              (\ o ->
                 Insert <$>
                   (o .:? "storageDataLocation") <*> (o .:? "modelType")
                     <*> (o .:? "trainingInstances" .!= mempty)
                     <*> (o .:? "utility" .!= mempty)
                     <*> (o .:? "storagePMMLModelLocation")
                     <*> (o .:? "sourceModel")
                     <*> (o .:? "id")
                     <*> (o .:? "storagePMMLLocation"))

instance ToJSON Insert where
        toJSON Insert{..}
          = object
              (catMaybes
                 [("storageDataLocation" .=) <$>
                    _iStorageDataLocation,
                  ("modelType" .=) <$> _iModelType,
                  ("trainingInstances" .=) <$> _iTrainingInstances,
                  ("utility" .=) <$> _iUtility,
                  ("storagePMMLModelLocation" .=) <$>
                    _iStoragePMMLModelLocation,
                  ("sourceModel" .=) <$> _iSourceModel,
                  ("id" .=) <$> _iId,
                  ("storagePMMLLocation" .=) <$>
                    _iStoragePMMLLocation])

--
-- /See:/ 'analyzeErrors' smart constructor.
data AnalyzeErrors =
    AnalyzeErrors
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnalyzeErrors' with the minimum fields required to make a request.
--
analyzeErrors
    :: AnalyzeErrors
analyzeErrors = AnalyzeErrors

instance FromJSON AnalyzeErrors where
        parseJSON
          = withObject "AnalyzeErrors"
              (\ o -> pure AnalyzeErrors)

instance ToJSON AnalyzeErrors where
        toJSON = const (Object mempty)

--
-- /See:/ 'list' smart constructor.
data List = List
    { _lNextPageToken :: !(Maybe Text)
    , _lKind          :: !Text
    , _lItems         :: !(Maybe [Maybe Insert2])
    , _lSelfLink      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'List' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lNextPageToken'
--
-- * 'lKind'
--
-- * 'lItems'
--
-- * 'lSelfLink'
list
    :: List
list =
    List
    { _lNextPageToken = Nothing
    , _lKind = "prediction#list"
    , _lItems = Nothing
    , _lSelfLink = Nothing
    }

-- | Pagination token to fetch the next page, if one exists.
lNextPageToken :: Lens' List (Maybe Text)
lNextPageToken
  = lens _lNextPageToken
      (\ s a -> s{_lNextPageToken = a})

-- | What kind of resource this is.
lKind :: Lens' List Text
lKind = lens _lKind (\ s a -> s{_lKind = a})

-- | List of models.
lItems :: Lens' List [Maybe Insert2]
lItems
  = lens _lItems (\ s a -> s{_lItems = a}) . _Default .
      _Coerce

-- | A URL to re-request this resource.
lSelfLink :: Lens' List (Maybe Text)
lSelfLink
  = lens _lSelfLink (\ s a -> s{_lSelfLink = a})

instance FromJSON List where
        parseJSON
          = withObject "List"
              (\ o ->
                 List <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "prediction#list")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink"))

instance ToJSON List where
        toJSON List{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lNextPageToken,
                  Just ("kind" .= _lKind), ("items" .=) <$> _lItems,
                  ("selfLink" .=) <$> _lSelfLink])

--
-- /See:/ 'insert2' smart constructor.
data Insert2 = Insert2
    { _insStorageDataLocation      :: !(Maybe Text)
    , _insModelType                :: !(Maybe Text)
    , _insKind                     :: !Text
    , _insCreated                  :: !(Maybe UTCTime)
    , _insTrainingComplete         :: !(Maybe UTCTime)
    , _insSelfLink                 :: !(Maybe Text)
    , _insTrainingStatus           :: !(Maybe Text)
    , _insStoragePMMLModelLocation :: !(Maybe Text)
    , _insId                       :: !(Maybe Text)
    , _insStoragePMMLLocation      :: !(Maybe Text)
    , _insModelInfo                :: !(Maybe Insert2ModelInfo)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Insert2' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'insStorageDataLocation'
--
-- * 'insModelType'
--
-- * 'insKind'
--
-- * 'insCreated'
--
-- * 'insTrainingComplete'
--
-- * 'insSelfLink'
--
-- * 'insTrainingStatus'
--
-- * 'insStoragePMMLModelLocation'
--
-- * 'insId'
--
-- * 'insStoragePMMLLocation'
--
-- * 'insModelInfo'
insert2
    :: Insert2
insert2 =
    Insert2
    { _insStorageDataLocation = Nothing
    , _insModelType = Nothing
    , _insKind = "prediction#training"
    , _insCreated = Nothing
    , _insTrainingComplete = Nothing
    , _insSelfLink = Nothing
    , _insTrainingStatus = Nothing
    , _insStoragePMMLModelLocation = Nothing
    , _insId = Nothing
    , _insStoragePMMLLocation = Nothing
    , _insModelInfo = Nothing
    }

-- | Google storage location of the training data file.
insStorageDataLocation :: Lens' Insert2 (Maybe Text)
insStorageDataLocation
  = lens _insStorageDataLocation
      (\ s a -> s{_insStorageDataLocation = a})

-- | Type of predictive model (CLASSIFICATION or REGRESSION).
insModelType :: Lens' Insert2 (Maybe Text)
insModelType
  = lens _insModelType (\ s a -> s{_insModelType = a})

-- | What kind of resource this is.
insKind :: Lens' Insert2 Text
insKind = lens _insKind (\ s a -> s{_insKind = a})

-- | Insert time of the model (as a RFC 3339 timestamp).
insCreated :: Lens' Insert2 (Maybe UTCTime)
insCreated
  = lens _insCreated (\ s a -> s{_insCreated = a})

-- | Training completion time (as a RFC 3339 timestamp).
insTrainingComplete :: Lens' Insert2 (Maybe UTCTime)
insTrainingComplete
  = lens _insTrainingComplete
      (\ s a -> s{_insTrainingComplete = a})

-- | A URL to re-request this resource.
insSelfLink :: Lens' Insert2 (Maybe Text)
insSelfLink
  = lens _insSelfLink (\ s a -> s{_insSelfLink = a})

-- | The current status of the training job. This can be one of following:
-- RUNNING; DONE; ERROR; ERROR: TRAINING JOB NOT FOUND
insTrainingStatus :: Lens' Insert2 (Maybe Text)
insTrainingStatus
  = lens _insTrainingStatus
      (\ s a -> s{_insTrainingStatus = a})

-- | Google storage location of the pmml model file.
insStoragePMMLModelLocation :: Lens' Insert2 (Maybe Text)
insStoragePMMLModelLocation
  = lens _insStoragePMMLModelLocation
      (\ s a -> s{_insStoragePMMLModelLocation = a})

-- | The unique name for the predictive model.
insId :: Lens' Insert2 (Maybe Text)
insId = lens _insId (\ s a -> s{_insId = a})

-- | Google storage location of the preprocessing pmml file.
insStoragePMMLLocation :: Lens' Insert2 (Maybe Text)
insStoragePMMLLocation
  = lens _insStoragePMMLLocation
      (\ s a -> s{_insStoragePMMLLocation = a})

-- | Model metadata.
insModelInfo :: Lens' Insert2 (Maybe Insert2ModelInfo)
insModelInfo
  = lens _insModelInfo (\ s a -> s{_insModelInfo = a})

instance FromJSON Insert2 where
        parseJSON
          = withObject "Insert2"
              (\ o ->
                 Insert2 <$>
                   (o .:? "storageDataLocation") <*> (o .:? "modelType")
                     <*> (o .:? "kind" .!= "prediction#training")
                     <*> (o .:? "created")
                     <*> (o .:? "trainingComplete")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "trainingStatus")
                     <*> (o .:? "storagePMMLModelLocation")
                     <*> (o .:? "id")
                     <*> (o .:? "storagePMMLLocation")
                     <*> (o .:? "modelInfo"))

instance ToJSON Insert2 where
        toJSON Insert2{..}
          = object
              (catMaybes
                 [("storageDataLocation" .=) <$>
                    _insStorageDataLocation,
                  ("modelType" .=) <$> _insModelType,
                  Just ("kind" .= _insKind),
                  ("created" .=) <$> _insCreated,
                  ("trainingComplete" .=) <$> _insTrainingComplete,
                  ("selfLink" .=) <$> _insSelfLink,
                  ("trainingStatus" .=) <$> _insTrainingStatus,
                  ("storagePMMLModelLocation" .=) <$>
                    _insStoragePMMLModelLocation,
                  ("id" .=) <$> _insId,
                  ("storagePMMLLocation" .=) <$>
                    _insStoragePMMLLocation,
                  ("modelInfo" .=) <$> _insModelInfo])

--
-- /See:/ 'analyzeDataDescriptionFeatures' smart constructor.
data AnalyzeDataDescriptionFeatures = AnalyzeDataDescriptionFeatures
    { _addfText        :: !(Maybe AnalyzeDataDescriptionFeaturesText)
    , _addfNumeric     :: !(Maybe AnalyzeDataDescriptionFeaturesNumeric)
    , _addfIndex       :: !(Maybe Int64)
    , _addfCategorical :: !(Maybe AnalyzeDataDescriptionFeaturesCategorical)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnalyzeDataDescriptionFeatures' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'addfText'
--
-- * 'addfNumeric'
--
-- * 'addfIndex'
--
-- * 'addfCategorical'
analyzeDataDescriptionFeatures
    :: AnalyzeDataDescriptionFeatures
analyzeDataDescriptionFeatures =
    AnalyzeDataDescriptionFeatures
    { _addfText = Nothing
    , _addfNumeric = Nothing
    , _addfIndex = Nothing
    , _addfCategorical = Nothing
    }

-- | Description of multiple-word text values of this feature.
addfText :: Lens' AnalyzeDataDescriptionFeatures (Maybe AnalyzeDataDescriptionFeaturesText)
addfText = lens _addfText (\ s a -> s{_addfText = a})

-- | Description of the numeric values of this feature.
addfNumeric :: Lens' AnalyzeDataDescriptionFeatures (Maybe AnalyzeDataDescriptionFeaturesNumeric)
addfNumeric
  = lens _addfNumeric (\ s a -> s{_addfNumeric = a})

-- | The feature index.
addfIndex :: Lens' AnalyzeDataDescriptionFeatures (Maybe Int64)
addfIndex
  = lens _addfIndex (\ s a -> s{_addfIndex = a})

-- | Description of the categorical values of this feature.
addfCategorical :: Lens' AnalyzeDataDescriptionFeatures (Maybe AnalyzeDataDescriptionFeaturesCategorical)
addfCategorical
  = lens _addfCategorical
      (\ s a -> s{_addfCategorical = a})

instance FromJSON AnalyzeDataDescriptionFeatures
         where
        parseJSON
          = withObject "AnalyzeDataDescriptionFeatures"
              (\ o ->
                 AnalyzeDataDescriptionFeatures <$>
                   (o .:? "text") <*> (o .:? "numeric") <*>
                     (o .:? "index")
                     <*> (o .:? "categorical"))

instance ToJSON AnalyzeDataDescriptionFeatures where
        toJSON AnalyzeDataDescriptionFeatures{..}
          = object
              (catMaybes
                 [("text" .=) <$> _addfText,
                  ("numeric" .=) <$> _addfNumeric,
                  ("index" .=) <$> _addfIndex,
                  ("categorical" .=) <$> _addfCategorical])

-- | Description of multiple-word text values of this feature.
--
-- /See:/ 'analyzeDataDescriptionFeaturesText' smart constructor.
newtype AnalyzeDataDescriptionFeaturesText = AnalyzeDataDescriptionFeaturesText
    { _addftCount :: Maybe Int64
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnalyzeDataDescriptionFeaturesText' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'addftCount'
analyzeDataDescriptionFeaturesText
    :: AnalyzeDataDescriptionFeaturesText
analyzeDataDescriptionFeaturesText =
    AnalyzeDataDescriptionFeaturesText
    { _addftCount = Nothing
    }

-- | Number of multiple-word text values for this feature.
addftCount :: Lens' AnalyzeDataDescriptionFeaturesText (Maybe Int64)
addftCount
  = lens _addftCount (\ s a -> s{_addftCount = a})

instance FromJSON AnalyzeDataDescriptionFeaturesText
         where
        parseJSON
          = withObject "AnalyzeDataDescriptionFeaturesText"
              (\ o ->
                 AnalyzeDataDescriptionFeaturesText <$>
                   (o .:? "count"))

instance ToJSON AnalyzeDataDescriptionFeaturesText
         where
        toJSON AnalyzeDataDescriptionFeaturesText{..}
          = object (catMaybes [("count" .=) <$> _addftCount])

-- | Input to the model for a prediction.
--
-- /See:/ 'inputInput' smart constructor.
newtype InputInput = InputInput
    { _iiCsvInstance :: Maybe [JSONValue]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InputInput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iiCsvInstance'
inputInput
    :: InputInput
inputInput =
    InputInput
    { _iiCsvInstance = Nothing
    }

-- | A list of input features, these can be strings or doubles.
iiCsvInstance :: Lens' InputInput [JSONValue]
iiCsvInstance
  = lens _iiCsvInstance
      (\ s a -> s{_iiCsvInstance = a})
      . _Default
      . _Coerce

instance FromJSON InputInput where
        parseJSON
          = withObject "InputInput"
              (\ o ->
                 InputInput <$> (o .:? "csvInstance" .!= mempty))

instance ToJSON InputInput where
        toJSON InputInput{..}
          = object
              (catMaybes [("csvInstance" .=) <$> _iiCsvInstance])

--
-- /See:/ 'input' smart constructor.
newtype Input = Input
    { _iInput :: Maybe InputInput
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Input' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iInput'
input
    :: Input
input =
    Input
    { _iInput = Nothing
    }

-- | Input to the model for a prediction.
iInput :: Lens' Input (Maybe InputInput)
iInput = lens _iInput (\ s a -> s{_iInput = a})

instance FromJSON Input where
        parseJSON
          = withObject "Input"
              (\ o -> Input <$> (o .:? "input"))

instance ToJSON Input where
        toJSON Input{..}
          = object (catMaybes [("input" .=) <$> _iInput])

--
-- /See:/ 'outputOutputMulti' smart constructor.
data OutputOutputMulti = OutputOutputMulti
    { _oomScore :: !(Maybe Text)
    , _oomLabel :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OutputOutputMulti' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oomScore'
--
-- * 'oomLabel'
outputOutputMulti
    :: OutputOutputMulti
outputOutputMulti =
    OutputOutputMulti
    { _oomScore = Nothing
    , _oomLabel = Nothing
    }

-- | The probability of the class label.
oomScore :: Lens' OutputOutputMulti (Maybe Text)
oomScore = lens _oomScore (\ s a -> s{_oomScore = a})

-- | The class label.
oomLabel :: Lens' OutputOutputMulti (Maybe Text)
oomLabel = lens _oomLabel (\ s a -> s{_oomLabel = a})

instance FromJSON OutputOutputMulti where
        parseJSON
          = withObject "OutputOutputMulti"
              (\ o ->
                 OutputOutputMulti <$>
                   (o .:? "score") <*> (o .:? "label"))

instance ToJSON OutputOutputMulti where
        toJSON OutputOutputMulti{..}
          = object
              (catMaybes
                 [("score" .=) <$> _oomScore,
                  ("label" .=) <$> _oomLabel])

-- | An output confusion matrix. This shows an estimate for how this model
-- will do in predictions. This is first indexed by the true class label.
-- For each true class label, this provides a pair {predicted_label,
-- count}, where count is the estimated number of times the model will
-- predict the predicted label given the true label. Will not output if
-- more then 100 classes (Categorical models only).
--
-- /See:/ 'analyzeModelDescriptionConfusionMatrix' smart constructor.
data AnalyzeModelDescriptionConfusionMatrix =
    AnalyzeModelDescriptionConfusionMatrix
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnalyzeModelDescriptionConfusionMatrix' with the minimum fields required to make a request.
--
analyzeModelDescriptionConfusionMatrix
    :: AnalyzeModelDescriptionConfusionMatrix
analyzeModelDescriptionConfusionMatrix = AnalyzeModelDescriptionConfusionMatrix

instance FromJSON
         AnalyzeModelDescriptionConfusionMatrix where
        parseJSON
          = withObject "AnalyzeModelDescriptionConfusionMatrix"
              (\ o -> pure AnalyzeModelDescriptionConfusionMatrix)

instance ToJSON
         AnalyzeModelDescriptionConfusionMatrix where
        toJSON = const (Object mempty)

--
-- /See:/ 'analyzeDataDescriptionOutputFeatureText' smart constructor.
data AnalyzeDataDescriptionOutputFeatureText = AnalyzeDataDescriptionOutputFeatureText
    { _addoftValue :: !(Maybe Text)
    , _addoftCount :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnalyzeDataDescriptionOutputFeatureText' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'addoftValue'
--
-- * 'addoftCount'
analyzeDataDescriptionOutputFeatureText
    :: AnalyzeDataDescriptionOutputFeatureText
analyzeDataDescriptionOutputFeatureText =
    AnalyzeDataDescriptionOutputFeatureText
    { _addoftValue = Nothing
    , _addoftCount = Nothing
    }

-- | The output label.
addoftValue :: Lens' AnalyzeDataDescriptionOutputFeatureText (Maybe Text)
addoftValue
  = lens _addoftValue (\ s a -> s{_addoftValue = a})

-- | Number of times the output label occurred in the data set.
addoftCount :: Lens' AnalyzeDataDescriptionOutputFeatureText (Maybe Int64)
addoftCount
  = lens _addoftCount (\ s a -> s{_addoftCount = a})

instance FromJSON
         AnalyzeDataDescriptionOutputFeatureText where
        parseJSON
          = withObject
              "AnalyzeDataDescriptionOutputFeatureText"
              (\ o ->
                 AnalyzeDataDescriptionOutputFeatureText <$>
                   (o .:? "value") <*> (o .:? "count"))

instance ToJSON
         AnalyzeDataDescriptionOutputFeatureText where
        toJSON AnalyzeDataDescriptionOutputFeatureText{..}
          = object
              (catMaybes
                 [("value" .=) <$> _addoftValue,
                  ("count" .=) <$> _addoftCount])

--
-- /See:/ 'analyze' smart constructor.
data Analyze = Analyze
    { _aKind             :: !Text
    , _aModelDescription :: !(Maybe AnalyzeModelDescription)
    , _aSelfLink         :: !(Maybe Text)
    , _aId               :: !(Maybe Text)
    , _aErrors           :: !(Maybe [AnalyzeErrors])
    , _aDataDescription  :: !(Maybe AnalyzeDataDescription)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Analyze' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aKind'
--
-- * 'aModelDescription'
--
-- * 'aSelfLink'
--
-- * 'aId'
--
-- * 'aErrors'
--
-- * 'aDataDescription'
analyze
    :: Analyze
analyze =
    Analyze
    { _aKind = "prediction#analyze"
    , _aModelDescription = Nothing
    , _aSelfLink = Nothing
    , _aId = Nothing
    , _aErrors = Nothing
    , _aDataDescription = Nothing
    }

-- | What kind of resource this is.
aKind :: Lens' Analyze Text
aKind = lens _aKind (\ s a -> s{_aKind = a})

-- | Description of the model.
aModelDescription :: Lens' Analyze (Maybe AnalyzeModelDescription)
aModelDescription
  = lens _aModelDescription
      (\ s a -> s{_aModelDescription = a})

-- | A URL to re-request this resource.
aSelfLink :: Lens' Analyze (Maybe Text)
aSelfLink
  = lens _aSelfLink (\ s a -> s{_aSelfLink = a})

-- | The unique name for the predictive model.
aId :: Lens' Analyze (Maybe Text)
aId = lens _aId (\ s a -> s{_aId = a})

-- | List of errors with the data.
aErrors :: Lens' Analyze [AnalyzeErrors]
aErrors
  = lens _aErrors (\ s a -> s{_aErrors = a}) . _Default
      . _Coerce

-- | Description of the data the model was trained on.
aDataDescription :: Lens' Analyze (Maybe AnalyzeDataDescription)
aDataDescription
  = lens _aDataDescription
      (\ s a -> s{_aDataDescription = a})

instance FromJSON Analyze where
        parseJSON
          = withObject "Analyze"
              (\ o ->
                 Analyze <$>
                   (o .:? "kind" .!= "prediction#analyze") <*>
                     (o .:? "modelDescription")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id")
                     <*> (o .:? "errors" .!= mempty)
                     <*> (o .:? "dataDescription"))

instance ToJSON Analyze where
        toJSON Analyze{..}
          = object
              (catMaybes
                 [Just ("kind" .= _aKind),
                  ("modelDescription" .=) <$> _aModelDescription,
                  ("selfLink" .=) <$> _aSelfLink, ("id" .=) <$> _aId,
                  ("errors" .=) <$> _aErrors,
                  ("dataDescription" .=) <$> _aDataDescription])

--
-- /See:/ 'output' smart constructor.
data Output = Output
    { _oOutputValue :: !(Maybe Text)
    , _oKind        :: !Text
    , _oOutputLabel :: !(Maybe Text)
    , _oSelfLink    :: !(Maybe Text)
    , _oId          :: !(Maybe Text)
    , _oOutputMulti :: !(Maybe [OutputOutputMulti])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Output' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oOutputValue'
--
-- * 'oKind'
--
-- * 'oOutputLabel'
--
-- * 'oSelfLink'
--
-- * 'oId'
--
-- * 'oOutputMulti'
output
    :: Output
output =
    Output
    { _oOutputValue = Nothing
    , _oKind = "prediction#output"
    , _oOutputLabel = Nothing
    , _oSelfLink = Nothing
    , _oId = Nothing
    , _oOutputMulti = Nothing
    }

-- | The estimated regression value (Regression models only).
oOutputValue :: Lens' Output (Maybe Text)
oOutputValue
  = lens _oOutputValue (\ s a -> s{_oOutputValue = a})

-- | What kind of resource this is.
oKind :: Lens' Output Text
oKind = lens _oKind (\ s a -> s{_oKind = a})

-- | The most likely class label (Categorical models only).
oOutputLabel :: Lens' Output (Maybe Text)
oOutputLabel
  = lens _oOutputLabel (\ s a -> s{_oOutputLabel = a})

-- | A URL to re-request this resource.
oSelfLink :: Lens' Output (Maybe Text)
oSelfLink
  = lens _oSelfLink (\ s a -> s{_oSelfLink = a})

-- | The unique name for the predictive model.
oId :: Lens' Output (Maybe Text)
oId = lens _oId (\ s a -> s{_oId = a})

-- | A list of class labels with their estimated probabilities (Categorical
-- models only).
oOutputMulti :: Lens' Output [OutputOutputMulti]
oOutputMulti
  = lens _oOutputMulti (\ s a -> s{_oOutputMulti = a})
      . _Default
      . _Coerce

instance FromJSON Output where
        parseJSON
          = withObject "Output"
              (\ o ->
                 Output <$>
                   (o .:? "outputValue") <*>
                     (o .:? "kind" .!= "prediction#output")
                     <*> (o .:? "outputLabel")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id")
                     <*> (o .:? "outputMulti" .!= mempty))

instance ToJSON Output where
        toJSON Output{..}
          = object
              (catMaybes
                 [("outputValue" .=) <$> _oOutputValue,
                  Just ("kind" .= _oKind),
                  ("outputLabel" .=) <$> _oOutputLabel,
                  ("selfLink" .=) <$> _oSelfLink, ("id" .=) <$> _oId,
                  ("outputMulti" .=) <$> _oOutputMulti])

-- | Class label (string).
--
-- /See:/ 'insertUtility' smart constructor.
data InsertUtility =
    InsertUtility
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InsertUtility' with the minimum fields required to make a request.
--
insertUtility
    :: InsertUtility
insertUtility = InsertUtility

instance FromJSON InsertUtility where
        parseJSON
          = withObject "InsertUtility"
              (\ o -> pure InsertUtility)

instance ToJSON InsertUtility where
        toJSON = const (Object mempty)

-- | Description of the data the model was trained on.
--
-- /See:/ 'analyzeDataDescription' smart constructor.
data AnalyzeDataDescription = AnalyzeDataDescription
    { _addOutputFeature :: !(Maybe AnalyzeDataDescriptionOutputFeature)
    , _addFeatures      :: !(Maybe [AnalyzeDataDescriptionFeatures])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnalyzeDataDescription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'addOutputFeature'
--
-- * 'addFeatures'
analyzeDataDescription
    :: AnalyzeDataDescription
analyzeDataDescription =
    AnalyzeDataDescription
    { _addOutputFeature = Nothing
    , _addFeatures = Nothing
    }

-- | Description of the output value or label.
addOutputFeature :: Lens' AnalyzeDataDescription (Maybe AnalyzeDataDescriptionOutputFeature)
addOutputFeature
  = lens _addOutputFeature
      (\ s a -> s{_addOutputFeature = a})

-- | Description of the input features in the data set.
addFeatures :: Lens' AnalyzeDataDescription [AnalyzeDataDescriptionFeatures]
addFeatures
  = lens _addFeatures (\ s a -> s{_addFeatures = a}) .
      _Default
      . _Coerce

instance FromJSON AnalyzeDataDescription where
        parseJSON
          = withObject "AnalyzeDataDescription"
              (\ o ->
                 AnalyzeDataDescription <$>
                   (o .:? "outputFeature") <*>
                     (o .:? "features" .!= mempty))

instance ToJSON AnalyzeDataDescription where
        toJSON AnalyzeDataDescription{..}
          = object
              (catMaybes
                 [("outputFeature" .=) <$> _addOutputFeature,
                  ("features" .=) <$> _addFeatures])

-- | Description of the output values in the data set.
--
-- /See:/ 'analyzeDataDescriptionOutputFeatureNumeric' smart constructor.
data AnalyzeDataDescriptionOutputFeatureNumeric = AnalyzeDataDescriptionOutputFeatureNumeric
    { _addofnMean     :: !(Maybe Text)
    , _addofnCount    :: !(Maybe Int64)
    , _addofnVariance :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnalyzeDataDescriptionOutputFeatureNumeric' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'addofnMean'
--
-- * 'addofnCount'
--
-- * 'addofnVariance'
analyzeDataDescriptionOutputFeatureNumeric
    :: AnalyzeDataDescriptionOutputFeatureNumeric
analyzeDataDescriptionOutputFeatureNumeric =
    AnalyzeDataDescriptionOutputFeatureNumeric
    { _addofnMean = Nothing
    , _addofnCount = Nothing
    , _addofnVariance = Nothing
    }

-- | Mean of the output values in the data set.
addofnMean :: Lens' AnalyzeDataDescriptionOutputFeatureNumeric (Maybe Text)
addofnMean
  = lens _addofnMean (\ s a -> s{_addofnMean = a})

-- | Number of numeric output values in the data set.
addofnCount :: Lens' AnalyzeDataDescriptionOutputFeatureNumeric (Maybe Int64)
addofnCount
  = lens _addofnCount (\ s a -> s{_addofnCount = a})

-- | Variance of the output values in the data set.
addofnVariance :: Lens' AnalyzeDataDescriptionOutputFeatureNumeric (Maybe Text)
addofnVariance
  = lens _addofnVariance
      (\ s a -> s{_addofnVariance = a})

instance FromJSON
         AnalyzeDataDescriptionOutputFeatureNumeric where
        parseJSON
          = withObject
              "AnalyzeDataDescriptionOutputFeatureNumeric"
              (\ o ->
                 AnalyzeDataDescriptionOutputFeatureNumeric <$>
                   (o .:? "mean") <*> (o .:? "count") <*>
                     (o .:? "variance"))

instance ToJSON
         AnalyzeDataDescriptionOutputFeatureNumeric where
        toJSON AnalyzeDataDescriptionOutputFeatureNumeric{..}
          = object
              (catMaybes
                 [("mean" .=) <$> _addofnMean,
                  ("count" .=) <$> _addofnCount,
                  ("variance" .=) <$> _addofnVariance])

-- | Description of the model.
--
-- /See:/ 'analyzeModelDescription' smart constructor.
data AnalyzeModelDescription = AnalyzeModelDescription
    { _amdConfusionMatrixRowTotals :: !(Maybe AnalyzeModelDescriptionConfusionMatrixRowTotals)
    , _amdConfusionMatrix          :: !(Maybe AnalyzeModelDescriptionConfusionMatrix)
    , _amdModelinfo                :: !(Maybe (Maybe Insert2))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnalyzeModelDescription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'amdConfusionMatrixRowTotals'
--
-- * 'amdConfusionMatrix'
--
-- * 'amdModelinfo'
analyzeModelDescription
    :: AnalyzeModelDescription
analyzeModelDescription =
    AnalyzeModelDescription
    { _amdConfusionMatrixRowTotals = Nothing
    , _amdConfusionMatrix = Nothing
    , _amdModelinfo = Nothing
    }

-- | A list of the confusion matrix row totals.
amdConfusionMatrixRowTotals :: Lens' AnalyzeModelDescription (Maybe AnalyzeModelDescriptionConfusionMatrixRowTotals)
amdConfusionMatrixRowTotals
  = lens _amdConfusionMatrixRowTotals
      (\ s a -> s{_amdConfusionMatrixRowTotals = a})

-- | An output confusion matrix. This shows an estimate for how this model
-- will do in predictions. This is first indexed by the true class label.
-- For each true class label, this provides a pair {predicted_label,
-- count}, where count is the estimated number of times the model will
-- predict the predicted label given the true label. Will not output if
-- more then 100 classes (Categorical models only).
amdConfusionMatrix :: Lens' AnalyzeModelDescription (Maybe AnalyzeModelDescriptionConfusionMatrix)
amdConfusionMatrix
  = lens _amdConfusionMatrix
      (\ s a -> s{_amdConfusionMatrix = a})

-- | Basic information about the model.
amdModelinfo :: Lens' AnalyzeModelDescription (Maybe (Maybe Insert2))
amdModelinfo
  = lens _amdModelinfo (\ s a -> s{_amdModelinfo = a})

instance FromJSON AnalyzeModelDescription where
        parseJSON
          = withObject "AnalyzeModelDescription"
              (\ o ->
                 AnalyzeModelDescription <$>
                   (o .:? "confusionMatrixRowTotals") <*>
                     (o .:? "confusionMatrix")
                     <*> (o .:? "modelinfo"))

instance ToJSON AnalyzeModelDescription where
        toJSON AnalyzeModelDescription{..}
          = object
              (catMaybes
                 [("confusionMatrixRowTotals" .=) <$>
                    _amdConfusionMatrixRowTotals,
                  ("confusionMatrix" .=) <$> _amdConfusionMatrix,
                  ("modelinfo" .=) <$> _amdModelinfo])

--
-- /See:/ 'insertTrainingInstances' smart constructor.
data InsertTrainingInstances = InsertTrainingInstances
    { _itiCsvInstance :: !(Maybe [JSONValue])
    , _itiOutput      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InsertTrainingInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'itiCsvInstance'
--
-- * 'itiOutput'
insertTrainingInstances
    :: InsertTrainingInstances
insertTrainingInstances =
    InsertTrainingInstances
    { _itiCsvInstance = Nothing
    , _itiOutput = Nothing
    }

-- | The input features for this instance.
itiCsvInstance :: Lens' InsertTrainingInstances [JSONValue]
itiCsvInstance
  = lens _itiCsvInstance
      (\ s a -> s{_itiCsvInstance = a})
      . _Default
      . _Coerce

-- | The generic output value - could be regression or class label.
itiOutput :: Lens' InsertTrainingInstances (Maybe Text)
itiOutput
  = lens _itiOutput (\ s a -> s{_itiOutput = a})

instance FromJSON InsertTrainingInstances where
        parseJSON
          = withObject "InsertTrainingInstances"
              (\ o ->
                 InsertTrainingInstances <$>
                   (o .:? "csvInstance" .!= mempty) <*>
                     (o .:? "output"))

instance ToJSON InsertTrainingInstances where
        toJSON InsertTrainingInstances{..}
          = object
              (catMaybes
                 [("csvInstance" .=) <$> _itiCsvInstance,
                  ("output" .=) <$> _itiOutput])

--
-- /See:/ 'analyzeDataDescriptionFeaturesCategoricalValues' smart constructor.
data AnalyzeDataDescriptionFeaturesCategoricalValues = AnalyzeDataDescriptionFeaturesCategoricalValues
    { _addfcvValue :: !(Maybe Text)
    , _addfcvCount :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnalyzeDataDescriptionFeaturesCategoricalValues' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'addfcvValue'
--
-- * 'addfcvCount'
analyzeDataDescriptionFeaturesCategoricalValues
    :: AnalyzeDataDescriptionFeaturesCategoricalValues
analyzeDataDescriptionFeaturesCategoricalValues =
    AnalyzeDataDescriptionFeaturesCategoricalValues
    { _addfcvValue = Nothing
    , _addfcvCount = Nothing
    }

-- | The category name.
addfcvValue :: Lens' AnalyzeDataDescriptionFeaturesCategoricalValues (Maybe Text)
addfcvValue
  = lens _addfcvValue (\ s a -> s{_addfcvValue = a})

-- | Number of times this feature had this value.
addfcvCount :: Lens' AnalyzeDataDescriptionFeaturesCategoricalValues (Maybe Int64)
addfcvCount
  = lens _addfcvCount (\ s a -> s{_addfcvCount = a})

instance FromJSON
         AnalyzeDataDescriptionFeaturesCategoricalValues where
        parseJSON
          = withObject
              "AnalyzeDataDescriptionFeaturesCategoricalValues"
              (\ o ->
                 AnalyzeDataDescriptionFeaturesCategoricalValues <$>
                   (o .:? "value") <*> (o .:? "count"))

instance ToJSON
         AnalyzeDataDescriptionFeaturesCategoricalValues where
        toJSON
          AnalyzeDataDescriptionFeaturesCategoricalValues{..}
          = object
              (catMaybes
                 [("value" .=) <$> _addfcvValue,
                  ("count" .=) <$> _addfcvCount])

-- | Description of the categorical values of this feature.
--
-- /See:/ 'analyzeDataDescriptionFeaturesCategorical' smart constructor.
data AnalyzeDataDescriptionFeaturesCategorical = AnalyzeDataDescriptionFeaturesCategorical
    { _addfcValues :: !(Maybe [AnalyzeDataDescriptionFeaturesCategoricalValues])
    , _addfcCount  :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnalyzeDataDescriptionFeaturesCategorical' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'addfcValues'
--
-- * 'addfcCount'
analyzeDataDescriptionFeaturesCategorical
    :: AnalyzeDataDescriptionFeaturesCategorical
analyzeDataDescriptionFeaturesCategorical =
    AnalyzeDataDescriptionFeaturesCategorical
    { _addfcValues = Nothing
    , _addfcCount = Nothing
    }

-- | List of all the categories for this feature in the data set.
addfcValues :: Lens' AnalyzeDataDescriptionFeaturesCategorical [AnalyzeDataDescriptionFeaturesCategoricalValues]
addfcValues
  = lens _addfcValues (\ s a -> s{_addfcValues = a}) .
      _Default
      . _Coerce

-- | Number of categorical values for this feature in the data.
addfcCount :: Lens' AnalyzeDataDescriptionFeaturesCategorical (Maybe Int64)
addfcCount
  = lens _addfcCount (\ s a -> s{_addfcCount = a})

instance FromJSON
         AnalyzeDataDescriptionFeaturesCategorical where
        parseJSON
          = withObject
              "AnalyzeDataDescriptionFeaturesCategorical"
              (\ o ->
                 AnalyzeDataDescriptionFeaturesCategorical <$>
                   (o .:? "values" .!= mempty) <*> (o .:? "count"))

instance ToJSON
         AnalyzeDataDescriptionFeaturesCategorical where
        toJSON AnalyzeDataDescriptionFeaturesCategorical{..}
          = object
              (catMaybes
                 [("values" .=) <$> _addfcValues,
                  ("count" .=) <$> _addfcCount])

-- | Description of the numeric values of this feature.
--
-- /See:/ 'analyzeDataDescriptionFeaturesNumeric' smart constructor.
data AnalyzeDataDescriptionFeaturesNumeric = AnalyzeDataDescriptionFeaturesNumeric
    { _addfnMean     :: !(Maybe Text)
    , _addfnCount    :: !(Maybe Int64)
    , _addfnVariance :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnalyzeDataDescriptionFeaturesNumeric' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'addfnMean'
--
-- * 'addfnCount'
--
-- * 'addfnVariance'
analyzeDataDescriptionFeaturesNumeric
    :: AnalyzeDataDescriptionFeaturesNumeric
analyzeDataDescriptionFeaturesNumeric =
    AnalyzeDataDescriptionFeaturesNumeric
    { _addfnMean = Nothing
    , _addfnCount = Nothing
    , _addfnVariance = Nothing
    }

-- | Mean of the numeric values of this feature in the data set.
addfnMean :: Lens' AnalyzeDataDescriptionFeaturesNumeric (Maybe Text)
addfnMean
  = lens _addfnMean (\ s a -> s{_addfnMean = a})

-- | Number of numeric values for this feature in the data set.
addfnCount :: Lens' AnalyzeDataDescriptionFeaturesNumeric (Maybe Int64)
addfnCount
  = lens _addfnCount (\ s a -> s{_addfnCount = a})

-- | Variance of the numeric values of this feature in the data set.
addfnVariance :: Lens' AnalyzeDataDescriptionFeaturesNumeric (Maybe Text)
addfnVariance
  = lens _addfnVariance
      (\ s a -> s{_addfnVariance = a})

instance FromJSON
         AnalyzeDataDescriptionFeaturesNumeric where
        parseJSON
          = withObject "AnalyzeDataDescriptionFeaturesNumeric"
              (\ o ->
                 AnalyzeDataDescriptionFeaturesNumeric <$>
                   (o .:? "mean") <*> (o .:? "count") <*>
                     (o .:? "variance"))

instance ToJSON AnalyzeDataDescriptionFeaturesNumeric
         where
        toJSON AnalyzeDataDescriptionFeaturesNumeric{..}
          = object
              (catMaybes
                 [("mean" .=) <$> _addfnMean,
                  ("count" .=) <$> _addfnCount,
                  ("variance" .=) <$> _addfnVariance])

--
-- /See:/ 'update' smart constructor.
data Update = Update
    { _uCsvInstance :: !(Maybe [JSONValue])
    , _uOutput      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Update' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uCsvInstance'
--
-- * 'uOutput'
update
    :: Update
update =
    Update
    { _uCsvInstance = Nothing
    , _uOutput = Nothing
    }

-- | The input features for this instance.
uCsvInstance :: Lens' Update [JSONValue]
uCsvInstance
  = lens _uCsvInstance (\ s a -> s{_uCsvInstance = a})
      . _Default
      . _Coerce

-- | The generic output value - could be regression or class label.
uOutput :: Lens' Update (Maybe Text)
uOutput = lens _uOutput (\ s a -> s{_uOutput = a})

instance FromJSON Update where
        parseJSON
          = withObject "Update"
              (\ o ->
                 Update <$>
                   (o .:? "csvInstance" .!= mempty) <*>
                     (o .:? "output"))

instance ToJSON Update where
        toJSON Update{..}
          = object
              (catMaybes
                 [("csvInstance" .=) <$> _uCsvInstance,
                  ("output" .=) <$> _uOutput])

-- | Description of the output value or label.
--
-- /See:/ 'analyzeDataDescriptionOutputFeature' smart constructor.
data AnalyzeDataDescriptionOutputFeature = AnalyzeDataDescriptionOutputFeature
    { _addofText    :: !(Maybe [AnalyzeDataDescriptionOutputFeatureText])
    , _addofNumeric :: !(Maybe AnalyzeDataDescriptionOutputFeatureNumeric)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnalyzeDataDescriptionOutputFeature' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'addofText'
--
-- * 'addofNumeric'
analyzeDataDescriptionOutputFeature
    :: AnalyzeDataDescriptionOutputFeature
analyzeDataDescriptionOutputFeature =
    AnalyzeDataDescriptionOutputFeature
    { _addofText = Nothing
    , _addofNumeric = Nothing
    }

-- | Description of the output labels in the data set.
addofText :: Lens' AnalyzeDataDescriptionOutputFeature [AnalyzeDataDescriptionOutputFeatureText]
addofText
  = lens _addofText (\ s a -> s{_addofText = a}) .
      _Default
      . _Coerce

-- | Description of the output values in the data set.
addofNumeric :: Lens' AnalyzeDataDescriptionOutputFeature (Maybe AnalyzeDataDescriptionOutputFeatureNumeric)
addofNumeric
  = lens _addofNumeric (\ s a -> s{_addofNumeric = a})

instance FromJSON AnalyzeDataDescriptionOutputFeature
         where
        parseJSON
          = withObject "AnalyzeDataDescriptionOutputFeature"
              (\ o ->
                 AnalyzeDataDescriptionOutputFeature <$>
                   (o .:? "text" .!= mempty) <*> (o .:? "numeric"))

instance ToJSON AnalyzeDataDescriptionOutputFeature
         where
        toJSON AnalyzeDataDescriptionOutputFeature{..}
          = object
              (catMaybes
                 [("text" .=) <$> _addofText,
                  ("numeric" .=) <$> _addofNumeric])
