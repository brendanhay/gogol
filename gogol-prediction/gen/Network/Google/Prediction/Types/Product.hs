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

--
-- /See:/ 'insert' smart constructor.
data Insert = Insert
    { _iStorageDataLocation      :: !(Maybe Text)
    , _iModelType                :: !(Maybe Text)
    , _iTrainingInstances        :: !(Maybe [InsertTrainingInstancesItem])
    , _iUtility                  :: !(Maybe [InsertUtilityItem])
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
-- /See:/ 'analyze' smart constructor.
data Analyze = Analyze
    { _aKind             :: !Text
    , _aModelDescription :: !(Maybe AnalyzeModelDescription)
    , _aSelfLink         :: !(Maybe Text)
    , _aId               :: !(Maybe Text)
    , _aErrors           :: !(Maybe [AnalyzeErrorsItem])
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
    , _oOutputMulti :: !(Maybe [OutputOutputMultiItem])
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
oOutputMulti :: Lens' Output [OutputOutputMultiItem]
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
-- /See:/ 'update' smart constructor.
data Update = Update
    { _uCsvInstance :: !(Maybe [JSON])
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
uCsvInstance :: Lens' Update [JSON]
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
