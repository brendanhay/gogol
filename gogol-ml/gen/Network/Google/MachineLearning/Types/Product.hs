{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.MachineLearning.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.MachineLearning.Types.Product where

import           Network.Google.MachineLearning.Types.Sum
import           Network.Google.Prelude

-- | Request message for the SetDefaultVersion request.
--
-- /See:/ 'googleCloudMlV1beta1__SetDefaultVersionRequest' smart constructor.
data GoogleCloudMlV1beta1__SetDefaultVersionRequest =
    GoogleCloudMlV1beta1__SetDefaultVersionRequest'
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GoogleCloudMlV1beta1__SetDefaultVersionRequest' with the minimum fields required to make a request.
--
googleCloudMlV1beta1__SetDefaultVersionRequest
    :: GoogleCloudMlV1beta1__SetDefaultVersionRequest
googleCloudMlV1beta1__SetDefaultVersionRequest =
    GoogleCloudMlV1beta1__SetDefaultVersionRequest'

instance FromJSON
         GoogleCloudMlV1beta1__SetDefaultVersionRequest where
        parseJSON
          = withObject
              "GoogleCloudMlV1beta1SetDefaultVersionRequest"
              (\ o ->
                 pure GoogleCloudMlV1beta1__SetDefaultVersionRequest')

instance ToJSON
         GoogleCloudMlV1beta1__SetDefaultVersionRequest where
        toJSON = const emptyObject

-- | Represents a version of the model. Each version is a trained model
-- deployed in the cloud, ready to handle prediction requests. A model can
-- have multiple versions. You can get information about all of the
-- versions of a given model by calling
-- [projects.models.versions.list](\/ml\/reference\/rest\/v1beta1\/projects.models.versions\/list).
--
-- /See:/ 'googleCloudMlV1beta1__Version' smart constructor.
data GoogleCloudMlV1beta1__Version = GoogleCloudMlV1beta1__Version'
    { _gcmvvLastUseTime   :: !(Maybe DateTime')
    , _gcmvvName          :: !(Maybe Text)
    , _gcmvvDeploymentURI :: !(Maybe Text)
    , _gcmvvDescription   :: !(Maybe Text)
    , _gcmvvCreateTime    :: !(Maybe DateTime')
    , _gcmvvIsDefault     :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GoogleCloudMlV1beta1__Version' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvvLastUseTime'
--
-- * 'gcmvvName'
--
-- * 'gcmvvDeploymentURI'
--
-- * 'gcmvvDescription'
--
-- * 'gcmvvCreateTime'
--
-- * 'gcmvvIsDefault'
googleCloudMlV1beta1__Version
    :: GoogleCloudMlV1beta1__Version
googleCloudMlV1beta1__Version =
    GoogleCloudMlV1beta1__Version'
    { _gcmvvLastUseTime = Nothing
    , _gcmvvName = Nothing
    , _gcmvvDeploymentURI = Nothing
    , _gcmvvDescription = Nothing
    , _gcmvvCreateTime = Nothing
    , _gcmvvIsDefault = Nothing
    }

-- | Output only. The time the version was last used for prediction.
gcmvvLastUseTime :: Lens' GoogleCloudMlV1beta1__Version (Maybe UTCTime)
gcmvvLastUseTime
  = lens _gcmvvLastUseTime
      (\ s a -> s{_gcmvvLastUseTime = a})
      . mapping _DateTime

-- | Required.The name specified for the version when it was created. The
-- version name must be unique within the model it is created in.
gcmvvName :: Lens' GoogleCloudMlV1beta1__Version (Maybe Text)
gcmvvName
  = lens _gcmvvName (\ s a -> s{_gcmvvName = a})

-- | Required. The Google Cloud Storage location of the trained model used to
-- create the version. See the [overview of model
-- deployment](\/ml\/docs\/concepts\/deployment-overview) for more
-- informaiton. When passing Version to
-- [projects.models.versions.create](\/ml\/reference\/rest\/v1beta1\/projects.models.versions\/create)
-- the model service uses the specified location as the source of the
-- model. Once deployed, the model version is hosted by the prediction
-- service, so this location is useful only as a historical record.
gcmvvDeploymentURI :: Lens' GoogleCloudMlV1beta1__Version (Maybe Text)
gcmvvDeploymentURI
  = lens _gcmvvDeploymentURI
      (\ s a -> s{_gcmvvDeploymentURI = a})

-- | Optional. The description specified for the version when it was created.
gcmvvDescription :: Lens' GoogleCloudMlV1beta1__Version (Maybe Text)
gcmvvDescription
  = lens _gcmvvDescription
      (\ s a -> s{_gcmvvDescription = a})

-- | Output only. The time the version was created.
gcmvvCreateTime :: Lens' GoogleCloudMlV1beta1__Version (Maybe UTCTime)
gcmvvCreateTime
  = lens _gcmvvCreateTime
      (\ s a -> s{_gcmvvCreateTime = a})
      . mapping _DateTime

-- | Output only. If true, this version will be used to handle prediction
-- requests that do not specify a version. You can change the default
-- version by calling
-- [projects.methods.versions.setDefault](\/ml\/reference\/rest\/v1beta1\/projects.models.versions\/setDefault).
gcmvvIsDefault :: Lens' GoogleCloudMlV1beta1__Version (Maybe Bool)
gcmvvIsDefault
  = lens _gcmvvIsDefault
      (\ s a -> s{_gcmvvIsDefault = a})

instance FromJSON GoogleCloudMlV1beta1__Version where
        parseJSON
          = withObject "GoogleCloudMlV1beta1Version"
              (\ o ->
                 GoogleCloudMlV1beta1__Version' <$>
                   (o .:? "lastUseTime") <*> (o .:? "name") <*>
                     (o .:? "deploymentUri")
                     <*> (o .:? "description")
                     <*> (o .:? "createTime")
                     <*> (o .:? "isDefault"))

instance ToJSON GoogleCloudMlV1beta1__Version where
        toJSON GoogleCloudMlV1beta1__Version'{..}
          = object
              (catMaybes
                 [("lastUseTime" .=) <$> _gcmvvLastUseTime,
                  ("name" .=) <$> _gcmvvName,
                  ("deploymentUri" .=) <$> _gcmvvDeploymentURI,
                  ("description" .=) <$> _gcmvvDescription,
                  ("createTime" .=) <$> _gcmvvCreateTime,
                  ("isDefault" .=) <$> _gcmvvIsDefault])

-- | Represents a set of hyperparameters to optimize.
--
-- /See:/ 'googleCloudMlV1beta1__HyperparameterSpec' smart constructor.
data GoogleCloudMlV1beta1__HyperparameterSpec = GoogleCloudMlV1beta1__HyperparameterSpec'
    { _gcmvhsParams            :: !(Maybe [GoogleCloudMlV1beta1__ParameterSpec])
    , _gcmvhsGoal              :: !(Maybe GoogleCloudMlV1beta1__HyperparameterSpecGoal)
    , _gcmvhsMaxTrials         :: !(Maybe (Textual Int32))
    , _gcmvhsMaxParallelTrials :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GoogleCloudMlV1beta1__HyperparameterSpec' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvhsParams'
--
-- * 'gcmvhsGoal'
--
-- * 'gcmvhsMaxTrials'
--
-- * 'gcmvhsMaxParallelTrials'
googleCloudMlV1beta1__HyperparameterSpec
    :: GoogleCloudMlV1beta1__HyperparameterSpec
googleCloudMlV1beta1__HyperparameterSpec =
    GoogleCloudMlV1beta1__HyperparameterSpec'
    { _gcmvhsParams = Nothing
    , _gcmvhsGoal = Nothing
    , _gcmvhsMaxTrials = Nothing
    , _gcmvhsMaxParallelTrials = Nothing
    }

-- | Required. The set of parameters to tune.
gcmvhsParams :: Lens' GoogleCloudMlV1beta1__HyperparameterSpec [GoogleCloudMlV1beta1__ParameterSpec]
gcmvhsParams
  = lens _gcmvhsParams (\ s a -> s{_gcmvhsParams = a})
      . _Default
      . _Coerce

-- | Required. The type of goal to use for tuning. Available types are
-- \`MAXIMIZE\` and \`MINIMIZE\`. Defaults to \`MAXIMIZE\`.
gcmvhsGoal :: Lens' GoogleCloudMlV1beta1__HyperparameterSpec (Maybe GoogleCloudMlV1beta1__HyperparameterSpecGoal)
gcmvhsGoal
  = lens _gcmvhsGoal (\ s a -> s{_gcmvhsGoal = a})

-- | Optional. How many training trials should be attempted to optimize the
-- specified hyperparameters. Defaults to one.
gcmvhsMaxTrials :: Lens' GoogleCloudMlV1beta1__HyperparameterSpec (Maybe Int32)
gcmvhsMaxTrials
  = lens _gcmvhsMaxTrials
      (\ s a -> s{_gcmvhsMaxTrials = a})
      . mapping _Coerce

-- | Optional. The number of training trials to run concurrently. You can
-- reduce the time it takes to perform hyperparameter tuning by adding
-- trials in parallel. However, each trail only benefits from the
-- information gained in completed trials. That means that a trial does not
-- get access to the results of trials running at the same time, which
-- could reduce the quality of the overall optimization. Each trial will
-- use the same scale tier and machine types. Defaults to one.
gcmvhsMaxParallelTrials :: Lens' GoogleCloudMlV1beta1__HyperparameterSpec (Maybe Int32)
gcmvhsMaxParallelTrials
  = lens _gcmvhsMaxParallelTrials
      (\ s a -> s{_gcmvhsMaxParallelTrials = a})
      . mapping _Coerce

instance FromJSON
         GoogleCloudMlV1beta1__HyperparameterSpec where
        parseJSON
          = withObject "GoogleCloudMlV1beta1HyperparameterSpec"
              (\ o ->
                 GoogleCloudMlV1beta1__HyperparameterSpec' <$>
                   (o .:? "params" .!= mempty) <*> (o .:? "goal") <*>
                     (o .:? "maxTrials")
                     <*> (o .:? "maxParallelTrials"))

instance ToJSON
         GoogleCloudMlV1beta1__HyperparameterSpec where
        toJSON GoogleCloudMlV1beta1__HyperparameterSpec'{..}
          = object
              (catMaybes
                 [("params" .=) <$> _gcmvhsParams,
                  ("goal" .=) <$> _gcmvhsGoal,
                  ("maxTrials" .=) <$> _gcmvhsMaxTrials,
                  ("maxParallelTrials" .=) <$>
                    _gcmvhsMaxParallelTrials])

-- | Returns service account information associated with a project.
--
-- /See:/ 'googleCloudMlV1beta1__GetConfigResponse' smart constructor.
data GoogleCloudMlV1beta1__GetConfigResponse = GoogleCloudMlV1beta1__GetConfigResponse'
    { _gcmvgcrServiceAccount        :: !(Maybe Text)
    , _gcmvgcrServiceAccountProject :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GoogleCloudMlV1beta1__GetConfigResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvgcrServiceAccount'
--
-- * 'gcmvgcrServiceAccountProject'
googleCloudMlV1beta1__GetConfigResponse
    :: GoogleCloudMlV1beta1__GetConfigResponse
googleCloudMlV1beta1__GetConfigResponse =
    GoogleCloudMlV1beta1__GetConfigResponse'
    { _gcmvgcrServiceAccount = Nothing
    , _gcmvgcrServiceAccountProject = Nothing
    }

-- | The service account Cloud ML uses to access resources in the project.
gcmvgcrServiceAccount :: Lens' GoogleCloudMlV1beta1__GetConfigResponse (Maybe Text)
gcmvgcrServiceAccount
  = lens _gcmvgcrServiceAccount
      (\ s a -> s{_gcmvgcrServiceAccount = a})

-- | The project number for \`service_account\`.
gcmvgcrServiceAccountProject :: Lens' GoogleCloudMlV1beta1__GetConfigResponse (Maybe Int64)
gcmvgcrServiceAccountProject
  = lens _gcmvgcrServiceAccountProject
      (\ s a -> s{_gcmvgcrServiceAccountProject = a})
      . mapping _Coerce

instance FromJSON
         GoogleCloudMlV1beta1__GetConfigResponse where
        parseJSON
          = withObject "GoogleCloudMlV1beta1GetConfigResponse"
              (\ o ->
                 GoogleCloudMlV1beta1__GetConfigResponse' <$>
                   (o .:? "serviceAccount") <*>
                     (o .:? "serviceAccountProject"))

instance ToJSON
         GoogleCloudMlV1beta1__GetConfigResponse where
        toJSON GoogleCloudMlV1beta1__GetConfigResponse'{..}
          = object
              (catMaybes
                 [("serviceAccount" .=) <$> _gcmvgcrServiceAccount,
                  ("serviceAccountProject" .=) <$>
                    _gcmvgcrServiceAccountProject])

-- | Represents a training or prediction job.
--
-- /See:/ 'googleCloudMlV1beta1__Job' smart constructor.
data GoogleCloudMlV1beta1__Job = GoogleCloudMlV1beta1__Job'
    { _gcmvjState            :: !(Maybe GoogleCloudMlV1beta1__JobState)
    , _gcmvjTrainingOutput   :: !(Maybe GoogleCloudMlV1beta1__TrainingOutput)
    , _gcmvjJobId            :: !(Maybe Text)
    , _gcmvjStartTime        :: !(Maybe DateTime')
    , _gcmvjPredictionInput  :: !(Maybe GoogleCloudMlV1beta1__PredictionInput)
    , _gcmvjEndTime          :: !(Maybe DateTime')
    , _gcmvjPredictionOutput :: !(Maybe GoogleCloudMlV1beta1__PredictionOutput)
    , _gcmvjErrorMessage     :: !(Maybe Text)
    , _gcmvjTrainingInput    :: !(Maybe GoogleCloudMlV1beta1__TrainingInput)
    , _gcmvjCreateTime       :: !(Maybe DateTime')
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GoogleCloudMlV1beta1__Job' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvjState'
--
-- * 'gcmvjTrainingOutput'
--
-- * 'gcmvjJobId'
--
-- * 'gcmvjStartTime'
--
-- * 'gcmvjPredictionInput'
--
-- * 'gcmvjEndTime'
--
-- * 'gcmvjPredictionOutput'
--
-- * 'gcmvjErrorMessage'
--
-- * 'gcmvjTrainingInput'
--
-- * 'gcmvjCreateTime'
googleCloudMlV1beta1__Job
    :: GoogleCloudMlV1beta1__Job
googleCloudMlV1beta1__Job =
    GoogleCloudMlV1beta1__Job'
    { _gcmvjState = Nothing
    , _gcmvjTrainingOutput = Nothing
    , _gcmvjJobId = Nothing
    , _gcmvjStartTime = Nothing
    , _gcmvjPredictionInput = Nothing
    , _gcmvjEndTime = Nothing
    , _gcmvjPredictionOutput = Nothing
    , _gcmvjErrorMessage = Nothing
    , _gcmvjTrainingInput = Nothing
    , _gcmvjCreateTime = Nothing
    }

-- | Output only. The detailed state of a job.
gcmvjState :: Lens' GoogleCloudMlV1beta1__Job (Maybe GoogleCloudMlV1beta1__JobState)
gcmvjState
  = lens _gcmvjState (\ s a -> s{_gcmvjState = a})

-- | The current training job result.
gcmvjTrainingOutput :: Lens' GoogleCloudMlV1beta1__Job (Maybe GoogleCloudMlV1beta1__TrainingOutput)
gcmvjTrainingOutput
  = lens _gcmvjTrainingOutput
      (\ s a -> s{_gcmvjTrainingOutput = a})

-- | Required. The user-specified id of the job.
gcmvjJobId :: Lens' GoogleCloudMlV1beta1__Job (Maybe Text)
gcmvjJobId
  = lens _gcmvjJobId (\ s a -> s{_gcmvjJobId = a})

-- | Output only. When the job processing was started.
gcmvjStartTime :: Lens' GoogleCloudMlV1beta1__Job (Maybe UTCTime)
gcmvjStartTime
  = lens _gcmvjStartTime
      (\ s a -> s{_gcmvjStartTime = a})
      . mapping _DateTime

-- | Input parameters to create a prediction job.
gcmvjPredictionInput :: Lens' GoogleCloudMlV1beta1__Job (Maybe GoogleCloudMlV1beta1__PredictionInput)
gcmvjPredictionInput
  = lens _gcmvjPredictionInput
      (\ s a -> s{_gcmvjPredictionInput = a})

-- | Output only. When the job processing was completed.
gcmvjEndTime :: Lens' GoogleCloudMlV1beta1__Job (Maybe UTCTime)
gcmvjEndTime
  = lens _gcmvjEndTime (\ s a -> s{_gcmvjEndTime = a})
      . mapping _DateTime

-- | The current prediction job result.
gcmvjPredictionOutput :: Lens' GoogleCloudMlV1beta1__Job (Maybe GoogleCloudMlV1beta1__PredictionOutput)
gcmvjPredictionOutput
  = lens _gcmvjPredictionOutput
      (\ s a -> s{_gcmvjPredictionOutput = a})

-- | Output only. The details of a failure or a cancellation.
gcmvjErrorMessage :: Lens' GoogleCloudMlV1beta1__Job (Maybe Text)
gcmvjErrorMessage
  = lens _gcmvjErrorMessage
      (\ s a -> s{_gcmvjErrorMessage = a})

-- | Input parameters to create a training job.
gcmvjTrainingInput :: Lens' GoogleCloudMlV1beta1__Job (Maybe GoogleCloudMlV1beta1__TrainingInput)
gcmvjTrainingInput
  = lens _gcmvjTrainingInput
      (\ s a -> s{_gcmvjTrainingInput = a})

-- | Output only. When the job was created.
gcmvjCreateTime :: Lens' GoogleCloudMlV1beta1__Job (Maybe UTCTime)
gcmvjCreateTime
  = lens _gcmvjCreateTime
      (\ s a -> s{_gcmvjCreateTime = a})
      . mapping _DateTime

instance FromJSON GoogleCloudMlV1beta1__Job where
        parseJSON
          = withObject "GoogleCloudMlV1beta1Job"
              (\ o ->
                 GoogleCloudMlV1beta1__Job' <$>
                   (o .:? "state") <*> (o .:? "trainingOutput") <*>
                     (o .:? "jobId")
                     <*> (o .:? "startTime")
                     <*> (o .:? "predictionInput")
                     <*> (o .:? "endTime")
                     <*> (o .:? "predictionOutput")
                     <*> (o .:? "errorMessage")
                     <*> (o .:? "trainingInput")
                     <*> (o .:? "createTime"))

instance ToJSON GoogleCloudMlV1beta1__Job where
        toJSON GoogleCloudMlV1beta1__Job'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _gcmvjState,
                  ("trainingOutput" .=) <$> _gcmvjTrainingOutput,
                  ("jobId" .=) <$> _gcmvjJobId,
                  ("startTime" .=) <$> _gcmvjStartTime,
                  ("predictionInput" .=) <$> _gcmvjPredictionInput,
                  ("endTime" .=) <$> _gcmvjEndTime,
                  ("predictionOutput" .=) <$> _gcmvjPredictionOutput,
                  ("errorMessage" .=) <$> _gcmvjErrorMessage,
                  ("trainingInput" .=) <$> _gcmvjTrainingInput,
                  ("createTime" .=) <$> _gcmvjCreateTime])

-- | Represents results of a training job.
--
-- /See:/ 'googleCloudMlV1beta1__TrainingOutput' smart constructor.
data GoogleCloudMlV1beta1__TrainingOutput = GoogleCloudMlV1beta1__TrainingOutput'
    { _gcmvtoCompletedTrialCount :: !(Maybe (Textual Int64))
    , _gcmvtoTrials              :: !(Maybe [GoogleCloudMlV1beta1__HyperparameterOutput])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GoogleCloudMlV1beta1__TrainingOutput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvtoCompletedTrialCount'
--
-- * 'gcmvtoTrials'
googleCloudMlV1beta1__TrainingOutput
    :: GoogleCloudMlV1beta1__TrainingOutput
googleCloudMlV1beta1__TrainingOutput =
    GoogleCloudMlV1beta1__TrainingOutput'
    { _gcmvtoCompletedTrialCount = Nothing
    , _gcmvtoTrials = Nothing
    }

-- | The number of hyperparameter tuning trials that completed successfully.
gcmvtoCompletedTrialCount :: Lens' GoogleCloudMlV1beta1__TrainingOutput (Maybe Int64)
gcmvtoCompletedTrialCount
  = lens _gcmvtoCompletedTrialCount
      (\ s a -> s{_gcmvtoCompletedTrialCount = a})
      . mapping _Coerce

-- | Results for individual Hyperparameter trials.
gcmvtoTrials :: Lens' GoogleCloudMlV1beta1__TrainingOutput [GoogleCloudMlV1beta1__HyperparameterOutput]
gcmvtoTrials
  = lens _gcmvtoTrials (\ s a -> s{_gcmvtoTrials = a})
      . _Default
      . _Coerce

instance FromJSON
         GoogleCloudMlV1beta1__TrainingOutput where
        parseJSON
          = withObject "GoogleCloudMlV1beta1TrainingOutput"
              (\ o ->
                 GoogleCloudMlV1beta1__TrainingOutput' <$>
                   (o .:? "completedTrialCount") <*>
                     (o .:? "trials" .!= mempty))

instance ToJSON GoogleCloudMlV1beta1__TrainingOutput
         where
        toJSON GoogleCloudMlV1beta1__TrainingOutput'{..}
          = object
              (catMaybes
                 [("completedTrialCount" .=) <$>
                    _gcmvtoCompletedTrialCount,
                  ("trials" .=) <$> _gcmvtoTrials])

-- | Represents a machine learning solution. A model can have multiple
-- versions, each of which is a deployed, trained model ready to receive
-- prediction requests. The model itself is just a container.
--
-- /See:/ 'googleCloudMlV1beta1__Model' smart constructor.
data GoogleCloudMlV1beta1__Model = GoogleCloudMlV1beta1__Model'
    { _gcmvmDefaultVersion :: !(Maybe GoogleCloudMlV1beta1__Version)
    , _gcmvmName           :: !(Maybe Text)
    , _gcmvmDescription    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GoogleCloudMlV1beta1__Model' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvmDefaultVersion'
--
-- * 'gcmvmName'
--
-- * 'gcmvmDescription'
googleCloudMlV1beta1__Model
    :: GoogleCloudMlV1beta1__Model
googleCloudMlV1beta1__Model =
    GoogleCloudMlV1beta1__Model'
    { _gcmvmDefaultVersion = Nothing
    , _gcmvmName = Nothing
    , _gcmvmDescription = Nothing
    }

-- | Output only. The default version of the model. This version will be used
-- to handle prediction requests that do not specify a version. You can
-- change the default version by calling
-- [projects.methods.versions.setDefault](\/ml\/reference\/rest\/v1beta1\/projects.models.versions\/setDefault).
gcmvmDefaultVersion :: Lens' GoogleCloudMlV1beta1__Model (Maybe GoogleCloudMlV1beta1__Version)
gcmvmDefaultVersion
  = lens _gcmvmDefaultVersion
      (\ s a -> s{_gcmvmDefaultVersion = a})

-- | Required. The name specified for the model when it was created. The
-- model name must be unique within the project it is created in.
gcmvmName :: Lens' GoogleCloudMlV1beta1__Model (Maybe Text)
gcmvmName
  = lens _gcmvmName (\ s a -> s{_gcmvmName = a})

-- | Optional. The description specified for the model when it was created.
gcmvmDescription :: Lens' GoogleCloudMlV1beta1__Model (Maybe Text)
gcmvmDescription
  = lens _gcmvmDescription
      (\ s a -> s{_gcmvmDescription = a})

instance FromJSON GoogleCloudMlV1beta1__Model where
        parseJSON
          = withObject "GoogleCloudMlV1beta1Model"
              (\ o ->
                 GoogleCloudMlV1beta1__Model' <$>
                   (o .:? "defaultVersion") <*> (o .:? "name") <*>
                     (o .:? "description"))

instance ToJSON GoogleCloudMlV1beta1__Model where
        toJSON GoogleCloudMlV1beta1__Model'{..}
          = object
              (catMaybes
                 [("defaultVersion" .=) <$> _gcmvmDefaultVersion,
                  ("name" .=) <$> _gcmvmName,
                  ("description" .=) <$> _gcmvmDescription])

-- | The normal response of the operation in case of success. If the original
-- method returns no data on success, such as \`Delete\`, the response is
-- \`google.protobuf.Empty\`. If the original method is standard
-- \`Get\`\/\`Create\`\/\`Update\`, the response should be the resource.
-- For other methods, the response should have the type \`XxxResponse\`,
-- where \`Xxx\` is the original method name. For example, if the original
-- method name is \`TakeSnapshot()\`, the inferred response type is
-- \`TakeSnapshotResponse\`.
--
-- /See:/ 'googleLongrunning__OperationResponse' smart constructor.
newtype GoogleLongrunning__OperationResponse = GoogleLongrunning__OperationResponse'
    { _glorAddtional :: HashMap Text JSONValue
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GoogleLongrunning__OperationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glorAddtional'
googleLongrunning__OperationResponse
    :: HashMap Text JSONValue -- ^ 'glorAddtional'
    -> GoogleLongrunning__OperationResponse
googleLongrunning__OperationResponse pGlorAddtional_ =
    GoogleLongrunning__OperationResponse'
    { _glorAddtional = _Coerce # pGlorAddtional_
    }

-- | Properties of the object. Contains field \'type with type URL.
glorAddtional :: Lens' GoogleLongrunning__OperationResponse (HashMap Text JSONValue)
glorAddtional
  = lens _glorAddtional
      (\ s a -> s{_glorAddtional = a})
      . _Coerce

instance FromJSON
         GoogleLongrunning__OperationResponse where
        parseJSON
          = withObject "GoogleLongrunningOperationResponse"
              (\ o ->
                 GoogleLongrunning__OperationResponse' <$>
                   (parseJSONObject o))

instance ToJSON GoogleLongrunning__OperationResponse
         where
        toJSON = toJSON . _glorAddtional

-- | Represents the metadata of the long-running operation.
--
-- /See:/ 'googleCloudMlV1beta1__OperationMetadata' smart constructor.
data GoogleCloudMlV1beta1__OperationMetadata = GoogleCloudMlV1beta1__OperationMetadata'
    { _gcmvomStartTime               :: !(Maybe DateTime')
    , _gcmvomModelName               :: !(Maybe Text)
    , _gcmvomVersion                 :: !(Maybe GoogleCloudMlV1beta1__Version)
    , _gcmvomEndTime                 :: !(Maybe DateTime')
    , _gcmvomIsCancellationRequested :: !(Maybe Bool)
    , _gcmvomOperationType           :: !(Maybe GoogleCloudMlV1beta1__OperationMetadataOperationType)
    , _gcmvomCreateTime              :: !(Maybe DateTime')
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GoogleCloudMlV1beta1__OperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvomStartTime'
--
-- * 'gcmvomModelName'
--
-- * 'gcmvomVersion'
--
-- * 'gcmvomEndTime'
--
-- * 'gcmvomIsCancellationRequested'
--
-- * 'gcmvomOperationType'
--
-- * 'gcmvomCreateTime'
googleCloudMlV1beta1__OperationMetadata
    :: GoogleCloudMlV1beta1__OperationMetadata
googleCloudMlV1beta1__OperationMetadata =
    GoogleCloudMlV1beta1__OperationMetadata'
    { _gcmvomStartTime = Nothing
    , _gcmvomModelName = Nothing
    , _gcmvomVersion = Nothing
    , _gcmvomEndTime = Nothing
    , _gcmvomIsCancellationRequested = Nothing
    , _gcmvomOperationType = Nothing
    , _gcmvomCreateTime = Nothing
    }

-- | The time operation processing started.
gcmvomStartTime :: Lens' GoogleCloudMlV1beta1__OperationMetadata (Maybe UTCTime)
gcmvomStartTime
  = lens _gcmvomStartTime
      (\ s a -> s{_gcmvomStartTime = a})
      . mapping _DateTime

-- | Contains the name of the model associated with the operation.
gcmvomModelName :: Lens' GoogleCloudMlV1beta1__OperationMetadata (Maybe Text)
gcmvomModelName
  = lens _gcmvomModelName
      (\ s a -> s{_gcmvomModelName = a})

-- | Contains the version associated with the operation.
gcmvomVersion :: Lens' GoogleCloudMlV1beta1__OperationMetadata (Maybe GoogleCloudMlV1beta1__Version)
gcmvomVersion
  = lens _gcmvomVersion
      (\ s a -> s{_gcmvomVersion = a})

-- | The time operation processing completed.
gcmvomEndTime :: Lens' GoogleCloudMlV1beta1__OperationMetadata (Maybe UTCTime)
gcmvomEndTime
  = lens _gcmvomEndTime
      (\ s a -> s{_gcmvomEndTime = a})
      . mapping _DateTime

-- | Indicates whether a request to cancel this operation has been made.
gcmvomIsCancellationRequested :: Lens' GoogleCloudMlV1beta1__OperationMetadata (Maybe Bool)
gcmvomIsCancellationRequested
  = lens _gcmvomIsCancellationRequested
      (\ s a -> s{_gcmvomIsCancellationRequested = a})

-- | The operation type.
gcmvomOperationType :: Lens' GoogleCloudMlV1beta1__OperationMetadata (Maybe GoogleCloudMlV1beta1__OperationMetadataOperationType)
gcmvomOperationType
  = lens _gcmvomOperationType
      (\ s a -> s{_gcmvomOperationType = a})

-- | The time the operation was submitted.
gcmvomCreateTime :: Lens' GoogleCloudMlV1beta1__OperationMetadata (Maybe UTCTime)
gcmvomCreateTime
  = lens _gcmvomCreateTime
      (\ s a -> s{_gcmvomCreateTime = a})
      . mapping _DateTime

instance FromJSON
         GoogleCloudMlV1beta1__OperationMetadata where
        parseJSON
          = withObject "GoogleCloudMlV1beta1OperationMetadata"
              (\ o ->
                 GoogleCloudMlV1beta1__OperationMetadata' <$>
                   (o .:? "startTime") <*> (o .:? "modelName") <*>
                     (o .:? "version")
                     <*> (o .:? "endTime")
                     <*> (o .:? "isCancellationRequested")
                     <*> (o .:? "operationType")
                     <*> (o .:? "createTime"))

instance ToJSON
         GoogleCloudMlV1beta1__OperationMetadata where
        toJSON GoogleCloudMlV1beta1__OperationMetadata'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _gcmvomStartTime,
                  ("modelName" .=) <$> _gcmvomModelName,
                  ("version" .=) <$> _gcmvomVersion,
                  ("endTime" .=) <$> _gcmvomEndTime,
                  ("isCancellationRequested" .=) <$>
                    _gcmvomIsCancellationRequested,
                  ("operationType" .=) <$> _gcmvomOperationType,
                  ("createTime" .=) <$> _gcmvomCreateTime])

-- | Represents the result of a single hyperparameter tuning trial from a
-- training job. The TrainingOutput object that is returned on successful
-- completion of a training job with hyperparameter tuning includes a list
-- of HyperparameterOutput objects, one for each successful trial.
--
-- /See:/ 'googleCloudMlV1beta1__HyperparameterOutput' smart constructor.
data GoogleCloudMlV1beta1__HyperparameterOutput = GoogleCloudMlV1beta1__HyperparameterOutput'
    { _gcmvhoAllMetrics      :: !(Maybe [GoogleCloudMlV1beta1_HyperparameterOutput_HyperparameterMetric])
    , _gcmvhoHyperparameters :: !(Maybe GoogleCloudMlV1beta1__HyperparameterOutputHyperparameters)
    , _gcmvhoTrialId         :: !(Maybe Text)
    , _gcmvhoFinalMetric     :: !(Maybe GoogleCloudMlV1beta1_HyperparameterOutput_HyperparameterMetric)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GoogleCloudMlV1beta1__HyperparameterOutput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvhoAllMetrics'
--
-- * 'gcmvhoHyperparameters'
--
-- * 'gcmvhoTrialId'
--
-- * 'gcmvhoFinalMetric'
googleCloudMlV1beta1__HyperparameterOutput
    :: GoogleCloudMlV1beta1__HyperparameterOutput
googleCloudMlV1beta1__HyperparameterOutput =
    GoogleCloudMlV1beta1__HyperparameterOutput'
    { _gcmvhoAllMetrics = Nothing
    , _gcmvhoHyperparameters = Nothing
    , _gcmvhoTrialId = Nothing
    , _gcmvhoFinalMetric = Nothing
    }

-- | All recorded object metrics for this trial.
gcmvhoAllMetrics :: Lens' GoogleCloudMlV1beta1__HyperparameterOutput [GoogleCloudMlV1beta1_HyperparameterOutput_HyperparameterMetric]
gcmvhoAllMetrics
  = lens _gcmvhoAllMetrics
      (\ s a -> s{_gcmvhoAllMetrics = a})
      . _Default
      . _Coerce

-- | The hyperparameters given to this trial.
gcmvhoHyperparameters :: Lens' GoogleCloudMlV1beta1__HyperparameterOutput (Maybe GoogleCloudMlV1beta1__HyperparameterOutputHyperparameters)
gcmvhoHyperparameters
  = lens _gcmvhoHyperparameters
      (\ s a -> s{_gcmvhoHyperparameters = a})

-- | The trial id for these results.
gcmvhoTrialId :: Lens' GoogleCloudMlV1beta1__HyperparameterOutput (Maybe Text)
gcmvhoTrialId
  = lens _gcmvhoTrialId
      (\ s a -> s{_gcmvhoTrialId = a})

-- | The final objective metric seen for this trial.
gcmvhoFinalMetric :: Lens' GoogleCloudMlV1beta1__HyperparameterOutput (Maybe GoogleCloudMlV1beta1_HyperparameterOutput_HyperparameterMetric)
gcmvhoFinalMetric
  = lens _gcmvhoFinalMetric
      (\ s a -> s{_gcmvhoFinalMetric = a})

instance FromJSON
         GoogleCloudMlV1beta1__HyperparameterOutput where
        parseJSON
          = withObject
              "GoogleCloudMlV1beta1HyperparameterOutput"
              (\ o ->
                 GoogleCloudMlV1beta1__HyperparameterOutput' <$>
                   (o .:? "allMetrics" .!= mempty) <*>
                     (o .:? "hyperparameters")
                     <*> (o .:? "trialId")
                     <*> (o .:? "finalMetric"))

instance ToJSON
         GoogleCloudMlV1beta1__HyperparameterOutput where
        toJSON
          GoogleCloudMlV1beta1__HyperparameterOutput'{..}
          = object
              (catMaybes
                 [("allMetrics" .=) <$> _gcmvhoAllMetrics,
                  ("hyperparameters" .=) <$> _gcmvhoHyperparameters,
                  ("trialId" .=) <$> _gcmvhoTrialId,
                  ("finalMetric" .=) <$> _gcmvhoFinalMetric])

-- | Response message for the ListVersions method.
--
-- /See:/ 'googleCloudMlV1beta1__ListVersionsResponse' smart constructor.
data GoogleCloudMlV1beta1__ListVersionsResponse = GoogleCloudMlV1beta1__ListVersionsResponse'
    { _gcmvlvrNextPageToken :: !(Maybe Text)
    , _gcmvlvrVersions      :: !(Maybe [GoogleCloudMlV1beta1__Version])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GoogleCloudMlV1beta1__ListVersionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvlvrNextPageToken'
--
-- * 'gcmvlvrVersions'
googleCloudMlV1beta1__ListVersionsResponse
    :: GoogleCloudMlV1beta1__ListVersionsResponse
googleCloudMlV1beta1__ListVersionsResponse =
    GoogleCloudMlV1beta1__ListVersionsResponse'
    { _gcmvlvrNextPageToken = Nothing
    , _gcmvlvrVersions = Nothing
    }

-- | Optional. Pass this token as the \`page_token\` field of the request for
-- a subsequent call.
gcmvlvrNextPageToken :: Lens' GoogleCloudMlV1beta1__ListVersionsResponse (Maybe Text)
gcmvlvrNextPageToken
  = lens _gcmvlvrNextPageToken
      (\ s a -> s{_gcmvlvrNextPageToken = a})

-- | The list of versions.
gcmvlvrVersions :: Lens' GoogleCloudMlV1beta1__ListVersionsResponse [GoogleCloudMlV1beta1__Version]
gcmvlvrVersions
  = lens _gcmvlvrVersions
      (\ s a -> s{_gcmvlvrVersions = a})
      . _Default
      . _Coerce

instance FromJSON
         GoogleCloudMlV1beta1__ListVersionsResponse where
        parseJSON
          = withObject
              "GoogleCloudMlV1beta1ListVersionsResponse"
              (\ o ->
                 GoogleCloudMlV1beta1__ListVersionsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "versions" .!= mempty))

instance ToJSON
         GoogleCloudMlV1beta1__ListVersionsResponse where
        toJSON
          GoogleCloudMlV1beta1__ListVersionsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _gcmvlvrNextPageToken,
                  ("versions" .=) <$> _gcmvlvrVersions])

-- | The response message for Operations.ListOperations.
--
-- /See:/ 'googleLongrunning__ListOperationsResponse' smart constructor.
data GoogleLongrunning__ListOperationsResponse = GoogleLongrunning__ListOperationsResponse'
    { _gllorNextPageToken :: !(Maybe Text)
    , _gllorOperations    :: !(Maybe [GoogleLongrunning__Operation])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GoogleLongrunning__ListOperationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gllorNextPageToken'
--
-- * 'gllorOperations'
googleLongrunning__ListOperationsResponse
    :: GoogleLongrunning__ListOperationsResponse
googleLongrunning__ListOperationsResponse =
    GoogleLongrunning__ListOperationsResponse'
    { _gllorNextPageToken = Nothing
    , _gllorOperations = Nothing
    }

-- | The standard List next-page token.
gllorNextPageToken :: Lens' GoogleLongrunning__ListOperationsResponse (Maybe Text)
gllorNextPageToken
  = lens _gllorNextPageToken
      (\ s a -> s{_gllorNextPageToken = a})

-- | A list of operations that matches the specified filter in the request.
gllorOperations :: Lens' GoogleLongrunning__ListOperationsResponse [GoogleLongrunning__Operation]
gllorOperations
  = lens _gllorOperations
      (\ s a -> s{_gllorOperations = a})
      . _Default
      . _Coerce

instance FromJSON
         GoogleLongrunning__ListOperationsResponse where
        parseJSON
          = withObject
              "GoogleLongrunningListOperationsResponse"
              (\ o ->
                 GoogleLongrunning__ListOperationsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "operations" .!= mempty))

instance ToJSON
         GoogleLongrunning__ListOperationsResponse where
        toJSON GoogleLongrunning__ListOperationsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _gllorNextPageToken,
                  ("operations" .=) <$> _gllorOperations])

-- | Represents input parameters for a prediction job.
--
-- /See:/ 'googleCloudMlV1beta1__PredictionInput' smart constructor.
data GoogleCloudMlV1beta1__PredictionInput = GoogleCloudMlV1beta1__PredictionInput'
    { _gcmvpiVersionName    :: !(Maybe Text)
    , _gcmvpiModelName      :: !(Maybe Text)
    , _gcmvpiDataFormat     :: !(Maybe GoogleCloudMlV1beta1__PredictionInputDataFormat)
    , _gcmvpiMaxWorkerCount :: !(Maybe (Textual Int64))
    , _gcmvpiOutputPath     :: !(Maybe Text)
    , _gcmvpiRegion         :: !(Maybe Text)
    , _gcmvpiInputPaths     :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GoogleCloudMlV1beta1__PredictionInput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvpiVersionName'
--
-- * 'gcmvpiModelName'
--
-- * 'gcmvpiDataFormat'
--
-- * 'gcmvpiMaxWorkerCount'
--
-- * 'gcmvpiOutputPath'
--
-- * 'gcmvpiRegion'
--
-- * 'gcmvpiInputPaths'
googleCloudMlV1beta1__PredictionInput
    :: GoogleCloudMlV1beta1__PredictionInput
googleCloudMlV1beta1__PredictionInput =
    GoogleCloudMlV1beta1__PredictionInput'
    { _gcmvpiVersionName = Nothing
    , _gcmvpiModelName = Nothing
    , _gcmvpiDataFormat = Nothing
    , _gcmvpiMaxWorkerCount = Nothing
    , _gcmvpiOutputPath = Nothing
    , _gcmvpiRegion = Nothing
    , _gcmvpiInputPaths = Nothing
    }

-- | Use this field if you want to specify a version of the model to use. The
-- string is formatted the same way as \`model_version\`, with the addition
-- of the version information:
-- \`\"projects\/[YOUR_PROJECT]\/models\/YOUR_MODEL\/versions\/[YOUR_VERSION]\"\`
gcmvpiVersionName :: Lens' GoogleCloudMlV1beta1__PredictionInput (Maybe Text)
gcmvpiVersionName
  = lens _gcmvpiVersionName
      (\ s a -> s{_gcmvpiVersionName = a})

-- | Use this field if you want to use the default version for the specified
-- model. The string must use the following format:
-- \`\"projects\/[YOUR_PROJECT]\/models\/[YOUR_MODEL]\"\`
gcmvpiModelName :: Lens' GoogleCloudMlV1beta1__PredictionInput (Maybe Text)
gcmvpiModelName
  = lens _gcmvpiModelName
      (\ s a -> s{_gcmvpiModelName = a})

-- | Required. The format of the input data files.
gcmvpiDataFormat :: Lens' GoogleCloudMlV1beta1__PredictionInput (Maybe GoogleCloudMlV1beta1__PredictionInputDataFormat)
gcmvpiDataFormat
  = lens _gcmvpiDataFormat
      (\ s a -> s{_gcmvpiDataFormat = a})

-- | Optional. The maximum number of workers to be used for parallel
-- processing. Defaults to 10 if not specified.
gcmvpiMaxWorkerCount :: Lens' GoogleCloudMlV1beta1__PredictionInput (Maybe Int64)
gcmvpiMaxWorkerCount
  = lens _gcmvpiMaxWorkerCount
      (\ s a -> s{_gcmvpiMaxWorkerCount = a})
      . mapping _Coerce

-- | Required. The output Google Cloud Storage location.
gcmvpiOutputPath :: Lens' GoogleCloudMlV1beta1__PredictionInput (Maybe Text)
gcmvpiOutputPath
  = lens _gcmvpiOutputPath
      (\ s a -> s{_gcmvpiOutputPath = a})

-- | Required. The Google Compute Engine region to run the prediction job in.
gcmvpiRegion :: Lens' GoogleCloudMlV1beta1__PredictionInput (Maybe Text)
gcmvpiRegion
  = lens _gcmvpiRegion (\ s a -> s{_gcmvpiRegion = a})

-- | Required. The Google Cloud Storage location of the input data files. May
-- contain wildcards.
gcmvpiInputPaths :: Lens' GoogleCloudMlV1beta1__PredictionInput [Text]
gcmvpiInputPaths
  = lens _gcmvpiInputPaths
      (\ s a -> s{_gcmvpiInputPaths = a})
      . _Default
      . _Coerce

instance FromJSON
         GoogleCloudMlV1beta1__PredictionInput where
        parseJSON
          = withObject "GoogleCloudMlV1beta1PredictionInput"
              (\ o ->
                 GoogleCloudMlV1beta1__PredictionInput' <$>
                   (o .:? "versionName") <*> (o .:? "modelName") <*>
                     (o .:? "dataFormat")
                     <*> (o .:? "maxWorkerCount")
                     <*> (o .:? "outputPath")
                     <*> (o .:? "region")
                     <*> (o .:? "inputPaths" .!= mempty))

instance ToJSON GoogleCloudMlV1beta1__PredictionInput
         where
        toJSON GoogleCloudMlV1beta1__PredictionInput'{..}
          = object
              (catMaybes
                 [("versionName" .=) <$> _gcmvpiVersionName,
                  ("modelName" .=) <$> _gcmvpiModelName,
                  ("dataFormat" .=) <$> _gcmvpiDataFormat,
                  ("maxWorkerCount" .=) <$> _gcmvpiMaxWorkerCount,
                  ("outputPath" .=) <$> _gcmvpiOutputPath,
                  ("region" .=) <$> _gcmvpiRegion,
                  ("inputPaths" .=) <$> _gcmvpiInputPaths])

-- | This resource represents a long-running operation that is the result of
-- a network API call.
--
-- /See:/ 'googleLongrunning__Operation' smart constructor.
data GoogleLongrunning__Operation = GoogleLongrunning__Operation'
    { _gloDone     :: !(Maybe Bool)
    , _gloError    :: !(Maybe GoogleRpc__Status)
    , _gloResponse :: !(Maybe GoogleLongrunning__OperationResponse)
    , _gloName     :: !(Maybe Text)
    , _gloMetadata :: !(Maybe GoogleLongrunning__OperationMetadata)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GoogleLongrunning__Operation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gloDone'
--
-- * 'gloError'
--
-- * 'gloResponse'
--
-- * 'gloName'
--
-- * 'gloMetadata'
googleLongrunning__Operation
    :: GoogleLongrunning__Operation
googleLongrunning__Operation =
    GoogleLongrunning__Operation'
    { _gloDone = Nothing
    , _gloError = Nothing
    , _gloResponse = Nothing
    , _gloName = Nothing
    , _gloMetadata = Nothing
    }

-- | If the value is \`false\`, it means the operation is still in progress.
-- If true, the operation is completed, and either \`error\` or
-- \`response\` is available.
gloDone :: Lens' GoogleLongrunning__Operation (Maybe Bool)
gloDone = lens _gloDone (\ s a -> s{_gloDone = a})

-- | The error result of the operation in case of failure or cancellation.
gloError :: Lens' GoogleLongrunning__Operation (Maybe GoogleRpc__Status)
gloError = lens _gloError (\ s a -> s{_gloError = a})

-- | The normal response of the operation in case of success. If the original
-- method returns no data on success, such as \`Delete\`, the response is
-- \`google.protobuf.Empty\`. If the original method is standard
-- \`Get\`\/\`Create\`\/\`Update\`, the response should be the resource.
-- For other methods, the response should have the type \`XxxResponse\`,
-- where \`Xxx\` is the original method name. For example, if the original
-- method name is \`TakeSnapshot()\`, the inferred response type is
-- \`TakeSnapshotResponse\`.
gloResponse :: Lens' GoogleLongrunning__Operation (Maybe GoogleLongrunning__OperationResponse)
gloResponse
  = lens _gloResponse (\ s a -> s{_gloResponse = a})

-- | The server-assigned name, which is only unique within the same service
-- that originally returns it. If you use the default HTTP mapping, the
-- \`name\` should have the format of \`operations\/some\/unique\/name\`.
gloName :: Lens' GoogleLongrunning__Operation (Maybe Text)
gloName = lens _gloName (\ s a -> s{_gloName = a})

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
gloMetadata :: Lens' GoogleLongrunning__Operation (Maybe GoogleLongrunning__OperationMetadata)
gloMetadata
  = lens _gloMetadata (\ s a -> s{_gloMetadata = a})

instance FromJSON GoogleLongrunning__Operation where
        parseJSON
          = withObject "GoogleLongrunningOperation"
              (\ o ->
                 GoogleLongrunning__Operation' <$>
                   (o .:? "done") <*> (o .:? "error") <*>
                     (o .:? "response")
                     <*> (o .:? "name")
                     <*> (o .:? "metadata"))

instance ToJSON GoogleLongrunning__Operation where
        toJSON GoogleLongrunning__Operation'{..}
          = object
              (catMaybes
                 [("done" .=) <$> _gloDone,
                  ("error" .=) <$> _gloError,
                  ("response" .=) <$> _gloResponse,
                  ("name" .=) <$> _gloName,
                  ("metadata" .=) <$> _gloMetadata])

-- | The hyperparameters given to this trial.
--
-- /See:/ 'googleCloudMlV1beta1__HyperparameterOutputHyperparameters' smart constructor.
newtype GoogleCloudMlV1beta1__HyperparameterOutputHyperparameters = GoogleCloudMlV1beta1__HyperparameterOutputHyperparameters'
    { _gcmvhohAddtional :: HashMap Text Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GoogleCloudMlV1beta1__HyperparameterOutputHyperparameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvhohAddtional'
googleCloudMlV1beta1__HyperparameterOutputHyperparameters
    :: HashMap Text Text -- ^ 'gcmvhohAddtional'
    -> GoogleCloudMlV1beta1__HyperparameterOutputHyperparameters
googleCloudMlV1beta1__HyperparameterOutputHyperparameters pGcmvhohAddtional_ =
    GoogleCloudMlV1beta1__HyperparameterOutputHyperparameters'
    { _gcmvhohAddtional = _Coerce # pGcmvhohAddtional_
    }

gcmvhohAddtional :: Lens' GoogleCloudMlV1beta1__HyperparameterOutputHyperparameters (HashMap Text Text)
gcmvhohAddtional
  = lens _gcmvhohAddtional
      (\ s a -> s{_gcmvhohAddtional = a})
      . _Coerce

instance FromJSON
         GoogleCloudMlV1beta1__HyperparameterOutputHyperparameters
         where
        parseJSON
          = withObject
              "GoogleCloudMlV1beta1HyperparameterOutputHyperparameters"
              (\ o ->
                 GoogleCloudMlV1beta1__HyperparameterOutputHyperparameters'
                   <$> (parseJSONObject o))

instance ToJSON
         GoogleCloudMlV1beta1__HyperparameterOutputHyperparameters
         where
        toJSON = toJSON . _gcmvhohAddtional

-- | The \`Status\` type defines a logical error model that is suitable for
-- different programming environments, including REST APIs and RPC APIs. It
-- is used by [gRPC](https:\/\/github.com\/grpc). The error model is
-- designed to be: - Simple to use and understand for most users - Flexible
-- enough to meet unexpected needs # Overview The \`Status\` message
-- contains three pieces of data: error code, error message, and error
-- details. The error code should be an enum value of google.rpc.Code, but
-- it may accept additional error codes if needed. The error message should
-- be a developer-facing English message that helps developers *understand*
-- and *resolve* the error. If a localized user-facing error message is
-- needed, put the localized message in the error details or localize it in
-- the client. The optional error details may contain arbitrary information
-- about the error. There is a predefined set of error detail types in the
-- package \`google.rpc\` which can be used for common error conditions. #
-- Language mapping The \`Status\` message is the logical representation of
-- the error model, but it is not necessarily the actual wire format. When
-- the \`Status\` message is exposed in different client libraries and
-- different wire protocols, it can be mapped differently. For example, it
-- will likely be mapped to some exceptions in Java, but more likely mapped
-- to some error codes in C. # Other uses The error model and the
-- \`Status\` message can be used in a variety of environments, either with
-- or without APIs, to provide a consistent developer experience across
-- different environments. Example uses of this error model include: -
-- Partial errors. If a service needs to return partial errors to the
-- client, it may embed the \`Status\` in the normal response to indicate
-- the partial errors. - Workflow errors. A typical workflow has multiple
-- steps. Each step may have a \`Status\` message for error reporting
-- purpose. - Batch operations. If a client uses batch request and batch
-- response, the \`Status\` message should be used directly inside batch
-- response, one for each error sub-response. - Asynchronous operations. If
-- an API call embeds asynchronous operation results in its response, the
-- status of those operations should be represented directly using the
-- \`Status\` message. - Logging. If some API errors are stored in logs,
-- the message \`Status\` could be used directly after any stripping needed
-- for security\/privacy reasons.
--
-- /See:/ 'googleRpc__Status' smart constructor.
data GoogleRpc__Status = GoogleRpc__Status'
    { _grsDetails :: !(Maybe [GoogleRpc__StatusDetailsItem])
    , _grsCode    :: !(Maybe (Textual Int32))
    , _grsMessage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GoogleRpc__Status' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grsDetails'
--
-- * 'grsCode'
--
-- * 'grsMessage'
googleRpc__Status
    :: GoogleRpc__Status
googleRpc__Status =
    GoogleRpc__Status'
    { _grsDetails = Nothing
    , _grsCode = Nothing
    , _grsMessage = Nothing
    }

-- | A list of messages that carry the error details. There will be a common
-- set of message types for APIs to use.
grsDetails :: Lens' GoogleRpc__Status [GoogleRpc__StatusDetailsItem]
grsDetails
  = lens _grsDetails (\ s a -> s{_grsDetails = a}) .
      _Default
      . _Coerce

-- | The status code, which should be an enum value of google.rpc.Code.
grsCode :: Lens' GoogleRpc__Status (Maybe Int32)
grsCode
  = lens _grsCode (\ s a -> s{_grsCode = a}) .
      mapping _Coerce

-- | A developer-facing error message, which should be in English. Any
-- user-facing error message should be localized and sent in the
-- google.rpc.Status.details field, or localized by the client.
grsMessage :: Lens' GoogleRpc__Status (Maybe Text)
grsMessage
  = lens _grsMessage (\ s a -> s{_grsMessage = a})

instance FromJSON GoogleRpc__Status where
        parseJSON
          = withObject "GoogleRpcStatus"
              (\ o ->
                 GoogleRpc__Status' <$>
                   (o .:? "details" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON GoogleRpc__Status where
        toJSON GoogleRpc__Status'{..}
          = object
              (catMaybes
                 [("details" .=) <$> _grsDetails,
                  ("code" .=) <$> _grsCode,
                  ("message" .=) <$> _grsMessage])

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
--
-- /See:/ 'googleLongrunning__OperationMetadata' smart constructor.
newtype GoogleLongrunning__OperationMetadata = GoogleLongrunning__OperationMetadata'
    { _glomAddtional :: HashMap Text JSONValue
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GoogleLongrunning__OperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glomAddtional'
googleLongrunning__OperationMetadata
    :: HashMap Text JSONValue -- ^ 'glomAddtional'
    -> GoogleLongrunning__OperationMetadata
googleLongrunning__OperationMetadata pGlomAddtional_ =
    GoogleLongrunning__OperationMetadata'
    { _glomAddtional = _Coerce # pGlomAddtional_
    }

-- | Properties of the object. Contains field \'type with type URL.
glomAddtional :: Lens' GoogleLongrunning__OperationMetadata (HashMap Text JSONValue)
glomAddtional
  = lens _glomAddtional
      (\ s a -> s{_glomAddtional = a})
      . _Coerce

instance FromJSON
         GoogleLongrunning__OperationMetadata where
        parseJSON
          = withObject "GoogleLongrunningOperationMetadata"
              (\ o ->
                 GoogleLongrunning__OperationMetadata' <$>
                   (parseJSONObject o))

instance ToJSON GoogleLongrunning__OperationMetadata
         where
        toJSON = toJSON . _glomAddtional

-- | Represents results of a prediction job.
--
-- /See:/ 'googleCloudMlV1beta1__PredictionOutput' smart constructor.
data GoogleCloudMlV1beta1__PredictionOutput = GoogleCloudMlV1beta1__PredictionOutput'
    { _gcmvpoErrorCount      :: !(Maybe (Textual Int64))
    , _gcmvpoPredictionCount :: !(Maybe (Textual Int64))
    , _gcmvpoOutputPath      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GoogleCloudMlV1beta1__PredictionOutput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvpoErrorCount'
--
-- * 'gcmvpoPredictionCount'
--
-- * 'gcmvpoOutputPath'
googleCloudMlV1beta1__PredictionOutput
    :: GoogleCloudMlV1beta1__PredictionOutput
googleCloudMlV1beta1__PredictionOutput =
    GoogleCloudMlV1beta1__PredictionOutput'
    { _gcmvpoErrorCount = Nothing
    , _gcmvpoPredictionCount = Nothing
    , _gcmvpoOutputPath = Nothing
    }

-- | The number of data instances which resulted in errors.
gcmvpoErrorCount :: Lens' GoogleCloudMlV1beta1__PredictionOutput (Maybe Int64)
gcmvpoErrorCount
  = lens _gcmvpoErrorCount
      (\ s a -> s{_gcmvpoErrorCount = a})
      . mapping _Coerce

-- | The number of generated predictions.
gcmvpoPredictionCount :: Lens' GoogleCloudMlV1beta1__PredictionOutput (Maybe Int64)
gcmvpoPredictionCount
  = lens _gcmvpoPredictionCount
      (\ s a -> s{_gcmvpoPredictionCount = a})
      . mapping _Coerce

-- | The output Google Cloud Storage location provided at the job creation
-- time.
gcmvpoOutputPath :: Lens' GoogleCloudMlV1beta1__PredictionOutput (Maybe Text)
gcmvpoOutputPath
  = lens _gcmvpoOutputPath
      (\ s a -> s{_gcmvpoOutputPath = a})

instance FromJSON
         GoogleCloudMlV1beta1__PredictionOutput where
        parseJSON
          = withObject "GoogleCloudMlV1beta1PredictionOutput"
              (\ o ->
                 GoogleCloudMlV1beta1__PredictionOutput' <$>
                   (o .:? "errorCount") <*> (o .:? "predictionCount")
                     <*> (o .:? "outputPath"))

instance ToJSON
         GoogleCloudMlV1beta1__PredictionOutput where
        toJSON GoogleCloudMlV1beta1__PredictionOutput'{..}
          = object
              (catMaybes
                 [("errorCount" .=) <$> _gcmvpoErrorCount,
                  ("predictionCount" .=) <$> _gcmvpoPredictionCount,
                  ("outputPath" .=) <$> _gcmvpoOutputPath])

-- | Request message for the CancelJob method.
--
-- /See:/ 'googleCloudMlV1beta1__CancelJobRequest' smart constructor.
data GoogleCloudMlV1beta1__CancelJobRequest =
    GoogleCloudMlV1beta1__CancelJobRequest'
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GoogleCloudMlV1beta1__CancelJobRequest' with the minimum fields required to make a request.
--
googleCloudMlV1beta1__CancelJobRequest
    :: GoogleCloudMlV1beta1__CancelJobRequest
googleCloudMlV1beta1__CancelJobRequest =
    GoogleCloudMlV1beta1__CancelJobRequest'

instance FromJSON
         GoogleCloudMlV1beta1__CancelJobRequest where
        parseJSON
          = withObject "GoogleCloudMlV1beta1CancelJobRequest"
              (\ o -> pure GoogleCloudMlV1beta1__CancelJobRequest')

instance ToJSON
         GoogleCloudMlV1beta1__CancelJobRequest where
        toJSON = const emptyObject

-- | Response message for the ListModels method.
--
-- /See:/ 'googleCloudMlV1beta1__ListModelsResponse' smart constructor.
data GoogleCloudMlV1beta1__ListModelsResponse = GoogleCloudMlV1beta1__ListModelsResponse'
    { _gcmvlmrNextPageToken :: !(Maybe Text)
    , _gcmvlmrModels        :: !(Maybe [GoogleCloudMlV1beta1__Model])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GoogleCloudMlV1beta1__ListModelsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvlmrNextPageToken'
--
-- * 'gcmvlmrModels'
googleCloudMlV1beta1__ListModelsResponse
    :: GoogleCloudMlV1beta1__ListModelsResponse
googleCloudMlV1beta1__ListModelsResponse =
    GoogleCloudMlV1beta1__ListModelsResponse'
    { _gcmvlmrNextPageToken = Nothing
    , _gcmvlmrModels = Nothing
    }

-- | Optional. Pass this token as the \`page_token\` field of the request for
-- a subsequent call.
gcmvlmrNextPageToken :: Lens' GoogleCloudMlV1beta1__ListModelsResponse (Maybe Text)
gcmvlmrNextPageToken
  = lens _gcmvlmrNextPageToken
      (\ s a -> s{_gcmvlmrNextPageToken = a})

-- | The list of models.
gcmvlmrModels :: Lens' GoogleCloudMlV1beta1__ListModelsResponse [GoogleCloudMlV1beta1__Model]
gcmvlmrModels
  = lens _gcmvlmrModels
      (\ s a -> s{_gcmvlmrModels = a})
      . _Default
      . _Coerce

instance FromJSON
         GoogleCloudMlV1beta1__ListModelsResponse where
        parseJSON
          = withObject "GoogleCloudMlV1beta1ListModelsResponse"
              (\ o ->
                 GoogleCloudMlV1beta1__ListModelsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "models" .!= mempty))

instance ToJSON
         GoogleCloudMlV1beta1__ListModelsResponse where
        toJSON GoogleCloudMlV1beta1__ListModelsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _gcmvlmrNextPageToken,
                  ("models" .=) <$> _gcmvlmrModels])

-- | Response message for the ListJobs method.
--
-- /See:/ 'googleCloudMlV1beta1__ListJobsResponse' smart constructor.
data GoogleCloudMlV1beta1__ListJobsResponse = GoogleCloudMlV1beta1__ListJobsResponse'
    { _gcmvljrNextPageToken :: !(Maybe Text)
    , _gcmvljrJobs          :: !(Maybe [GoogleCloudMlV1beta1__Job])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GoogleCloudMlV1beta1__ListJobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvljrNextPageToken'
--
-- * 'gcmvljrJobs'
googleCloudMlV1beta1__ListJobsResponse
    :: GoogleCloudMlV1beta1__ListJobsResponse
googleCloudMlV1beta1__ListJobsResponse =
    GoogleCloudMlV1beta1__ListJobsResponse'
    { _gcmvljrNextPageToken = Nothing
    , _gcmvljrJobs = Nothing
    }

-- | Optional. Pass this token as the \`page_token\` field of the request for
-- a subsequent call.
gcmvljrNextPageToken :: Lens' GoogleCloudMlV1beta1__ListJobsResponse (Maybe Text)
gcmvljrNextPageToken
  = lens _gcmvljrNextPageToken
      (\ s a -> s{_gcmvljrNextPageToken = a})

-- | The list of jobs.
gcmvljrJobs :: Lens' GoogleCloudMlV1beta1__ListJobsResponse [GoogleCloudMlV1beta1__Job]
gcmvljrJobs
  = lens _gcmvljrJobs (\ s a -> s{_gcmvljrJobs = a}) .
      _Default
      . _Coerce

instance FromJSON
         GoogleCloudMlV1beta1__ListJobsResponse where
        parseJSON
          = withObject "GoogleCloudMlV1beta1ListJobsResponse"
              (\ o ->
                 GoogleCloudMlV1beta1__ListJobsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "jobs" .!= mempty))

instance ToJSON
         GoogleCloudMlV1beta1__ListJobsResponse where
        toJSON GoogleCloudMlV1beta1__ListJobsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _gcmvljrNextPageToken,
                  ("jobs" .=) <$> _gcmvljrJobs])

-- | Represents input parameters for a training job.
--
-- /See:/ 'googleCloudMlV1beta1__TrainingInput' smart constructor.
data GoogleCloudMlV1beta1__TrainingInput = GoogleCloudMlV1beta1__TrainingInput'
    { _gcmvtiMasterType           :: !(Maybe Text)
    , _gcmvtiParameterServerCount :: !(Maybe (Textual Int64))
    , _gcmvtiArgs                 :: !(Maybe [Text])
    , _gcmvtiWorkerCount          :: !(Maybe (Textual Int64))
    , _gcmvtiWorkerType           :: !(Maybe Text)
    , _gcmvtiPythonModule         :: !(Maybe Text)
    , _gcmvtiParameterServerType  :: !(Maybe Text)
    , _gcmvtiHyperparameters      :: !(Maybe GoogleCloudMlV1beta1__HyperparameterSpec)
    , _gcmvtiPackageURIs          :: !(Maybe [Text])
    , _gcmvtiScaleTier            :: !(Maybe GoogleCloudMlV1beta1__TrainingInputScaleTier)
    , _gcmvtiRegion               :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GoogleCloudMlV1beta1__TrainingInput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvtiMasterType'
--
-- * 'gcmvtiParameterServerCount'
--
-- * 'gcmvtiArgs'
--
-- * 'gcmvtiWorkerCount'
--
-- * 'gcmvtiWorkerType'
--
-- * 'gcmvtiPythonModule'
--
-- * 'gcmvtiParameterServerType'
--
-- * 'gcmvtiHyperparameters'
--
-- * 'gcmvtiPackageURIs'
--
-- * 'gcmvtiScaleTier'
--
-- * 'gcmvtiRegion'
googleCloudMlV1beta1__TrainingInput
    :: GoogleCloudMlV1beta1__TrainingInput
googleCloudMlV1beta1__TrainingInput =
    GoogleCloudMlV1beta1__TrainingInput'
    { _gcmvtiMasterType = Nothing
    , _gcmvtiParameterServerCount = Nothing
    , _gcmvtiArgs = Nothing
    , _gcmvtiWorkerCount = Nothing
    , _gcmvtiWorkerType = Nothing
    , _gcmvtiPythonModule = Nothing
    , _gcmvtiParameterServerType = Nothing
    , _gcmvtiHyperparameters = Nothing
    , _gcmvtiPackageURIs = Nothing
    , _gcmvtiScaleTier = Nothing
    , _gcmvtiRegion = Nothing
    }

-- | Optional. Specifies the type of virtual machine to use for your training
-- job\'s master worker. The following types are supported:
--
-- [standard]
--     A basic machine configuration suitable for training simple models
--     with small to moderate datasets.
-- [large_model]
--     A machine with a lot of memory, specially suited for parameter
--     servers when your model is large (having many hidden layers or
--     layers with very large numbers of nodes).
-- [complex_model_s]
--     A machine suitable for the master and workers of the cluster when
--     your model requires more computation than the standard machine can
--     handle satisfactorily.
-- [complex_model_m]
--     A machine with roughly twice the number of cores and roughly double
--     the memory of 'complex_model_s'.
-- [complex_model_l]
--     A machine with roughly twice the number of cores and roughly double
--     the memory of 'complex_model_m'.
--
-- You must set this value when \`scaleTier\` is set to \`CUSTOM\`.
gcmvtiMasterType :: Lens' GoogleCloudMlV1beta1__TrainingInput (Maybe Text)
gcmvtiMasterType
  = lens _gcmvtiMasterType
      (\ s a -> s{_gcmvtiMasterType = a})

-- | Optional. The number of parameter server replicas to use for the
-- training job. Each replica in the cluster will be of the type specified
-- in \`parameter_server_type\`. This value can only be used when
-- \`scale_tier\` is set to \`CUSTOM\`.If you set this value, you must also
-- set \`parameter_server_type\`.
gcmvtiParameterServerCount :: Lens' GoogleCloudMlV1beta1__TrainingInput (Maybe Int64)
gcmvtiParameterServerCount
  = lens _gcmvtiParameterServerCount
      (\ s a -> s{_gcmvtiParameterServerCount = a})
      . mapping _Coerce

-- | Optional. Command line arguments to pass to the program.
gcmvtiArgs :: Lens' GoogleCloudMlV1beta1__TrainingInput [Text]
gcmvtiArgs
  = lens _gcmvtiArgs (\ s a -> s{_gcmvtiArgs = a}) .
      _Default
      . _Coerce

-- | Optional. The number of worker replicas to use for the training job.
-- Each replica in the cluster will be of the type specified in
-- \`worker_type\`. This value can only be used when \`scale_tier\` is set
-- to \`CUSTOM\`. If you set this value, you must also set \`worker_type\`.
gcmvtiWorkerCount :: Lens' GoogleCloudMlV1beta1__TrainingInput (Maybe Int64)
gcmvtiWorkerCount
  = lens _gcmvtiWorkerCount
      (\ s a -> s{_gcmvtiWorkerCount = a})
      . mapping _Coerce

-- | Optional. Specifies the type of virtual machine to use for your training
-- job\'s worker nodes. The supported values are the same as those
-- described in the entry for \`masterType\`. This value must be present
-- when \`scaleTier\` is set to \`CUSTOM\` and \`workerCount\` is greater
-- than zero.
gcmvtiWorkerType :: Lens' GoogleCloudMlV1beta1__TrainingInput (Maybe Text)
gcmvtiWorkerType
  = lens _gcmvtiWorkerType
      (\ s a -> s{_gcmvtiWorkerType = a})

-- | Required. The Python module name to run after installing the packages.
gcmvtiPythonModule :: Lens' GoogleCloudMlV1beta1__TrainingInput (Maybe Text)
gcmvtiPythonModule
  = lens _gcmvtiPythonModule
      (\ s a -> s{_gcmvtiPythonModule = a})

-- | Optional. Specifies the type of virtual machine to use for your training
-- job\'s parameter server. The supported values are the same as those
-- described in the entry for \`master_type\`. This value must be present
-- when \`scaleTier\` is set to \`CUSTOM\` and \`parameter_server_count\`
-- is greater than zero.
gcmvtiParameterServerType :: Lens' GoogleCloudMlV1beta1__TrainingInput (Maybe Text)
gcmvtiParameterServerType
  = lens _gcmvtiParameterServerType
      (\ s a -> s{_gcmvtiParameterServerType = a})

-- | Optional. The set of Hyperparameters to tune.
gcmvtiHyperparameters :: Lens' GoogleCloudMlV1beta1__TrainingInput (Maybe GoogleCloudMlV1beta1__HyperparameterSpec)
gcmvtiHyperparameters
  = lens _gcmvtiHyperparameters
      (\ s a -> s{_gcmvtiHyperparameters = a})

-- | Required. The Google Cloud Storage location of the packages with the
-- training program and any additional dependencies.
gcmvtiPackageURIs :: Lens' GoogleCloudMlV1beta1__TrainingInput [Text]
gcmvtiPackageURIs
  = lens _gcmvtiPackageURIs
      (\ s a -> s{_gcmvtiPackageURIs = a})
      . _Default
      . _Coerce

-- | Required. Specifies the machine types, the number of replicas for
-- workers and parameter servers.
gcmvtiScaleTier :: Lens' GoogleCloudMlV1beta1__TrainingInput (Maybe GoogleCloudMlV1beta1__TrainingInputScaleTier)
gcmvtiScaleTier
  = lens _gcmvtiScaleTier
      (\ s a -> s{_gcmvtiScaleTier = a})

-- | Required. The Google Compute Engine region to run the training job in.
gcmvtiRegion :: Lens' GoogleCloudMlV1beta1__TrainingInput (Maybe Text)
gcmvtiRegion
  = lens _gcmvtiRegion (\ s a -> s{_gcmvtiRegion = a})

instance FromJSON GoogleCloudMlV1beta1__TrainingInput
         where
        parseJSON
          = withObject "GoogleCloudMlV1beta1TrainingInput"
              (\ o ->
                 GoogleCloudMlV1beta1__TrainingInput' <$>
                   (o .:? "masterType") <*>
                     (o .:? "parameterServerCount")
                     <*> (o .:? "args" .!= mempty)
                     <*> (o .:? "workerCount")
                     <*> (o .:? "workerType")
                     <*> (o .:? "pythonModule")
                     <*> (o .:? "parameterServerType")
                     <*> (o .:? "hyperparameters")
                     <*> (o .:? "packageUris" .!= mempty)
                     <*> (o .:? "scaleTier")
                     <*> (o .:? "region"))

instance ToJSON GoogleCloudMlV1beta1__TrainingInput
         where
        toJSON GoogleCloudMlV1beta1__TrainingInput'{..}
          = object
              (catMaybes
                 [("masterType" .=) <$> _gcmvtiMasterType,
                  ("parameterServerCount" .=) <$>
                    _gcmvtiParameterServerCount,
                  ("args" .=) <$> _gcmvtiArgs,
                  ("workerCount" .=) <$> _gcmvtiWorkerCount,
                  ("workerType" .=) <$> _gcmvtiWorkerType,
                  ("pythonModule" .=) <$> _gcmvtiPythonModule,
                  ("parameterServerType" .=) <$>
                    _gcmvtiParameterServerType,
                  ("hyperparameters" .=) <$> _gcmvtiHyperparameters,
                  ("packageUris" .=) <$> _gcmvtiPackageURIs,
                  ("scaleTier" .=) <$> _gcmvtiScaleTier,
                  ("region" .=) <$> _gcmvtiRegion])

--
-- /See:/ 'googleRpc__StatusDetailsItem' smart constructor.
newtype GoogleRpc__StatusDetailsItem = GoogleRpc__StatusDetailsItem'
    { _grsdiAddtional :: HashMap Text JSONValue
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GoogleRpc__StatusDetailsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grsdiAddtional'
googleRpc__StatusDetailsItem
    :: HashMap Text JSONValue -- ^ 'grsdiAddtional'
    -> GoogleRpc__StatusDetailsItem
googleRpc__StatusDetailsItem pGrsdiAddtional_ =
    GoogleRpc__StatusDetailsItem'
    { _grsdiAddtional = _Coerce # pGrsdiAddtional_
    }

-- | Properties of the object. Contains field \'type with type URL.
grsdiAddtional :: Lens' GoogleRpc__StatusDetailsItem (HashMap Text JSONValue)
grsdiAddtional
  = lens _grsdiAddtional
      (\ s a -> s{_grsdiAddtional = a})
      . _Coerce

instance FromJSON GoogleRpc__StatusDetailsItem where
        parseJSON
          = withObject "GoogleRpcStatusDetailsItem"
              (\ o ->
                 GoogleRpc__StatusDetailsItem' <$>
                   (parseJSONObject o))

instance ToJSON GoogleRpc__StatusDetailsItem where
        toJSON = toJSON . _grsdiAddtional

-- | A generic empty message that you can re-use to avoid defining duplicated
-- empty messages in your APIs. A typical example is to use it as the
-- request or the response type of an API method. For instance: service Foo
-- { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The
-- JSON representation for \`Empty\` is empty JSON object \`{}\`.
--
-- /See:/ 'googleProtobuf__Empty' smart constructor.
data GoogleProtobuf__Empty =
    GoogleProtobuf__Empty'
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GoogleProtobuf__Empty' with the minimum fields required to make a request.
--
googleProtobuf__Empty
    :: GoogleProtobuf__Empty
googleProtobuf__Empty = GoogleProtobuf__Empty'

instance FromJSON GoogleProtobuf__Empty where
        parseJSON
          = withObject "GoogleProtobufEmpty"
              (\ o -> pure GoogleProtobuf__Empty')

instance ToJSON GoogleProtobuf__Empty where
        toJSON = const emptyObject

-- | An observed value of a metric.
--
-- /See:/ 'googleCloudMlV1beta1_HyperparameterOutput_HyperparameterMetric' smart constructor.
data GoogleCloudMlV1beta1_HyperparameterOutput_HyperparameterMetric = GoogleCloudMlV1beta1_HyperparameterOutput_HyperparameterMetric'
    { _gcmvhohmTrainingStep   :: !(Maybe (Textual Int64))
    , _gcmvhohmObjectiveValue :: !(Maybe (Textual Double))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GoogleCloudMlV1beta1_HyperparameterOutput_HyperparameterMetric' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvhohmTrainingStep'
--
-- * 'gcmvhohmObjectiveValue'
googleCloudMlV1beta1_HyperparameterOutput_HyperparameterMetric
    :: GoogleCloudMlV1beta1_HyperparameterOutput_HyperparameterMetric
googleCloudMlV1beta1_HyperparameterOutput_HyperparameterMetric =
    GoogleCloudMlV1beta1_HyperparameterOutput_HyperparameterMetric'
    { _gcmvhohmTrainingStep = Nothing
    , _gcmvhohmObjectiveValue = Nothing
    }

-- | The global training step for this metric.
gcmvhohmTrainingStep :: Lens' GoogleCloudMlV1beta1_HyperparameterOutput_HyperparameterMetric (Maybe Int64)
gcmvhohmTrainingStep
  = lens _gcmvhohmTrainingStep
      (\ s a -> s{_gcmvhohmTrainingStep = a})
      . mapping _Coerce

-- | The objective value at this training step.
gcmvhohmObjectiveValue :: Lens' GoogleCloudMlV1beta1_HyperparameterOutput_HyperparameterMetric (Maybe Double)
gcmvhohmObjectiveValue
  = lens _gcmvhohmObjectiveValue
      (\ s a -> s{_gcmvhohmObjectiveValue = a})
      . mapping _Coerce

instance FromJSON
         GoogleCloudMlV1beta1_HyperparameterOutput_HyperparameterMetric
         where
        parseJSON
          = withObject
              "GoogleCloudMlV1beta1HyperparameterOutputHyperparameterMetric"
              (\ o ->
                 GoogleCloudMlV1beta1_HyperparameterOutput_HyperparameterMetric'
                   <$>
                   (o .:? "trainingStep") <*> (o .:? "objectiveValue"))

instance ToJSON
         GoogleCloudMlV1beta1_HyperparameterOutput_HyperparameterMetric
         where
        toJSON
          GoogleCloudMlV1beta1_HyperparameterOutput_HyperparameterMetric'{..}
          = object
              (catMaybes
                 [("trainingStep" .=) <$> _gcmvhohmTrainingStep,
                  ("objectiveValue" .=) <$> _gcmvhohmObjectiveValue])

-- | Message that represents an arbitrary HTTP body. It should only be used
-- for payload formats that can\'t be represented as JSON, such as raw
-- binary or an HTML page. This message can be used both in streaming and
-- non-streaming API methods in the request as well as the response. It can
-- be used as a top-level request field, which is convenient if one wants
-- to extract parameters from either the URL or HTTP template into the
-- request fields and also want access to the raw HTTP body. Example:
-- message GetResourceRequest { \/\/ A unique request id. string request_id
-- = 1; \/\/ The raw HTTP body is bound to this field. google.api.HttpBody
-- http_body = 2; } service ResourceService { rpc
-- GetResource(GetResourceRequest) returns (google.api.HttpBody); rpc
-- UpdateResource(google.api.HttpBody) returns (google.protobuf.Empty); }
-- Example with streaming methods: service CaldavService { rpc
-- GetCalendar(stream google.api.HttpBody) returns (stream
-- google.api.HttpBody); rpc UpdateCalendar(stream google.api.HttpBody)
-- returns (stream google.api.HttpBody); } Use of this type only changes
-- how the request and response bodies are handled, all other features will
-- continue to work unchanged.
--
-- /See:/ 'googleAPI__HTTPBody' smart constructor.
data GoogleAPI__HTTPBody = GoogleAPI__HTTPBody'
    { _gahttpbData        :: !(Maybe Base64)
    , _gahttpbContentType :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GoogleAPI__HTTPBody' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gahttpbData'
--
-- * 'gahttpbContentType'
googleAPI__HTTPBody
    :: GoogleAPI__HTTPBody
googleAPI__HTTPBody =
    GoogleAPI__HTTPBody'
    { _gahttpbData = Nothing
    , _gahttpbContentType = Nothing
    }

-- | HTTP body binary data.
gahttpbData :: Lens' GoogleAPI__HTTPBody (Maybe ByteString)
gahttpbData
  = lens _gahttpbData (\ s a -> s{_gahttpbData = a}) .
      mapping _Base64

-- | The HTTP Content-Type string representing the content type of the body.
gahttpbContentType :: Lens' GoogleAPI__HTTPBody (Maybe Text)
gahttpbContentType
  = lens _gahttpbContentType
      (\ s a -> s{_gahttpbContentType = a})

instance FromJSON GoogleAPI__HTTPBody where
        parseJSON
          = withObject "GoogleAPIHTTPBody"
              (\ o ->
                 GoogleAPI__HTTPBody' <$>
                   (o .:? "data") <*> (o .:? "contentType"))

instance ToJSON GoogleAPI__HTTPBody where
        toJSON GoogleAPI__HTTPBody'{..}
          = object
              (catMaybes
                 [("data" .=) <$> _gahttpbData,
                  ("contentType" .=) <$> _gahttpbContentType])

-- | Request for predictions to be issued against a trained model. The body
-- of the request is a single JSON object with a single top-level field:
--
-- [instances]
--     A JSON array containing values representing the instances to use for
--     prediction.
--
-- The structure of each element of the instances list is determined by
-- your model\'s input definition. Instances can include named inputs or
-- can contain only unlabeled values. Most data does not include named
-- inputs. Some instances will be simple JSON values (boolean, number, or
-- string). However, instances are often lists of simple values, or complex
-- nested lists. Here are some examples of request bodies: CSV data with
-- each row encoded as a string value:
--
-- > {"instances": ["1.0,true,\\"x\\"", "-2.0,false,\\"y\\""]}
--
-- Plain text:
--
-- > {"instances": ["the quick brown fox", "la bruja le dio"]}
--
-- Sentences encoded as lists of words (vectors of strings):
--
-- > {"instances": [["the","quick","brown"], ["la","bruja","le"]]}
--
-- Floating point scalar values:
--
-- > {"instances": [0.0, 1.1, 2.2]}
--
-- Vectors of integers:
--
-- > {"instances": [[0, 1, 2], [3, 4, 5],...]}
--
-- Tensors (in this case, two-dimensional tensors):
--
-- > {"instances": [[[0, 1, 2], [3, 4, 5]], ...]}
--
-- Images represented as a three-dimensional list. In this encoding scheme
-- the first two dimensions represent the rows and columns of the image,
-- and the third contains the R, G, and B values for each pixel.
--
-- > {"instances": [[[[138, 30, 66], [130, 20, 56], ...]]]]}
--
-- Data must be encoded as UTF-8. If your data uses another character
-- encoding, you must base64 encode the data and mark it as binary. To mark
-- a JSON string as binary, replace it with an object with a single
-- attribute named \`b\`:
--
-- > {"b": "..."}
--
-- For example: Two Serialized tf.Examples (fake data, for illustrative
-- purposes only):
--
-- > {"instances": [{"b64": "X5ad6u"}, {"b64": "IA9j4nx"}]}
--
-- Two JPEG image byte strings (fake data, for illustrative purposes only):
--
-- > {"instances": [{"b64": "ASa8asdf"}, {"b64": "JLK7ljk3"}]}
--
-- If your data includes named references, format each instance as a JSON
-- object with the named references as the keys: JSON input data to be
-- preprocessed:
--
-- > {"instances": [{"a": 1.0,  "b": true,  "c": "x"},
-- >                {"a": -2.0, "b": false, "c": "y"}]}
--
-- Some models have an underlying TensorFlow graph that accepts multiple
-- input tensors. In this case, you should use the names of JSON
-- name\/value pairs to identify the input tensors, as shown in the
-- following exmaples: For a graph with input tensor aliases \"tag\"
-- (string) and \"image\" (base64-encoded string):
--
-- > {"instances": [{"tag": "beach", "image": {"b64": "ASa8asdf"}},
-- >                {"tag": "car", "image": {"b64": "JLK7ljk3"}}]}
--
-- For a graph with input tensor aliases \"tag\" (string) and \"image\"
-- (3-dimensional array of 8-bit ints):
--
-- > {"instances": [{"tag": "beach", "image": [[[263, 1, 10], [262, 2, 11], ...]]},
-- >                {"tag": "car", "image": [[[10, 11, 24], [23, 10, 15], ...]]}]}
--
-- If the call is successful, the response body will contain one prediction
-- entry per instance in the request body. If prediction fails for any
-- instance, the response body will contain no predictions and will contian
-- a single error entry instead.
--
-- /See:/ 'googleCloudMlV1beta1__PredictRequest' smart constructor.
newtype GoogleCloudMlV1beta1__PredictRequest = GoogleCloudMlV1beta1__PredictRequest'
    { _gcmvprHTTPBody :: Maybe GoogleAPI__HTTPBody
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GoogleCloudMlV1beta1__PredictRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvprHTTPBody'
googleCloudMlV1beta1__PredictRequest
    :: GoogleCloudMlV1beta1__PredictRequest
googleCloudMlV1beta1__PredictRequest =
    GoogleCloudMlV1beta1__PredictRequest'
    { _gcmvprHTTPBody = Nothing
    }

-- | Required. The prediction request body.
gcmvprHTTPBody :: Lens' GoogleCloudMlV1beta1__PredictRequest (Maybe GoogleAPI__HTTPBody)
gcmvprHTTPBody
  = lens _gcmvprHTTPBody
      (\ s a -> s{_gcmvprHTTPBody = a})

instance FromJSON
         GoogleCloudMlV1beta1__PredictRequest where
        parseJSON
          = withObject "GoogleCloudMlV1beta1PredictRequest"
              (\ o ->
                 GoogleCloudMlV1beta1__PredictRequest' <$>
                   (o .:? "httpBody"))

instance ToJSON GoogleCloudMlV1beta1__PredictRequest
         where
        toJSON GoogleCloudMlV1beta1__PredictRequest'{..}
          = object
              (catMaybes [("httpBody" .=) <$> _gcmvprHTTPBody])

-- | Represents a single hyperparameter to optimize.
--
-- /See:/ 'googleCloudMlV1beta1__ParameterSpec' smart constructor.
data GoogleCloudMlV1beta1__ParameterSpec = GoogleCloudMlV1beta1__ParameterSpec'
    { _gcmvpsMaxValue          :: !(Maybe (Textual Double))
    , _gcmvpsScaleType         :: !(Maybe GoogleCloudMlV1beta1__ParameterSpecScaleType)
    , _gcmvpsType              :: !(Maybe GoogleCloudMlV1beta1__ParameterSpecType)
    , _gcmvpsDiscreteValues    :: !(Maybe [Textual Double])
    , _gcmvpsParameterName     :: !(Maybe Text)
    , _gcmvpsCategoricalValues :: !(Maybe [Text])
    , _gcmvpsMinValue          :: !(Maybe (Textual Double))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GoogleCloudMlV1beta1__ParameterSpec' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvpsMaxValue'
--
-- * 'gcmvpsScaleType'
--
-- * 'gcmvpsType'
--
-- * 'gcmvpsDiscreteValues'
--
-- * 'gcmvpsParameterName'
--
-- * 'gcmvpsCategoricalValues'
--
-- * 'gcmvpsMinValue'
googleCloudMlV1beta1__ParameterSpec
    :: GoogleCloudMlV1beta1__ParameterSpec
googleCloudMlV1beta1__ParameterSpec =
    GoogleCloudMlV1beta1__ParameterSpec'
    { _gcmvpsMaxValue = Nothing
    , _gcmvpsScaleType = Nothing
    , _gcmvpsType = Nothing
    , _gcmvpsDiscreteValues = Nothing
    , _gcmvpsParameterName = Nothing
    , _gcmvpsCategoricalValues = Nothing
    , _gcmvpsMinValue = Nothing
    }

-- | Required if typeis \`DOUBLE\` or \`INTEGER\`. This field should be unset
-- if type is \`CATEGORICAL\`. This value should be integers if type is
-- \`INTEGER\`.
gcmvpsMaxValue :: Lens' GoogleCloudMlV1beta1__ParameterSpec (Maybe Double)
gcmvpsMaxValue
  = lens _gcmvpsMaxValue
      (\ s a -> s{_gcmvpsMaxValue = a})
      . mapping _Coerce

-- | Optional. How the parameter should be scaled to the hypercube. Leave
-- unset for categorical parameters. Some kind of scaling is strongly
-- recommended for real or integral parameters (e.g.,
-- \`UNIT_LINEAR_SCALE\`).
gcmvpsScaleType :: Lens' GoogleCloudMlV1beta1__ParameterSpec (Maybe GoogleCloudMlV1beta1__ParameterSpecScaleType)
gcmvpsScaleType
  = lens _gcmvpsScaleType
      (\ s a -> s{_gcmvpsScaleType = a})

-- | Required. The type of the parameter.
gcmvpsType :: Lens' GoogleCloudMlV1beta1__ParameterSpec (Maybe GoogleCloudMlV1beta1__ParameterSpecType)
gcmvpsType
  = lens _gcmvpsType (\ s a -> s{_gcmvpsType = a})

-- | Required if type is \`DISCRETE\`. A list of feasible points. The list
-- should be in strictly increasing order. For instance, this parameter
-- might have possible settings of 1.5, 2.5, and 4.0. This list should not
-- contain more than 1,000 values.
gcmvpsDiscreteValues :: Lens' GoogleCloudMlV1beta1__ParameterSpec [Double]
gcmvpsDiscreteValues
  = lens _gcmvpsDiscreteValues
      (\ s a -> s{_gcmvpsDiscreteValues = a})
      . _Default
      . _Coerce

-- | Required. The parameter name must be unique amongst all ParameterConfigs
-- in a HyperparameterSpec message. E.g., \"learning_rate\".
gcmvpsParameterName :: Lens' GoogleCloudMlV1beta1__ParameterSpec (Maybe Text)
gcmvpsParameterName
  = lens _gcmvpsParameterName
      (\ s a -> s{_gcmvpsParameterName = a})

-- | Required if type is \`CATEGORICAL\`. The list of possible categories.
gcmvpsCategoricalValues :: Lens' GoogleCloudMlV1beta1__ParameterSpec [Text]
gcmvpsCategoricalValues
  = lens _gcmvpsCategoricalValues
      (\ s a -> s{_gcmvpsCategoricalValues = a})
      . _Default
      . _Coerce

-- | Required if type is \`DOUBLE\` or \`INTEGER\`. This field should be
-- unset if type is \`CATEGORICAL\`. This value should be integers if type
-- is INTEGER.
gcmvpsMinValue :: Lens' GoogleCloudMlV1beta1__ParameterSpec (Maybe Double)
gcmvpsMinValue
  = lens _gcmvpsMinValue
      (\ s a -> s{_gcmvpsMinValue = a})
      . mapping _Coerce

instance FromJSON GoogleCloudMlV1beta1__ParameterSpec
         where
        parseJSON
          = withObject "GoogleCloudMlV1beta1ParameterSpec"
              (\ o ->
                 GoogleCloudMlV1beta1__ParameterSpec' <$>
                   (o .:? "maxValue") <*> (o .:? "scaleType") <*>
                     (o .:? "type")
                     <*> (o .:? "discreteValues" .!= mempty)
                     <*> (o .:? "parameterName")
                     <*> (o .:? "categoricalValues" .!= mempty)
                     <*> (o .:? "minValue"))

instance ToJSON GoogleCloudMlV1beta1__ParameterSpec
         where
        toJSON GoogleCloudMlV1beta1__ParameterSpec'{..}
          = object
              (catMaybes
                 [("maxValue" .=) <$> _gcmvpsMaxValue,
                  ("scaleType" .=) <$> _gcmvpsScaleType,
                  ("type" .=) <$> _gcmvpsType,
                  ("discreteValues" .=) <$> _gcmvpsDiscreteValues,
                  ("parameterName" .=) <$> _gcmvpsParameterName,
                  ("categoricalValues" .=) <$>
                    _gcmvpsCategoricalValues,
                  ("minValue" .=) <$> _gcmvpsMinValue])
