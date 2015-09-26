{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

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
-- /See:/ 'analyze' smart constructor.
data Analyze = Analyze
    { _aKind             :: !Text
    , _aModelDescription :: !(Maybe AnalyzeModelDescription)
    , _aSelfLink         :: !(Maybe Text)
    , _aId               :: !(Maybe Text)
    , _aErrors           :: !(Maybe [AnalyzeItemErrors])
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
aErrors :: Lens' Analyze [AnalyzeItemErrors]
aErrors
  = lens _aErrors (\ s a -> s{_aErrors = a}) . _Default
      . _Coerce

-- | Description of the data the model was trained on.
aDataDescription :: Lens' Analyze (Maybe AnalyzeDataDescription)
aDataDescription
  = lens _aDataDescription
      (\ s a -> s{_aDataDescription = a})

-- | Description of the categorical values of this feature.
--
-- /See:/ 'analyzeCategoricalItemFeaturesDataDescription' smart constructor.
data AnalyzeCategoricalItemFeaturesDataDescription = AnalyzeCategoricalItemFeaturesDataDescription
    { _acifddValues :: !(Maybe [AnalyzeItemValuesCategoricalItemFeaturesDataDescription])
    , _acifddCount  :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnalyzeCategoricalItemFeaturesDataDescription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acifddValues'
--
-- * 'acifddCount'
analyzeCategoricalItemFeaturesDataDescription
    :: AnalyzeCategoricalItemFeaturesDataDescription
analyzeCategoricalItemFeaturesDataDescription =
    AnalyzeCategoricalItemFeaturesDataDescription
    { _acifddValues = Nothing
    , _acifddCount = Nothing
    }

-- | List of all the categories for this feature in the data set.
acifddValues :: Lens' AnalyzeCategoricalItemFeaturesDataDescription [AnalyzeItemValuesCategoricalItemFeaturesDataDescription]
acifddValues
  = lens _acifddValues (\ s a -> s{_acifddValues = a})
      . _Default
      . _Coerce

-- | Number of categorical values for this feature in the data.
acifddCount :: Lens' AnalyzeCategoricalItemFeaturesDataDescription (Maybe Int64)
acifddCount
  = lens _acifddCount (\ s a -> s{_acifddCount = a})

-- | An output confusion matrix. This shows an estimate for how this model
-- will do in predictions. This is first indexed by the true class label.
-- For each true class label, this provides a pair {predicted_label,
-- count}, where count is the estimated number of times the model will
-- predict the predicted label given the true label. Will not output if
-- more then 100 classes (Categorical models only).
--
-- /See:/ 'analyzeConfusionMatrixModelDescription' smart constructor.
data AnalyzeConfusionMatrixModelDescription =
    AnalyzeConfusionMatrixModelDescription
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnalyzeConfusionMatrixModelDescription' with the minimum fields required to make a request.
--
analyzeConfusionMatrixModelDescription
    :: AnalyzeConfusionMatrixModelDescription
analyzeConfusionMatrixModelDescription = AnalyzeConfusionMatrixModelDescription

-- | A list of the confusion matrix row totals.
--
-- /See:/ 'analyzeConfusionMatrixRowTotalsModelDescription' smart constructor.
data AnalyzeConfusionMatrixRowTotalsModelDescription =
    AnalyzeConfusionMatrixRowTotalsModelDescription
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnalyzeConfusionMatrixRowTotalsModelDescription' with the minimum fields required to make a request.
--
analyzeConfusionMatrixRowTotalsModelDescription
    :: AnalyzeConfusionMatrixRowTotalsModelDescription
analyzeConfusionMatrixRowTotalsModelDescription =
    AnalyzeConfusionMatrixRowTotalsModelDescription

-- | Description of the data the model was trained on.
--
-- /See:/ 'analyzeDataDescription' smart constructor.
data AnalyzeDataDescription = AnalyzeDataDescription
    { _addOutputFeature :: !(Maybe AnalyzeOutputFeatureDataDescription)
    , _addFeatures      :: !(Maybe [AnalyzeItemFeaturesDataDescription])
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
addOutputFeature :: Lens' AnalyzeDataDescription (Maybe AnalyzeOutputFeatureDataDescription)
addOutputFeature
  = lens _addOutputFeature
      (\ s a -> s{_addOutputFeature = a})

-- | Description of the input features in the data set.
addFeatures :: Lens' AnalyzeDataDescription [AnalyzeItemFeaturesDataDescription]
addFeatures
  = lens _addFeatures (\ s a -> s{_addFeatures = a}) .
      _Default
      . _Coerce

--
-- /See:/ 'analyzeItemErrors' smart constructor.
data AnalyzeItemErrors =
    AnalyzeItemErrors
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnalyzeItemErrors' with the minimum fields required to make a request.
--
analyzeItemErrors
    :: AnalyzeItemErrors
analyzeItemErrors = AnalyzeItemErrors

--
-- /See:/ 'analyzeItemFeaturesDataDescription' smart constructor.
data AnalyzeItemFeaturesDataDescription = AnalyzeItemFeaturesDataDescription
    { _aifddText        :: !(Maybe AnalyzeTextItemFeaturesDataDescription)
    , _aifddNumeric     :: !(Maybe AnalyzeNumericItemFeaturesDataDescription)
    , _aifddIndex       :: !(Maybe Int64)
    , _aifddCategorical :: !(Maybe AnalyzeCategoricalItemFeaturesDataDescription)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnalyzeItemFeaturesDataDescription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aifddText'
--
-- * 'aifddNumeric'
--
-- * 'aifddIndex'
--
-- * 'aifddCategorical'
analyzeItemFeaturesDataDescription
    :: AnalyzeItemFeaturesDataDescription
analyzeItemFeaturesDataDescription =
    AnalyzeItemFeaturesDataDescription
    { _aifddText = Nothing
    , _aifddNumeric = Nothing
    , _aifddIndex = Nothing
    , _aifddCategorical = Nothing
    }

-- | Description of multiple-word text values of this feature.
aifddText :: Lens' AnalyzeItemFeaturesDataDescription (Maybe AnalyzeTextItemFeaturesDataDescription)
aifddText
  = lens _aifddText (\ s a -> s{_aifddText = a})

-- | Description of the numeric values of this feature.
aifddNumeric :: Lens' AnalyzeItemFeaturesDataDescription (Maybe AnalyzeNumericItemFeaturesDataDescription)
aifddNumeric
  = lens _aifddNumeric (\ s a -> s{_aifddNumeric = a})

-- | The feature index.
aifddIndex :: Lens' AnalyzeItemFeaturesDataDescription (Maybe Int64)
aifddIndex
  = lens _aifddIndex (\ s a -> s{_aifddIndex = a})

-- | Description of the categorical values of this feature.
aifddCategorical :: Lens' AnalyzeItemFeaturesDataDescription (Maybe AnalyzeCategoricalItemFeaturesDataDescription)
aifddCategorical
  = lens _aifddCategorical
      (\ s a -> s{_aifddCategorical = a})

--
-- /See:/ 'analyzeItemTextOutputFeatureDataDescription' smart constructor.
data AnalyzeItemTextOutputFeatureDataDescription = AnalyzeItemTextOutputFeatureDataDescription
    { _aitofddValue :: !(Maybe Text)
    , _aitofddCount :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnalyzeItemTextOutputFeatureDataDescription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aitofddValue'
--
-- * 'aitofddCount'
analyzeItemTextOutputFeatureDataDescription
    :: AnalyzeItemTextOutputFeatureDataDescription
analyzeItemTextOutputFeatureDataDescription =
    AnalyzeItemTextOutputFeatureDataDescription
    { _aitofddValue = Nothing
    , _aitofddCount = Nothing
    }

-- | The output label.
aitofddValue :: Lens' AnalyzeItemTextOutputFeatureDataDescription (Maybe Text)
aitofddValue
  = lens _aitofddValue (\ s a -> s{_aitofddValue = a})

-- | Number of times the output label occurred in the data set.
aitofddCount :: Lens' AnalyzeItemTextOutputFeatureDataDescription (Maybe Int64)
aitofddCount
  = lens _aitofddCount (\ s a -> s{_aitofddCount = a})

--
-- /See:/ 'analyzeItemValuesCategoricalItemFeaturesDataDescription' smart constructor.
data AnalyzeItemValuesCategoricalItemFeaturesDataDescription = AnalyzeItemValuesCategoricalItemFeaturesDataDescription
    { _aivcifddValue :: !(Maybe Text)
    , _aivcifddCount :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnalyzeItemValuesCategoricalItemFeaturesDataDescription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aivcifddValue'
--
-- * 'aivcifddCount'
analyzeItemValuesCategoricalItemFeaturesDataDescription
    :: AnalyzeItemValuesCategoricalItemFeaturesDataDescription
analyzeItemValuesCategoricalItemFeaturesDataDescription =
    AnalyzeItemValuesCategoricalItemFeaturesDataDescription
    { _aivcifddValue = Nothing
    , _aivcifddCount = Nothing
    }

-- | The category name.
aivcifddValue :: Lens' AnalyzeItemValuesCategoricalItemFeaturesDataDescription (Maybe Text)
aivcifddValue
  = lens _aivcifddValue
      (\ s a -> s{_aivcifddValue = a})

-- | Number of times this feature had this value.
aivcifddCount :: Lens' AnalyzeItemValuesCategoricalItemFeaturesDataDescription (Maybe Int64)
aivcifddCount
  = lens _aivcifddCount
      (\ s a -> s{_aivcifddCount = a})

-- | Description of the model.
--
-- /See:/ 'analyzeModelDescription' smart constructor.
data AnalyzeModelDescription = AnalyzeModelDescription
    { _amdConfusionMatrixRowTotals :: !(Maybe AnalyzeConfusionMatrixRowTotalsModelDescription)
    , _amdConfusionMatrix          :: !(Maybe AnalyzeConfusionMatrixModelDescription)
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
amdConfusionMatrixRowTotals :: Lens' AnalyzeModelDescription (Maybe AnalyzeConfusionMatrixRowTotalsModelDescription)
amdConfusionMatrixRowTotals
  = lens _amdConfusionMatrixRowTotals
      (\ s a -> s{_amdConfusionMatrixRowTotals = a})

-- | An output confusion matrix. This shows an estimate for how this model
-- will do in predictions. This is first indexed by the true class label.
-- For each true class label, this provides a pair {predicted_label,
-- count}, where count is the estimated number of times the model will
-- predict the predicted label given the true label. Will not output if
-- more then 100 classes (Categorical models only).
amdConfusionMatrix :: Lens' AnalyzeModelDescription (Maybe AnalyzeConfusionMatrixModelDescription)
amdConfusionMatrix
  = lens _amdConfusionMatrix
      (\ s a -> s{_amdConfusionMatrix = a})

-- | Basic information about the model.
amdModelinfo :: Lens' AnalyzeModelDescription (Maybe (Maybe Insert2))
amdModelinfo
  = lens _amdModelinfo (\ s a -> s{_amdModelinfo = a})

-- | Description of the numeric values of this feature.
--
-- /See:/ 'analyzeNumericItemFeaturesDataDescription' smart constructor.
data AnalyzeNumericItemFeaturesDataDescription = AnalyzeNumericItemFeaturesDataDescription
    { _anifddMean     :: !(Maybe Text)
    , _anifddCount    :: !(Maybe Int64)
    , _anifddVariance :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnalyzeNumericItemFeaturesDataDescription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'anifddMean'
--
-- * 'anifddCount'
--
-- * 'anifddVariance'
analyzeNumericItemFeaturesDataDescription
    :: AnalyzeNumericItemFeaturesDataDescription
analyzeNumericItemFeaturesDataDescription =
    AnalyzeNumericItemFeaturesDataDescription
    { _anifddMean = Nothing
    , _anifddCount = Nothing
    , _anifddVariance = Nothing
    }

-- | Mean of the numeric values of this feature in the data set.
anifddMean :: Lens' AnalyzeNumericItemFeaturesDataDescription (Maybe Text)
anifddMean
  = lens _anifddMean (\ s a -> s{_anifddMean = a})

-- | Number of numeric values for this feature in the data set.
anifddCount :: Lens' AnalyzeNumericItemFeaturesDataDescription (Maybe Int64)
anifddCount
  = lens _anifddCount (\ s a -> s{_anifddCount = a})

-- | Variance of the numeric values of this feature in the data set.
anifddVariance :: Lens' AnalyzeNumericItemFeaturesDataDescription (Maybe Text)
anifddVariance
  = lens _anifddVariance
      (\ s a -> s{_anifddVariance = a})

-- | Description of the output values in the data set.
--
-- /See:/ 'analyzeNumericOutputFeatureDataDescription' smart constructor.
data AnalyzeNumericOutputFeatureDataDescription = AnalyzeNumericOutputFeatureDataDescription
    { _anofddMean     :: !(Maybe Text)
    , _anofddCount    :: !(Maybe Int64)
    , _anofddVariance :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnalyzeNumericOutputFeatureDataDescription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'anofddMean'
--
-- * 'anofddCount'
--
-- * 'anofddVariance'
analyzeNumericOutputFeatureDataDescription
    :: AnalyzeNumericOutputFeatureDataDescription
analyzeNumericOutputFeatureDataDescription =
    AnalyzeNumericOutputFeatureDataDescription
    { _anofddMean = Nothing
    , _anofddCount = Nothing
    , _anofddVariance = Nothing
    }

-- | Mean of the output values in the data set.
anofddMean :: Lens' AnalyzeNumericOutputFeatureDataDescription (Maybe Text)
anofddMean
  = lens _anofddMean (\ s a -> s{_anofddMean = a})

-- | Number of numeric output values in the data set.
anofddCount :: Lens' AnalyzeNumericOutputFeatureDataDescription (Maybe Int64)
anofddCount
  = lens _anofddCount (\ s a -> s{_anofddCount = a})

-- | Variance of the output values in the data set.
anofddVariance :: Lens' AnalyzeNumericOutputFeatureDataDescription (Maybe Text)
anofddVariance
  = lens _anofddVariance
      (\ s a -> s{_anofddVariance = a})

-- | Description of the output value or label.
--
-- /See:/ 'analyzeOutputFeatureDataDescription' smart constructor.
data AnalyzeOutputFeatureDataDescription = AnalyzeOutputFeatureDataDescription
    { _aofddText    :: !(Maybe [AnalyzeItemTextOutputFeatureDataDescription])
    , _aofddNumeric :: !(Maybe AnalyzeNumericOutputFeatureDataDescription)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnalyzeOutputFeatureDataDescription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aofddText'
--
-- * 'aofddNumeric'
analyzeOutputFeatureDataDescription
    :: AnalyzeOutputFeatureDataDescription
analyzeOutputFeatureDataDescription =
    AnalyzeOutputFeatureDataDescription
    { _aofddText = Nothing
    , _aofddNumeric = Nothing
    }

-- | Description of the output labels in the data set.
aofddText :: Lens' AnalyzeOutputFeatureDataDescription [AnalyzeItemTextOutputFeatureDataDescription]
aofddText
  = lens _aofddText (\ s a -> s{_aofddText = a}) .
      _Default
      . _Coerce

-- | Description of the output values in the data set.
aofddNumeric :: Lens' AnalyzeOutputFeatureDataDescription (Maybe AnalyzeNumericOutputFeatureDataDescription)
aofddNumeric
  = lens _aofddNumeric (\ s a -> s{_aofddNumeric = a})

-- | Description of multiple-word text values of this feature.
--
-- /See:/ 'analyzeTextItemFeaturesDataDescription' smart constructor.
newtype AnalyzeTextItemFeaturesDataDescription = AnalyzeTextItemFeaturesDataDescription
    { _atifddCount :: Maybe Int64
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnalyzeTextItemFeaturesDataDescription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atifddCount'
analyzeTextItemFeaturesDataDescription
    :: AnalyzeTextItemFeaturesDataDescription
analyzeTextItemFeaturesDataDescription =
    AnalyzeTextItemFeaturesDataDescription
    { _atifddCount = Nothing
    }

-- | Number of multiple-word text values for this feature.
atifddCount :: Lens' AnalyzeTextItemFeaturesDataDescription (Maybe Int64)
atifddCount
  = lens _atifddCount (\ s a -> s{_atifddCount = a})

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

-- | Input to the model for a prediction.
--
-- /See:/ 'inputInput' smart constructor.
newtype InputInput = InputInput
    { _iiCsvInstance :: Maybe [Either Text Int64]
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
iiCsvInstance :: Lens' InputInput [Either Text Int64]
iiCsvInstance
  = lens _iiCsvInstance
      (\ s a -> s{_iiCsvInstance = a})
      . _Default
      . _Coerce

--
-- /See:/ 'insert' smart constructor.
data Insert = Insert
    { _iStorageDataLocation      :: !(Maybe Text)
    , _iModelType                :: !(Maybe Text)
    , _iTrainingInstances        :: !(Maybe [InsertItemTrainingInstances])
    , _iUtility                  :: !(Maybe [InsertItemUtility])
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
iTrainingInstances :: Lens' Insert [InsertItemTrainingInstances]
iTrainingInstances
  = lens _iTrainingInstances
      (\ s a -> s{_iTrainingInstances = a})
      . _Default
      . _Coerce

-- | A class weighting function, which allows the importance weights for
-- class labels to be specified (Categorical models only).
iUtility :: Lens' Insert [InsertItemUtility]
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

--
-- /See:/ 'insertItemTrainingInstances' smart constructor.
data InsertItemTrainingInstances = InsertItemTrainingInstances
    { _iitiCsvInstance :: !(Maybe [Either Text Int64])
    , _iitiOutput      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InsertItemTrainingInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iitiCsvInstance'
--
-- * 'iitiOutput'
insertItemTrainingInstances
    :: InsertItemTrainingInstances
insertItemTrainingInstances =
    InsertItemTrainingInstances
    { _iitiCsvInstance = Nothing
    , _iitiOutput = Nothing
    }

-- | The input features for this instance.
iitiCsvInstance :: Lens' InsertItemTrainingInstances [Either Text Int64]
iitiCsvInstance
  = lens _iitiCsvInstance
      (\ s a -> s{_iitiCsvInstance = a})
      . _Default
      . _Coerce

-- | The generic output value - could be regression or class label.
iitiOutput :: Lens' InsertItemTrainingInstances (Maybe Text)
iitiOutput
  = lens _iitiOutput (\ s a -> s{_iitiOutput = a})

-- | Class label (string).
--
-- /See:/ 'insertItemUtility' smart constructor.
data InsertItemUtility =
    InsertItemUtility
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InsertItemUtility' with the minimum fields required to make a request.
--
insertItemUtility
    :: InsertItemUtility
insertItemUtility = InsertItemUtility

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

--
-- /See:/ 'output' smart constructor.
data Output = Output
    { _oOutputValue :: !(Maybe Text)
    , _oKind        :: !Text
    , _oOutputLabel :: !(Maybe Text)
    , _oSelfLink    :: !(Maybe Text)
    , _oId          :: !(Maybe Text)
    , _oOutputMulti :: !(Maybe [OutputItemOutputMulti])
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
oOutputMulti :: Lens' Output [OutputItemOutputMulti]
oOutputMulti
  = lens _oOutputMulti (\ s a -> s{_oOutputMulti = a})
      . _Default
      . _Coerce

--
-- /See:/ 'outputItemOutputMulti' smart constructor.
data OutputItemOutputMulti = OutputItemOutputMulti
    { _oiomScore :: !(Maybe Text)
    , _oiomLabel :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OutputItemOutputMulti' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oiomScore'
--
-- * 'oiomLabel'
outputItemOutputMulti
    :: OutputItemOutputMulti
outputItemOutputMulti =
    OutputItemOutputMulti
    { _oiomScore = Nothing
    , _oiomLabel = Nothing
    }

-- | The probability of the class label.
oiomScore :: Lens' OutputItemOutputMulti (Maybe Text)
oiomScore
  = lens _oiomScore (\ s a -> s{_oiomScore = a})

-- | The class label.
oiomLabel :: Lens' OutputItemOutputMulti (Maybe Text)
oiomLabel
  = lens _oiomLabel (\ s a -> s{_oiomLabel = a})

--
-- /See:/ 'update' smart constructor.
data Update = Update
    { _uCsvInstance :: !(Maybe [Either Text Int64])
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
uCsvInstance :: Lens' Update [Either Text Int64]
uCsvInstance
  = lens _uCsvInstance (\ s a -> s{_uCsvInstance = a})
      . _Default
      . _Coerce

-- | The generic output value - could be regression or class label.
uOutput :: Lens' Update (Maybe Text)
uOutput = lens _uOutput (\ s a -> s{_uOutput = a})
