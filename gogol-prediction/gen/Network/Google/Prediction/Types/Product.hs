{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Prediction.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
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
data Insert2ModelInfo = Insert2ModelInfo'
    { _imiModelType              :: !(Maybe Text)
    , _imiClassWeightedAccuracy  :: !(Maybe Text)
    , _imiClassificationAccuracy :: !(Maybe Text)
    , _imiMeanSquaredError       :: !(Maybe Text)
    , _imiNumberLabels           :: !(Maybe (Textual Int64))
    , _imiNumberInstances        :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    Insert2ModelInfo'
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
      . mapping _Coerce

-- | Number of valid data instances used in the trained model.
imiNumberInstances :: Lens' Insert2ModelInfo (Maybe Int64)
imiNumberInstances
  = lens _imiNumberInstances
      (\ s a -> s{_imiNumberInstances = a})
      . mapping _Coerce

instance FromJSON Insert2ModelInfo where
        parseJSON
          = withObject "Insert2ModelInfo"
              (\ o ->
                 Insert2ModelInfo' <$>
                   (o .:? "modelType") <*>
                     (o .:? "classWeightedAccuracy")
                     <*> (o .:? "classificationAccuracy")
                     <*> (o .:? "meanSquaredError")
                     <*> (o .:? "numberLabels")
                     <*> (o .:? "numberInstances"))

instance ToJSON Insert2ModelInfo where
        toJSON Insert2ModelInfo'{..}
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
newtype AnalyzeModelDescriptionConfusionMatrixRowTotals = AnalyzeModelDescriptionConfusionMatrixRowTotals'
    { _amdcmrtAddtional :: HashMap Text Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnalyzeModelDescriptionConfusionMatrixRowTotals' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'amdcmrtAddtional'
analyzeModelDescriptionConfusionMatrixRowTotals
    :: HashMap Text Text -- ^ 'amdcmrtAddtional'
    -> AnalyzeModelDescriptionConfusionMatrixRowTotals
analyzeModelDescriptionConfusionMatrixRowTotals pAmdcmrtAddtional_ =
    AnalyzeModelDescriptionConfusionMatrixRowTotals'
    { _amdcmrtAddtional = _Coerce # pAmdcmrtAddtional_
    }

amdcmrtAddtional :: Lens' AnalyzeModelDescriptionConfusionMatrixRowTotals (HashMap Text Text)
amdcmrtAddtional
  = lens _amdcmrtAddtional
      (\ s a -> s{_amdcmrtAddtional = a})
      . _Coerce

instance FromJSON
         AnalyzeModelDescriptionConfusionMatrixRowTotals where
        parseJSON
          = withObject
              "AnalyzeModelDescriptionConfusionMatrixRowTotals"
              (\ o ->
                 AnalyzeModelDescriptionConfusionMatrixRowTotals' <$>
                   (parseJSONObject o))

instance ToJSON
         AnalyzeModelDescriptionConfusionMatrixRowTotals where
        toJSON = toJSON . _amdcmrtAddtional

--
-- /See:/ 'insert' smart constructor.
data Insert = Insert'
    { _iStorageDataLocation      :: !(Maybe Text)
    , _iModelType                :: !(Maybe Text)
    , _iTrainingInstances        :: !(Maybe [InsertTrainingInstancesItem])
    , _iUtility                  :: !(Maybe [InsertUtilityItem])
    , _iStoragePMMLModelLocation :: !(Maybe Text)
    , _iSourceModel              :: !(Maybe Text)
    , _iId                       :: !(Maybe Text)
    , _iStoragePMMLLocation      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    Insert'
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
iTrainingInstances :: Lens' Insert [InsertTrainingInstancesItem]
iTrainingInstances
  = lens _iTrainingInstances
      (\ s a -> s{_iTrainingInstances = a})
      . _Default
      . _Coerce

-- | A class weighting function, which allows the importance weights for
-- class labels to be specified (Categorical models only).
iUtility :: Lens' Insert [InsertUtilityItem]
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
                 Insert' <$>
                   (o .:? "storageDataLocation") <*> (o .:? "modelType")
                     <*> (o .:? "trainingInstances" .!= mempty)
                     <*> (o .:? "utility" .!= mempty)
                     <*> (o .:? "storagePMMLModelLocation")
                     <*> (o .:? "sourceModel")
                     <*> (o .:? "id")
                     <*> (o .:? "storagePMMLLocation"))

instance ToJSON Insert where
        toJSON Insert'{..}
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
-- /See:/ 'list' smart constructor.
data List = List'
    { _lNextPageToken :: !(Maybe Text)
    , _lKind          :: !Text
    , _lItems         :: !(Maybe [Insert2])
    , _lSelfLink      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    List'
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
lItems :: Lens' List [Insert2]
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
                 List' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "prediction#list")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "selfLink"))

instance ToJSON List where
        toJSON List'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lNextPageToken,
                  Just ("kind" .= _lKind), ("items" .=) <$> _lItems,
                  ("selfLink" .=) <$> _lSelfLink])

-- | Class label (string).
--
-- /See:/ 'insertUtilityItem' smart constructor.
newtype InsertUtilityItem = InsertUtilityItem'
    { _iuiAddtional :: HashMap Text (Textual Double)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InsertUtilityItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iuiAddtional'
insertUtilityItem
    :: HashMap Text Double -- ^ 'iuiAddtional'
    -> InsertUtilityItem
insertUtilityItem pIuiAddtional_ =
    InsertUtilityItem'
    { _iuiAddtional = _Coerce # pIuiAddtional_
    }

iuiAddtional :: Lens' InsertUtilityItem (HashMap Text Double)
iuiAddtional
  = lens _iuiAddtional (\ s a -> s{_iuiAddtional = a})
      . _Coerce

instance FromJSON InsertUtilityItem where
        parseJSON
          = withObject "InsertUtilityItem"
              (\ o -> InsertUtilityItem' <$> (parseJSONObject o))

instance ToJSON InsertUtilityItem where
        toJSON = toJSON . _iuiAddtional

--
-- /See:/ 'insert2' smart constructor.
data Insert2 = Insert2'
    { _insStorageDataLocation      :: !(Maybe Text)
    , _insModelType                :: !(Maybe Text)
    , _insKind                     :: !Text
    , _insCreated                  :: !(Maybe DateTime')
    , _insTrainingComplete         :: !(Maybe DateTime')
    , _insSelfLink                 :: !(Maybe Text)
    , _insTrainingStatus           :: !(Maybe Text)
    , _insStoragePMMLModelLocation :: !(Maybe Text)
    , _insId                       :: !(Maybe Text)
    , _insStoragePMMLLocation      :: !(Maybe Text)
    , _insModelInfo                :: !(Maybe Insert2ModelInfo)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    Insert2'
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
  = lens _insCreated (\ s a -> s{_insCreated = a}) .
      mapping _DateTime

-- | Training completion time (as a RFC 3339 timestamp).
insTrainingComplete :: Lens' Insert2 (Maybe UTCTime)
insTrainingComplete
  = lens _insTrainingComplete
      (\ s a -> s{_insTrainingComplete = a})
      . mapping _DateTime

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
                 Insert2' <$>
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
        toJSON Insert2'{..}
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
-- /See:/ 'insertTrainingInstancesItem' smart constructor.
data InsertTrainingInstancesItem = InsertTrainingInstancesItem'
    { _itiiCSVInstance :: !(Maybe [JSONValue])
    , _itiiOutput      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InsertTrainingInstancesItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'itiiCSVInstance'
--
-- * 'itiiOutput'
insertTrainingInstancesItem
    :: InsertTrainingInstancesItem
insertTrainingInstancesItem =
    InsertTrainingInstancesItem'
    { _itiiCSVInstance = Nothing
    , _itiiOutput = Nothing
    }

-- | The input features for this instance.
itiiCSVInstance :: Lens' InsertTrainingInstancesItem [JSONValue]
itiiCSVInstance
  = lens _itiiCSVInstance
      (\ s a -> s{_itiiCSVInstance = a})
      . _Default
      . _Coerce

-- | The generic output value - could be regression or class label.
itiiOutput :: Lens' InsertTrainingInstancesItem (Maybe Text)
itiiOutput
  = lens _itiiOutput (\ s a -> s{_itiiOutput = a})

instance FromJSON InsertTrainingInstancesItem where
        parseJSON
          = withObject "InsertTrainingInstancesItem"
              (\ o ->
                 InsertTrainingInstancesItem' <$>
                   (o .:? "csvInstance" .!= mempty) <*>
                     (o .:? "output"))

instance ToJSON InsertTrainingInstancesItem where
        toJSON InsertTrainingInstancesItem'{..}
          = object
              (catMaybes
                 [("csvInstance" .=) <$> _itiiCSVInstance,
                  ("output" .=) <$> _itiiOutput])

-- | Input to the model for a prediction.
--
-- /See:/ 'inputInput' smart constructor.
newtype InputInput = InputInput'
    { _iiCSVInstance :: Maybe [JSONValue]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InputInput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iiCSVInstance'
inputInput
    :: InputInput
inputInput =
    InputInput'
    { _iiCSVInstance = Nothing
    }

-- | A list of input features, these can be strings or doubles.
iiCSVInstance :: Lens' InputInput [JSONValue]
iiCSVInstance
  = lens _iiCSVInstance
      (\ s a -> s{_iiCSVInstance = a})
      . _Default
      . _Coerce

instance FromJSON InputInput where
        parseJSON
          = withObject "InputInput"
              (\ o ->
                 InputInput' <$> (o .:? "csvInstance" .!= mempty))

instance ToJSON InputInput where
        toJSON InputInput'{..}
          = object
              (catMaybes [("csvInstance" .=) <$> _iiCSVInstance])

--
-- /See:/ 'analyzeDataDescriptionFeaturesItemCategoricalValuesItem' smart constructor.
data AnalyzeDataDescriptionFeaturesItemCategoricalValuesItem = AnalyzeDataDescriptionFeaturesItemCategoricalValuesItem'
    { _addficviValue :: !(Maybe Text)
    , _addficviCount :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnalyzeDataDescriptionFeaturesItemCategoricalValuesItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'addficviValue'
--
-- * 'addficviCount'
analyzeDataDescriptionFeaturesItemCategoricalValuesItem
    :: AnalyzeDataDescriptionFeaturesItemCategoricalValuesItem
analyzeDataDescriptionFeaturesItemCategoricalValuesItem =
    AnalyzeDataDescriptionFeaturesItemCategoricalValuesItem'
    { _addficviValue = Nothing
    , _addficviCount = Nothing
    }

-- | The category name.
addficviValue :: Lens' AnalyzeDataDescriptionFeaturesItemCategoricalValuesItem (Maybe Text)
addficviValue
  = lens _addficviValue
      (\ s a -> s{_addficviValue = a})

-- | Number of times this feature had this value.
addficviCount :: Lens' AnalyzeDataDescriptionFeaturesItemCategoricalValuesItem (Maybe Int64)
addficviCount
  = lens _addficviCount
      (\ s a -> s{_addficviCount = a})
      . mapping _Coerce

instance FromJSON
         AnalyzeDataDescriptionFeaturesItemCategoricalValuesItem
         where
        parseJSON
          = withObject
              "AnalyzeDataDescriptionFeaturesItemCategoricalValuesItem"
              (\ o ->
                 AnalyzeDataDescriptionFeaturesItemCategoricalValuesItem'
                   <$> (o .:? "value") <*> (o .:? "count"))

instance ToJSON
         AnalyzeDataDescriptionFeaturesItemCategoricalValuesItem
         where
        toJSON
          AnalyzeDataDescriptionFeaturesItemCategoricalValuesItem'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _addficviValue,
                  ("count" .=) <$> _addficviCount])

-- | Description of the numeric values of this feature.
--
-- /See:/ 'analyzeDataDescriptionFeaturesItemNumeric' smart constructor.
data AnalyzeDataDescriptionFeaturesItemNumeric = AnalyzeDataDescriptionFeaturesItemNumeric'
    { _addfinMean     :: !(Maybe Text)
    , _addfinCount    :: !(Maybe (Textual Int64))
    , _addfinVariance :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnalyzeDataDescriptionFeaturesItemNumeric' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'addfinMean'
--
-- * 'addfinCount'
--
-- * 'addfinVariance'
analyzeDataDescriptionFeaturesItemNumeric
    :: AnalyzeDataDescriptionFeaturesItemNumeric
analyzeDataDescriptionFeaturesItemNumeric =
    AnalyzeDataDescriptionFeaturesItemNumeric'
    { _addfinMean = Nothing
    , _addfinCount = Nothing
    , _addfinVariance = Nothing
    }

-- | Mean of the numeric values of this feature in the data set.
addfinMean :: Lens' AnalyzeDataDescriptionFeaturesItemNumeric (Maybe Text)
addfinMean
  = lens _addfinMean (\ s a -> s{_addfinMean = a})

-- | Number of numeric values for this feature in the data set.
addfinCount :: Lens' AnalyzeDataDescriptionFeaturesItemNumeric (Maybe Int64)
addfinCount
  = lens _addfinCount (\ s a -> s{_addfinCount = a}) .
      mapping _Coerce

-- | Variance of the numeric values of this feature in the data set.
addfinVariance :: Lens' AnalyzeDataDescriptionFeaturesItemNumeric (Maybe Text)
addfinVariance
  = lens _addfinVariance
      (\ s a -> s{_addfinVariance = a})

instance FromJSON
         AnalyzeDataDescriptionFeaturesItemNumeric where
        parseJSON
          = withObject
              "AnalyzeDataDescriptionFeaturesItemNumeric"
              (\ o ->
                 AnalyzeDataDescriptionFeaturesItemNumeric' <$>
                   (o .:? "mean") <*> (o .:? "count") <*>
                     (o .:? "variance"))

instance ToJSON
         AnalyzeDataDescriptionFeaturesItemNumeric where
        toJSON AnalyzeDataDescriptionFeaturesItemNumeric'{..}
          = object
              (catMaybes
                 [("mean" .=) <$> _addfinMean,
                  ("count" .=) <$> _addfinCount,
                  ("variance" .=) <$> _addfinVariance])

--
-- /See:/ 'input' smart constructor.
newtype Input = Input'
    { _iInput :: Maybe InputInput
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Input' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iInput'
input
    :: Input
input =
    Input'
    { _iInput = Nothing
    }

-- | Input to the model for a prediction.
iInput :: Lens' Input (Maybe InputInput)
iInput = lens _iInput (\ s a -> s{_iInput = a})

instance FromJSON Input where
        parseJSON
          = withObject "Input"
              (\ o -> Input' <$> (o .:? "input"))

instance ToJSON Input where
        toJSON Input'{..}
          = object (catMaybes [("input" .=) <$> _iInput])

-- | Description of the categorical values of this feature.
--
-- /See:/ 'analyzeDataDescriptionFeaturesItemCategorical' smart constructor.
data AnalyzeDataDescriptionFeaturesItemCategorical = AnalyzeDataDescriptionFeaturesItemCategorical'
    { _addficValues :: !(Maybe [AnalyzeDataDescriptionFeaturesItemCategoricalValuesItem])
    , _addficCount  :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnalyzeDataDescriptionFeaturesItemCategorical' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'addficValues'
--
-- * 'addficCount'
analyzeDataDescriptionFeaturesItemCategorical
    :: AnalyzeDataDescriptionFeaturesItemCategorical
analyzeDataDescriptionFeaturesItemCategorical =
    AnalyzeDataDescriptionFeaturesItemCategorical'
    { _addficValues = Nothing
    , _addficCount = Nothing
    }

-- | List of all the categories for this feature in the data set.
addficValues :: Lens' AnalyzeDataDescriptionFeaturesItemCategorical [AnalyzeDataDescriptionFeaturesItemCategoricalValuesItem]
addficValues
  = lens _addficValues (\ s a -> s{_addficValues = a})
      . _Default
      . _Coerce

-- | Number of categorical values for this feature in the data.
addficCount :: Lens' AnalyzeDataDescriptionFeaturesItemCategorical (Maybe Int64)
addficCount
  = lens _addficCount (\ s a -> s{_addficCount = a}) .
      mapping _Coerce

instance FromJSON
         AnalyzeDataDescriptionFeaturesItemCategorical where
        parseJSON
          = withObject
              "AnalyzeDataDescriptionFeaturesItemCategorical"
              (\ o ->
                 AnalyzeDataDescriptionFeaturesItemCategorical' <$>
                   (o .:? "values" .!= mempty) <*> (o .:? "count"))

instance ToJSON
         AnalyzeDataDescriptionFeaturesItemCategorical where
        toJSON
          AnalyzeDataDescriptionFeaturesItemCategorical'{..}
          = object
              (catMaybes
                 [("values" .=) <$> _addficValues,
                  ("count" .=) <$> _addficCount])

--
-- /See:/ 'analyzeDataDescriptionOutputFeatureTextItem' smart constructor.
data AnalyzeDataDescriptionOutputFeatureTextItem = AnalyzeDataDescriptionOutputFeatureTextItem'
    { _addoftiValue :: !(Maybe Text)
    , _addoftiCount :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnalyzeDataDescriptionOutputFeatureTextItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'addoftiValue'
--
-- * 'addoftiCount'
analyzeDataDescriptionOutputFeatureTextItem
    :: AnalyzeDataDescriptionOutputFeatureTextItem
analyzeDataDescriptionOutputFeatureTextItem =
    AnalyzeDataDescriptionOutputFeatureTextItem'
    { _addoftiValue = Nothing
    , _addoftiCount = Nothing
    }

-- | The output label.
addoftiValue :: Lens' AnalyzeDataDescriptionOutputFeatureTextItem (Maybe Text)
addoftiValue
  = lens _addoftiValue (\ s a -> s{_addoftiValue = a})

-- | Number of times the output label occurred in the data set.
addoftiCount :: Lens' AnalyzeDataDescriptionOutputFeatureTextItem (Maybe Int64)
addoftiCount
  = lens _addoftiCount (\ s a -> s{_addoftiCount = a})
      . mapping _Coerce

instance FromJSON
         AnalyzeDataDescriptionOutputFeatureTextItem where
        parseJSON
          = withObject
              "AnalyzeDataDescriptionOutputFeatureTextItem"
              (\ o ->
                 AnalyzeDataDescriptionOutputFeatureTextItem' <$>
                   (o .:? "value") <*> (o .:? "count"))

instance ToJSON
         AnalyzeDataDescriptionOutputFeatureTextItem where
        toJSON
          AnalyzeDataDescriptionOutputFeatureTextItem'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _addoftiValue,
                  ("count" .=) <$> _addoftiCount])

--
-- /See:/ 'outputOutputMultiItem' smart constructor.
data OutputOutputMultiItem = OutputOutputMultiItem'
    { _oomiScore :: !(Maybe Text)
    , _oomiLabel :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OutputOutputMultiItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oomiScore'
--
-- * 'oomiLabel'
outputOutputMultiItem
    :: OutputOutputMultiItem
outputOutputMultiItem =
    OutputOutputMultiItem'
    { _oomiScore = Nothing
    , _oomiLabel = Nothing
    }

-- | The probability of the class label.
oomiScore :: Lens' OutputOutputMultiItem (Maybe Text)
oomiScore
  = lens _oomiScore (\ s a -> s{_oomiScore = a})

-- | The class label.
oomiLabel :: Lens' OutputOutputMultiItem (Maybe Text)
oomiLabel
  = lens _oomiLabel (\ s a -> s{_oomiLabel = a})

instance FromJSON OutputOutputMultiItem where
        parseJSON
          = withObject "OutputOutputMultiItem"
              (\ o ->
                 OutputOutputMultiItem' <$>
                   (o .:? "score") <*> (o .:? "label"))

instance ToJSON OutputOutputMultiItem where
        toJSON OutputOutputMultiItem'{..}
          = object
              (catMaybes
                 [("score" .=) <$> _oomiScore,
                  ("label" .=) <$> _oomiLabel])

--
-- /See:/ 'analyze' smart constructor.
data Analyze = Analyze'
    { _aKind             :: !Text
    , _aModelDescription :: !(Maybe AnalyzeModelDescription)
    , _aSelfLink         :: !(Maybe Text)
    , _aId               :: !(Maybe Text)
    , _aErrors           :: !(Maybe [AnalyzeErrorsItem])
    , _aDataDescription  :: !(Maybe AnalyzeDataDescription)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    Analyze'
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
aErrors :: Lens' Analyze [AnalyzeErrorsItem]
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
                 Analyze' <$>
                   (o .:? "kind" .!= "prediction#analyze") <*>
                     (o .:? "modelDescription")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id")
                     <*> (o .:? "errors" .!= mempty)
                     <*> (o .:? "dataDescription"))

instance ToJSON Analyze where
        toJSON Analyze'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _aKind),
                  ("modelDescription" .=) <$> _aModelDescription,
                  ("selfLink" .=) <$> _aSelfLink, ("id" .=) <$> _aId,
                  ("errors" .=) <$> _aErrors,
                  ("dataDescription" .=) <$> _aDataDescription])

-- | An output confusion matrix. This shows an estimate for how this model
-- will do in predictions. This is first indexed by the true class label.
-- For each true class label, this provides a pair {predicted_label,
-- count}, where count is the estimated number of times the model will
-- predict the predicted label given the true label. Will not output if
-- more then 100 classes (Categorical models only).
--
-- /See:/ 'analyzeModelDescriptionConfusionMatrix' smart constructor.
newtype AnalyzeModelDescriptionConfusionMatrix = AnalyzeModelDescriptionConfusionMatrix'
    { _amdcmAddtional :: HashMap Text AnalyzeModelDescriptionConfusionMatrixAdditional
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnalyzeModelDescriptionConfusionMatrix' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'amdcmAddtional'
analyzeModelDescriptionConfusionMatrix
    :: HashMap Text AnalyzeModelDescriptionConfusionMatrixAdditional -- ^ 'amdcmAddtional'
    -> AnalyzeModelDescriptionConfusionMatrix
analyzeModelDescriptionConfusionMatrix pAmdcmAddtional_ =
    AnalyzeModelDescriptionConfusionMatrix'
    { _amdcmAddtional = _Coerce # pAmdcmAddtional_
    }

-- | Confusion matrix information for the true class label.
amdcmAddtional :: Lens' AnalyzeModelDescriptionConfusionMatrix (HashMap Text AnalyzeModelDescriptionConfusionMatrixAdditional)
amdcmAddtional
  = lens _amdcmAddtional
      (\ s a -> s{_amdcmAddtional = a})
      . _Coerce

instance FromJSON
         AnalyzeModelDescriptionConfusionMatrix where
        parseJSON
          = withObject "AnalyzeModelDescriptionConfusionMatrix"
              (\ o ->
                 AnalyzeModelDescriptionConfusionMatrix' <$>
                   (parseJSONObject o))

instance ToJSON
         AnalyzeModelDescriptionConfusionMatrix where
        toJSON = toJSON . _amdcmAddtional

--
-- /See:/ 'output' smart constructor.
data Output = Output'
    { _oOutputValue :: !(Maybe Text)
    , _oKind        :: !Text
    , _oOutputLabel :: !(Maybe Text)
    , _oSelfLink    :: !(Maybe Text)
    , _oId          :: !(Maybe Text)
    , _oOutputMulti :: !(Maybe [OutputOutputMultiItem])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    Output'
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
oOutputMulti :: Lens' Output [OutputOutputMultiItem]
oOutputMulti
  = lens _oOutputMulti (\ s a -> s{_oOutputMulti = a})
      . _Default
      . _Coerce

instance FromJSON Output where
        parseJSON
          = withObject "Output"
              (\ o ->
                 Output' <$>
                   (o .:? "outputValue") <*>
                     (o .:? "kind" .!= "prediction#output")
                     <*> (o .:? "outputLabel")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id")
                     <*> (o .:? "outputMulti" .!= mempty))

instance ToJSON Output where
        toJSON Output'{..}
          = object
              (catMaybes
                 [("outputValue" .=) <$> _oOutputValue,
                  Just ("kind" .= _oKind),
                  ("outputLabel" .=) <$> _oOutputLabel,
                  ("selfLink" .=) <$> _oSelfLink, ("id" .=) <$> _oId,
                  ("outputMulti" .=) <$> _oOutputMulti])

-- | Description of the output values in the data set.
--
-- /See:/ 'analyzeDataDescriptionOutputFeatureNumeric' smart constructor.
data AnalyzeDataDescriptionOutputFeatureNumeric = AnalyzeDataDescriptionOutputFeatureNumeric'
    { _addofnMean     :: !(Maybe Text)
    , _addofnCount    :: !(Maybe (Textual Int64))
    , _addofnVariance :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    AnalyzeDataDescriptionOutputFeatureNumeric'
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
  = lens _addofnCount (\ s a -> s{_addofnCount = a}) .
      mapping _Coerce

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
                 AnalyzeDataDescriptionOutputFeatureNumeric' <$>
                   (o .:? "mean") <*> (o .:? "count") <*>
                     (o .:? "variance"))

instance ToJSON
         AnalyzeDataDescriptionOutputFeatureNumeric where
        toJSON
          AnalyzeDataDescriptionOutputFeatureNumeric'{..}
          = object
              (catMaybes
                 [("mean" .=) <$> _addofnMean,
                  ("count" .=) <$> _addofnCount,
                  ("variance" .=) <$> _addofnVariance])

--
-- /See:/ 'analyzeErrorsItem' smart constructor.
newtype AnalyzeErrorsItem = AnalyzeErrorsItem'
    { _aeiAddtional :: HashMap Text Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnalyzeErrorsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aeiAddtional'
analyzeErrorsItem
    :: HashMap Text Text -- ^ 'aeiAddtional'
    -> AnalyzeErrorsItem
analyzeErrorsItem pAeiAddtional_ =
    AnalyzeErrorsItem'
    { _aeiAddtional = _Coerce # pAeiAddtional_
    }

-- | Error level followed by a detailed error message.
aeiAddtional :: Lens' AnalyzeErrorsItem (HashMap Text Text)
aeiAddtional
  = lens _aeiAddtional (\ s a -> s{_aeiAddtional = a})
      . _Coerce

instance FromJSON AnalyzeErrorsItem where
        parseJSON
          = withObject "AnalyzeErrorsItem"
              (\ o -> AnalyzeErrorsItem' <$> (parseJSONObject o))

instance ToJSON AnalyzeErrorsItem where
        toJSON = toJSON . _aeiAddtional

-- | Description of the data the model was trained on.
--
-- /See:/ 'analyzeDataDescription' smart constructor.
data AnalyzeDataDescription = AnalyzeDataDescription'
    { _addOutputFeature :: !(Maybe AnalyzeDataDescriptionOutputFeature)
    , _addFeatures      :: !(Maybe [AnalyzeDataDescriptionFeaturesItem])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    AnalyzeDataDescription'
    { _addOutputFeature = Nothing
    , _addFeatures = Nothing
    }

-- | Description of the output value or label.
addOutputFeature :: Lens' AnalyzeDataDescription (Maybe AnalyzeDataDescriptionOutputFeature)
addOutputFeature
  = lens _addOutputFeature
      (\ s a -> s{_addOutputFeature = a})

-- | Description of the input features in the data set.
addFeatures :: Lens' AnalyzeDataDescription [AnalyzeDataDescriptionFeaturesItem]
addFeatures
  = lens _addFeatures (\ s a -> s{_addFeatures = a}) .
      _Default
      . _Coerce

instance FromJSON AnalyzeDataDescription where
        parseJSON
          = withObject "AnalyzeDataDescription"
              (\ o ->
                 AnalyzeDataDescription' <$>
                   (o .:? "outputFeature") <*>
                     (o .:? "features" .!= mempty))

instance ToJSON AnalyzeDataDescription where
        toJSON AnalyzeDataDescription'{..}
          = object
              (catMaybes
                 [("outputFeature" .=) <$> _addOutputFeature,
                  ("features" .=) <$> _addFeatures])

-- | Description of the model.
--
-- /See:/ 'analyzeModelDescription' smart constructor.
data AnalyzeModelDescription = AnalyzeModelDescription'
    { _amdConfusionMatrixRowTotals :: !(Maybe AnalyzeModelDescriptionConfusionMatrixRowTotals)
    , _amdConfusionMatrix          :: !(Maybe AnalyzeModelDescriptionConfusionMatrix)
    , _amdModelInfo                :: !(Maybe Insert2)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnalyzeModelDescription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'amdConfusionMatrixRowTotals'
--
-- * 'amdConfusionMatrix'
--
-- * 'amdModelInfo'
analyzeModelDescription
    :: AnalyzeModelDescription
analyzeModelDescription =
    AnalyzeModelDescription'
    { _amdConfusionMatrixRowTotals = Nothing
    , _amdConfusionMatrix = Nothing
    , _amdModelInfo = Nothing
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
amdModelInfo :: Lens' AnalyzeModelDescription (Maybe Insert2)
amdModelInfo
  = lens _amdModelInfo (\ s a -> s{_amdModelInfo = a})

instance FromJSON AnalyzeModelDescription where
        parseJSON
          = withObject "AnalyzeModelDescription"
              (\ o ->
                 AnalyzeModelDescription' <$>
                   (o .:? "confusionMatrixRowTotals") <*>
                     (o .:? "confusionMatrix")
                     <*> (o .:? "modelinfo"))

instance ToJSON AnalyzeModelDescription where
        toJSON AnalyzeModelDescription'{..}
          = object
              (catMaybes
                 [("confusionMatrixRowTotals" .=) <$>
                    _amdConfusionMatrixRowTotals,
                  ("confusionMatrix" .=) <$> _amdConfusionMatrix,
                  ("modelinfo" .=) <$> _amdModelInfo])

-- | Description of multiple-word text values of this feature.
--
-- /See:/ 'analyzeDataDescriptionFeaturesItemText' smart constructor.
newtype AnalyzeDataDescriptionFeaturesItemText = AnalyzeDataDescriptionFeaturesItemText'
    { _addfitCount :: Maybe (Textual Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnalyzeDataDescriptionFeaturesItemText' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'addfitCount'
analyzeDataDescriptionFeaturesItemText
    :: AnalyzeDataDescriptionFeaturesItemText
analyzeDataDescriptionFeaturesItemText =
    AnalyzeDataDescriptionFeaturesItemText'
    { _addfitCount = Nothing
    }

-- | Number of multiple-word text values for this feature.
addfitCount :: Lens' AnalyzeDataDescriptionFeaturesItemText (Maybe Int64)
addfitCount
  = lens _addfitCount (\ s a -> s{_addfitCount = a}) .
      mapping _Coerce

instance FromJSON
         AnalyzeDataDescriptionFeaturesItemText where
        parseJSON
          = withObject "AnalyzeDataDescriptionFeaturesItemText"
              (\ o ->
                 AnalyzeDataDescriptionFeaturesItemText' <$>
                   (o .:? "count"))

instance ToJSON
         AnalyzeDataDescriptionFeaturesItemText where
        toJSON AnalyzeDataDescriptionFeaturesItemText'{..}
          = object (catMaybes [("count" .=) <$> _addfitCount])

-- | Confusion matrix information for the true class label.
--
-- /See:/ 'analyzeModelDescriptionConfusionMatrixAdditional' smart constructor.
newtype AnalyzeModelDescriptionConfusionMatrixAdditional = AnalyzeModelDescriptionConfusionMatrixAdditional'
    { _amdcmaAddtional :: HashMap Text Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnalyzeModelDescriptionConfusionMatrixAdditional' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'amdcmaAddtional'
analyzeModelDescriptionConfusionMatrixAdditional
    :: HashMap Text Text -- ^ 'amdcmaAddtional'
    -> AnalyzeModelDescriptionConfusionMatrixAdditional
analyzeModelDescriptionConfusionMatrixAdditional pAmdcmaAddtional_ =
    AnalyzeModelDescriptionConfusionMatrixAdditional'
    { _amdcmaAddtional = _Coerce # pAmdcmaAddtional_
    }

-- | Average number of times an instance with correct class label
-- modelDescription.confusionMatrix.(key) was wrongfully classified as this
-- label.
amdcmaAddtional :: Lens' AnalyzeModelDescriptionConfusionMatrixAdditional (HashMap Text Text)
amdcmaAddtional
  = lens _amdcmaAddtional
      (\ s a -> s{_amdcmaAddtional = a})
      . _Coerce

instance FromJSON
         AnalyzeModelDescriptionConfusionMatrixAdditional
         where
        parseJSON
          = withObject
              "AnalyzeModelDescriptionConfusionMatrixAdditional"
              (\ o ->
                 AnalyzeModelDescriptionConfusionMatrixAdditional' <$>
                   (parseJSONObject o))

instance ToJSON
         AnalyzeModelDescriptionConfusionMatrixAdditional
         where
        toJSON = toJSON . _amdcmaAddtional

--
-- /See:/ 'analyzeDataDescriptionFeaturesItem' smart constructor.
data AnalyzeDataDescriptionFeaturesItem = AnalyzeDataDescriptionFeaturesItem'
    { _addfiText        :: !(Maybe AnalyzeDataDescriptionFeaturesItemText)
    , _addfiNumeric     :: !(Maybe AnalyzeDataDescriptionFeaturesItemNumeric)
    , _addfiIndex       :: !(Maybe (Textual Int64))
    , _addfiCategorical :: !(Maybe AnalyzeDataDescriptionFeaturesItemCategorical)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnalyzeDataDescriptionFeaturesItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'addfiText'
--
-- * 'addfiNumeric'
--
-- * 'addfiIndex'
--
-- * 'addfiCategorical'
analyzeDataDescriptionFeaturesItem
    :: AnalyzeDataDescriptionFeaturesItem
analyzeDataDescriptionFeaturesItem =
    AnalyzeDataDescriptionFeaturesItem'
    { _addfiText = Nothing
    , _addfiNumeric = Nothing
    , _addfiIndex = Nothing
    , _addfiCategorical = Nothing
    }

-- | Description of multiple-word text values of this feature.
addfiText :: Lens' AnalyzeDataDescriptionFeaturesItem (Maybe AnalyzeDataDescriptionFeaturesItemText)
addfiText
  = lens _addfiText (\ s a -> s{_addfiText = a})

-- | Description of the numeric values of this feature.
addfiNumeric :: Lens' AnalyzeDataDescriptionFeaturesItem (Maybe AnalyzeDataDescriptionFeaturesItemNumeric)
addfiNumeric
  = lens _addfiNumeric (\ s a -> s{_addfiNumeric = a})

-- | The feature index.
addfiIndex :: Lens' AnalyzeDataDescriptionFeaturesItem (Maybe Int64)
addfiIndex
  = lens _addfiIndex (\ s a -> s{_addfiIndex = a}) .
      mapping _Coerce

-- | Description of the categorical values of this feature.
addfiCategorical :: Lens' AnalyzeDataDescriptionFeaturesItem (Maybe AnalyzeDataDescriptionFeaturesItemCategorical)
addfiCategorical
  = lens _addfiCategorical
      (\ s a -> s{_addfiCategorical = a})

instance FromJSON AnalyzeDataDescriptionFeaturesItem
         where
        parseJSON
          = withObject "AnalyzeDataDescriptionFeaturesItem"
              (\ o ->
                 AnalyzeDataDescriptionFeaturesItem' <$>
                   (o .:? "text") <*> (o .:? "numeric") <*>
                     (o .:? "index")
                     <*> (o .:? "categorical"))

instance ToJSON AnalyzeDataDescriptionFeaturesItem
         where
        toJSON AnalyzeDataDescriptionFeaturesItem'{..}
          = object
              (catMaybes
                 [("text" .=) <$> _addfiText,
                  ("numeric" .=) <$> _addfiNumeric,
                  ("index" .=) <$> _addfiIndex,
                  ("categorical" .=) <$> _addfiCategorical])

--
-- /See:/ 'update' smart constructor.
data Update = Update'
    { _uCSVInstance :: !(Maybe [JSONValue])
    , _uOutput      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Update' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uCSVInstance'
--
-- * 'uOutput'
update
    :: Update
update =
    Update'
    { _uCSVInstance = Nothing
    , _uOutput = Nothing
    }

-- | The input features for this instance.
uCSVInstance :: Lens' Update [JSONValue]
uCSVInstance
  = lens _uCSVInstance (\ s a -> s{_uCSVInstance = a})
      . _Default
      . _Coerce

-- | The generic output value - could be regression or class label.
uOutput :: Lens' Update (Maybe Text)
uOutput = lens _uOutput (\ s a -> s{_uOutput = a})

instance FromJSON Update where
        parseJSON
          = withObject "Update"
              (\ o ->
                 Update' <$>
                   (o .:? "csvInstance" .!= mempty) <*>
                     (o .:? "output"))

instance ToJSON Update where
        toJSON Update'{..}
          = object
              (catMaybes
                 [("csvInstance" .=) <$> _uCSVInstance,
                  ("output" .=) <$> _uOutput])

-- | Description of the output value or label.
--
-- /See:/ 'analyzeDataDescriptionOutputFeature' smart constructor.
data AnalyzeDataDescriptionOutputFeature = AnalyzeDataDescriptionOutputFeature'
    { _addofText    :: !(Maybe [AnalyzeDataDescriptionOutputFeatureTextItem])
    , _addofNumeric :: !(Maybe AnalyzeDataDescriptionOutputFeatureNumeric)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    AnalyzeDataDescriptionOutputFeature'
    { _addofText = Nothing
    , _addofNumeric = Nothing
    }

-- | Description of the output labels in the data set.
addofText :: Lens' AnalyzeDataDescriptionOutputFeature [AnalyzeDataDescriptionOutputFeatureTextItem]
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
                 AnalyzeDataDescriptionOutputFeature' <$>
                   (o .:? "text" .!= mempty) <*> (o .:? "numeric"))

instance ToJSON AnalyzeDataDescriptionOutputFeature
         where
        toJSON AnalyzeDataDescriptionOutputFeature'{..}
          = object
              (catMaybes
                 [("text" .=) <$> _addofText,
                  ("numeric" .=) <$> _addofNumeric])
