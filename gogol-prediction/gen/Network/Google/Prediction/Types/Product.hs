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

-- | Description of multiple-word text values of this feature.
--
-- /See:/ 'featuresItemText' smart constructor.
newtype FeaturesItemText = FeaturesItemText
    { _fitCount :: Maybe Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FeaturesItemText' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fitCount'
featuresItemText
    :: FeaturesItemText
featuresItemText =
    FeaturesItemText
    { _fitCount = Nothing
    }

-- | Number of multiple-word text values for this feature.
fitCount :: Lens' FeaturesItemText (Maybe Int64)
fitCount = lens _fitCount (\ s a -> s{_fitCount = a})

instance FromJSON FeaturesItemText where
        parseJSON
          = withObject "FeaturesItemText"
              (\ o -> FeaturesItemText <$> (o .:? "count"))

instance ToJSON FeaturesItemText where
        toJSON FeaturesItemText{..}
          = object (catMaybes [("count" .=) <$> _fitCount])

--
-- /See:/ 'insert' smart constructor.
data Insert = Insert
    { _iStorageDataLocation      :: !(Maybe Text)
    , _iModelType                :: !(Maybe Text)
    , _iTrainingInstances        :: !(Maybe [TrainingInstancesItem])
    , _iUtility                  :: !(Maybe [UtilityItem])
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
iTrainingInstances :: Lens' Insert [TrainingInstancesItem]
iTrainingInstances
  = lens _iTrainingInstances
      (\ s a -> s{_iTrainingInstances = a})
      . _Default
      . _Coerce

-- | A class weighting function, which allows the importance weights for
-- class labels to be specified (Categorical models only).
iUtility :: Lens' Insert [UtilityItem]
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
-- /See:/ 'list' smart constructor.
data List = List
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
-- /See:/ 'featuresItem' smart constructor.
data FeaturesItem = FeaturesItem
    { _fiText        :: !(Maybe FeaturesItemText)
    , _fiNumeric     :: !(Maybe FeaturesItemNumeric)
    , _fiIndex       :: !(Maybe Int64)
    , _fiCategorical :: !(Maybe Categorical)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FeaturesItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fiText'
--
-- * 'fiNumeric'
--
-- * 'fiIndex'
--
-- * 'fiCategorical'
featuresItem
    :: FeaturesItem
featuresItem =
    FeaturesItem
    { _fiText = Nothing
    , _fiNumeric = Nothing
    , _fiIndex = Nothing
    , _fiCategorical = Nothing
    }

-- | Description of multiple-word text values of this feature.
fiText :: Lens' FeaturesItem (Maybe FeaturesItemText)
fiText = lens _fiText (\ s a -> s{_fiText = a})

-- | Description of the numeric values of this feature.
fiNumeric :: Lens' FeaturesItem (Maybe FeaturesItemNumeric)
fiNumeric
  = lens _fiNumeric (\ s a -> s{_fiNumeric = a})

-- | The feature index.
fiIndex :: Lens' FeaturesItem (Maybe Int64)
fiIndex = lens _fiIndex (\ s a -> s{_fiIndex = a})

-- | Description of the categorical values of this feature.
fiCategorical :: Lens' FeaturesItem (Maybe Categorical)
fiCategorical
  = lens _fiCategorical
      (\ s a -> s{_fiCategorical = a})

instance FromJSON FeaturesItem where
        parseJSON
          = withObject "FeaturesItem"
              (\ o ->
                 FeaturesItem <$>
                   (o .:? "text") <*> (o .:? "numeric") <*>
                     (o .:? "index")
                     <*> (o .:? "categorical"))

instance ToJSON FeaturesItem where
        toJSON FeaturesItem{..}
          = object
              (catMaybes
                 [("text" .=) <$> _fiText,
                  ("numeric" .=) <$> _fiNumeric,
                  ("index" .=) <$> _fiIndex,
                  ("categorical" .=) <$> _fiCategorical])

--
-- /See:/ 'insert2' smart constructor.
data Insert2 = Insert2
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
    , _insModelInfo                :: !(Maybe ModelInfo)
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
insModelInfo :: Lens' Insert2 (Maybe ModelInfo)
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

-- | Description of the output value or label.
--
-- /See:/ 'outputFeature' smart constructor.
data OutputFeature = OutputFeature
    { _ofText    :: !(Maybe [TextItem])
    , _ofNumeric :: !(Maybe Numeric)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OutputFeature' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ofText'
--
-- * 'ofNumeric'
outputFeature
    :: OutputFeature
outputFeature =
    OutputFeature
    { _ofText = Nothing
    , _ofNumeric = Nothing
    }

-- | Description of the output labels in the data set.
ofText :: Lens' OutputFeature [TextItem]
ofText
  = lens _ofText (\ s a -> s{_ofText = a}) . _Default .
      _Coerce

-- | Description of the output values in the data set.
ofNumeric :: Lens' OutputFeature (Maybe Numeric)
ofNumeric
  = lens _ofNumeric (\ s a -> s{_ofNumeric = a})

instance FromJSON OutputFeature where
        parseJSON
          = withObject "OutputFeature"
              (\ o ->
                 OutputFeature <$>
                   (o .:? "text" .!= mempty) <*> (o .:? "numeric"))

instance ToJSON OutputFeature where
        toJSON OutputFeature{..}
          = object
              (catMaybes
                 [("text" .=) <$> _ofText,
                  ("numeric" .=) <$> _ofNumeric])

-- | Input to the model for a prediction.
--
-- /See:/ 'input' smart constructor.
newtype Input = Input
    { _iCSVInstance :: Maybe [JSONValue]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Input' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iCSVInstance'
input
    :: Input
input =
    Input
    { _iCSVInstance = Nothing
    }

-- | A list of input features, these can be strings or doubles.
iCSVInstance :: Lens' Input [JSONValue]
iCSVInstance
  = lens _iCSVInstance (\ s a -> s{_iCSVInstance = a})
      . _Default
      . _Coerce

instance FromJSON Input where
        parseJSON
          = withObject "Input"
              (\ o -> Input <$> (o .:? "csvInstance" .!= mempty))

instance ToJSON Input where
        toJSON Input{..}
          = object
              (catMaybes [("csvInstance" .=) <$> _iCSVInstance])

--
-- /See:/ 'input' smart constructor.
newtype Input = Input
    { _iInput :: Maybe Input
    } deriving (Eq,Show,Data,Typeable,Generic)

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
iInput :: Lens' Input (Maybe Input)
iInput = lens _iInput (\ s a -> s{_iInput = a})

instance FromJSON Input where
        parseJSON
          = withObject "Input"
              (\ o -> Input <$> (o .:? "input"))

instance ToJSON Input where
        toJSON Input{..}
          = object (catMaybes [("input" .=) <$> _iInput])

-- | Description of the model.
--
-- /See:/ 'modelDescription' smart constructor.
data ModelDescription = ModelDescription
    { _mdConfusionMatrixRowTotals :: !(Maybe ConfusionMatrixRowTotals)
    , _mdConfusionMatrix          :: !(Maybe ConfusionMatrix)
    , _mdModelInfo                :: !(Maybe Insert2)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ModelDescription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdConfusionMatrixRowTotals'
--
-- * 'mdConfusionMatrix'
--
-- * 'mdModelInfo'
modelDescription
    :: ModelDescription
modelDescription =
    ModelDescription
    { _mdConfusionMatrixRowTotals = Nothing
    , _mdConfusionMatrix = Nothing
    , _mdModelInfo = Nothing
    }

-- | A list of the confusion matrix row totals.
mdConfusionMatrixRowTotals :: Lens' ModelDescription (Maybe ConfusionMatrixRowTotals)
mdConfusionMatrixRowTotals
  = lens _mdConfusionMatrixRowTotals
      (\ s a -> s{_mdConfusionMatrixRowTotals = a})

-- | An output confusion matrix. This shows an estimate for how this model
-- will do in predictions. This is first indexed by the true class label.
-- For each true class label, this provides a pair {predicted_label,
-- count}, where count is the estimated number of times the model will
-- predict the predicted label given the true label. Will not output if
-- more then 100 classes (Categorical models only).
mdConfusionMatrix :: Lens' ModelDescription (Maybe ConfusionMatrix)
mdConfusionMatrix
  = lens _mdConfusionMatrix
      (\ s a -> s{_mdConfusionMatrix = a})

-- | Basic information about the model.
mdModelInfo :: Lens' ModelDescription (Maybe Insert2)
mdModelInfo
  = lens _mdModelInfo (\ s a -> s{_mdModelInfo = a})

instance FromJSON ModelDescription where
        parseJSON
          = withObject "ModelDescription"
              (\ o ->
                 ModelDescription <$>
                   (o .:? "confusionMatrixRowTotals") <*>
                     (o .:? "confusionMatrix")
                     <*> (o .:? "modelinfo"))

instance ToJSON ModelDescription where
        toJSON ModelDescription{..}
          = object
              (catMaybes
                 [("confusionMatrixRowTotals" .=) <$>
                    _mdConfusionMatrixRowTotals,
                  ("confusionMatrix" .=) <$> _mdConfusionMatrix,
                  ("modelinfo" .=) <$> _mdModelInfo])

--
-- /See:/ 'analyze' smart constructor.
data Analyze = Analyze
    { _aKind             :: !Text
    , _aModelDescription :: !(Maybe ModelDescription)
    , _aSelfLink         :: !(Maybe Text)
    , _aId               :: !(Maybe Text)
    , _aErrors           :: !(Maybe [ErrorsItem])
    , _aDataDescription  :: !(Maybe DataDescription)
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
aModelDescription :: Lens' Analyze (Maybe ModelDescription)
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
aErrors :: Lens' Analyze [ErrorsItem]
aErrors
  = lens _aErrors (\ s a -> s{_aErrors = a}) . _Default
      . _Coerce

-- | Description of the data the model was trained on.
aDataDescription :: Lens' Analyze (Maybe DataDescription)
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
    , _oOutputMulti :: !(Maybe [OutputMultiItem])
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
oOutputMulti :: Lens' Output [OutputMultiItem]
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

--
-- /See:/ 'trainingInstancesItem' smart constructor.
data TrainingInstancesItem = TrainingInstancesItem
    { _tiiCSVInstance :: !(Maybe [JSONValue])
    , _tiiOutput      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TrainingInstancesItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiiCSVInstance'
--
-- * 'tiiOutput'
trainingInstancesItem
    :: TrainingInstancesItem
trainingInstancesItem =
    TrainingInstancesItem
    { _tiiCSVInstance = Nothing
    , _tiiOutput = Nothing
    }

-- | The input features for this instance.
tiiCSVInstance :: Lens' TrainingInstancesItem [JSONValue]
tiiCSVInstance
  = lens _tiiCSVInstance
      (\ s a -> s{_tiiCSVInstance = a})
      . _Default
      . _Coerce

-- | The generic output value - could be regression or class label.
tiiOutput :: Lens' TrainingInstancesItem (Maybe Text)
tiiOutput
  = lens _tiiOutput (\ s a -> s{_tiiOutput = a})

instance FromJSON TrainingInstancesItem where
        parseJSON
          = withObject "TrainingInstancesItem"
              (\ o ->
                 TrainingInstancesItem <$>
                   (o .:? "csvInstance" .!= mempty) <*>
                     (o .:? "output"))

instance ToJSON TrainingInstancesItem where
        toJSON TrainingInstancesItem{..}
          = object
              (catMaybes
                 [("csvInstance" .=) <$> _tiiCSVInstance,
                  ("output" .=) <$> _tiiOutput])

-- | A list of the confusion matrix row totals.
--
-- /See:/ 'confusionMatrixRowTotals' smart constructor.
data ConfusionMatrixRowTotals =
    ConfusionMatrixRowTotals
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ConfusionMatrixRowTotals' with the minimum fields required to make a request.
--
confusionMatrixRowTotals
    :: ConfusionMatrixRowTotals
confusionMatrixRowTotals = ConfusionMatrixRowTotals

instance FromJSON ConfusionMatrixRowTotals where
        parseJSON
          = withObject "ConfusionMatrixRowTotals"
              (\ o -> pure ConfusionMatrixRowTotals)

instance ToJSON ConfusionMatrixRowTotals where
        toJSON = const (Object mempty)

--
-- /See:/ 'valuesItem' smart constructor.
data ValuesItem = ValuesItem
    { _viValue :: !(Maybe Text)
    , _viCount :: !(Maybe Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ValuesItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'viValue'
--
-- * 'viCount'
valuesItem
    :: ValuesItem
valuesItem =
    ValuesItem
    { _viValue = Nothing
    , _viCount = Nothing
    }

-- | The category name.
viValue :: Lens' ValuesItem (Maybe Text)
viValue = lens _viValue (\ s a -> s{_viValue = a})

-- | Number of times this feature had this value.
viCount :: Lens' ValuesItem (Maybe Int64)
viCount = lens _viCount (\ s a -> s{_viCount = a})

instance FromJSON ValuesItem where
        parseJSON
          = withObject "ValuesItem"
              (\ o ->
                 ValuesItem <$> (o .:? "value") <*> (o .:? "count"))

instance ToJSON ValuesItem where
        toJSON ValuesItem{..}
          = object
              (catMaybes
                 [("value" .=) <$> _viValue,
                  ("count" .=) <$> _viCount])

-- | Class label (string).
--
-- /See:/ 'utilityItem' smart constructor.
data UtilityItem =
    UtilityItem
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UtilityItem' with the minimum fields required to make a request.
--
utilityItem
    :: UtilityItem
utilityItem = UtilityItem

instance FromJSON UtilityItem where
        parseJSON
          = withObject "UtilityItem" (\ o -> pure UtilityItem)

instance ToJSON UtilityItem where
        toJSON = const (Object mempty)

--
-- /See:/ 'textItem' smart constructor.
data TextItem = TextItem
    { _tiValue :: !(Maybe Text)
    , _tiCount :: !(Maybe Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TextItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiValue'
--
-- * 'tiCount'
textItem
    :: TextItem
textItem =
    TextItem
    { _tiValue = Nothing
    , _tiCount = Nothing
    }

-- | The output label.
tiValue :: Lens' TextItem (Maybe Text)
tiValue = lens _tiValue (\ s a -> s{_tiValue = a})

-- | Number of times the output label occurred in the data set.
tiCount :: Lens' TextItem (Maybe Int64)
tiCount = lens _tiCount (\ s a -> s{_tiCount = a})

instance FromJSON TextItem where
        parseJSON
          = withObject "TextItem"
              (\ o ->
                 TextItem <$> (o .:? "value") <*> (o .:? "count"))

instance ToJSON TextItem where
        toJSON TextItem{..}
          = object
              (catMaybes
                 [("value" .=) <$> _tiValue,
                  ("count" .=) <$> _tiCount])

-- | Description of the output values in the data set.
--
-- /See:/ 'numeric' smart constructor.
data Numeric = Numeric
    { _nMean     :: !(Maybe Text)
    , _nCount    :: !(Maybe Int64)
    , _nVariance :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Numeric' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nMean'
--
-- * 'nCount'
--
-- * 'nVariance'
numeric
    :: Numeric
numeric =
    Numeric
    { _nMean = Nothing
    , _nCount = Nothing
    , _nVariance = Nothing
    }

-- | Mean of the output values in the data set.
nMean :: Lens' Numeric (Maybe Text)
nMean = lens _nMean (\ s a -> s{_nMean = a})

-- | Number of numeric output values in the data set.
nCount :: Lens' Numeric (Maybe Int64)
nCount = lens _nCount (\ s a -> s{_nCount = a})

-- | Variance of the output values in the data set.
nVariance :: Lens' Numeric (Maybe Text)
nVariance
  = lens _nVariance (\ s a -> s{_nVariance = a})

instance FromJSON Numeric where
        parseJSON
          = withObject "Numeric"
              (\ o ->
                 Numeric <$>
                   (o .:? "mean") <*> (o .:? "count") <*>
                     (o .:? "variance"))

instance ToJSON Numeric where
        toJSON Numeric{..}
          = object
              (catMaybes
                 [("mean" .=) <$> _nMean, ("count" .=) <$> _nCount,
                  ("variance" .=) <$> _nVariance])

--
-- /See:/ 'outputMultiItem' smart constructor.
data OutputMultiItem = OutputMultiItem
    { _omiScore :: !(Maybe Text)
    , _omiLabel :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OutputMultiItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'omiScore'
--
-- * 'omiLabel'
outputMultiItem
    :: OutputMultiItem
outputMultiItem =
    OutputMultiItem
    { _omiScore = Nothing
    , _omiLabel = Nothing
    }

-- | The probability of the class label.
omiScore :: Lens' OutputMultiItem (Maybe Text)
omiScore = lens _omiScore (\ s a -> s{_omiScore = a})

-- | The class label.
omiLabel :: Lens' OutputMultiItem (Maybe Text)
omiLabel = lens _omiLabel (\ s a -> s{_omiLabel = a})

instance FromJSON OutputMultiItem where
        parseJSON
          = withObject "OutputMultiItem"
              (\ o ->
                 OutputMultiItem <$>
                   (o .:? "score") <*> (o .:? "label"))

instance ToJSON OutputMultiItem where
        toJSON OutputMultiItem{..}
          = object
              (catMaybes
                 [("score" .=) <$> _omiScore,
                  ("label" .=) <$> _omiLabel])

--
-- /See:/ 'errorsItem' smart constructor.
data ErrorsItem =
    ErrorsItem
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ErrorsItem' with the minimum fields required to make a request.
--
errorsItem
    :: ErrorsItem
errorsItem = ErrorsItem

instance FromJSON ErrorsItem where
        parseJSON
          = withObject "ErrorsItem" (\ o -> pure ErrorsItem)

instance ToJSON ErrorsItem where
        toJSON = const (Object mempty)

-- | Description of the data the model was trained on.
--
-- /See:/ 'dataDescription' smart constructor.
data DataDescription = DataDescription
    { _ddOutputFeature :: !(Maybe OutputFeature)
    , _ddFeatures      :: !(Maybe [FeaturesItem])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DataDescription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddOutputFeature'
--
-- * 'ddFeatures'
dataDescription
    :: DataDescription
dataDescription =
    DataDescription
    { _ddOutputFeature = Nothing
    , _ddFeatures = Nothing
    }

-- | Description of the output value or label.
ddOutputFeature :: Lens' DataDescription (Maybe OutputFeature)
ddOutputFeature
  = lens _ddOutputFeature
      (\ s a -> s{_ddOutputFeature = a})

-- | Description of the input features in the data set.
ddFeatures :: Lens' DataDescription [FeaturesItem]
ddFeatures
  = lens _ddFeatures (\ s a -> s{_ddFeatures = a}) .
      _Default
      . _Coerce

instance FromJSON DataDescription where
        parseJSON
          = withObject "DataDescription"
              (\ o ->
                 DataDescription <$>
                   (o .:? "outputFeature") <*>
                     (o .:? "features" .!= mempty))

instance ToJSON DataDescription where
        toJSON DataDescription{..}
          = object
              (catMaybes
                 [("outputFeature" .=) <$> _ddOutputFeature,
                  ("features" .=) <$> _ddFeatures])

-- | Description of the categorical values of this feature.
--
-- /See:/ 'categorical' smart constructor.
data Categorical = Categorical
    { _cValues :: !(Maybe [ValuesItem])
    , _cCount  :: !(Maybe Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Categorical' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cValues'
--
-- * 'cCount'
categorical
    :: Categorical
categorical =
    Categorical
    { _cValues = Nothing
    , _cCount = Nothing
    }

-- | List of all the categories for this feature in the data set.
cValues :: Lens' Categorical [ValuesItem]
cValues
  = lens _cValues (\ s a -> s{_cValues = a}) . _Default
      . _Coerce

-- | Number of categorical values for this feature in the data.
cCount :: Lens' Categorical (Maybe Int64)
cCount = lens _cCount (\ s a -> s{_cCount = a})

instance FromJSON Categorical where
        parseJSON
          = withObject "Categorical"
              (\ o ->
                 Categorical <$>
                   (o .:? "values" .!= mempty) <*> (o .:? "count"))

instance ToJSON Categorical where
        toJSON Categorical{..}
          = object
              (catMaybes
                 [("values" .=) <$> _cValues,
                  ("count" .=) <$> _cCount])

-- | An output confusion matrix. This shows an estimate for how this model
-- will do in predictions. This is first indexed by the true class label.
-- For each true class label, this provides a pair {predicted_label,
-- count}, where count is the estimated number of times the model will
-- predict the predicted label given the true label. Will not output if
-- more then 100 classes (Categorical models only).
--
-- /See:/ 'confusionMatrix' smart constructor.
data ConfusionMatrix =
    ConfusionMatrix
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ConfusionMatrix' with the minimum fields required to make a request.
--
confusionMatrix
    :: ConfusionMatrix
confusionMatrix = ConfusionMatrix

instance FromJSON ConfusionMatrix where
        parseJSON
          = withObject "ConfusionMatrix"
              (\ o -> pure ConfusionMatrix)

instance ToJSON ConfusionMatrix where
        toJSON = const (Object mempty)

-- | Model metadata.
--
-- /See:/ 'modelInfo' smart constructor.
data ModelInfo = ModelInfo
    { _miModelType              :: !(Maybe Text)
    , _miClassWeightedAccuracy  :: !(Maybe Text)
    , _miClassificationAccuracy :: !(Maybe Text)
    , _miMeanSquaredError       :: !(Maybe Text)
    , _miNumberLabels           :: !(Maybe Int64)
    , _miNumberInstances        :: !(Maybe Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ModelInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'miModelType'
--
-- * 'miClassWeightedAccuracy'
--
-- * 'miClassificationAccuracy'
--
-- * 'miMeanSquaredError'
--
-- * 'miNumberLabels'
--
-- * 'miNumberInstances'
modelInfo
    :: ModelInfo
modelInfo =
    ModelInfo
    { _miModelType = Nothing
    , _miClassWeightedAccuracy = Nothing
    , _miClassificationAccuracy = Nothing
    , _miMeanSquaredError = Nothing
    , _miNumberLabels = Nothing
    , _miNumberInstances = Nothing
    }

-- | Type of predictive model (CLASSIFICATION or REGRESSION).
miModelType :: Lens' ModelInfo (Maybe Text)
miModelType
  = lens _miModelType (\ s a -> s{_miModelType = a})

-- | Estimated accuracy of model taking utility weights into account
-- (Categorical models only).
miClassWeightedAccuracy :: Lens' ModelInfo (Maybe Text)
miClassWeightedAccuracy
  = lens _miClassWeightedAccuracy
      (\ s a -> s{_miClassWeightedAccuracy = a})

-- | A number between 0.0 and 1.0, where 1.0 is 100% accurate. This is an
-- estimate, based on the amount and quality of the training data, of the
-- estimated prediction accuracy. You can use this is a guide to decide
-- whether the results are accurate enough for your needs. This estimate
-- will be more reliable if your real input data is similar to your
-- training data (Categorical models only).
miClassificationAccuracy :: Lens' ModelInfo (Maybe Text)
miClassificationAccuracy
  = lens _miClassificationAccuracy
      (\ s a -> s{_miClassificationAccuracy = a})

-- | An estimated mean squared error. The can be used to measure the quality
-- of the predicted model (Regression models only).
miMeanSquaredError :: Lens' ModelInfo (Maybe Text)
miMeanSquaredError
  = lens _miMeanSquaredError
      (\ s a -> s{_miMeanSquaredError = a})

-- | Number of class labels in the trained model (Categorical models only).
miNumberLabels :: Lens' ModelInfo (Maybe Int64)
miNumberLabels
  = lens _miNumberLabels
      (\ s a -> s{_miNumberLabels = a})

-- | Number of valid data instances used in the trained model.
miNumberInstances :: Lens' ModelInfo (Maybe Int64)
miNumberInstances
  = lens _miNumberInstances
      (\ s a -> s{_miNumberInstances = a})

instance FromJSON ModelInfo where
        parseJSON
          = withObject "ModelInfo"
              (\ o ->
                 ModelInfo <$>
                   (o .:? "modelType") <*>
                     (o .:? "classWeightedAccuracy")
                     <*> (o .:? "classificationAccuracy")
                     <*> (o .:? "meanSquaredError")
                     <*> (o .:? "numberLabels")
                     <*> (o .:? "numberInstances"))

instance ToJSON ModelInfo where
        toJSON ModelInfo{..}
          = object
              (catMaybes
                 [("modelType" .=) <$> _miModelType,
                  ("classWeightedAccuracy" .=) <$>
                    _miClassWeightedAccuracy,
                  ("classificationAccuracy" .=) <$>
                    _miClassificationAccuracy,
                  ("meanSquaredError" .=) <$> _miMeanSquaredError,
                  ("numberLabels" .=) <$> _miNumberLabels,
                  ("numberInstances" .=) <$> _miNumberInstances])

-- | Description of the numeric values of this feature.
--
-- /See:/ 'featuresItemNumeric' smart constructor.
data FeaturesItemNumeric = FeaturesItemNumeric
    { _finMean     :: !(Maybe Text)
    , _finCount    :: !(Maybe Int64)
    , _finVariance :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FeaturesItemNumeric' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'finMean'
--
-- * 'finCount'
--
-- * 'finVariance'
featuresItemNumeric
    :: FeaturesItemNumeric
featuresItemNumeric =
    FeaturesItemNumeric
    { _finMean = Nothing
    , _finCount = Nothing
    , _finVariance = Nothing
    }

-- | Mean of the numeric values of this feature in the data set.
finMean :: Lens' FeaturesItemNumeric (Maybe Text)
finMean = lens _finMean (\ s a -> s{_finMean = a})

-- | Number of numeric values for this feature in the data set.
finCount :: Lens' FeaturesItemNumeric (Maybe Int64)
finCount = lens _finCount (\ s a -> s{_finCount = a})

-- | Variance of the numeric values of this feature in the data set.
finVariance :: Lens' FeaturesItemNumeric (Maybe Text)
finVariance
  = lens _finVariance (\ s a -> s{_finVariance = a})

instance FromJSON FeaturesItemNumeric where
        parseJSON
          = withObject "FeaturesItemNumeric"
              (\ o ->
                 FeaturesItemNumeric <$>
                   (o .:? "mean") <*> (o .:? "count") <*>
                     (o .:? "variance"))

instance ToJSON FeaturesItemNumeric where
        toJSON FeaturesItemNumeric{..}
          = object
              (catMaybes
                 [("mean" .=) <$> _finMean,
                  ("count" .=) <$> _finCount,
                  ("variance" .=) <$> _finVariance])

--
-- /See:/ 'update' smart constructor.
data Update = Update
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
    Update
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
                 Update <$>
                   (o .:? "csvInstance" .!= mempty) <*>
                     (o .:? "output"))

instance ToJSON Update where
        toJSON Update{..}
          = object
              (catMaybes
                 [("csvInstance" .=) <$> _uCSVInstance,
                  ("output" .=) <$> _uOutput])
