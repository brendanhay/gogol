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

-- | Specifies the audit configuration for a service. The configuration
-- determines which permission types are logged, and what identities, if
-- any, are exempted from logging. An AuditConfig must have one or more
-- AuditLogConfigs. If there are AuditConfigs for both \`allServices\` and
-- a specific service, the union of the two AuditConfigs is used for that
-- service: the log_types specified in each AuditConfig are enabled, and
-- the exempted_members in each AuditLogConfig are exempted. Example Policy
-- with multiple AuditConfigs: { \"audit_configs\": [ { \"service\":
-- \"allServices\" \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\",
-- \"exempted_members\": [ \"user:foo\'gmail.com\" ] }, { \"log_type\":
-- \"DATA_WRITE\", }, { \"log_type\": \"ADMIN_READ\", } ] }, { \"service\":
-- \"fooservice.googleapis.com\" \"audit_log_configs\": [ { \"log_type\":
-- \"DATA_READ\", }, { \"log_type\": \"DATA_WRITE\", \"exempted_members\":
-- [ \"user:bar\'gmail.com\" ] } ] } ] } For fooservice, this policy
-- enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also exempts
-- foo\'gmail.com from DATA_READ logging, and bar\'gmail.com from
-- DATA_WRITE logging.
--
-- /See:/ 'googleIAMV1__AuditConfig' smart constructor.
data GoogleIAMV1__AuditConfig =
  GoogleIAMV1__AuditConfig'
    { _givacService         :: !(Maybe Text)
    , _givacAuditLogConfigs :: !(Maybe [GoogleIAMV1__AuditLogConfig])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleIAMV1__AuditConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'givacService'
--
-- * 'givacAuditLogConfigs'
googleIAMV1__AuditConfig
    :: GoogleIAMV1__AuditConfig
googleIAMV1__AuditConfig =
  GoogleIAMV1__AuditConfig'
    {_givacService = Nothing, _givacAuditLogConfigs = Nothing}

-- | Specifies a service that will be enabled for audit logging. For example,
-- \`storage.googleapis.com\`, \`cloudsql.googleapis.com\`. \`allServices\`
-- is a special value that covers all services.
givacService :: Lens' GoogleIAMV1__AuditConfig (Maybe Text)
givacService
  = lens _givacService (\ s a -> s{_givacService = a})

-- | The configuration for logging of each type of permission.
givacAuditLogConfigs :: Lens' GoogleIAMV1__AuditConfig [GoogleIAMV1__AuditLogConfig]
givacAuditLogConfigs
  = lens _givacAuditLogConfigs
      (\ s a -> s{_givacAuditLogConfigs = a})
      . _Default
      . _Coerce

instance FromJSON GoogleIAMV1__AuditConfig where
        parseJSON
          = withObject "GoogleIAMV1AuditConfig"
              (\ o ->
                 GoogleIAMV1__AuditConfig' <$>
                   (o .:? "service") <*>
                     (o .:? "auditLogConfigs" .!= mempty))

instance ToJSON GoogleIAMV1__AuditConfig where
        toJSON GoogleIAMV1__AuditConfig'{..}
          = object
              (catMaybes
                 [("service" .=) <$> _givacService,
                  ("auditLogConfigs" .=) <$> _givacAuditLogConfigs])

-- | Represents a version of the model. Each version is a trained model
-- deployed in the cloud, ready to handle prediction requests. A model can
-- have multiple versions. You can get information about all of the
-- versions of a given model by calling
-- [projects.models.versions.list](\/ml-engine\/reference\/rest\/v1\/projects.models.versions\/list).
--
-- /See:/ 'googleCloudMlV1__Version' smart constructor.
data GoogleCloudMlV1__Version =
  GoogleCloudMlV1__Version'
    { _gcmvvFramework      :: !(Maybe GoogleCloudMlV1__VersionFramework)
    , _gcmvvEtag           :: !(Maybe Bytes)
    , _gcmvvState          :: !(Maybe GoogleCloudMlV1__VersionState)
    , _gcmvvAutoScaling    :: !(Maybe GoogleCloudMlV1__AutoScaling)
    , _gcmvvPythonVersion  :: !(Maybe Text)
    , _gcmvvRuntimeVersion :: !(Maybe Text)
    , _gcmvvLastUseTime    :: !(Maybe DateTime')
    , _gcmvvName           :: !(Maybe Text)
    , _gcmvvDeploymentURI  :: !(Maybe Text)
    , _gcmvvManualScaling  :: !(Maybe GoogleCloudMlV1__ManualScaling)
    , _gcmvvMachineType    :: !(Maybe Text)
    , _gcmvvLabels         :: !(Maybe GoogleCloudMlV1__VersionLabels)
    , _gcmvvErrorMessage   :: !(Maybe Text)
    , _gcmvvDescription    :: !(Maybe Text)
    , _gcmvvCreateTime     :: !(Maybe DateTime')
    , _gcmvvIsDefault      :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudMlV1__Version' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvvFramework'
--
-- * 'gcmvvEtag'
--
-- * 'gcmvvState'
--
-- * 'gcmvvAutoScaling'
--
-- * 'gcmvvPythonVersion'
--
-- * 'gcmvvRuntimeVersion'
--
-- * 'gcmvvLastUseTime'
--
-- * 'gcmvvName'
--
-- * 'gcmvvDeploymentURI'
--
-- * 'gcmvvManualScaling'
--
-- * 'gcmvvMachineType'
--
-- * 'gcmvvLabels'
--
-- * 'gcmvvErrorMessage'
--
-- * 'gcmvvDescription'
--
-- * 'gcmvvCreateTime'
--
-- * 'gcmvvIsDefault'
googleCloudMlV1__Version
    :: GoogleCloudMlV1__Version
googleCloudMlV1__Version =
  GoogleCloudMlV1__Version'
    { _gcmvvFramework = Nothing
    , _gcmvvEtag = Nothing
    , _gcmvvState = Nothing
    , _gcmvvAutoScaling = Nothing
    , _gcmvvPythonVersion = Nothing
    , _gcmvvRuntimeVersion = Nothing
    , _gcmvvLastUseTime = Nothing
    , _gcmvvName = Nothing
    , _gcmvvDeploymentURI = Nothing
    , _gcmvvManualScaling = Nothing
    , _gcmvvMachineType = Nothing
    , _gcmvvLabels = Nothing
    , _gcmvvErrorMessage = Nothing
    , _gcmvvDescription = Nothing
    , _gcmvvCreateTime = Nothing
    , _gcmvvIsDefault = Nothing
    }

-- | Optional. The machine learning framework Cloud ML Engine uses to train
-- this version of the model. Valid values are \`TENSORFLOW\`,
-- \`SCIKIT_LEARN\`, \`XGBOOST\`. If you do not specify a framework, Cloud
-- ML Engine will analyze files in the deployment_uri to determine a
-- framework. If you choose \`SCIKIT_LEARN\` or \`XGBOOST\`, you must also
-- set the runtime version of the model to 1.4 or greater.
gcmvvFramework :: Lens' GoogleCloudMlV1__Version (Maybe GoogleCloudMlV1__VersionFramework)
gcmvvFramework
  = lens _gcmvvFramework
      (\ s a -> s{_gcmvvFramework = a})

-- | \`etag\` is used for optimistic concurrency control as a way to help
-- prevent simultaneous updates of a model from overwriting each other. It
-- is strongly suggested that systems make use of the \`etag\` in the
-- read-modify-write cycle to perform model updates in order to avoid race
-- conditions: An \`etag\` is returned in the response to \`GetVersion\`,
-- and systems are expected to put that etag in the request to
-- \`UpdateVersion\` to ensure that their change will be applied to the
-- model as intended.
gcmvvEtag :: Lens' GoogleCloudMlV1__Version (Maybe ByteString)
gcmvvEtag
  = lens _gcmvvEtag (\ s a -> s{_gcmvvEtag = a}) .
      mapping _Bytes

-- | Output only. The state of a version.
gcmvvState :: Lens' GoogleCloudMlV1__Version (Maybe GoogleCloudMlV1__VersionState)
gcmvvState
  = lens _gcmvvState (\ s a -> s{_gcmvvState = a})

-- | Automatically scale the number of nodes used to serve the model in
-- response to increases and decreases in traffic. Care should be taken to
-- ramp up traffic according to the model\'s ability to scale or you will
-- start seeing increases in latency and 429 response codes.
gcmvvAutoScaling :: Lens' GoogleCloudMlV1__Version (Maybe GoogleCloudMlV1__AutoScaling)
gcmvvAutoScaling
  = lens _gcmvvAutoScaling
      (\ s a -> s{_gcmvvAutoScaling = a})

-- | Optional. The version of Python used in prediction. If not set, the
-- default version is \'2.7\'. Python \'3.5\' is available when
-- \`runtime_version\` is set to \'1.4\' and above. Python \'2.7\' works
-- with all supported runtime versions.
gcmvvPythonVersion :: Lens' GoogleCloudMlV1__Version (Maybe Text)
gcmvvPythonVersion
  = lens _gcmvvPythonVersion
      (\ s a -> s{_gcmvvPythonVersion = a})

-- | Optional. The Cloud ML Engine runtime version to use for this
-- deployment. If not set, Cloud ML Engine uses the default stable version,
-- 1.0. For more information, see the [runtime version
-- list](\/ml-engine\/docs\/runtime-version-list) and [how to manage
-- runtime versions](\/ml-engine\/docs\/versioning).
gcmvvRuntimeVersion :: Lens' GoogleCloudMlV1__Version (Maybe Text)
gcmvvRuntimeVersion
  = lens _gcmvvRuntimeVersion
      (\ s a -> s{_gcmvvRuntimeVersion = a})

-- | Output only. The time the version was last used for prediction.
gcmvvLastUseTime :: Lens' GoogleCloudMlV1__Version (Maybe UTCTime)
gcmvvLastUseTime
  = lens _gcmvvLastUseTime
      (\ s a -> s{_gcmvvLastUseTime = a})
      . mapping _DateTime

-- | Required.The name specified for the version when it was created. The
-- version name must be unique within the model it is created in.
gcmvvName :: Lens' GoogleCloudMlV1__Version (Maybe Text)
gcmvvName
  = lens _gcmvvName (\ s a -> s{_gcmvvName = a})

-- | Required. The Google Cloud Storage location of the trained model used to
-- create the version. See the [guide to model
-- deployment](\/ml-engine\/docs\/tensorflow\/deploying-models) for more
-- information. When passing Version to
-- [projects.models.versions.create](\/ml-engine\/reference\/rest\/v1\/projects.models.versions\/create)
-- the model service uses the specified location as the source of the
-- model. Once deployed, the model version is hosted by the prediction
-- service, so this location is useful only as a historical record. The
-- total number of model files can\'t exceed 1000.
gcmvvDeploymentURI :: Lens' GoogleCloudMlV1__Version (Maybe Text)
gcmvvDeploymentURI
  = lens _gcmvvDeploymentURI
      (\ s a -> s{_gcmvvDeploymentURI = a})

-- | Manually select the number of nodes to use for serving the model. You
-- should generally use \`auto_scaling\` with an appropriate \`min_nodes\`
-- instead, but this option is available if you want more predictable
-- billing. Beware that latency and error rates will increase if the
-- traffic exceeds that capability of the system to serve it based on the
-- selected number of nodes.
gcmvvManualScaling :: Lens' GoogleCloudMlV1__Version (Maybe GoogleCloudMlV1__ManualScaling)
gcmvvManualScaling
  = lens _gcmvvManualScaling
      (\ s a -> s{_gcmvvManualScaling = a})

-- | Optional. The type of machine on which to serve the model. Currently
-- only applies to online prediction service. The following are currently
-- supported and will be deprecated in Beta release. mls1-highmem-1 1 core
-- 2 Gb RAM mls1-highcpu-4 4 core 2 Gb RAM The following are available in
-- Beta: mls1-c1-m2 1 core 2 Gb RAM Default mls1-c4-m2 4 core 2 Gb RAM
gcmvvMachineType :: Lens' GoogleCloudMlV1__Version (Maybe Text)
gcmvvMachineType
  = lens _gcmvvMachineType
      (\ s a -> s{_gcmvvMachineType = a})

-- | Optional. One or more labels that you can add, to organize your model
-- versions. Each label is a key-value pair, where both the key and the
-- value are arbitrary strings that you supply. For more information, see
-- the documentation on
-- </ml-engine/docs/tensorflow/resource-labels using labels>.
gcmvvLabels :: Lens' GoogleCloudMlV1__Version (Maybe GoogleCloudMlV1__VersionLabels)
gcmvvLabels
  = lens _gcmvvLabels (\ s a -> s{_gcmvvLabels = a})

-- | Output only. The details of a failure or a cancellation.
gcmvvErrorMessage :: Lens' GoogleCloudMlV1__Version (Maybe Text)
gcmvvErrorMessage
  = lens _gcmvvErrorMessage
      (\ s a -> s{_gcmvvErrorMessage = a})

-- | Optional. The description specified for the version when it was created.
gcmvvDescription :: Lens' GoogleCloudMlV1__Version (Maybe Text)
gcmvvDescription
  = lens _gcmvvDescription
      (\ s a -> s{_gcmvvDescription = a})

-- | Output only. The time the version was created.
gcmvvCreateTime :: Lens' GoogleCloudMlV1__Version (Maybe UTCTime)
gcmvvCreateTime
  = lens _gcmvvCreateTime
      (\ s a -> s{_gcmvvCreateTime = a})
      . mapping _DateTime

-- | Output only. If true, this version will be used to handle prediction
-- requests that do not specify a version. You can change the default
-- version by calling
-- [projects.methods.versions.setDefault](\/ml-engine\/reference\/rest\/v1\/projects.models.versions\/setDefault).
gcmvvIsDefault :: Lens' GoogleCloudMlV1__Version (Maybe Bool)
gcmvvIsDefault
  = lens _gcmvvIsDefault
      (\ s a -> s{_gcmvvIsDefault = a})

instance FromJSON GoogleCloudMlV1__Version where
        parseJSON
          = withObject "GoogleCloudMlV1Version"
              (\ o ->
                 GoogleCloudMlV1__Version' <$>
                   (o .:? "framework") <*> (o .:? "etag") <*>
                     (o .:? "state")
                     <*> (o .:? "autoScaling")
                     <*> (o .:? "pythonVersion")
                     <*> (o .:? "runtimeVersion")
                     <*> (o .:? "lastUseTime")
                     <*> (o .:? "name")
                     <*> (o .:? "deploymentUri")
                     <*> (o .:? "manualScaling")
                     <*> (o .:? "machineType")
                     <*> (o .:? "labels")
                     <*> (o .:? "errorMessage")
                     <*> (o .:? "description")
                     <*> (o .:? "createTime")
                     <*> (o .:? "isDefault"))

instance ToJSON GoogleCloudMlV1__Version where
        toJSON GoogleCloudMlV1__Version'{..}
          = object
              (catMaybes
                 [("framework" .=) <$> _gcmvvFramework,
                  ("etag" .=) <$> _gcmvvEtag,
                  ("state" .=) <$> _gcmvvState,
                  ("autoScaling" .=) <$> _gcmvvAutoScaling,
                  ("pythonVersion" .=) <$> _gcmvvPythonVersion,
                  ("runtimeVersion" .=) <$> _gcmvvRuntimeVersion,
                  ("lastUseTime" .=) <$> _gcmvvLastUseTime,
                  ("name" .=) <$> _gcmvvName,
                  ("deploymentUri" .=) <$> _gcmvvDeploymentURI,
                  ("manualScaling" .=) <$> _gcmvvManualScaling,
                  ("machineType" .=) <$> _gcmvvMachineType,
                  ("labels" .=) <$> _gcmvvLabels,
                  ("errorMessage" .=) <$> _gcmvvErrorMessage,
                  ("description" .=) <$> _gcmvvDescription,
                  ("createTime" .=) <$> _gcmvvCreateTime,
                  ("isDefault" .=) <$> _gcmvvIsDefault])

-- | Represents results of a prediction job.
--
-- /See:/ 'googleCloudMlV1__PredictionOutput' smart constructor.
data GoogleCloudMlV1__PredictionOutput =
  GoogleCloudMlV1__PredictionOutput'
    { _gcmvpoNodeHours       :: !(Maybe (Textual Double))
    , _gcmvpoErrorCount      :: !(Maybe (Textual Int64))
    , _gcmvpoPredictionCount :: !(Maybe (Textual Int64))
    , _gcmvpoOutputPath      :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudMlV1__PredictionOutput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvpoNodeHours'
--
-- * 'gcmvpoErrorCount'
--
-- * 'gcmvpoPredictionCount'
--
-- * 'gcmvpoOutputPath'
googleCloudMlV1__PredictionOutput
    :: GoogleCloudMlV1__PredictionOutput
googleCloudMlV1__PredictionOutput =
  GoogleCloudMlV1__PredictionOutput'
    { _gcmvpoNodeHours = Nothing
    , _gcmvpoErrorCount = Nothing
    , _gcmvpoPredictionCount = Nothing
    , _gcmvpoOutputPath = Nothing
    }

-- | Node hours used by the batch prediction job.
gcmvpoNodeHours :: Lens' GoogleCloudMlV1__PredictionOutput (Maybe Double)
gcmvpoNodeHours
  = lens _gcmvpoNodeHours
      (\ s a -> s{_gcmvpoNodeHours = a})
      . mapping _Coerce

-- | The number of data instances which resulted in errors.
gcmvpoErrorCount :: Lens' GoogleCloudMlV1__PredictionOutput (Maybe Int64)
gcmvpoErrorCount
  = lens _gcmvpoErrorCount
      (\ s a -> s{_gcmvpoErrorCount = a})
      . mapping _Coerce

-- | The number of generated predictions.
gcmvpoPredictionCount :: Lens' GoogleCloudMlV1__PredictionOutput (Maybe Int64)
gcmvpoPredictionCount
  = lens _gcmvpoPredictionCount
      (\ s a -> s{_gcmvpoPredictionCount = a})
      . mapping _Coerce

-- | The output Google Cloud Storage location provided at the job creation
-- time.
gcmvpoOutputPath :: Lens' GoogleCloudMlV1__PredictionOutput (Maybe Text)
gcmvpoOutputPath
  = lens _gcmvpoOutputPath
      (\ s a -> s{_gcmvpoOutputPath = a})

instance FromJSON GoogleCloudMlV1__PredictionOutput
         where
        parseJSON
          = withObject "GoogleCloudMlV1PredictionOutput"
              (\ o ->
                 GoogleCloudMlV1__PredictionOutput' <$>
                   (o .:? "nodeHours") <*> (o .:? "errorCount") <*>
                     (o .:? "predictionCount")
                     <*> (o .:? "outputPath"))

instance ToJSON GoogleCloudMlV1__PredictionOutput
         where
        toJSON GoogleCloudMlV1__PredictionOutput'{..}
          = object
              (catMaybes
                 [("nodeHours" .=) <$> _gcmvpoNodeHours,
                  ("errorCount" .=) <$> _gcmvpoErrorCount,
                  ("predictionCount" .=) <$> _gcmvpoPredictionCount,
                  ("outputPath" .=) <$> _gcmvpoOutputPath])

-- | The hyperparameters given to this trial.
--
-- /See:/ 'googleCloudMlV1__HyperparameterOutputHyperparameters' smart constructor.
newtype GoogleCloudMlV1__HyperparameterOutputHyperparameters =
  GoogleCloudMlV1__HyperparameterOutputHyperparameters'
    { _gcmvhohAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudMlV1__HyperparameterOutputHyperparameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvhohAddtional'
googleCloudMlV1__HyperparameterOutputHyperparameters
    :: HashMap Text Text -- ^ 'gcmvhohAddtional'
    -> GoogleCloudMlV1__HyperparameterOutputHyperparameters
googleCloudMlV1__HyperparameterOutputHyperparameters pGcmvhohAddtional_ =
  GoogleCloudMlV1__HyperparameterOutputHyperparameters'
    {_gcmvhohAddtional = _Coerce # pGcmvhohAddtional_}

gcmvhohAddtional :: Lens' GoogleCloudMlV1__HyperparameterOutputHyperparameters (HashMap Text Text)
gcmvhohAddtional
  = lens _gcmvhohAddtional
      (\ s a -> s{_gcmvhohAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudMlV1__HyperparameterOutputHyperparameters
         where
        parseJSON
          = withObject
              "GoogleCloudMlV1HyperparameterOutputHyperparameters"
              (\ o ->
                 GoogleCloudMlV1__HyperparameterOutputHyperparameters'
                   <$> (parseJSONObject o))

instance ToJSON
           GoogleCloudMlV1__HyperparameterOutputHyperparameters
         where
        toJSON = toJSON . _gcmvhohAddtional

-- | Request for predictions to be issued against a trained model.
--
-- /See:/ 'googleCloudMlV1__PredictRequest' smart constructor.
newtype GoogleCloudMlV1__PredictRequest =
  GoogleCloudMlV1__PredictRequest'
    { _gcmvprHTTPBody :: Maybe GoogleAPI__HTTPBody
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudMlV1__PredictRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvprHTTPBody'
googleCloudMlV1__PredictRequest
    :: GoogleCloudMlV1__PredictRequest
googleCloudMlV1__PredictRequest =
  GoogleCloudMlV1__PredictRequest' {_gcmvprHTTPBody = Nothing}

-- | Required. The prediction request body.
gcmvprHTTPBody :: Lens' GoogleCloudMlV1__PredictRequest (Maybe GoogleAPI__HTTPBody)
gcmvprHTTPBody
  = lens _gcmvprHTTPBody
      (\ s a -> s{_gcmvprHTTPBody = a})

instance FromJSON GoogleCloudMlV1__PredictRequest
         where
        parseJSON
          = withObject "GoogleCloudMlV1PredictRequest"
              (\ o ->
                 GoogleCloudMlV1__PredictRequest' <$>
                   (o .:? "httpBody"))

instance ToJSON GoogleCloudMlV1__PredictRequest where
        toJSON GoogleCloudMlV1__PredictRequest'{..}
          = object
              (catMaybes [("httpBody" .=) <$> _gcmvprHTTPBody])

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
newtype GoogleLongrunning__OperationResponse =
  GoogleLongrunning__OperationResponse'
    { _glorAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)

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
    {_glorAddtional = _Coerce # pGlorAddtional_}

-- | Properties of the object. Contains field \'type with type URL.
glorAddtional :: Lens' GoogleLongrunning__OperationResponse (HashMap Text JSONValue)
glorAddtional
  = lens _glorAddtional
      (\ s a -> s{_glorAddtional = a})
      . _Coerce

instance FromJSON
           GoogleLongrunning__OperationResponse
         where
        parseJSON
          = withObject "GoogleLongrunningOperationResponse"
              (\ o ->
                 GoogleLongrunning__OperationResponse' <$>
                   (parseJSONObject o))

instance ToJSON GoogleLongrunning__OperationResponse
         where
        toJSON = toJSON . _glorAddtional

-- | Provides the configuration for logging a type of permissions. Example: {
-- \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\",
-- \"exempted_members\": [ \"user:foo\'gmail.com\" ] }, { \"log_type\":
-- \"DATA_WRITE\", } ] } This enables \'DATA_READ\' and \'DATA_WRITE\'
-- logging, while exempting foo\'gmail.com from DATA_READ logging.
--
-- /See:/ 'googleIAMV1__AuditLogConfig' smart constructor.
data GoogleIAMV1__AuditLogConfig =
  GoogleIAMV1__AuditLogConfig'
    { _givalcLogType         :: !(Maybe GoogleIAMV1__AuditLogConfigLogType)
    , _givalcExemptedMembers :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleIAMV1__AuditLogConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'givalcLogType'
--
-- * 'givalcExemptedMembers'
googleIAMV1__AuditLogConfig
    :: GoogleIAMV1__AuditLogConfig
googleIAMV1__AuditLogConfig =
  GoogleIAMV1__AuditLogConfig'
    {_givalcLogType = Nothing, _givalcExemptedMembers = Nothing}

-- | The log type that this config enables.
givalcLogType :: Lens' GoogleIAMV1__AuditLogConfig (Maybe GoogleIAMV1__AuditLogConfigLogType)
givalcLogType
  = lens _givalcLogType
      (\ s a -> s{_givalcLogType = a})

-- | Specifies the identities that do not cause logging for this type of
-- permission. Follows the same format of Binding.members.
givalcExemptedMembers :: Lens' GoogleIAMV1__AuditLogConfig [Text]
givalcExemptedMembers
  = lens _givalcExemptedMembers
      (\ s a -> s{_givalcExemptedMembers = a})
      . _Default
      . _Coerce

instance FromJSON GoogleIAMV1__AuditLogConfig where
        parseJSON
          = withObject "GoogleIAMV1AuditLogConfig"
              (\ o ->
                 GoogleIAMV1__AuditLogConfig' <$>
                   (o .:? "logType") <*>
                     (o .:? "exemptedMembers" .!= mempty))

instance ToJSON GoogleIAMV1__AuditLogConfig where
        toJSON GoogleIAMV1__AuditLogConfig'{..}
          = object
              (catMaybes
                 [("logType" .=) <$> _givalcLogType,
                  ("exemptedMembers" .=) <$> _givalcExemptedMembers])

-- | Response message for the ListModels method.
--
-- /See:/ 'googleCloudMlV1__ListModelsResponse' smart constructor.
data GoogleCloudMlV1__ListModelsResponse =
  GoogleCloudMlV1__ListModelsResponse'
    { _gcmvlmrNextPageToken :: !(Maybe Text)
    , _gcmvlmrModels        :: !(Maybe [GoogleCloudMlV1__Model])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudMlV1__ListModelsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvlmrNextPageToken'
--
-- * 'gcmvlmrModels'
googleCloudMlV1__ListModelsResponse
    :: GoogleCloudMlV1__ListModelsResponse
googleCloudMlV1__ListModelsResponse =
  GoogleCloudMlV1__ListModelsResponse'
    {_gcmvlmrNextPageToken = Nothing, _gcmvlmrModels = Nothing}

-- | Optional. Pass this token as the \`page_token\` field of the request for
-- a subsequent call.
gcmvlmrNextPageToken :: Lens' GoogleCloudMlV1__ListModelsResponse (Maybe Text)
gcmvlmrNextPageToken
  = lens _gcmvlmrNextPageToken
      (\ s a -> s{_gcmvlmrNextPageToken = a})

-- | The list of models.
gcmvlmrModels :: Lens' GoogleCloudMlV1__ListModelsResponse [GoogleCloudMlV1__Model]
gcmvlmrModels
  = lens _gcmvlmrModels
      (\ s a -> s{_gcmvlmrModels = a})
      . _Default
      . _Coerce

instance FromJSON GoogleCloudMlV1__ListModelsResponse
         where
        parseJSON
          = withObject "GoogleCloudMlV1ListModelsResponse"
              (\ o ->
                 GoogleCloudMlV1__ListModelsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "models" .!= mempty))

instance ToJSON GoogleCloudMlV1__ListModelsResponse
         where
        toJSON GoogleCloudMlV1__ListModelsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _gcmvlmrNextPageToken,
                  ("models" .=) <$> _gcmvlmrModels])

-- | The response message for Operations.ListOperations.
--
-- /See:/ 'googleLongrunning__ListOperationsResponse' smart constructor.
data GoogleLongrunning__ListOperationsResponse =
  GoogleLongrunning__ListOperationsResponse'
    { _gllorNextPageToken :: !(Maybe Text)
    , _gllorOperations    :: !(Maybe [GoogleLongrunning__Operation])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

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
    {_gllorNextPageToken = Nothing, _gllorOperations = Nothing}

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
           GoogleLongrunning__ListOperationsResponse
         where
        parseJSON
          = withObject
              "GoogleLongrunningListOperationsResponse"
              (\ o ->
                 GoogleLongrunning__ListOperationsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "operations" .!= mempty))

instance ToJSON
           GoogleLongrunning__ListOperationsResponse
         where
        toJSON GoogleLongrunning__ListOperationsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _gllorNextPageToken,
                  ("operations" .=) <$> _gllorOperations])

-- | Represents a hardware accelerator request config.
--
-- /See:/ 'googleCloudMlV1__AcceleratorConfig' smart constructor.
data GoogleCloudMlV1__AcceleratorConfig =
  GoogleCloudMlV1__AcceleratorConfig'
    { _gcmvacCount :: !(Maybe (Textual Int64))
    , _gcmvacType  :: !(Maybe GoogleCloudMlV1__AcceleratorConfigType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudMlV1__AcceleratorConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvacCount'
--
-- * 'gcmvacType'
googleCloudMlV1__AcceleratorConfig
    :: GoogleCloudMlV1__AcceleratorConfig
googleCloudMlV1__AcceleratorConfig =
  GoogleCloudMlV1__AcceleratorConfig'
    {_gcmvacCount = Nothing, _gcmvacType = Nothing}

-- | The number of accelerators to attach to each machine running the job.
gcmvacCount :: Lens' GoogleCloudMlV1__AcceleratorConfig (Maybe Int64)
gcmvacCount
  = lens _gcmvacCount (\ s a -> s{_gcmvacCount = a}) .
      mapping _Coerce

-- | The available types of accelerators.
gcmvacType :: Lens' GoogleCloudMlV1__AcceleratorConfig (Maybe GoogleCloudMlV1__AcceleratorConfigType)
gcmvacType
  = lens _gcmvacType (\ s a -> s{_gcmvacType = a})

instance FromJSON GoogleCloudMlV1__AcceleratorConfig
         where
        parseJSON
          = withObject "GoogleCloudMlV1AcceleratorConfig"
              (\ o ->
                 GoogleCloudMlV1__AcceleratorConfig' <$>
                   (o .:? "count") <*> (o .:? "type"))

instance ToJSON GoogleCloudMlV1__AcceleratorConfig
         where
        toJSON GoogleCloudMlV1__AcceleratorConfig'{..}
          = object
              (catMaybes
                 [("count" .=) <$> _gcmvacCount,
                  ("type" .=) <$> _gcmvacType])

-- | Defines an Identity and Access Management (IAM) policy. It is used to
-- specify access control policies for Cloud Platform resources. A
-- \`Policy\` consists of a list of \`bindings\`. A \`binding\` binds a
-- list of \`members\` to a \`role\`, where the members can be user
-- accounts, Google groups, Google domains, and service accounts. A
-- \`role\` is a named list of permissions defined by IAM. **JSON Example**
-- { \"bindings\": [ { \"role\": \"roles\/owner\", \"members\": [
-- \"user:mike\'example.com\", \"group:admins\'example.com\",
-- \"domain:google.com\",
-- \"serviceAccount:my-other-app\'appspot.gserviceaccount.com\" ] }, {
-- \"role\": \"roles\/viewer\", \"members\": [\"user:sean\'example.com\"] }
-- ] } **YAML Example** bindings: - members: - user:mike\'example.com -
-- group:admins\'example.com - domain:google.com -
-- serviceAccount:my-other-app\'appspot.gserviceaccount.com role:
-- roles\/owner - members: - user:sean\'example.com role: roles\/viewer For
-- a description of IAM and its features, see the [IAM developer\'s
-- guide](https:\/\/cloud.google.com\/iam\/docs).
--
-- /See:/ 'googleIAMV1__Policy' smart constructor.
data GoogleIAMV1__Policy =
  GoogleIAMV1__Policy'
    { _givpAuditConfigs :: !(Maybe [GoogleIAMV1__AuditConfig])
    , _givpEtag         :: !(Maybe Bytes)
    , _givpVersion      :: !(Maybe (Textual Int32))
    , _givpBindings     :: !(Maybe [GoogleIAMV1__Binding])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleIAMV1__Policy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'givpAuditConfigs'
--
-- * 'givpEtag'
--
-- * 'givpVersion'
--
-- * 'givpBindings'
googleIAMV1__Policy
    :: GoogleIAMV1__Policy
googleIAMV1__Policy =
  GoogleIAMV1__Policy'
    { _givpAuditConfigs = Nothing
    , _givpEtag = Nothing
    , _givpVersion = Nothing
    , _givpBindings = Nothing
    }

-- | Specifies cloud audit logging configuration for this policy.
givpAuditConfigs :: Lens' GoogleIAMV1__Policy [GoogleIAMV1__AuditConfig]
givpAuditConfigs
  = lens _givpAuditConfigs
      (\ s a -> s{_givpAuditConfigs = a})
      . _Default
      . _Coerce

-- | \`etag\` is used for optimistic concurrency control as a way to help
-- prevent simultaneous updates of a policy from overwriting each other. It
-- is strongly suggested that systems make use of the \`etag\` in the
-- read-modify-write cycle to perform policy updates in order to avoid race
-- conditions: An \`etag\` is returned in the response to \`getIamPolicy\`,
-- and systems are expected to put that etag in the request to
-- \`setIamPolicy\` to ensure that their change will be applied to the same
-- version of the policy. If no \`etag\` is provided in the call to
-- \`setIamPolicy\`, then the existing policy is overwritten blindly.
givpEtag :: Lens' GoogleIAMV1__Policy (Maybe ByteString)
givpEtag
  = lens _givpEtag (\ s a -> s{_givpEtag = a}) .
      mapping _Bytes

-- | Deprecated.
givpVersion :: Lens' GoogleIAMV1__Policy (Maybe Int32)
givpVersion
  = lens _givpVersion (\ s a -> s{_givpVersion = a}) .
      mapping _Coerce

-- | Associates a list of \`members\` to a \`role\`. \`bindings\` with no
-- members will result in an error.
givpBindings :: Lens' GoogleIAMV1__Policy [GoogleIAMV1__Binding]
givpBindings
  = lens _givpBindings (\ s a -> s{_givpBindings = a})
      . _Default
      . _Coerce

instance FromJSON GoogleIAMV1__Policy where
        parseJSON
          = withObject "GoogleIAMV1Policy"
              (\ o ->
                 GoogleIAMV1__Policy' <$>
                   (o .:? "auditConfigs" .!= mempty) <*> (o .:? "etag")
                     <*> (o .:? "version")
                     <*> (o .:? "bindings" .!= mempty))

instance ToJSON GoogleIAMV1__Policy where
        toJSON GoogleIAMV1__Policy'{..}
          = object
              (catMaybes
                 [("auditConfigs" .=) <$> _givpAuditConfigs,
                  ("etag" .=) <$> _givpEtag,
                  ("version" .=) <$> _givpVersion,
                  ("bindings" .=) <$> _givpBindings])

-- | Response message for \`TestIamPermissions\` method.
--
-- /See:/ 'googleIAMV1__TestIAMPermissionsResponse' smart constructor.
newtype GoogleIAMV1__TestIAMPermissionsResponse =
  GoogleIAMV1__TestIAMPermissionsResponse'
    { _givtiprPermissions :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleIAMV1__TestIAMPermissionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'givtiprPermissions'
googleIAMV1__TestIAMPermissionsResponse
    :: GoogleIAMV1__TestIAMPermissionsResponse
googleIAMV1__TestIAMPermissionsResponse =
  GoogleIAMV1__TestIAMPermissionsResponse' {_givtiprPermissions = Nothing}

-- | A subset of \`TestPermissionsRequest.permissions\` that the caller is
-- allowed.
givtiprPermissions :: Lens' GoogleIAMV1__TestIAMPermissionsResponse [Text]
givtiprPermissions
  = lens _givtiprPermissions
      (\ s a -> s{_givtiprPermissions = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleIAMV1__TestIAMPermissionsResponse
         where
        parseJSON
          = withObject "GoogleIAMV1TestIAMPermissionsResponse"
              (\ o ->
                 GoogleIAMV1__TestIAMPermissionsResponse' <$>
                   (o .:? "permissions" .!= mempty))

instance ToJSON
           GoogleIAMV1__TestIAMPermissionsResponse
         where
        toJSON GoogleIAMV1__TestIAMPermissionsResponse'{..}
          = object
              (catMaybes
                 [("permissions" .=) <$> _givtiprPermissions])

-- | Response message for the ListJobs method.
--
-- /See:/ 'googleCloudMlV1__ListJobsResponse' smart constructor.
data GoogleCloudMlV1__ListJobsResponse =
  GoogleCloudMlV1__ListJobsResponse'
    { _gcmvljrNextPageToken :: !(Maybe Text)
    , _gcmvljrJobs          :: !(Maybe [GoogleCloudMlV1__Job])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudMlV1__ListJobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvljrNextPageToken'
--
-- * 'gcmvljrJobs'
googleCloudMlV1__ListJobsResponse
    :: GoogleCloudMlV1__ListJobsResponse
googleCloudMlV1__ListJobsResponse =
  GoogleCloudMlV1__ListJobsResponse'
    {_gcmvljrNextPageToken = Nothing, _gcmvljrJobs = Nothing}

-- | Optional. Pass this token as the \`page_token\` field of the request for
-- a subsequent call.
gcmvljrNextPageToken :: Lens' GoogleCloudMlV1__ListJobsResponse (Maybe Text)
gcmvljrNextPageToken
  = lens _gcmvljrNextPageToken
      (\ s a -> s{_gcmvljrNextPageToken = a})

-- | The list of jobs.
gcmvljrJobs :: Lens' GoogleCloudMlV1__ListJobsResponse [GoogleCloudMlV1__Job]
gcmvljrJobs
  = lens _gcmvljrJobs (\ s a -> s{_gcmvljrJobs = a}) .
      _Default
      . _Coerce

instance FromJSON GoogleCloudMlV1__ListJobsResponse
         where
        parseJSON
          = withObject "GoogleCloudMlV1ListJobsResponse"
              (\ o ->
                 GoogleCloudMlV1__ListJobsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "jobs" .!= mempty))

instance ToJSON GoogleCloudMlV1__ListJobsResponse
         where
        toJSON GoogleCloudMlV1__ListJobsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _gcmvljrNextPageToken,
                  ("jobs" .=) <$> _gcmvljrJobs])

-- | Response message for the ListVersions method.
--
-- /See:/ 'googleCloudMlV1__ListVersionsResponse' smart constructor.
data GoogleCloudMlV1__ListVersionsResponse =
  GoogleCloudMlV1__ListVersionsResponse'
    { _gcmvlvrNextPageToken :: !(Maybe Text)
    , _gcmvlvrVersions      :: !(Maybe [GoogleCloudMlV1__Version])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudMlV1__ListVersionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvlvrNextPageToken'
--
-- * 'gcmvlvrVersions'
googleCloudMlV1__ListVersionsResponse
    :: GoogleCloudMlV1__ListVersionsResponse
googleCloudMlV1__ListVersionsResponse =
  GoogleCloudMlV1__ListVersionsResponse'
    {_gcmvlvrNextPageToken = Nothing, _gcmvlvrVersions = Nothing}

-- | Optional. Pass this token as the \`page_token\` field of the request for
-- a subsequent call.
gcmvlvrNextPageToken :: Lens' GoogleCloudMlV1__ListVersionsResponse (Maybe Text)
gcmvlvrNextPageToken
  = lens _gcmvlvrNextPageToken
      (\ s a -> s{_gcmvlvrNextPageToken = a})

-- | The list of versions.
gcmvlvrVersions :: Lens' GoogleCloudMlV1__ListVersionsResponse [GoogleCloudMlV1__Version]
gcmvlvrVersions
  = lens _gcmvlvrVersions
      (\ s a -> s{_gcmvlvrVersions = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudMlV1__ListVersionsResponse
         where
        parseJSON
          = withObject "GoogleCloudMlV1ListVersionsResponse"
              (\ o ->
                 GoogleCloudMlV1__ListVersionsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "versions" .!= mempty))

instance ToJSON GoogleCloudMlV1__ListVersionsResponse
         where
        toJSON GoogleCloudMlV1__ListVersionsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _gcmvlvrNextPageToken,
                  ("versions" .=) <$> _gcmvlvrVersions])

-- | Represents an expression text. Example: title: \"User account presence\"
-- description: \"Determines whether the request has a user account\"
-- expression: \"size(request.user) > 0\"
--
-- /See:/ 'googleType__Expr' smart constructor.
data GoogleType__Expr =
  GoogleType__Expr'
    { _gteLocation    :: !(Maybe Text)
    , _gteExpression  :: !(Maybe Text)
    , _gteTitle       :: !(Maybe Text)
    , _gteDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleType__Expr' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gteLocation'
--
-- * 'gteExpression'
--
-- * 'gteTitle'
--
-- * 'gteDescription'
googleType__Expr
    :: GoogleType__Expr
googleType__Expr =
  GoogleType__Expr'
    { _gteLocation = Nothing
    , _gteExpression = Nothing
    , _gteTitle = Nothing
    , _gteDescription = Nothing
    }

-- | An optional string indicating the location of the expression for error
-- reporting, e.g. a file name and a position in the file.
gteLocation :: Lens' GoogleType__Expr (Maybe Text)
gteLocation
  = lens _gteLocation (\ s a -> s{_gteLocation = a})

-- | Textual representation of an expression in Common Expression Language
-- syntax. The application context of the containing message determines
-- which well-known feature set of CEL is supported.
gteExpression :: Lens' GoogleType__Expr (Maybe Text)
gteExpression
  = lens _gteExpression
      (\ s a -> s{_gteExpression = a})

-- | An optional title for the expression, i.e. a short string describing its
-- purpose. This can be used e.g. in UIs which allow to enter the
-- expression.
gteTitle :: Lens' GoogleType__Expr (Maybe Text)
gteTitle = lens _gteTitle (\ s a -> s{_gteTitle = a})

-- | An optional description of the expression. This is a longer text which
-- describes the expression, e.g. when hovered over it in a UI.
gteDescription :: Lens' GoogleType__Expr (Maybe Text)
gteDescription
  = lens _gteDescription
      (\ s a -> s{_gteDescription = a})

instance FromJSON GoogleType__Expr where
        parseJSON
          = withObject "GoogleTypeExpr"
              (\ o ->
                 GoogleType__Expr' <$>
                   (o .:? "location") <*> (o .:? "expression") <*>
                     (o .:? "title")
                     <*> (o .:? "description"))

instance ToJSON GoogleType__Expr where
        toJSON GoogleType__Expr'{..}
          = object
              (catMaybes
                 [("location" .=) <$> _gteLocation,
                  ("expression" .=) <$> _gteExpression,
                  ("title" .=) <$> _gteTitle,
                  ("description" .=) <$> _gteDescription])

-- | Represents the result of a single hyperparameter tuning trial from a
-- training job. The TrainingOutput object that is returned on successful
-- completion of a training job with hyperparameter tuning includes a list
-- of HyperparameterOutput objects, one for each successful trial.
--
-- /See:/ 'googleCloudMlV1__HyperparameterOutput' smart constructor.
data GoogleCloudMlV1__HyperparameterOutput =
  GoogleCloudMlV1__HyperparameterOutput'
    { _gcmvhoIsTrialStoppedEarly :: !(Maybe Bool)
    , _gcmvhoAllMetrics          :: !(Maybe [GoogleCloudMlV1_HyperparameterOutput_HyperparameterMetric])
    , _gcmvhoHyperparameters     :: !(Maybe GoogleCloudMlV1__HyperparameterOutputHyperparameters)
    , _gcmvhoTrialId             :: !(Maybe Text)
    , _gcmvhoFinalMetric         :: !(Maybe GoogleCloudMlV1_HyperparameterOutput_HyperparameterMetric)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudMlV1__HyperparameterOutput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvhoIsTrialStoppedEarly'
--
-- * 'gcmvhoAllMetrics'
--
-- * 'gcmvhoHyperparameters'
--
-- * 'gcmvhoTrialId'
--
-- * 'gcmvhoFinalMetric'
googleCloudMlV1__HyperparameterOutput
    :: GoogleCloudMlV1__HyperparameterOutput
googleCloudMlV1__HyperparameterOutput =
  GoogleCloudMlV1__HyperparameterOutput'
    { _gcmvhoIsTrialStoppedEarly = Nothing
    , _gcmvhoAllMetrics = Nothing
    , _gcmvhoHyperparameters = Nothing
    , _gcmvhoTrialId = Nothing
    , _gcmvhoFinalMetric = Nothing
    }

-- | True if the trial is stopped early.
gcmvhoIsTrialStoppedEarly :: Lens' GoogleCloudMlV1__HyperparameterOutput (Maybe Bool)
gcmvhoIsTrialStoppedEarly
  = lens _gcmvhoIsTrialStoppedEarly
      (\ s a -> s{_gcmvhoIsTrialStoppedEarly = a})

-- | All recorded object metrics for this trial. This field is not currently
-- populated.
gcmvhoAllMetrics :: Lens' GoogleCloudMlV1__HyperparameterOutput [GoogleCloudMlV1_HyperparameterOutput_HyperparameterMetric]
gcmvhoAllMetrics
  = lens _gcmvhoAllMetrics
      (\ s a -> s{_gcmvhoAllMetrics = a})
      . _Default
      . _Coerce

-- | The hyperparameters given to this trial.
gcmvhoHyperparameters :: Lens' GoogleCloudMlV1__HyperparameterOutput (Maybe GoogleCloudMlV1__HyperparameterOutputHyperparameters)
gcmvhoHyperparameters
  = lens _gcmvhoHyperparameters
      (\ s a -> s{_gcmvhoHyperparameters = a})

-- | The trial id for these results.
gcmvhoTrialId :: Lens' GoogleCloudMlV1__HyperparameterOutput (Maybe Text)
gcmvhoTrialId
  = lens _gcmvhoTrialId
      (\ s a -> s{_gcmvhoTrialId = a})

-- | The final objective metric seen for this trial.
gcmvhoFinalMetric :: Lens' GoogleCloudMlV1__HyperparameterOutput (Maybe GoogleCloudMlV1_HyperparameterOutput_HyperparameterMetric)
gcmvhoFinalMetric
  = lens _gcmvhoFinalMetric
      (\ s a -> s{_gcmvhoFinalMetric = a})

instance FromJSON
           GoogleCloudMlV1__HyperparameterOutput
         where
        parseJSON
          = withObject "GoogleCloudMlV1HyperparameterOutput"
              (\ o ->
                 GoogleCloudMlV1__HyperparameterOutput' <$>
                   (o .:? "isTrialStoppedEarly") <*>
                     (o .:? "allMetrics" .!= mempty)
                     <*> (o .:? "hyperparameters")
                     <*> (o .:? "trialId")
                     <*> (o .:? "finalMetric"))

instance ToJSON GoogleCloudMlV1__HyperparameterOutput
         where
        toJSON GoogleCloudMlV1__HyperparameterOutput'{..}
          = object
              (catMaybes
                 [("isTrialStoppedEarly" .=) <$>
                    _gcmvhoIsTrialStoppedEarly,
                  ("allMetrics" .=) <$> _gcmvhoAllMetrics,
                  ("hyperparameters" .=) <$> _gcmvhoHyperparameters,
                  ("trialId" .=) <$> _gcmvhoTrialId,
                  ("finalMetric" .=) <$> _gcmvhoFinalMetric])

-- | Returns service account information associated with a project.
--
-- /See:/ 'googleCloudMlV1__GetConfigResponse' smart constructor.
data GoogleCloudMlV1__GetConfigResponse =
  GoogleCloudMlV1__GetConfigResponse'
    { _gcmvgcrConfig                :: !(Maybe GoogleCloudMlV1__Config)
    , _gcmvgcrServiceAccount        :: !(Maybe Text)
    , _gcmvgcrServiceAccountProject :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudMlV1__GetConfigResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvgcrConfig'
--
-- * 'gcmvgcrServiceAccount'
--
-- * 'gcmvgcrServiceAccountProject'
googleCloudMlV1__GetConfigResponse
    :: GoogleCloudMlV1__GetConfigResponse
googleCloudMlV1__GetConfigResponse =
  GoogleCloudMlV1__GetConfigResponse'
    { _gcmvgcrConfig = Nothing
    , _gcmvgcrServiceAccount = Nothing
    , _gcmvgcrServiceAccountProject = Nothing
    }

gcmvgcrConfig :: Lens' GoogleCloudMlV1__GetConfigResponse (Maybe GoogleCloudMlV1__Config)
gcmvgcrConfig
  = lens _gcmvgcrConfig
      (\ s a -> s{_gcmvgcrConfig = a})

-- | The service account Cloud ML uses to access resources in the project.
gcmvgcrServiceAccount :: Lens' GoogleCloudMlV1__GetConfigResponse (Maybe Text)
gcmvgcrServiceAccount
  = lens _gcmvgcrServiceAccount
      (\ s a -> s{_gcmvgcrServiceAccount = a})

-- | The project number for \`service_account\`.
gcmvgcrServiceAccountProject :: Lens' GoogleCloudMlV1__GetConfigResponse (Maybe Int64)
gcmvgcrServiceAccountProject
  = lens _gcmvgcrServiceAccountProject
      (\ s a -> s{_gcmvgcrServiceAccountProject = a})
      . mapping _Coerce

instance FromJSON GoogleCloudMlV1__GetConfigResponse
         where
        parseJSON
          = withObject "GoogleCloudMlV1GetConfigResponse"
              (\ o ->
                 GoogleCloudMlV1__GetConfigResponse' <$>
                   (o .:? "config") <*> (o .:? "serviceAccount") <*>
                     (o .:? "serviceAccountProject"))

instance ToJSON GoogleCloudMlV1__GetConfigResponse
         where
        toJSON GoogleCloudMlV1__GetConfigResponse'{..}
          = object
              (catMaybes
                 [("config" .=) <$> _gcmvgcrConfig,
                  ("serviceAccount" .=) <$> _gcmvgcrServiceAccount,
                  ("serviceAccountProject" .=) <$>
                    _gcmvgcrServiceAccountProject])

-- | Options for manually scaling a model.
--
-- /See:/ 'googleCloudMlV1__ManualScaling' smart constructor.
newtype GoogleCloudMlV1__ManualScaling =
  GoogleCloudMlV1__ManualScaling'
    { _gcmvmsNodes :: Maybe (Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudMlV1__ManualScaling' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvmsNodes'
googleCloudMlV1__ManualScaling
    :: GoogleCloudMlV1__ManualScaling
googleCloudMlV1__ManualScaling =
  GoogleCloudMlV1__ManualScaling' {_gcmvmsNodes = Nothing}

-- | The number of nodes to allocate for this model. These nodes are always
-- up, starting from the time the model is deployed, so the cost of
-- operating this model will be proportional to \`nodes\` * number of hours
-- since last billing cycle plus the cost for each prediction performed.
gcmvmsNodes :: Lens' GoogleCloudMlV1__ManualScaling (Maybe Int32)
gcmvmsNodes
  = lens _gcmvmsNodes (\ s a -> s{_gcmvmsNodes = a}) .
      mapping _Coerce

instance FromJSON GoogleCloudMlV1__ManualScaling
         where
        parseJSON
          = withObject "GoogleCloudMlV1ManualScaling"
              (\ o ->
                 GoogleCloudMlV1__ManualScaling' <$> (o .:? "nodes"))

instance ToJSON GoogleCloudMlV1__ManualScaling where
        toJSON GoogleCloudMlV1__ManualScaling'{..}
          = object (catMaybes [("nodes" .=) <$> _gcmvmsNodes])

-- | This resource represents a long-running operation that is the result of
-- a network API call.
--
-- /See:/ 'googleLongrunning__Operation' smart constructor.
data GoogleLongrunning__Operation =
  GoogleLongrunning__Operation'
    { _gloDone     :: !(Maybe Bool)
    , _gloError    :: !(Maybe GoogleRpc__Status)
    , _gloResponse :: !(Maybe GoogleLongrunning__OperationResponse)
    , _gloName     :: !(Maybe Text)
    , _gloMetadata :: !(Maybe GoogleLongrunning__OperationMetadata)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

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
-- If \`true\`, the operation is completed, and either \`error\` or
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

-- | Represents a machine learning solution. A model can have multiple
-- versions, each of which is a deployed, trained model ready to receive
-- prediction requests. The model itself is just a container.
--
-- /See:/ 'googleCloudMlV1__Model' smart constructor.
data GoogleCloudMlV1__Model =
  GoogleCloudMlV1__Model'
    { _gcmvmEtag                    :: !(Maybe Bytes)
    , _gcmvmRegions                 :: !(Maybe [Text])
    , _gcmvmDefaultVersion          :: !(Maybe GoogleCloudMlV1__Version)
    , _gcmvmName                    :: !(Maybe Text)
    , _gcmvmLabels                  :: !(Maybe GoogleCloudMlV1__ModelLabels)
    , _gcmvmDescription             :: !(Maybe Text)
    , _gcmvmOnlinePredictionLogging :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudMlV1__Model' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvmEtag'
--
-- * 'gcmvmRegions'
--
-- * 'gcmvmDefaultVersion'
--
-- * 'gcmvmName'
--
-- * 'gcmvmLabels'
--
-- * 'gcmvmDescription'
--
-- * 'gcmvmOnlinePredictionLogging'
googleCloudMlV1__Model
    :: GoogleCloudMlV1__Model
googleCloudMlV1__Model =
  GoogleCloudMlV1__Model'
    { _gcmvmEtag = Nothing
    , _gcmvmRegions = Nothing
    , _gcmvmDefaultVersion = Nothing
    , _gcmvmName = Nothing
    , _gcmvmLabels = Nothing
    , _gcmvmDescription = Nothing
    , _gcmvmOnlinePredictionLogging = Nothing
    }

-- | \`etag\` is used for optimistic concurrency control as a way to help
-- prevent simultaneous updates of a model from overwriting each other. It
-- is strongly suggested that systems make use of the \`etag\` in the
-- read-modify-write cycle to perform model updates in order to avoid race
-- conditions: An \`etag\` is returned in the response to \`GetModel\`, and
-- systems are expected to put that etag in the request to \`UpdateModel\`
-- to ensure that their change will be applied to the model as intended.
gcmvmEtag :: Lens' GoogleCloudMlV1__Model (Maybe ByteString)
gcmvmEtag
  = lens _gcmvmEtag (\ s a -> s{_gcmvmEtag = a}) .
      mapping _Bytes

-- | Optional. The list of regions where the model is going to be deployed.
-- Currently only one region per model is supported. Defaults to
-- \'us-central1\' if nothing is set. See the
-- </ml-engine/docs/tensorflow/regions available regions> for ML Engine
-- services. Note: * No matter where a model is deployed, it can always be
-- accessed by users from anywhere, both for online and batch prediction. *
-- The region for a batch prediction job is set by the region field when
-- submitting the batch prediction job and does not take its value from
-- this field.
gcmvmRegions :: Lens' GoogleCloudMlV1__Model [Text]
gcmvmRegions
  = lens _gcmvmRegions (\ s a -> s{_gcmvmRegions = a})
      . _Default
      . _Coerce

-- | Output only. The default version of the model. This version will be used
-- to handle prediction requests that do not specify a version. You can
-- change the default version by calling
-- [projects.methods.versions.setDefault](\/ml-engine\/reference\/rest\/v1\/projects.models.versions\/setDefault).
gcmvmDefaultVersion :: Lens' GoogleCloudMlV1__Model (Maybe GoogleCloudMlV1__Version)
gcmvmDefaultVersion
  = lens _gcmvmDefaultVersion
      (\ s a -> s{_gcmvmDefaultVersion = a})

-- | Required. The name specified for the model when it was created. The
-- model name must be unique within the project it is created in.
gcmvmName :: Lens' GoogleCloudMlV1__Model (Maybe Text)
gcmvmName
  = lens _gcmvmName (\ s a -> s{_gcmvmName = a})

-- | Optional. One or more labels that you can add, to organize your models.
-- Each label is a key-value pair, where both the key and the value are
-- arbitrary strings that you supply. For more information, see the
-- documentation on
-- </ml-engine/docs/tensorflow/resource-labels using labels>.
gcmvmLabels :: Lens' GoogleCloudMlV1__Model (Maybe GoogleCloudMlV1__ModelLabels)
gcmvmLabels
  = lens _gcmvmLabels (\ s a -> s{_gcmvmLabels = a})

-- | Optional. The description specified for the model when it was created.
gcmvmDescription :: Lens' GoogleCloudMlV1__Model (Maybe Text)
gcmvmDescription
  = lens _gcmvmDescription
      (\ s a -> s{_gcmvmDescription = a})

-- | Optional. If true, enables StackDriver Logging for online prediction.
-- Default is false.
gcmvmOnlinePredictionLogging :: Lens' GoogleCloudMlV1__Model (Maybe Bool)
gcmvmOnlinePredictionLogging
  = lens _gcmvmOnlinePredictionLogging
      (\ s a -> s{_gcmvmOnlinePredictionLogging = a})

instance FromJSON GoogleCloudMlV1__Model where
        parseJSON
          = withObject "GoogleCloudMlV1Model"
              (\ o ->
                 GoogleCloudMlV1__Model' <$>
                   (o .:? "etag") <*> (o .:? "regions" .!= mempty) <*>
                     (o .:? "defaultVersion")
                     <*> (o .:? "name")
                     <*> (o .:? "labels")
                     <*> (o .:? "description")
                     <*> (o .:? "onlinePredictionLogging"))

instance ToJSON GoogleCloudMlV1__Model where
        toJSON GoogleCloudMlV1__Model'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _gcmvmEtag,
                  ("regions" .=) <$> _gcmvmRegions,
                  ("defaultVersion" .=) <$> _gcmvmDefaultVersion,
                  ("name" .=) <$> _gcmvmName,
                  ("labels" .=) <$> _gcmvmLabels,
                  ("description" .=) <$> _gcmvmDescription,
                  ("onlinePredictionLogging" .=) <$>
                    _gcmvmOnlinePredictionLogging])

-- | Represents a training or prediction job.
--
-- /See:/ 'googleCloudMlV1__Job' smart constructor.
data GoogleCloudMlV1__Job =
  GoogleCloudMlV1__Job'
    { _gcmvjEtag             :: !(Maybe Bytes)
    , _gcmvjState            :: !(Maybe GoogleCloudMlV1__JobState)
    , _gcmvjTrainingOutput   :: !(Maybe GoogleCloudMlV1__TrainingOutput)
    , _gcmvjJobId            :: !(Maybe Text)
    , _gcmvjStartTime        :: !(Maybe DateTime')
    , _gcmvjPredictionInput  :: !(Maybe GoogleCloudMlV1__PredictionInput)
    , _gcmvjEndTime          :: !(Maybe DateTime')
    , _gcmvjPredictionOutput :: !(Maybe GoogleCloudMlV1__PredictionOutput)
    , _gcmvjLabels           :: !(Maybe GoogleCloudMlV1__JobLabels)
    , _gcmvjErrorMessage     :: !(Maybe Text)
    , _gcmvjTrainingInput    :: !(Maybe GoogleCloudMlV1__TrainingInput)
    , _gcmvjCreateTime       :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudMlV1__Job' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvjEtag'
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
-- * 'gcmvjLabels'
--
-- * 'gcmvjErrorMessage'
--
-- * 'gcmvjTrainingInput'
--
-- * 'gcmvjCreateTime'
googleCloudMlV1__Job
    :: GoogleCloudMlV1__Job
googleCloudMlV1__Job =
  GoogleCloudMlV1__Job'
    { _gcmvjEtag = Nothing
    , _gcmvjState = Nothing
    , _gcmvjTrainingOutput = Nothing
    , _gcmvjJobId = Nothing
    , _gcmvjStartTime = Nothing
    , _gcmvjPredictionInput = Nothing
    , _gcmvjEndTime = Nothing
    , _gcmvjPredictionOutput = Nothing
    , _gcmvjLabels = Nothing
    , _gcmvjErrorMessage = Nothing
    , _gcmvjTrainingInput = Nothing
    , _gcmvjCreateTime = Nothing
    }

-- | \`etag\` is used for optimistic concurrency control as a way to help
-- prevent simultaneous updates of a job from overwriting each other. It is
-- strongly suggested that systems make use of the \`etag\` in the
-- read-modify-write cycle to perform job updates in order to avoid race
-- conditions: An \`etag\` is returned in the response to \`GetJob\`, and
-- systems are expected to put that etag in the request to \`UpdateJob\` to
-- ensure that their change will be applied to the same version of the job.
gcmvjEtag :: Lens' GoogleCloudMlV1__Job (Maybe ByteString)
gcmvjEtag
  = lens _gcmvjEtag (\ s a -> s{_gcmvjEtag = a}) .
      mapping _Bytes

-- | Output only. The detailed state of a job.
gcmvjState :: Lens' GoogleCloudMlV1__Job (Maybe GoogleCloudMlV1__JobState)
gcmvjState
  = lens _gcmvjState (\ s a -> s{_gcmvjState = a})

-- | The current training job result.
gcmvjTrainingOutput :: Lens' GoogleCloudMlV1__Job (Maybe GoogleCloudMlV1__TrainingOutput)
gcmvjTrainingOutput
  = lens _gcmvjTrainingOutput
      (\ s a -> s{_gcmvjTrainingOutput = a})

-- | Required. The user-specified id of the job.
gcmvjJobId :: Lens' GoogleCloudMlV1__Job (Maybe Text)
gcmvjJobId
  = lens _gcmvjJobId (\ s a -> s{_gcmvjJobId = a})

-- | Output only. When the job processing was started.
gcmvjStartTime :: Lens' GoogleCloudMlV1__Job (Maybe UTCTime)
gcmvjStartTime
  = lens _gcmvjStartTime
      (\ s a -> s{_gcmvjStartTime = a})
      . mapping _DateTime

-- | Input parameters to create a prediction job.
gcmvjPredictionInput :: Lens' GoogleCloudMlV1__Job (Maybe GoogleCloudMlV1__PredictionInput)
gcmvjPredictionInput
  = lens _gcmvjPredictionInput
      (\ s a -> s{_gcmvjPredictionInput = a})

-- | Output only. When the job processing was completed.
gcmvjEndTime :: Lens' GoogleCloudMlV1__Job (Maybe UTCTime)
gcmvjEndTime
  = lens _gcmvjEndTime (\ s a -> s{_gcmvjEndTime = a})
      . mapping _DateTime

-- | The current prediction job result.
gcmvjPredictionOutput :: Lens' GoogleCloudMlV1__Job (Maybe GoogleCloudMlV1__PredictionOutput)
gcmvjPredictionOutput
  = lens _gcmvjPredictionOutput
      (\ s a -> s{_gcmvjPredictionOutput = a})

-- | Optional. One or more labels that you can add, to organize your jobs.
-- Each label is a key-value pair, where both the key and the value are
-- arbitrary strings that you supply. For more information, see the
-- documentation on
-- </ml-engine/docs/tensorflow/resource-labels using labels>.
gcmvjLabels :: Lens' GoogleCloudMlV1__Job (Maybe GoogleCloudMlV1__JobLabels)
gcmvjLabels
  = lens _gcmvjLabels (\ s a -> s{_gcmvjLabels = a})

-- | Output only. The details of a failure or a cancellation.
gcmvjErrorMessage :: Lens' GoogleCloudMlV1__Job (Maybe Text)
gcmvjErrorMessage
  = lens _gcmvjErrorMessage
      (\ s a -> s{_gcmvjErrorMessage = a})

-- | Input parameters to create a training job.
gcmvjTrainingInput :: Lens' GoogleCloudMlV1__Job (Maybe GoogleCloudMlV1__TrainingInput)
gcmvjTrainingInput
  = lens _gcmvjTrainingInput
      (\ s a -> s{_gcmvjTrainingInput = a})

-- | Output only. When the job was created.
gcmvjCreateTime :: Lens' GoogleCloudMlV1__Job (Maybe UTCTime)
gcmvjCreateTime
  = lens _gcmvjCreateTime
      (\ s a -> s{_gcmvjCreateTime = a})
      . mapping _DateTime

instance FromJSON GoogleCloudMlV1__Job where
        parseJSON
          = withObject "GoogleCloudMlV1Job"
              (\ o ->
                 GoogleCloudMlV1__Job' <$>
                   (o .:? "etag") <*> (o .:? "state") <*>
                     (o .:? "trainingOutput")
                     <*> (o .:? "jobId")
                     <*> (o .:? "startTime")
                     <*> (o .:? "predictionInput")
                     <*> (o .:? "endTime")
                     <*> (o .:? "predictionOutput")
                     <*> (o .:? "labels")
                     <*> (o .:? "errorMessage")
                     <*> (o .:? "trainingInput")
                     <*> (o .:? "createTime"))

instance ToJSON GoogleCloudMlV1__Job where
        toJSON GoogleCloudMlV1__Job'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _gcmvjEtag,
                  ("state" .=) <$> _gcmvjState,
                  ("trainingOutput" .=) <$> _gcmvjTrainingOutput,
                  ("jobId" .=) <$> _gcmvjJobId,
                  ("startTime" .=) <$> _gcmvjStartTime,
                  ("predictionInput" .=) <$> _gcmvjPredictionInput,
                  ("endTime" .=) <$> _gcmvjEndTime,
                  ("predictionOutput" .=) <$> _gcmvjPredictionOutput,
                  ("labels" .=) <$> _gcmvjLabels,
                  ("errorMessage" .=) <$> _gcmvjErrorMessage,
                  ("trainingInput" .=) <$> _gcmvjTrainingInput,
                  ("createTime" .=) <$> _gcmvjCreateTime])

-- | Request message for the SetDefaultVersion request.
--
-- /See:/ 'googleCloudMlV1__SetDefaultVersionRequest' smart constructor.
data GoogleCloudMlV1__SetDefaultVersionRequest =
  GoogleCloudMlV1__SetDefaultVersionRequest'
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudMlV1__SetDefaultVersionRequest' with the minimum fields required to make a request.
--
googleCloudMlV1__SetDefaultVersionRequest
    :: GoogleCloudMlV1__SetDefaultVersionRequest
googleCloudMlV1__SetDefaultVersionRequest =
  GoogleCloudMlV1__SetDefaultVersionRequest'

instance FromJSON
           GoogleCloudMlV1__SetDefaultVersionRequest
         where
        parseJSON
          = withObject
              "GoogleCloudMlV1SetDefaultVersionRequest"
              (\ o ->
                 pure GoogleCloudMlV1__SetDefaultVersionRequest')

instance ToJSON
           GoogleCloudMlV1__SetDefaultVersionRequest
         where
        toJSON = const emptyObject

-- | Optional. One or more labels that you can add, to organize your models.
-- Each label is a key-value pair, where both the key and the value are
-- arbitrary strings that you supply. For more information, see the
-- documentation on
-- </ml-engine/docs/tensorflow/resource-labels using labels>.
--
-- /See:/ 'googleCloudMlV1__ModelLabels' smart constructor.
newtype GoogleCloudMlV1__ModelLabels =
  GoogleCloudMlV1__ModelLabels'
    { _gcmvmlAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudMlV1__ModelLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvmlAddtional'
googleCloudMlV1__ModelLabels
    :: HashMap Text Text -- ^ 'gcmvmlAddtional'
    -> GoogleCloudMlV1__ModelLabels
googleCloudMlV1__ModelLabels pGcmvmlAddtional_ =
  GoogleCloudMlV1__ModelLabels' {_gcmvmlAddtional = _Coerce # pGcmvmlAddtional_}

gcmvmlAddtional :: Lens' GoogleCloudMlV1__ModelLabels (HashMap Text Text)
gcmvmlAddtional
  = lens _gcmvmlAddtional
      (\ s a -> s{_gcmvmlAddtional = a})
      . _Coerce

instance FromJSON GoogleCloudMlV1__ModelLabels where
        parseJSON
          = withObject "GoogleCloudMlV1ModelLabels"
              (\ o ->
                 GoogleCloudMlV1__ModelLabels' <$>
                   (parseJSONObject o))

instance ToJSON GoogleCloudMlV1__ModelLabels where
        toJSON = toJSON . _gcmvmlAddtional

-- | Optional. One or more labels that you can add, to organize your jobs.
-- Each label is a key-value pair, where both the key and the value are
-- arbitrary strings that you supply. For more information, see the
-- documentation on
-- </ml-engine/docs/tensorflow/resource-labels using labels>.
--
-- /See:/ 'googleCloudMlV1__JobLabels' smart constructor.
newtype GoogleCloudMlV1__JobLabels =
  GoogleCloudMlV1__JobLabels'
    { _gcmvjlAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudMlV1__JobLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvjlAddtional'
googleCloudMlV1__JobLabels
    :: HashMap Text Text -- ^ 'gcmvjlAddtional'
    -> GoogleCloudMlV1__JobLabels
googleCloudMlV1__JobLabels pGcmvjlAddtional_ =
  GoogleCloudMlV1__JobLabels' {_gcmvjlAddtional = _Coerce # pGcmvjlAddtional_}

gcmvjlAddtional :: Lens' GoogleCloudMlV1__JobLabels (HashMap Text Text)
gcmvjlAddtional
  = lens _gcmvjlAddtional
      (\ s a -> s{_gcmvjlAddtional = a})
      . _Coerce

instance FromJSON GoogleCloudMlV1__JobLabels where
        parseJSON
          = withObject "GoogleCloudMlV1JobLabels"
              (\ o ->
                 GoogleCloudMlV1__JobLabels' <$> (parseJSONObject o))

instance ToJSON GoogleCloudMlV1__JobLabels where
        toJSON = toJSON . _gcmvjlAddtional

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
-- package \`google.rpc\` that can be used for common error conditions. #
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
-- steps. Each step may have a \`Status\` message for error reporting. -
-- Batch operations. If a client uses batch request and batch response, the
-- \`Status\` message should be used directly inside batch response, one
-- for each error sub-response. - Asynchronous operations. If an API call
-- embeds asynchronous operation results in its response, the status of
-- those operations should be represented directly using the \`Status\`
-- message. - Logging. If some API errors are stored in logs, the message
-- \`Status\` could be used directly after any stripping needed for
-- security\/privacy reasons.
--
-- /See:/ 'googleRpc__Status' smart constructor.
data GoogleRpc__Status =
  GoogleRpc__Status'
    { _grsDetails :: !(Maybe [GoogleRpc__StatusDetailsItem])
    , _grsCode    :: !(Maybe (Textual Int32))
    , _grsMessage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

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
    {_grsDetails = Nothing, _grsCode = Nothing, _grsMessage = Nothing}

-- | A list of messages that carry the error details. There is a common set
-- of message types for APIs to use.
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

--
-- /See:/ 'googleCloudMlV1__Config' smart constructor.
newtype GoogleCloudMlV1__Config =
  GoogleCloudMlV1__Config'
    { _gcmvcTpuServiceAccount :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudMlV1__Config' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvcTpuServiceAccount'
googleCloudMlV1__Config
    :: GoogleCloudMlV1__Config
googleCloudMlV1__Config =
  GoogleCloudMlV1__Config' {_gcmvcTpuServiceAccount = Nothing}

-- | The service account Cloud ML uses to run on TPU node.
gcmvcTpuServiceAccount :: Lens' GoogleCloudMlV1__Config (Maybe Text)
gcmvcTpuServiceAccount
  = lens _gcmvcTpuServiceAccount
      (\ s a -> s{_gcmvcTpuServiceAccount = a})

instance FromJSON GoogleCloudMlV1__Config where
        parseJSON
          = withObject "GoogleCloudMlV1Config"
              (\ o ->
                 GoogleCloudMlV1__Config' <$>
                   (o .:? "tpuServiceAccount"))

instance ToJSON GoogleCloudMlV1__Config where
        toJSON GoogleCloudMlV1__Config'{..}
          = object
              (catMaybes
                 [("tpuServiceAccount" .=) <$>
                    _gcmvcTpuServiceAccount])

-- | Represents a set of hyperparameters to optimize.
--
-- /See:/ 'googleCloudMlV1__HyperparameterSpec' smart constructor.
data GoogleCloudMlV1__HyperparameterSpec =
  GoogleCloudMlV1__HyperparameterSpec'
    { _gcmvhsResumePreviousJobId      :: !(Maybe Text)
    , _gcmvhsParams                   :: !(Maybe [GoogleCloudMlV1__ParameterSpec])
    , _gcmvhsAlgorithm                :: !(Maybe GoogleCloudMlV1__HyperparameterSpecAlgorithm)
    , _gcmvhsGoal                     :: !(Maybe GoogleCloudMlV1__HyperparameterSpecGoal)
    , _gcmvhsMaxTrials                :: !(Maybe (Textual Int32))
    , _gcmvhsEnableTrialEarlyStopping :: !(Maybe Bool)
    , _gcmvhsMaxParallelTrials        :: !(Maybe (Textual Int32))
    , _gcmvhsHyperparameterMetricTag  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudMlV1__HyperparameterSpec' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvhsResumePreviousJobId'
--
-- * 'gcmvhsParams'
--
-- * 'gcmvhsAlgorithm'
--
-- * 'gcmvhsGoal'
--
-- * 'gcmvhsMaxTrials'
--
-- * 'gcmvhsEnableTrialEarlyStopping'
--
-- * 'gcmvhsMaxParallelTrials'
--
-- * 'gcmvhsHyperparameterMetricTag'
googleCloudMlV1__HyperparameterSpec
    :: GoogleCloudMlV1__HyperparameterSpec
googleCloudMlV1__HyperparameterSpec =
  GoogleCloudMlV1__HyperparameterSpec'
    { _gcmvhsResumePreviousJobId = Nothing
    , _gcmvhsParams = Nothing
    , _gcmvhsAlgorithm = Nothing
    , _gcmvhsGoal = Nothing
    , _gcmvhsMaxTrials = Nothing
    , _gcmvhsEnableTrialEarlyStopping = Nothing
    , _gcmvhsMaxParallelTrials = Nothing
    , _gcmvhsHyperparameterMetricTag = Nothing
    }

-- | Optional. The prior hyperparameter tuning job id that users hope to
-- continue with. The job id will be used to find the corresponding vizier
-- study guid and resume the study.
gcmvhsResumePreviousJobId :: Lens' GoogleCloudMlV1__HyperparameterSpec (Maybe Text)
gcmvhsResumePreviousJobId
  = lens _gcmvhsResumePreviousJobId
      (\ s a -> s{_gcmvhsResumePreviousJobId = a})

-- | Required. The set of parameters to tune.
gcmvhsParams :: Lens' GoogleCloudMlV1__HyperparameterSpec [GoogleCloudMlV1__ParameterSpec]
gcmvhsParams
  = lens _gcmvhsParams (\ s a -> s{_gcmvhsParams = a})
      . _Default
      . _Coerce

-- | Optional. The search algorithm specified for the hyperparameter tuning
-- job. Uses the default CloudML Engine hyperparameter tuning algorithm if
-- unspecified.
gcmvhsAlgorithm :: Lens' GoogleCloudMlV1__HyperparameterSpec (Maybe GoogleCloudMlV1__HyperparameterSpecAlgorithm)
gcmvhsAlgorithm
  = lens _gcmvhsAlgorithm
      (\ s a -> s{_gcmvhsAlgorithm = a})

-- | Required. The type of goal to use for tuning. Available types are
-- \`MAXIMIZE\` and \`MINIMIZE\`. Defaults to \`MAXIMIZE\`.
gcmvhsGoal :: Lens' GoogleCloudMlV1__HyperparameterSpec (Maybe GoogleCloudMlV1__HyperparameterSpecGoal)
gcmvhsGoal
  = lens _gcmvhsGoal (\ s a -> s{_gcmvhsGoal = a})

-- | Optional. How many training trials should be attempted to optimize the
-- specified hyperparameters. Defaults to one.
gcmvhsMaxTrials :: Lens' GoogleCloudMlV1__HyperparameterSpec (Maybe Int32)
gcmvhsMaxTrials
  = lens _gcmvhsMaxTrials
      (\ s a -> s{_gcmvhsMaxTrials = a})
      . mapping _Coerce

-- | Optional. Indicates if the hyperparameter tuning job enables auto trial
-- early stopping.
gcmvhsEnableTrialEarlyStopping :: Lens' GoogleCloudMlV1__HyperparameterSpec (Maybe Bool)
gcmvhsEnableTrialEarlyStopping
  = lens _gcmvhsEnableTrialEarlyStopping
      (\ s a -> s{_gcmvhsEnableTrialEarlyStopping = a})

-- | Optional. The number of training trials to run concurrently. You can
-- reduce the time it takes to perform hyperparameter tuning by adding
-- trials in parallel. However, each trail only benefits from the
-- information gained in completed trials. That means that a trial does not
-- get access to the results of trials running at the same time, which
-- could reduce the quality of the overall optimization. Each trial will
-- use the same scale tier and machine types. Defaults to one.
gcmvhsMaxParallelTrials :: Lens' GoogleCloudMlV1__HyperparameterSpec (Maybe Int32)
gcmvhsMaxParallelTrials
  = lens _gcmvhsMaxParallelTrials
      (\ s a -> s{_gcmvhsMaxParallelTrials = a})
      . mapping _Coerce

-- | Optional. The Tensorflow summary tag name to use for optimizing trials.
-- For current versions of Tensorflow, this tag name should exactly match
-- what is shown in Tensorboard, including all scopes. For versions of
-- Tensorflow prior to 0.12, this should be only the tag passed to
-- tf.Summary. By default, \"training\/hptuning\/metric\" will be used.
gcmvhsHyperparameterMetricTag :: Lens' GoogleCloudMlV1__HyperparameterSpec (Maybe Text)
gcmvhsHyperparameterMetricTag
  = lens _gcmvhsHyperparameterMetricTag
      (\ s a -> s{_gcmvhsHyperparameterMetricTag = a})

instance FromJSON GoogleCloudMlV1__HyperparameterSpec
         where
        parseJSON
          = withObject "GoogleCloudMlV1HyperparameterSpec"
              (\ o ->
                 GoogleCloudMlV1__HyperparameterSpec' <$>
                   (o .:? "resumePreviousJobId") <*>
                     (o .:? "params" .!= mempty)
                     <*> (o .:? "algorithm")
                     <*> (o .:? "goal")
                     <*> (o .:? "maxTrials")
                     <*> (o .:? "enableTrialEarlyStopping")
                     <*> (o .:? "maxParallelTrials")
                     <*> (o .:? "hyperparameterMetricTag"))

instance ToJSON GoogleCloudMlV1__HyperparameterSpec
         where
        toJSON GoogleCloudMlV1__HyperparameterSpec'{..}
          = object
              (catMaybes
                 [("resumePreviousJobId" .=) <$>
                    _gcmvhsResumePreviousJobId,
                  ("params" .=) <$> _gcmvhsParams,
                  ("algorithm" .=) <$> _gcmvhsAlgorithm,
                  ("goal" .=) <$> _gcmvhsGoal,
                  ("maxTrials" .=) <$> _gcmvhsMaxTrials,
                  ("enableTrialEarlyStopping" .=) <$>
                    _gcmvhsEnableTrialEarlyStopping,
                  ("maxParallelTrials" .=) <$>
                    _gcmvhsMaxParallelTrials,
                  ("hyperparameterMetricTag" .=) <$>
                    _gcmvhsHyperparameterMetricTag])

-- | Options for automatically scaling a model.
--
-- /See:/ 'googleCloudMlV1__AutoScaling' smart constructor.
newtype GoogleCloudMlV1__AutoScaling =
  GoogleCloudMlV1__AutoScaling'
    { _gcmvasMinNodes :: Maybe (Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudMlV1__AutoScaling' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvasMinNodes'
googleCloudMlV1__AutoScaling
    :: GoogleCloudMlV1__AutoScaling
googleCloudMlV1__AutoScaling =
  GoogleCloudMlV1__AutoScaling' {_gcmvasMinNodes = Nothing}

-- | Optional. The minimum number of nodes to allocate for this model. These
-- nodes are always up, starting from the time the model is deployed.
-- Therefore, the cost of operating this model will be at least \`rate\` *
-- \`min_nodes\` * number of hours since last billing cycle, where \`rate\`
-- is the cost per node-hour as documented in the [pricing
-- guide](\/ml-engine\/docs\/pricing), even if no predictions are
-- performed. There is additional cost for each prediction performed.
-- Unlike manual scaling, if the load gets too heavy for the nodes that are
-- up, the service will automatically add nodes to handle the increased
-- load as well as scale back as traffic drops, always maintaining at least
-- \`min_nodes\`. You will be charged for the time in which additional
-- nodes are used. If not specified, \`min_nodes\` defaults to 0, in which
-- case, when traffic to a model stops (and after a cool-down period),
-- nodes will be shut down and no charges will be incurred until traffic to
-- the model resumes. You can set \`min_nodes\` when creating the model
-- version, and you can also update \`min_nodes\` for an existing version:
--
-- > update_body.json:
-- > {
-- >   'autoScaling': {
-- >     'minNodes': 5
-- >   }
-- > }
--
-- HTTP request:
--
-- > PATCH https://ml.googleapis.com/v1/{name=projects/*/models/*/versions/*}?update_mask=autoScaling.minNodes -d './update_body.json
gcmvasMinNodes :: Lens' GoogleCloudMlV1__AutoScaling (Maybe Int32)
gcmvasMinNodes
  = lens _gcmvasMinNodes
      (\ s a -> s{_gcmvasMinNodes = a})
      . mapping _Coerce

instance FromJSON GoogleCloudMlV1__AutoScaling where
        parseJSON
          = withObject "GoogleCloudMlV1AutoScaling"
              (\ o ->
                 GoogleCloudMlV1__AutoScaling' <$> (o .:? "minNodes"))

instance ToJSON GoogleCloudMlV1__AutoScaling where
        toJSON GoogleCloudMlV1__AutoScaling'{..}
          = object
              (catMaybes [("minNodes" .=) <$> _gcmvasMinNodes])

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
--
-- /See:/ 'googleLongrunning__OperationMetadata' smart constructor.
newtype GoogleLongrunning__OperationMetadata =
  GoogleLongrunning__OperationMetadata'
    { _glomAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)

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
    {_glomAddtional = _Coerce # pGlomAddtional_}

-- | Properties of the object. Contains field \'type with type URL.
glomAddtional :: Lens' GoogleLongrunning__OperationMetadata (HashMap Text JSONValue)
glomAddtional
  = lens _glomAddtional
      (\ s a -> s{_glomAddtional = a})
      . _Coerce

instance FromJSON
           GoogleLongrunning__OperationMetadata
         where
        parseJSON
          = withObject "GoogleLongrunningOperationMetadata"
              (\ o ->
                 GoogleLongrunning__OperationMetadata' <$>
                   (parseJSONObject o))

instance ToJSON GoogleLongrunning__OperationMetadata
         where
        toJSON = toJSON . _glomAddtional

-- | Represents a single hyperparameter to optimize.
--
-- /See:/ 'googleCloudMlV1__ParameterSpec' smart constructor.
data GoogleCloudMlV1__ParameterSpec =
  GoogleCloudMlV1__ParameterSpec'
    { _gcmvpsMaxValue          :: !(Maybe (Textual Double))
    , _gcmvpsScaleType         :: !(Maybe GoogleCloudMlV1__ParameterSpecScaleType)
    , _gcmvpsType              :: !(Maybe GoogleCloudMlV1__ParameterSpecType)
    , _gcmvpsDiscreteValues    :: !(Maybe [Textual Double])
    , _gcmvpsParameterName     :: !(Maybe Text)
    , _gcmvpsCategoricalValues :: !(Maybe [Text])
    , _gcmvpsMinValue          :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudMlV1__ParameterSpec' with the minimum fields required to make a request.
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
googleCloudMlV1__ParameterSpec
    :: GoogleCloudMlV1__ParameterSpec
googleCloudMlV1__ParameterSpec =
  GoogleCloudMlV1__ParameterSpec'
    { _gcmvpsMaxValue = Nothing
    , _gcmvpsScaleType = Nothing
    , _gcmvpsType = Nothing
    , _gcmvpsDiscreteValues = Nothing
    , _gcmvpsParameterName = Nothing
    , _gcmvpsCategoricalValues = Nothing
    , _gcmvpsMinValue = Nothing
    }

-- | Required if type is \`DOUBLE\` or \`INTEGER\`. This field should be
-- unset if type is \`CATEGORICAL\`. This value should be integers if type
-- is \`INTEGER\`.
gcmvpsMaxValue :: Lens' GoogleCloudMlV1__ParameterSpec (Maybe Double)
gcmvpsMaxValue
  = lens _gcmvpsMaxValue
      (\ s a -> s{_gcmvpsMaxValue = a})
      . mapping _Coerce

-- | Optional. How the parameter should be scaled to the hypercube. Leave
-- unset for categorical parameters. Some kind of scaling is strongly
-- recommended for real or integral parameters (e.g.,
-- \`UNIT_LINEAR_SCALE\`).
gcmvpsScaleType :: Lens' GoogleCloudMlV1__ParameterSpec (Maybe GoogleCloudMlV1__ParameterSpecScaleType)
gcmvpsScaleType
  = lens _gcmvpsScaleType
      (\ s a -> s{_gcmvpsScaleType = a})

-- | Required. The type of the parameter.
gcmvpsType :: Lens' GoogleCloudMlV1__ParameterSpec (Maybe GoogleCloudMlV1__ParameterSpecType)
gcmvpsType
  = lens _gcmvpsType (\ s a -> s{_gcmvpsType = a})

-- | Required if type is \`DISCRETE\`. A list of feasible points. The list
-- should be in strictly increasing order. For instance, this parameter
-- might have possible settings of 1.5, 2.5, and 4.0. This list should not
-- contain more than 1,000 values.
gcmvpsDiscreteValues :: Lens' GoogleCloudMlV1__ParameterSpec [Double]
gcmvpsDiscreteValues
  = lens _gcmvpsDiscreteValues
      (\ s a -> s{_gcmvpsDiscreteValues = a})
      . _Default
      . _Coerce

-- | Required. The parameter name must be unique amongst all ParameterConfigs
-- in a HyperparameterSpec message. E.g., \"learning_rate\".
gcmvpsParameterName :: Lens' GoogleCloudMlV1__ParameterSpec (Maybe Text)
gcmvpsParameterName
  = lens _gcmvpsParameterName
      (\ s a -> s{_gcmvpsParameterName = a})

-- | Required if type is \`CATEGORICAL\`. The list of possible categories.
gcmvpsCategoricalValues :: Lens' GoogleCloudMlV1__ParameterSpec [Text]
gcmvpsCategoricalValues
  = lens _gcmvpsCategoricalValues
      (\ s a -> s{_gcmvpsCategoricalValues = a})
      . _Default
      . _Coerce

-- | Required if type is \`DOUBLE\` or \`INTEGER\`. This field should be
-- unset if type is \`CATEGORICAL\`. This value should be integers if type
-- is INTEGER.
gcmvpsMinValue :: Lens' GoogleCloudMlV1__ParameterSpec (Maybe Double)
gcmvpsMinValue
  = lens _gcmvpsMinValue
      (\ s a -> s{_gcmvpsMinValue = a})
      . mapping _Coerce

instance FromJSON GoogleCloudMlV1__ParameterSpec
         where
        parseJSON
          = withObject "GoogleCloudMlV1ParameterSpec"
              (\ o ->
                 GoogleCloudMlV1__ParameterSpec' <$>
                   (o .:? "maxValue") <*> (o .:? "scaleType") <*>
                     (o .:? "type")
                     <*> (o .:? "discreteValues" .!= mempty)
                     <*> (o .:? "parameterName")
                     <*> (o .:? "categoricalValues" .!= mempty)
                     <*> (o .:? "minValue"))

instance ToJSON GoogleCloudMlV1__ParameterSpec where
        toJSON GoogleCloudMlV1__ParameterSpec'{..}
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

-- | Associates \`members\` with a \`role\`.
--
-- /See:/ 'googleIAMV1__Binding' smart constructor.
data GoogleIAMV1__Binding =
  GoogleIAMV1__Binding'
    { _givbMembers   :: !(Maybe [Text])
    , _givbRole      :: !(Maybe Text)
    , _givbCondition :: !(Maybe GoogleType__Expr)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleIAMV1__Binding' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'givbMembers'
--
-- * 'givbRole'
--
-- * 'givbCondition'
googleIAMV1__Binding
    :: GoogleIAMV1__Binding
googleIAMV1__Binding =
  GoogleIAMV1__Binding'
    {_givbMembers = Nothing, _givbRole = Nothing, _givbCondition = Nothing}

-- | Specifies the identities requesting access for a Cloud Platform
-- resource. \`members\` can have the following values: * \`allUsers\`: A
-- special identifier that represents anyone who is on the internet; with
-- or without a Google account. * \`allAuthenticatedUsers\`: A special
-- identifier that represents anyone who is authenticated with a Google
-- account or a service account. * \`user:{emailid}\`: An email address
-- that represents a specific Google account. For example,
-- \`alice\'gmail.com\` . * \`serviceAccount:{emailid}\`: An email address
-- that represents a service account. For example,
-- \`my-other-app\'appspot.gserviceaccount.com\`. * \`group:{emailid}\`: An
-- email address that represents a Google group. For example,
-- \`admins\'example.com\`. * \`domain:{domain}\`: A Google Apps domain
-- name that represents all the users of that domain. For example,
-- \`google.com\` or \`example.com\`.
givbMembers :: Lens' GoogleIAMV1__Binding [Text]
givbMembers
  = lens _givbMembers (\ s a -> s{_givbMembers = a}) .
      _Default
      . _Coerce

-- | Role that is assigned to \`members\`. For example, \`roles\/viewer\`,
-- \`roles\/editor\`, or \`roles\/owner\`.
givbRole :: Lens' GoogleIAMV1__Binding (Maybe Text)
givbRole = lens _givbRole (\ s a -> s{_givbRole = a})

-- | Unimplemented. The condition that is associated with this binding. NOTE:
-- an unsatisfied condition will not allow user access via current binding.
-- Different bindings, including their conditions, are examined
-- independently.
givbCondition :: Lens' GoogleIAMV1__Binding (Maybe GoogleType__Expr)
givbCondition
  = lens _givbCondition
      (\ s a -> s{_givbCondition = a})

instance FromJSON GoogleIAMV1__Binding where
        parseJSON
          = withObject "GoogleIAMV1Binding"
              (\ o ->
                 GoogleIAMV1__Binding' <$>
                   (o .:? "members" .!= mempty) <*> (o .:? "role") <*>
                     (o .:? "condition"))

instance ToJSON GoogleIAMV1__Binding where
        toJSON GoogleIAMV1__Binding'{..}
          = object
              (catMaybes
                 [("members" .=) <$> _givbMembers,
                  ("role" .=) <$> _givbRole,
                  ("condition" .=) <$> _givbCondition])

-- | An observed value of a metric.
--
-- /See:/ 'googleCloudMlV1_HyperparameterOutput_HyperparameterMetric' smart constructor.
data GoogleCloudMlV1_HyperparameterOutput_HyperparameterMetric =
  GoogleCloudMlV1_HyperparameterOutput_HyperparameterMetric'
    { _gcmvhohmTrainingStep   :: !(Maybe (Textual Int64))
    , _gcmvhohmObjectiveValue :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudMlV1_HyperparameterOutput_HyperparameterMetric' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvhohmTrainingStep'
--
-- * 'gcmvhohmObjectiveValue'
googleCloudMlV1_HyperparameterOutput_HyperparameterMetric
    :: GoogleCloudMlV1_HyperparameterOutput_HyperparameterMetric
googleCloudMlV1_HyperparameterOutput_HyperparameterMetric =
  GoogleCloudMlV1_HyperparameterOutput_HyperparameterMetric'
    {_gcmvhohmTrainingStep = Nothing, _gcmvhohmObjectiveValue = Nothing}

-- | The global training step for this metric.
gcmvhohmTrainingStep :: Lens' GoogleCloudMlV1_HyperparameterOutput_HyperparameterMetric (Maybe Int64)
gcmvhohmTrainingStep
  = lens _gcmvhohmTrainingStep
      (\ s a -> s{_gcmvhohmTrainingStep = a})
      . mapping _Coerce

-- | The objective value at this training step.
gcmvhohmObjectiveValue :: Lens' GoogleCloudMlV1_HyperparameterOutput_HyperparameterMetric (Maybe Double)
gcmvhohmObjectiveValue
  = lens _gcmvhohmObjectiveValue
      (\ s a -> s{_gcmvhohmObjectiveValue = a})
      . mapping _Coerce

instance FromJSON
           GoogleCloudMlV1_HyperparameterOutput_HyperparameterMetric
         where
        parseJSON
          = withObject
              "GoogleCloudMlV1HyperparameterOutputHyperparameterMetric"
              (\ o ->
                 GoogleCloudMlV1_HyperparameterOutput_HyperparameterMetric'
                   <$>
                   (o .:? "trainingStep") <*> (o .:? "objectiveValue"))

instance ToJSON
           GoogleCloudMlV1_HyperparameterOutput_HyperparameterMetric
         where
        toJSON
          GoogleCloudMlV1_HyperparameterOutput_HyperparameterMetric'{..}
          = object
              (catMaybes
                 [("trainingStep" .=) <$> _gcmvhohmTrainingStep,
                  ("objectiveValue" .=) <$> _gcmvhohmObjectiveValue])

-- | Request message for \`SetIamPolicy\` method.
--
-- /See:/ 'googleIAMV1__SetIAMPolicyRequest' smart constructor.
data GoogleIAMV1__SetIAMPolicyRequest =
  GoogleIAMV1__SetIAMPolicyRequest'
    { _givsiprUpdateMask :: !(Maybe GFieldMask)
    , _givsiprPolicy     :: !(Maybe GoogleIAMV1__Policy)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleIAMV1__SetIAMPolicyRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'givsiprUpdateMask'
--
-- * 'givsiprPolicy'
googleIAMV1__SetIAMPolicyRequest
    :: GoogleIAMV1__SetIAMPolicyRequest
googleIAMV1__SetIAMPolicyRequest =
  GoogleIAMV1__SetIAMPolicyRequest'
    {_givsiprUpdateMask = Nothing, _givsiprPolicy = Nothing}

-- | OPTIONAL: A FieldMask specifying which fields of the policy to modify.
-- Only the fields in the mask will be modified. If no mask is provided,
-- the following default mask is used: paths: \"bindings, etag\" This field
-- is only used by Cloud IAM.
givsiprUpdateMask :: Lens' GoogleIAMV1__SetIAMPolicyRequest (Maybe GFieldMask)
givsiprUpdateMask
  = lens _givsiprUpdateMask
      (\ s a -> s{_givsiprUpdateMask = a})

-- | REQUIRED: The complete policy to be applied to the \`resource\`. The
-- size of the policy is limited to a few 10s of KB. An empty policy is a
-- valid policy but certain Cloud Platform services (such as Projects)
-- might reject them.
givsiprPolicy :: Lens' GoogleIAMV1__SetIAMPolicyRequest (Maybe GoogleIAMV1__Policy)
givsiprPolicy
  = lens _givsiprPolicy
      (\ s a -> s{_givsiprPolicy = a})

instance FromJSON GoogleIAMV1__SetIAMPolicyRequest
         where
        parseJSON
          = withObject "GoogleIAMV1SetIAMPolicyRequest"
              (\ o ->
                 GoogleIAMV1__SetIAMPolicyRequest' <$>
                   (o .:? "updateMask") <*> (o .:? "policy"))

instance ToJSON GoogleIAMV1__SetIAMPolicyRequest
         where
        toJSON GoogleIAMV1__SetIAMPolicyRequest'{..}
          = object
              (catMaybes
                 [("updateMask" .=) <$> _givsiprUpdateMask,
                  ("policy" .=) <$> _givsiprPolicy])

-- | Represents input parameters for a prediction job. Next field: 20
--
-- /See:/ 'googleCloudMlV1__PredictionInput' smart constructor.
data GoogleCloudMlV1__PredictionInput =
  GoogleCloudMlV1__PredictionInput'
    { _gcmvpiVersionName      :: !(Maybe Text)
    , _gcmvpiModelName        :: !(Maybe Text)
    , _gcmvpiDataFormat       :: !(Maybe GoogleCloudMlV1__PredictionInputDataFormat)
    , _gcmvpiURI              :: !(Maybe Text)
    , _gcmvpiRuntimeVersion   :: !(Maybe Text)
    , _gcmvpiBatchSize        :: !(Maybe (Textual Int64))
    , _gcmvpiMaxWorkerCount   :: !(Maybe (Textual Int64))
    , _gcmvpiOutputDataFormat :: !(Maybe GoogleCloudMlV1__PredictionInputOutputDataFormat)
    , _gcmvpiAccelerator      :: !(Maybe GoogleCloudMlV1__AcceleratorConfig)
    , _gcmvpiOutputPath       :: !(Maybe Text)
    , _gcmvpiRegion           :: !(Maybe Text)
    , _gcmvpiInputPaths       :: !(Maybe [Text])
    , _gcmvpiSignatureName    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudMlV1__PredictionInput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvpiVersionName'
--
-- * 'gcmvpiModelName'
--
-- * 'gcmvpiDataFormat'
--
-- * 'gcmvpiURI'
--
-- * 'gcmvpiRuntimeVersion'
--
-- * 'gcmvpiBatchSize'
--
-- * 'gcmvpiMaxWorkerCount'
--
-- * 'gcmvpiOutputDataFormat'
--
-- * 'gcmvpiAccelerator'
--
-- * 'gcmvpiOutputPath'
--
-- * 'gcmvpiRegion'
--
-- * 'gcmvpiInputPaths'
--
-- * 'gcmvpiSignatureName'
googleCloudMlV1__PredictionInput
    :: GoogleCloudMlV1__PredictionInput
googleCloudMlV1__PredictionInput =
  GoogleCloudMlV1__PredictionInput'
    { _gcmvpiVersionName = Nothing
    , _gcmvpiModelName = Nothing
    , _gcmvpiDataFormat = Nothing
    , _gcmvpiURI = Nothing
    , _gcmvpiRuntimeVersion = Nothing
    , _gcmvpiBatchSize = Nothing
    , _gcmvpiMaxWorkerCount = Nothing
    , _gcmvpiOutputDataFormat = Nothing
    , _gcmvpiAccelerator = Nothing
    , _gcmvpiOutputPath = Nothing
    , _gcmvpiRegion = Nothing
    , _gcmvpiInputPaths = Nothing
    , _gcmvpiSignatureName = Nothing
    }

-- | Use this field if you want to specify a version of the model to use. The
-- string is formatted the same way as \`model_version\`, with the addition
-- of the version information:
-- \`\"projects\/YOUR_PROJECT\/models\/YOUR_MODEL\/versions\/YOUR_VERSION\"\`
gcmvpiVersionName :: Lens' GoogleCloudMlV1__PredictionInput (Maybe Text)
gcmvpiVersionName
  = lens _gcmvpiVersionName
      (\ s a -> s{_gcmvpiVersionName = a})

-- | Use this field if you want to use the default version for the specified
-- model. The string must use the following format:
-- \`\"projects\/YOUR_PROJECT\/models\/YOUR_MODEL\"\`
gcmvpiModelName :: Lens' GoogleCloudMlV1__PredictionInput (Maybe Text)
gcmvpiModelName
  = lens _gcmvpiModelName
      (\ s a -> s{_gcmvpiModelName = a})

-- | Required. The format of the input data files.
gcmvpiDataFormat :: Lens' GoogleCloudMlV1__PredictionInput (Maybe GoogleCloudMlV1__PredictionInputDataFormat)
gcmvpiDataFormat
  = lens _gcmvpiDataFormat
      (\ s a -> s{_gcmvpiDataFormat = a})

-- | Use this field if you want to specify a Google Cloud Storage path for
-- the model to use.
gcmvpiURI :: Lens' GoogleCloudMlV1__PredictionInput (Maybe Text)
gcmvpiURI
  = lens _gcmvpiURI (\ s a -> s{_gcmvpiURI = a})

-- | Optional. The Cloud ML Engine runtime version to use for this batch
-- prediction. If not set, Cloud ML Engine will pick the runtime version
-- used during the CreateVersion request for this model version, or choose
-- the latest stable version when model version information is not
-- available such as when the model is specified by uri.
gcmvpiRuntimeVersion :: Lens' GoogleCloudMlV1__PredictionInput (Maybe Text)
gcmvpiRuntimeVersion
  = lens _gcmvpiRuntimeVersion
      (\ s a -> s{_gcmvpiRuntimeVersion = a})

-- | Optional. Number of records per batch, defaults to 64. The service will
-- buffer batch_size number of records in memory before invoking one
-- Tensorflow prediction call internally. So take the record size and
-- memory available into consideration when setting this parameter.
gcmvpiBatchSize :: Lens' GoogleCloudMlV1__PredictionInput (Maybe Int64)
gcmvpiBatchSize
  = lens _gcmvpiBatchSize
      (\ s a -> s{_gcmvpiBatchSize = a})
      . mapping _Coerce

-- | Optional. The maximum number of workers to be used for parallel
-- processing. Defaults to 10 if not specified.
gcmvpiMaxWorkerCount :: Lens' GoogleCloudMlV1__PredictionInput (Maybe Int64)
gcmvpiMaxWorkerCount
  = lens _gcmvpiMaxWorkerCount
      (\ s a -> s{_gcmvpiMaxWorkerCount = a})
      . mapping _Coerce

-- | Optional. Format of the output data files, defaults to JSON.
gcmvpiOutputDataFormat :: Lens' GoogleCloudMlV1__PredictionInput (Maybe GoogleCloudMlV1__PredictionInputOutputDataFormat)
gcmvpiOutputDataFormat
  = lens _gcmvpiOutputDataFormat
      (\ s a -> s{_gcmvpiOutputDataFormat = a})

-- | Optional. The type and number of accelerators to be attached to each
-- machine running the job.
gcmvpiAccelerator :: Lens' GoogleCloudMlV1__PredictionInput (Maybe GoogleCloudMlV1__AcceleratorConfig)
gcmvpiAccelerator
  = lens _gcmvpiAccelerator
      (\ s a -> s{_gcmvpiAccelerator = a})

-- | Required. The output Google Cloud Storage location.
gcmvpiOutputPath :: Lens' GoogleCloudMlV1__PredictionInput (Maybe Text)
gcmvpiOutputPath
  = lens _gcmvpiOutputPath
      (\ s a -> s{_gcmvpiOutputPath = a})

-- | Required. The Google Compute Engine region to run the prediction job in.
-- See the </ml-engine/docs/tensorflow/regions available regions> for ML
-- Engine services.
gcmvpiRegion :: Lens' GoogleCloudMlV1__PredictionInput (Maybe Text)
gcmvpiRegion
  = lens _gcmvpiRegion (\ s a -> s{_gcmvpiRegion = a})

-- | Required. The Google Cloud Storage location of the input data files. May
-- contain wildcards.
gcmvpiInputPaths :: Lens' GoogleCloudMlV1__PredictionInput [Text]
gcmvpiInputPaths
  = lens _gcmvpiInputPaths
      (\ s a -> s{_gcmvpiInputPaths = a})
      . _Default
      . _Coerce

-- | Optional. The name of the signature defined in the SavedModel to use for
-- this job. Please refer to
-- [SavedModel](https:\/\/tensorflow.github.io\/serving\/serving_basic.html)
-- for information about how to use signatures. Defaults to
-- [DEFAULT_SERVING_SIGNATURE_DEF_KEY](https:\/\/www.tensorflow.org\/api_docs\/python\/tf\/saved_model\/signature_constants)
-- , which is \"serving_default\".
gcmvpiSignatureName :: Lens' GoogleCloudMlV1__PredictionInput (Maybe Text)
gcmvpiSignatureName
  = lens _gcmvpiSignatureName
      (\ s a -> s{_gcmvpiSignatureName = a})

instance FromJSON GoogleCloudMlV1__PredictionInput
         where
        parseJSON
          = withObject "GoogleCloudMlV1PredictionInput"
              (\ o ->
                 GoogleCloudMlV1__PredictionInput' <$>
                   (o .:? "versionName") <*> (o .:? "modelName") <*>
                     (o .:? "dataFormat")
                     <*> (o .:? "uri")
                     <*> (o .:? "runtimeVersion")
                     <*> (o .:? "batchSize")
                     <*> (o .:? "maxWorkerCount")
                     <*> (o .:? "outputDataFormat")
                     <*> (o .:? "accelerator")
                     <*> (o .:? "outputPath")
                     <*> (o .:? "region")
                     <*> (o .:? "inputPaths" .!= mempty)
                     <*> (o .:? "signatureName"))

instance ToJSON GoogleCloudMlV1__PredictionInput
         where
        toJSON GoogleCloudMlV1__PredictionInput'{..}
          = object
              (catMaybes
                 [("versionName" .=) <$> _gcmvpiVersionName,
                  ("modelName" .=) <$> _gcmvpiModelName,
                  ("dataFormat" .=) <$> _gcmvpiDataFormat,
                  ("uri" .=) <$> _gcmvpiURI,
                  ("runtimeVersion" .=) <$> _gcmvpiRuntimeVersion,
                  ("batchSize" .=) <$> _gcmvpiBatchSize,
                  ("maxWorkerCount" .=) <$> _gcmvpiMaxWorkerCount,
                  ("outputDataFormat" .=) <$> _gcmvpiOutputDataFormat,
                  ("accelerator" .=) <$> _gcmvpiAccelerator,
                  ("outputPath" .=) <$> _gcmvpiOutputPath,
                  ("region" .=) <$> _gcmvpiRegion,
                  ("inputPaths" .=) <$> _gcmvpiInputPaths,
                  ("signatureName" .=) <$> _gcmvpiSignatureName])

-- | Represents input parameters for a training job. When using the gcloud
-- command to submit your training job, you can specify the input
-- parameters as command-line arguments and\/or in a YAML configuration
-- file referenced from the --config command-line argument. For details,
-- see the guide to
-- </ml-engine/docs/tensorflow/training-jobs submitting a training job>.
--
-- /See:/ 'googleCloudMlV1__TrainingInput' smart constructor.
data GoogleCloudMlV1__TrainingInput =
  GoogleCloudMlV1__TrainingInput'
    { _gcmvtiMasterType           :: !(Maybe Text)
    , _gcmvtiParameterServerCount :: !(Maybe (Textual Int64))
    , _gcmvtiArgs                 :: !(Maybe [Text])
    , _gcmvtiWorkerCount          :: !(Maybe (Textual Int64))
    , _gcmvtiJobDir               :: !(Maybe Text)
    , _gcmvtiPythonVersion        :: !(Maybe Text)
    , _gcmvtiRuntimeVersion       :: !(Maybe Text)
    , _gcmvtiWorkerType           :: !(Maybe Text)
    , _gcmvtiPythonModule         :: !(Maybe Text)
    , _gcmvtiParameterServerType  :: !(Maybe Text)
    , _gcmvtiHyperparameters      :: !(Maybe GoogleCloudMlV1__HyperparameterSpec)
    , _gcmvtiPackageURIs          :: !(Maybe [Text])
    , _gcmvtiScaleTier            :: !(Maybe GoogleCloudMlV1__TrainingInputScaleTier)
    , _gcmvtiRegion               :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudMlV1__TrainingInput' with the minimum fields required to make a request.
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
-- * 'gcmvtiJobDir'
--
-- * 'gcmvtiPythonVersion'
--
-- * 'gcmvtiRuntimeVersion'
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
googleCloudMlV1__TrainingInput
    :: GoogleCloudMlV1__TrainingInput
googleCloudMlV1__TrainingInput =
  GoogleCloudMlV1__TrainingInput'
    { _gcmvtiMasterType = Nothing
    , _gcmvtiParameterServerCount = Nothing
    , _gcmvtiArgs = Nothing
    , _gcmvtiWorkerCount = Nothing
    , _gcmvtiJobDir = Nothing
    , _gcmvtiPythonVersion = Nothing
    , _gcmvtiRuntimeVersion = Nothing
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
--     the memory of /complex_model_s/.
-- [complex_model_l]
--     A machine with roughly twice the number of cores and roughly double
--     the memory of /complex_model_m/.
-- [standard_gpu]
--     A machine equivalent to /standard/ that also includes a single
--     NVIDIA Tesla K80 GPU. See more about
--     </ml-engine/docs/tensorflow/using-gpus using GPUs to train your model>.
-- [complex_model_m_gpu]
--     A machine equivalent to /complex_model_m/ that also includes four
--     NVIDIA Tesla K80 GPUs.
-- [complex_model_l_gpu]
--     A machine equivalent to /complex_model_l/ that also includes eight
--     NVIDIA Tesla K80 GPUs.
-- [standard_p100]
--     A machine equivalent to /standard/ that also includes a single
--     NVIDIA Tesla P100 GPU.
-- [complex_model_m_p100]
--     A machine equivalent to /complex_model_m/ that also includes four
--     NVIDIA Tesla P100 GPUs.
-- [standard_v100]
--     A machine equivalent to /standard/ that also includes a single
--     NVIDIA Tesla V100 GPU. The availability of these GPUs is in the
--     /Beta/ launch stage.
-- [large_model_v100]
--     A machine equivalent to /large_model/ that also includes a single
--     NVIDIA Tesla V100 GPU. The availability of these GPUs is in the
--     /Beta/ launch stage.
-- [complex_model_m_v100]
--     A machine equivalent to /complex_model_m/ that also includes four
--     NVIDIA Tesla V100 GPUs. The availability of these GPUs is in the
--     /Beta/ launch stage.
-- [complex_model_l_v100]
--     A machine equivalent to /complex_model_l/ that also includes eight
--     NVIDIA Tesla V100 GPUs. The availability of these GPUs is in the
--     /Beta/ launch stage.
-- [cloud_tpu]
--     A TPU VM including one Cloud TPU. See more about
--     </ml-engine/docs/tensorflow/using-tpus using TPUs to train your model>.
--
-- You must set this value when \`scaleTier\` is set to \`CUSTOM\`.
gcmvtiMasterType :: Lens' GoogleCloudMlV1__TrainingInput (Maybe Text)
gcmvtiMasterType
  = lens _gcmvtiMasterType
      (\ s a -> s{_gcmvtiMasterType = a})

-- | Optional. The number of parameter server replicas to use for the
-- training job. Each replica in the cluster will be of the type specified
-- in \`parameter_server_type\`. This value can only be used when
-- \`scale_tier\` is set to \`CUSTOM\`.If you set this value, you must also
-- set \`parameter_server_type\`.
gcmvtiParameterServerCount :: Lens' GoogleCloudMlV1__TrainingInput (Maybe Int64)
gcmvtiParameterServerCount
  = lens _gcmvtiParameterServerCount
      (\ s a -> s{_gcmvtiParameterServerCount = a})
      . mapping _Coerce

-- | Optional. Command line arguments to pass to the program.
gcmvtiArgs :: Lens' GoogleCloudMlV1__TrainingInput [Text]
gcmvtiArgs
  = lens _gcmvtiArgs (\ s a -> s{_gcmvtiArgs = a}) .
      _Default
      . _Coerce

-- | Optional. The number of worker replicas to use for the training job.
-- Each replica in the cluster will be of the type specified in
-- \`worker_type\`. This value can only be used when \`scale_tier\` is set
-- to \`CUSTOM\`. If you set this value, you must also set \`worker_type\`.
gcmvtiWorkerCount :: Lens' GoogleCloudMlV1__TrainingInput (Maybe Int64)
gcmvtiWorkerCount
  = lens _gcmvtiWorkerCount
      (\ s a -> s{_gcmvtiWorkerCount = a})
      . mapping _Coerce

-- | Optional. A Google Cloud Storage path in which to store training outputs
-- and other data needed for training. This path is passed to your
-- TensorFlow program as the \'--job-dir\' command-line argument. The
-- benefit of specifying this field is that Cloud ML validates the path for
-- use in training.
gcmvtiJobDir :: Lens' GoogleCloudMlV1__TrainingInput (Maybe Text)
gcmvtiJobDir
  = lens _gcmvtiJobDir (\ s a -> s{_gcmvtiJobDir = a})

-- | Optional. The version of Python used in training. If not set, the
-- default version is \'2.7\'. Python \'3.5\' is available when
-- \`runtime_version\` is set to \'1.4\' and above. Python \'2.7\' works
-- with all supported
-- </ml-engine/docs/runtime-version-list runtime versions>.
gcmvtiPythonVersion :: Lens' GoogleCloudMlV1__TrainingInput (Maybe Text)
gcmvtiPythonVersion
  = lens _gcmvtiPythonVersion
      (\ s a -> s{_gcmvtiPythonVersion = a})

-- | Optional. The Cloud ML Engine runtime version to use for training. If
-- not set, Cloud ML Engine uses the default stable version, 1.0. For more
-- information, see the
-- </ml-engine/docs/runtime-version-list runtime version list> and
-- </ml-engine/docs/versioning how to manage runtime versions>.
gcmvtiRuntimeVersion :: Lens' GoogleCloudMlV1__TrainingInput (Maybe Text)
gcmvtiRuntimeVersion
  = lens _gcmvtiRuntimeVersion
      (\ s a -> s{_gcmvtiRuntimeVersion = a})

-- | Optional. Specifies the type of virtual machine to use for your training
-- job\'s worker nodes. The supported values are the same as those
-- described in the entry for \`masterType\`. This value must be present
-- when \`scaleTier\` is set to \`CUSTOM\` and \`workerCount\` is greater
-- than zero.
gcmvtiWorkerType :: Lens' GoogleCloudMlV1__TrainingInput (Maybe Text)
gcmvtiWorkerType
  = lens _gcmvtiWorkerType
      (\ s a -> s{_gcmvtiWorkerType = a})

-- | Required. The Python module name to run after installing the packages.
gcmvtiPythonModule :: Lens' GoogleCloudMlV1__TrainingInput (Maybe Text)
gcmvtiPythonModule
  = lens _gcmvtiPythonModule
      (\ s a -> s{_gcmvtiPythonModule = a})

-- | Optional. Specifies the type of virtual machine to use for your training
-- job\'s parameter server. The supported values are the same as those
-- described in the entry for \`master_type\`. This value must be present
-- when \`scaleTier\` is set to \`CUSTOM\` and \`parameter_server_count\`
-- is greater than zero.
gcmvtiParameterServerType :: Lens' GoogleCloudMlV1__TrainingInput (Maybe Text)
gcmvtiParameterServerType
  = lens _gcmvtiParameterServerType
      (\ s a -> s{_gcmvtiParameterServerType = a})

-- | Optional. The set of Hyperparameters to tune.
gcmvtiHyperparameters :: Lens' GoogleCloudMlV1__TrainingInput (Maybe GoogleCloudMlV1__HyperparameterSpec)
gcmvtiHyperparameters
  = lens _gcmvtiHyperparameters
      (\ s a -> s{_gcmvtiHyperparameters = a})

-- | Required. The Google Cloud Storage location of the packages with the
-- training program and any additional dependencies. The maximum number of
-- package URIs is 100.
gcmvtiPackageURIs :: Lens' GoogleCloudMlV1__TrainingInput [Text]
gcmvtiPackageURIs
  = lens _gcmvtiPackageURIs
      (\ s a -> s{_gcmvtiPackageURIs = a})
      . _Default
      . _Coerce

-- | Required. Specifies the machine types, the number of replicas for
-- workers and parameter servers.
gcmvtiScaleTier :: Lens' GoogleCloudMlV1__TrainingInput (Maybe GoogleCloudMlV1__TrainingInputScaleTier)
gcmvtiScaleTier
  = lens _gcmvtiScaleTier
      (\ s a -> s{_gcmvtiScaleTier = a})

-- | Required. The Google Compute Engine region to run the training job in.
-- See the </ml-engine/docs/tensorflow/regions available regions> for ML
-- Engine services.
gcmvtiRegion :: Lens' GoogleCloudMlV1__TrainingInput (Maybe Text)
gcmvtiRegion
  = lens _gcmvtiRegion (\ s a -> s{_gcmvtiRegion = a})

instance FromJSON GoogleCloudMlV1__TrainingInput
         where
        parseJSON
          = withObject "GoogleCloudMlV1TrainingInput"
              (\ o ->
                 GoogleCloudMlV1__TrainingInput' <$>
                   (o .:? "masterType") <*>
                     (o .:? "parameterServerCount")
                     <*> (o .:? "args" .!= mempty)
                     <*> (o .:? "workerCount")
                     <*> (o .:? "jobDir")
                     <*> (o .:? "pythonVersion")
                     <*> (o .:? "runtimeVersion")
                     <*> (o .:? "workerType")
                     <*> (o .:? "pythonModule")
                     <*> (o .:? "parameterServerType")
                     <*> (o .:? "hyperparameters")
                     <*> (o .:? "packageUris" .!= mempty)
                     <*> (o .:? "scaleTier")
                     <*> (o .:? "region"))

instance ToJSON GoogleCloudMlV1__TrainingInput where
        toJSON GoogleCloudMlV1__TrainingInput'{..}
          = object
              (catMaybes
                 [("masterType" .=) <$> _gcmvtiMasterType,
                  ("parameterServerCount" .=) <$>
                    _gcmvtiParameterServerCount,
                  ("args" .=) <$> _gcmvtiArgs,
                  ("workerCount" .=) <$> _gcmvtiWorkerCount,
                  ("jobDir" .=) <$> _gcmvtiJobDir,
                  ("pythonVersion" .=) <$> _gcmvtiPythonVersion,
                  ("runtimeVersion" .=) <$> _gcmvtiRuntimeVersion,
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
newtype GoogleRpc__StatusDetailsItem =
  GoogleRpc__StatusDetailsItem'
    { _grsdiAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleRpc__StatusDetailsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grsdiAddtional'
googleRpc__StatusDetailsItem
    :: HashMap Text JSONValue -- ^ 'grsdiAddtional'
    -> GoogleRpc__StatusDetailsItem
googleRpc__StatusDetailsItem pGrsdiAddtional_ =
  GoogleRpc__StatusDetailsItem' {_grsdiAddtional = _Coerce # pGrsdiAddtional_}

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
  deriving (Eq, Show, Data, Typeable, Generic)

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

--
-- /See:/ 'googleCloudMlV1__Location' smart constructor.
data GoogleCloudMlV1__Location =
  GoogleCloudMlV1__Location'
    { _gcmvlName         :: !(Maybe Text)
    , _gcmvlCapabilities :: !(Maybe [GoogleCloudMlV1__Capability])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudMlV1__Location' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvlName'
--
-- * 'gcmvlCapabilities'
googleCloudMlV1__Location
    :: GoogleCloudMlV1__Location
googleCloudMlV1__Location =
  GoogleCloudMlV1__Location'
    {_gcmvlName = Nothing, _gcmvlCapabilities = Nothing}

gcmvlName :: Lens' GoogleCloudMlV1__Location (Maybe Text)
gcmvlName
  = lens _gcmvlName (\ s a -> s{_gcmvlName = a})

-- | Capabilities available in the location.
gcmvlCapabilities :: Lens' GoogleCloudMlV1__Location [GoogleCloudMlV1__Capability]
gcmvlCapabilities
  = lens _gcmvlCapabilities
      (\ s a -> s{_gcmvlCapabilities = a})
      . _Default
      . _Coerce

instance FromJSON GoogleCloudMlV1__Location where
        parseJSON
          = withObject "GoogleCloudMlV1Location"
              (\ o ->
                 GoogleCloudMlV1__Location' <$>
                   (o .:? "name") <*> (o .:? "capabilities" .!= mempty))

instance ToJSON GoogleCloudMlV1__Location where
        toJSON GoogleCloudMlV1__Location'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _gcmvlName,
                  ("capabilities" .=) <$> _gcmvlCapabilities])

-- | The user labels, inherited from the model or the model version being
-- operated on.
--
-- /See:/ 'googleCloudMlV1__OperationMetadataLabels' smart constructor.
newtype GoogleCloudMlV1__OperationMetadataLabels =
  GoogleCloudMlV1__OperationMetadataLabels'
    { _gcmvomlAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudMlV1__OperationMetadataLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvomlAddtional'
googleCloudMlV1__OperationMetadataLabels
    :: HashMap Text Text -- ^ 'gcmvomlAddtional'
    -> GoogleCloudMlV1__OperationMetadataLabels
googleCloudMlV1__OperationMetadataLabels pGcmvomlAddtional_ =
  GoogleCloudMlV1__OperationMetadataLabels'
    {_gcmvomlAddtional = _Coerce # pGcmvomlAddtional_}

gcmvomlAddtional :: Lens' GoogleCloudMlV1__OperationMetadataLabels (HashMap Text Text)
gcmvomlAddtional
  = lens _gcmvomlAddtional
      (\ s a -> s{_gcmvomlAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudMlV1__OperationMetadataLabels
         where
        parseJSON
          = withObject "GoogleCloudMlV1OperationMetadataLabels"
              (\ o ->
                 GoogleCloudMlV1__OperationMetadataLabels' <$>
                   (parseJSONObject o))

instance ToJSON
           GoogleCloudMlV1__OperationMetadataLabels
         where
        toJSON = toJSON . _gcmvomlAddtional

--
-- /See:/ 'googleCloudMlV1__Capability' smart constructor.
data GoogleCloudMlV1__Capability =
  GoogleCloudMlV1__Capability'
    { _gcmvcAvailableAccelerators :: !(Maybe [Text])
    , _gcmvcType                  :: !(Maybe GoogleCloudMlV1__CapabilityType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudMlV1__Capability' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvcAvailableAccelerators'
--
-- * 'gcmvcType'
googleCloudMlV1__Capability
    :: GoogleCloudMlV1__Capability
googleCloudMlV1__Capability =
  GoogleCloudMlV1__Capability'
    {_gcmvcAvailableAccelerators = Nothing, _gcmvcType = Nothing}

-- | Available accelerators for the capability.
gcmvcAvailableAccelerators :: Lens' GoogleCloudMlV1__Capability [Text]
gcmvcAvailableAccelerators
  = lens _gcmvcAvailableAccelerators
      (\ s a -> s{_gcmvcAvailableAccelerators = a})
      . _Default
      . _Coerce

gcmvcType :: Lens' GoogleCloudMlV1__Capability (Maybe GoogleCloudMlV1__CapabilityType)
gcmvcType
  = lens _gcmvcType (\ s a -> s{_gcmvcType = a})

instance FromJSON GoogleCloudMlV1__Capability where
        parseJSON
          = withObject "GoogleCloudMlV1Capability"
              (\ o ->
                 GoogleCloudMlV1__Capability' <$>
                   (o .:? "availableAccelerators" .!= mempty) <*>
                     (o .:? "type"))

instance ToJSON GoogleCloudMlV1__Capability where
        toJSON GoogleCloudMlV1__Capability'{..}
          = object
              (catMaybes
                 [("availableAccelerators" .=) <$>
                    _gcmvcAvailableAccelerators,
                  ("type" .=) <$> _gcmvcType])

-- | Represents the metadata of the long-running operation.
--
-- /See:/ 'googleCloudMlV1__OperationMetadata' smart constructor.
data GoogleCloudMlV1__OperationMetadata =
  GoogleCloudMlV1__OperationMetadata'
    { _gcmvomStartTime               :: !(Maybe DateTime')
    , _gcmvomModelName               :: !(Maybe Text)
    , _gcmvomProjectNumber           :: !(Maybe (Textual Int64))
    , _gcmvomVersion                 :: !(Maybe GoogleCloudMlV1__Version)
    , _gcmvomEndTime                 :: !(Maybe DateTime')
    , _gcmvomIsCancellationRequested :: !(Maybe Bool)
    , _gcmvomLabels                  :: !(Maybe GoogleCloudMlV1__OperationMetadataLabels)
    , _gcmvomOperationType           :: !(Maybe GoogleCloudMlV1__OperationMetadataOperationType)
    , _gcmvomCreateTime              :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudMlV1__OperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvomStartTime'
--
-- * 'gcmvomModelName'
--
-- * 'gcmvomProjectNumber'
--
-- * 'gcmvomVersion'
--
-- * 'gcmvomEndTime'
--
-- * 'gcmvomIsCancellationRequested'
--
-- * 'gcmvomLabels'
--
-- * 'gcmvomOperationType'
--
-- * 'gcmvomCreateTime'
googleCloudMlV1__OperationMetadata
    :: GoogleCloudMlV1__OperationMetadata
googleCloudMlV1__OperationMetadata =
  GoogleCloudMlV1__OperationMetadata'
    { _gcmvomStartTime = Nothing
    , _gcmvomModelName = Nothing
    , _gcmvomProjectNumber = Nothing
    , _gcmvomVersion = Nothing
    , _gcmvomEndTime = Nothing
    , _gcmvomIsCancellationRequested = Nothing
    , _gcmvomLabels = Nothing
    , _gcmvomOperationType = Nothing
    , _gcmvomCreateTime = Nothing
    }

-- | The time operation processing started.
gcmvomStartTime :: Lens' GoogleCloudMlV1__OperationMetadata (Maybe UTCTime)
gcmvomStartTime
  = lens _gcmvomStartTime
      (\ s a -> s{_gcmvomStartTime = a})
      . mapping _DateTime

-- | Contains the name of the model associated with the operation.
gcmvomModelName :: Lens' GoogleCloudMlV1__OperationMetadata (Maybe Text)
gcmvomModelName
  = lens _gcmvomModelName
      (\ s a -> s{_gcmvomModelName = a})

-- | Contains the project number associated with the operation.
gcmvomProjectNumber :: Lens' GoogleCloudMlV1__OperationMetadata (Maybe Int64)
gcmvomProjectNumber
  = lens _gcmvomProjectNumber
      (\ s a -> s{_gcmvomProjectNumber = a})
      . mapping _Coerce

-- | Contains the version associated with the operation.
gcmvomVersion :: Lens' GoogleCloudMlV1__OperationMetadata (Maybe GoogleCloudMlV1__Version)
gcmvomVersion
  = lens _gcmvomVersion
      (\ s a -> s{_gcmvomVersion = a})

-- | The time operation processing completed.
gcmvomEndTime :: Lens' GoogleCloudMlV1__OperationMetadata (Maybe UTCTime)
gcmvomEndTime
  = lens _gcmvomEndTime
      (\ s a -> s{_gcmvomEndTime = a})
      . mapping _DateTime

-- | Indicates whether a request to cancel this operation has been made.
gcmvomIsCancellationRequested :: Lens' GoogleCloudMlV1__OperationMetadata (Maybe Bool)
gcmvomIsCancellationRequested
  = lens _gcmvomIsCancellationRequested
      (\ s a -> s{_gcmvomIsCancellationRequested = a})

-- | The user labels, inherited from the model or the model version being
-- operated on.
gcmvomLabels :: Lens' GoogleCloudMlV1__OperationMetadata (Maybe GoogleCloudMlV1__OperationMetadataLabels)
gcmvomLabels
  = lens _gcmvomLabels (\ s a -> s{_gcmvomLabels = a})

-- | The operation type.
gcmvomOperationType :: Lens' GoogleCloudMlV1__OperationMetadata (Maybe GoogleCloudMlV1__OperationMetadataOperationType)
gcmvomOperationType
  = lens _gcmvomOperationType
      (\ s a -> s{_gcmvomOperationType = a})

-- | The time the operation was submitted.
gcmvomCreateTime :: Lens' GoogleCloudMlV1__OperationMetadata (Maybe UTCTime)
gcmvomCreateTime
  = lens _gcmvomCreateTime
      (\ s a -> s{_gcmvomCreateTime = a})
      . mapping _DateTime

instance FromJSON GoogleCloudMlV1__OperationMetadata
         where
        parseJSON
          = withObject "GoogleCloudMlV1OperationMetadata"
              (\ o ->
                 GoogleCloudMlV1__OperationMetadata' <$>
                   (o .:? "startTime") <*> (o .:? "modelName") <*>
                     (o .:? "projectNumber")
                     <*> (o .:? "version")
                     <*> (o .:? "endTime")
                     <*> (o .:? "isCancellationRequested")
                     <*> (o .:? "labels")
                     <*> (o .:? "operationType")
                     <*> (o .:? "createTime"))

instance ToJSON GoogleCloudMlV1__OperationMetadata
         where
        toJSON GoogleCloudMlV1__OperationMetadata'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _gcmvomStartTime,
                  ("modelName" .=) <$> _gcmvomModelName,
                  ("projectNumber" .=) <$> _gcmvomProjectNumber,
                  ("version" .=) <$> _gcmvomVersion,
                  ("endTime" .=) <$> _gcmvomEndTime,
                  ("isCancellationRequested" .=) <$>
                    _gcmvomIsCancellationRequested,
                  ("labels" .=) <$> _gcmvomLabels,
                  ("operationType" .=) <$> _gcmvomOperationType,
                  ("createTime" .=) <$> _gcmvomCreateTime])

--
-- /See:/ 'googleAPI__HTTPBodyExtensionsItem' smart constructor.
newtype GoogleAPI__HTTPBodyExtensionsItem =
  GoogleAPI__HTTPBodyExtensionsItem'
    { _gahttpbeiAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleAPI__HTTPBodyExtensionsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gahttpbeiAddtional'
googleAPI__HTTPBodyExtensionsItem
    :: HashMap Text JSONValue -- ^ 'gahttpbeiAddtional'
    -> GoogleAPI__HTTPBodyExtensionsItem
googleAPI__HTTPBodyExtensionsItem pGahttpbeiAddtional_ =
  GoogleAPI__HTTPBodyExtensionsItem'
    {_gahttpbeiAddtional = _Coerce # pGahttpbeiAddtional_}

-- | Properties of the object. Contains field \'type with type URL.
gahttpbeiAddtional :: Lens' GoogleAPI__HTTPBodyExtensionsItem (HashMap Text JSONValue)
gahttpbeiAddtional
  = lens _gahttpbeiAddtional
      (\ s a -> s{_gahttpbeiAddtional = a})
      . _Coerce

instance FromJSON GoogleAPI__HTTPBodyExtensionsItem
         where
        parseJSON
          = withObject "GoogleAPIHTTPBodyExtensionsItem"
              (\ o ->
                 GoogleAPI__HTTPBodyExtensionsItem' <$>
                   (parseJSONObject o))

instance ToJSON GoogleAPI__HTTPBodyExtensionsItem
         where
        toJSON = toJSON . _gahttpbeiAddtional

-- | Request message for the CancelJob method.
--
-- /See:/ 'googleCloudMlV1__CancelJobRequest' smart constructor.
data GoogleCloudMlV1__CancelJobRequest =
  GoogleCloudMlV1__CancelJobRequest'
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudMlV1__CancelJobRequest' with the minimum fields required to make a request.
--
googleCloudMlV1__CancelJobRequest
    :: GoogleCloudMlV1__CancelJobRequest
googleCloudMlV1__CancelJobRequest = GoogleCloudMlV1__CancelJobRequest'

instance FromJSON GoogleCloudMlV1__CancelJobRequest
         where
        parseJSON
          = withObject "GoogleCloudMlV1CancelJobRequest"
              (\ o -> pure GoogleCloudMlV1__CancelJobRequest')

instance ToJSON GoogleCloudMlV1__CancelJobRequest
         where
        toJSON = const emptyObject

-- | Represents results of a training job. Output only.
--
-- /See:/ 'googleCloudMlV1__TrainingOutput' smart constructor.
data GoogleCloudMlV1__TrainingOutput =
  GoogleCloudMlV1__TrainingOutput'
    { _gcmvtoIsHyperparameterTuningJob :: !(Maybe Bool)
    , _gcmvtoCompletedTrialCount       :: !(Maybe (Textual Int64))
    , _gcmvtoConsumedMLUnits           :: !(Maybe (Textual Double))
    , _gcmvtoTrials                    :: !(Maybe [GoogleCloudMlV1__HyperparameterOutput])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudMlV1__TrainingOutput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvtoIsHyperparameterTuningJob'
--
-- * 'gcmvtoCompletedTrialCount'
--
-- * 'gcmvtoConsumedMLUnits'
--
-- * 'gcmvtoTrials'
googleCloudMlV1__TrainingOutput
    :: GoogleCloudMlV1__TrainingOutput
googleCloudMlV1__TrainingOutput =
  GoogleCloudMlV1__TrainingOutput'
    { _gcmvtoIsHyperparameterTuningJob = Nothing
    , _gcmvtoCompletedTrialCount = Nothing
    , _gcmvtoConsumedMLUnits = Nothing
    , _gcmvtoTrials = Nothing
    }

-- | Whether this job is a hyperparameter tuning job.
gcmvtoIsHyperparameterTuningJob :: Lens' GoogleCloudMlV1__TrainingOutput (Maybe Bool)
gcmvtoIsHyperparameterTuningJob
  = lens _gcmvtoIsHyperparameterTuningJob
      (\ s a -> s{_gcmvtoIsHyperparameterTuningJob = a})

-- | The number of hyperparameter tuning trials that completed successfully.
-- Only set for hyperparameter tuning jobs.
gcmvtoCompletedTrialCount :: Lens' GoogleCloudMlV1__TrainingOutput (Maybe Int64)
gcmvtoCompletedTrialCount
  = lens _gcmvtoCompletedTrialCount
      (\ s a -> s{_gcmvtoCompletedTrialCount = a})
      . mapping _Coerce

-- | The amount of ML units consumed by the job.
gcmvtoConsumedMLUnits :: Lens' GoogleCloudMlV1__TrainingOutput (Maybe Double)
gcmvtoConsumedMLUnits
  = lens _gcmvtoConsumedMLUnits
      (\ s a -> s{_gcmvtoConsumedMLUnits = a})
      . mapping _Coerce

-- | Results for individual Hyperparameter trials. Only set for
-- hyperparameter tuning jobs.
gcmvtoTrials :: Lens' GoogleCloudMlV1__TrainingOutput [GoogleCloudMlV1__HyperparameterOutput]
gcmvtoTrials
  = lens _gcmvtoTrials (\ s a -> s{_gcmvtoTrials = a})
      . _Default
      . _Coerce

instance FromJSON GoogleCloudMlV1__TrainingOutput
         where
        parseJSON
          = withObject "GoogleCloudMlV1TrainingOutput"
              (\ o ->
                 GoogleCloudMlV1__TrainingOutput' <$>
                   (o .:? "isHyperparameterTuningJob") <*>
                     (o .:? "completedTrialCount")
                     <*> (o .:? "consumedMLUnits")
                     <*> (o .:? "trials" .!= mempty))

instance ToJSON GoogleCloudMlV1__TrainingOutput where
        toJSON GoogleCloudMlV1__TrainingOutput'{..}
          = object
              (catMaybes
                 [("isHyperparameterTuningJob" .=) <$>
                    _gcmvtoIsHyperparameterTuningJob,
                  ("completedTrialCount" .=) <$>
                    _gcmvtoCompletedTrialCount,
                  ("consumedMLUnits" .=) <$> _gcmvtoConsumedMLUnits,
                  ("trials" .=) <$> _gcmvtoTrials])

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
data GoogleAPI__HTTPBody =
  GoogleAPI__HTTPBody'
    { _gahttpbExtensions  :: !(Maybe [GoogleAPI__HTTPBodyExtensionsItem])
    , _gahttpbData        :: !(Maybe Bytes)
    , _gahttpbContentType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleAPI__HTTPBody' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gahttpbExtensions'
--
-- * 'gahttpbData'
--
-- * 'gahttpbContentType'
googleAPI__HTTPBody
    :: GoogleAPI__HTTPBody
googleAPI__HTTPBody =
  GoogleAPI__HTTPBody'
    { _gahttpbExtensions = Nothing
    , _gahttpbData = Nothing
    , _gahttpbContentType = Nothing
    }

-- | Application specific response metadata. Must be set in the first
-- response for streaming APIs.
gahttpbExtensions :: Lens' GoogleAPI__HTTPBody [GoogleAPI__HTTPBodyExtensionsItem]
gahttpbExtensions
  = lens _gahttpbExtensions
      (\ s a -> s{_gahttpbExtensions = a})
      . _Default
      . _Coerce

-- | HTTP body binary data.
gahttpbData :: Lens' GoogleAPI__HTTPBody (Maybe ByteString)
gahttpbData
  = lens _gahttpbData (\ s a -> s{_gahttpbData = a}) .
      mapping _Bytes

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
                   (o .:? "extensions" .!= mempty) <*> (o .:? "data")
                     <*> (o .:? "contentType"))

instance ToJSON GoogleAPI__HTTPBody where
        toJSON GoogleAPI__HTTPBody'{..}
          = object
              (catMaybes
                 [("extensions" .=) <$> _gahttpbExtensions,
                  ("data" .=) <$> _gahttpbData,
                  ("contentType" .=) <$> _gahttpbContentType])

-- | Request message for \`TestIamPermissions\` method.
--
-- /See:/ 'googleIAMV1__TestIAMPermissionsRequest' smart constructor.
newtype GoogleIAMV1__TestIAMPermissionsRequest =
  GoogleIAMV1__TestIAMPermissionsRequest'
    { _giamvtiamprPermissions :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleIAMV1__TestIAMPermissionsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giamvtiamprPermissions'
googleIAMV1__TestIAMPermissionsRequest
    :: GoogleIAMV1__TestIAMPermissionsRequest
googleIAMV1__TestIAMPermissionsRequest =
  GoogleIAMV1__TestIAMPermissionsRequest' {_giamvtiamprPermissions = Nothing}

-- | The set of permissions to check for the \`resource\`. Permissions with
-- wildcards (such as \'*\' or \'storage.*\') are not allowed. For more
-- information see [IAM
-- Overview](https:\/\/cloud.google.com\/iam\/docs\/overview#permissions).
giamvtiamprPermissions :: Lens' GoogleIAMV1__TestIAMPermissionsRequest [Text]
giamvtiamprPermissions
  = lens _giamvtiamprPermissions
      (\ s a -> s{_giamvtiamprPermissions = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleIAMV1__TestIAMPermissionsRequest
         where
        parseJSON
          = withObject "GoogleIAMV1TestIAMPermissionsRequest"
              (\ o ->
                 GoogleIAMV1__TestIAMPermissionsRequest' <$>
                   (o .:? "permissions" .!= mempty))

instance ToJSON
           GoogleIAMV1__TestIAMPermissionsRequest
         where
        toJSON GoogleIAMV1__TestIAMPermissionsRequest'{..}
          = object
              (catMaybes
                 [("permissions" .=) <$> _giamvtiamprPermissions])

--
-- /See:/ 'googleCloudMlV1__ListLocationsResponse' smart constructor.
data GoogleCloudMlV1__ListLocationsResponse =
  GoogleCloudMlV1__ListLocationsResponse'
    { _gcmvllrNextPageToken :: !(Maybe Text)
    , _gcmvllrLocations     :: !(Maybe [GoogleCloudMlV1__Location])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudMlV1__ListLocationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvllrNextPageToken'
--
-- * 'gcmvllrLocations'
googleCloudMlV1__ListLocationsResponse
    :: GoogleCloudMlV1__ListLocationsResponse
googleCloudMlV1__ListLocationsResponse =
  GoogleCloudMlV1__ListLocationsResponse'
    {_gcmvllrNextPageToken = Nothing, _gcmvllrLocations = Nothing}

-- | Optional. Pass this token as the \`page_token\` field of the request for
-- a subsequent call.
gcmvllrNextPageToken :: Lens' GoogleCloudMlV1__ListLocationsResponse (Maybe Text)
gcmvllrNextPageToken
  = lens _gcmvllrNextPageToken
      (\ s a -> s{_gcmvllrNextPageToken = a})

-- | Locations where at least one type of CMLE capability is available.
gcmvllrLocations :: Lens' GoogleCloudMlV1__ListLocationsResponse [GoogleCloudMlV1__Location]
gcmvllrLocations
  = lens _gcmvllrLocations
      (\ s a -> s{_gcmvllrLocations = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudMlV1__ListLocationsResponse
         where
        parseJSON
          = withObject "GoogleCloudMlV1ListLocationsResponse"
              (\ o ->
                 GoogleCloudMlV1__ListLocationsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "locations" .!= mempty))

instance ToJSON
           GoogleCloudMlV1__ListLocationsResponse
         where
        toJSON GoogleCloudMlV1__ListLocationsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _gcmvllrNextPageToken,
                  ("locations" .=) <$> _gcmvllrLocations])

-- | Optional. One or more labels that you can add, to organize your model
-- versions. Each label is a key-value pair, where both the key and the
-- value are arbitrary strings that you supply. For more information, see
-- the documentation on
-- </ml-engine/docs/tensorflow/resource-labels using labels>.
--
-- /See:/ 'googleCloudMlV1__VersionLabels' smart constructor.
newtype GoogleCloudMlV1__VersionLabels =
  GoogleCloudMlV1__VersionLabels'
    { _gcmvvlAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleCloudMlV1__VersionLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvvlAddtional'
googleCloudMlV1__VersionLabels
    :: HashMap Text Text -- ^ 'gcmvvlAddtional'
    -> GoogleCloudMlV1__VersionLabels
googleCloudMlV1__VersionLabels pGcmvvlAddtional_ =
  GoogleCloudMlV1__VersionLabels'
    {_gcmvvlAddtional = _Coerce # pGcmvvlAddtional_}

gcmvvlAddtional :: Lens' GoogleCloudMlV1__VersionLabels (HashMap Text Text)
gcmvvlAddtional
  = lens _gcmvvlAddtional
      (\ s a -> s{_gcmvvlAddtional = a})
      . _Coerce

instance FromJSON GoogleCloudMlV1__VersionLabels
         where
        parseJSON
          = withObject "GoogleCloudMlV1VersionLabels"
              (\ o ->
                 GoogleCloudMlV1__VersionLabels' <$>
                   (parseJSONObject o))

instance ToJSON GoogleCloudMlV1__VersionLabels where
        toJSON = toJSON . _gcmvvlAddtional
