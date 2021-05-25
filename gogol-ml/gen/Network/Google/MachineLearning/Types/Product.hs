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

import Network.Google.MachineLearning.Types.Sum
import Network.Google.Prelude

-- | Specifies the audit configuration for a service. The configuration
-- determines which permission types are logged, and what identities, if
-- any, are exempted from logging. An AuditConfig must have one or more
-- AuditLogConfigs. If there are AuditConfigs for both \`allServices\` and
-- a specific service, the union of the two AuditConfigs is used for that
-- service: the log_types specified in each AuditConfig are enabled, and
-- the exempted_members in each AuditLogConfig are exempted. Example Policy
-- with multiple AuditConfigs: { \"audit_configs\": [ { \"service\":
-- \"allServices\", \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\",
-- \"exempted_members\": [ \"user:jose\'example.com\" ] }, { \"log_type\":
-- \"DATA_WRITE\" }, { \"log_type\": \"ADMIN_READ\" } ] }, { \"service\":
-- \"sampleservice.googleapis.com\", \"audit_log_configs\": [ {
-- \"log_type\": \"DATA_READ\" }, { \"log_type\": \"DATA_WRITE\",
-- \"exempted_members\": [ \"user:aliya\'example.com\" ] } ] } ] } For
-- sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ
-- logging. It also exempts jose\'example.com from DATA_READ logging, and
-- aliya\'example.com from DATA_WRITE logging.
--
-- /See:/ 'googleIAMV1__AuditConfig' smart constructor.
data GoogleIAMV1__AuditConfig =
  GoogleIAMV1__AuditConfig'
    { _givacService :: !(Maybe Text)
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

-- | A message representing a measurement.
--
-- /See:/ 'googleCloudMlV1__Measurement' smart constructor.
data GoogleCloudMlV1__Measurement =
  GoogleCloudMlV1__Measurement'
    { _gcmvmMetrics :: !(Maybe [GoogleCloudMlV1_Measurement_Metric])
    , _gcmvmElapsedTime :: !(Maybe GDuration)
    , _gcmvmStepCount :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudMlV1__Measurement' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvmMetrics'
--
-- * 'gcmvmElapsedTime'
--
-- * 'gcmvmStepCount'
googleCloudMlV1__Measurement
    :: GoogleCloudMlV1__Measurement
googleCloudMlV1__Measurement =
  GoogleCloudMlV1__Measurement'
    { _gcmvmMetrics = Nothing
    , _gcmvmElapsedTime = Nothing
    , _gcmvmStepCount = Nothing
    }


-- | Provides a list of metrics that act as inputs into the objective
-- function.
gcmvmMetrics :: Lens' GoogleCloudMlV1__Measurement [GoogleCloudMlV1_Measurement_Metric]
gcmvmMetrics
  = lens _gcmvmMetrics (\ s a -> s{_gcmvmMetrics = a})
      . _Default
      . _Coerce

-- | Output only. Time that the trial has been running at the point of this
-- measurement.
gcmvmElapsedTime :: Lens' GoogleCloudMlV1__Measurement (Maybe Scientific)
gcmvmElapsedTime
  = lens _gcmvmElapsedTime
      (\ s a -> s{_gcmvmElapsedTime = a})
      . mapping _GDuration

-- | The number of steps a machine learning model has been trained for. Must
-- be non-negative.
gcmvmStepCount :: Lens' GoogleCloudMlV1__Measurement (Maybe Int64)
gcmvmStepCount
  = lens _gcmvmStepCount
      (\ s a -> s{_gcmvmStepCount = a})
      . mapping _Coerce

instance FromJSON GoogleCloudMlV1__Measurement where
        parseJSON
          = withObject "GoogleCloudMlV1Measurement"
              (\ o ->
                 GoogleCloudMlV1__Measurement' <$>
                   (o .:? "metrics" .!= mempty) <*>
                     (o .:? "elapsedTime")
                     <*> (o .:? "stepCount"))

instance ToJSON GoogleCloudMlV1__Measurement where
        toJSON GoogleCloudMlV1__Measurement'{..}
          = object
              (catMaybes
                 [("metrics" .=) <$> _gcmvmMetrics,
                  ("elapsedTime" .=) <$> _gcmvmElapsedTime,
                  ("stepCount" .=) <$> _gcmvmStepCount])

-- | Represents a version of the model. Each version is a trained model
-- deployed in the cloud, ready to handle prediction requests. A model can
-- have multiple versions. You can get information about all of the
-- versions of a given model by calling projects.models.versions.list.
--
-- /See:/ 'googleCloudMlV1__Version' smart constructor.
data GoogleCloudMlV1__Version =
  GoogleCloudMlV1__Version'
    { _gcmvvFramework :: !(Maybe GoogleCloudMlV1__VersionFramework)
    , _gcmvvEtag :: !(Maybe Bytes)
    , _gcmvvState :: !(Maybe GoogleCloudMlV1__VersionState)
    , _gcmvvRoutes :: !(Maybe GoogleCloudMlV1__RouteMap)
    , _gcmvvAutoScaling :: !(Maybe GoogleCloudMlV1__AutoScaling)
    , _gcmvvPythonVersion :: !(Maybe Text)
    , _gcmvvRuntimeVersion :: !(Maybe Text)
    , _gcmvvExplanationConfig :: !(Maybe GoogleCloudMlV1__ExplanationConfig)
    , _gcmvvLastMigrationModelId :: !(Maybe Text)
    , _gcmvvLastUseTime :: !(Maybe DateTime')
    , _gcmvvServiceAccount :: !(Maybe Text)
    , _gcmvvName :: !(Maybe Text)
    , _gcmvvPackageURIs :: !(Maybe [Text])
    , _gcmvvContainer :: !(Maybe GoogleCloudMlV1__ContainerSpec)
    , _gcmvvDeploymentURI :: !(Maybe Text)
    , _gcmvvManualScaling :: !(Maybe GoogleCloudMlV1__ManualScaling)
    , _gcmvvAcceleratorConfig :: !(Maybe GoogleCloudMlV1__AcceleratorConfig)
    , _gcmvvMachineType :: !(Maybe Text)
    , _gcmvvLabels :: !(Maybe GoogleCloudMlV1__VersionLabels)
    , _gcmvvRequestLoggingConfig :: !(Maybe GoogleCloudMlV1__RequestLoggingConfig)
    , _gcmvvPredictionClass :: !(Maybe Text)
    , _gcmvvLastMigrationTime :: !(Maybe DateTime')
    , _gcmvvErrorMessage :: !(Maybe Text)
    , _gcmvvDescription :: !(Maybe Text)
    , _gcmvvCreateTime :: !(Maybe DateTime')
    , _gcmvvIsDefault :: !(Maybe Bool)
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
-- * 'gcmvvRoutes'
--
-- * 'gcmvvAutoScaling'
--
-- * 'gcmvvPythonVersion'
--
-- * 'gcmvvRuntimeVersion'
--
-- * 'gcmvvExplanationConfig'
--
-- * 'gcmvvLastMigrationModelId'
--
-- * 'gcmvvLastUseTime'
--
-- * 'gcmvvServiceAccount'
--
-- * 'gcmvvName'
--
-- * 'gcmvvPackageURIs'
--
-- * 'gcmvvContainer'
--
-- * 'gcmvvDeploymentURI'
--
-- * 'gcmvvManualScaling'
--
-- * 'gcmvvAcceleratorConfig'
--
-- * 'gcmvvMachineType'
--
-- * 'gcmvvLabels'
--
-- * 'gcmvvRequestLoggingConfig'
--
-- * 'gcmvvPredictionClass'
--
-- * 'gcmvvLastMigrationTime'
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
    , _gcmvvRoutes = Nothing
    , _gcmvvAutoScaling = Nothing
    , _gcmvvPythonVersion = Nothing
    , _gcmvvRuntimeVersion = Nothing
    , _gcmvvExplanationConfig = Nothing
    , _gcmvvLastMigrationModelId = Nothing
    , _gcmvvLastUseTime = Nothing
    , _gcmvvServiceAccount = Nothing
    , _gcmvvName = Nothing
    , _gcmvvPackageURIs = Nothing
    , _gcmvvContainer = Nothing
    , _gcmvvDeploymentURI = Nothing
    , _gcmvvManualScaling = Nothing
    , _gcmvvAcceleratorConfig = Nothing
    , _gcmvvMachineType = Nothing
    , _gcmvvLabels = Nothing
    , _gcmvvRequestLoggingConfig = Nothing
    , _gcmvvPredictionClass = Nothing
    , _gcmvvLastMigrationTime = Nothing
    , _gcmvvErrorMessage = Nothing
    , _gcmvvDescription = Nothing
    , _gcmvvCreateTime = Nothing
    , _gcmvvIsDefault = Nothing
    }


-- | Optional. The machine learning framework AI Platform uses to train this
-- version of the model. Valid values are \`TENSORFLOW\`, \`SCIKIT_LEARN\`,
-- \`XGBOOST\`. If you do not specify a framework, AI Platform will analyze
-- files in the deployment_uri to determine a framework. If you choose
-- \`SCIKIT_LEARN\` or \`XGBOOST\`, you must also set the runtime version
-- of the model to 1.4 or greater. Do **not** specify a framework if
-- you\'re deploying a [custom prediction
-- routine](\/ai-platform\/prediction\/docs\/custom-prediction-routines) or
-- if you\'re using a [custom
-- container](\/ai-platform\/prediction\/docs\/use-custom-container).
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

-- | Optional. Specifies paths on a custom container\'s HTTP server where AI
-- Platform Prediction sends certain requests. If you specify this field,
-- then you must also specify the \`container\` field. If you specify the
-- \`container\` field and do not specify this field, it defaults to the
-- following: \`\`\`json { \"predict\":
-- \"\/v1\/models\/MODEL\/versions\/VERSION:predict\", \"health\":
-- \"\/v1\/models\/MODEL\/versions\/VERSION\" } \`\`\` See RouteMap for
-- more details about these default values.
gcmvvRoutes :: Lens' GoogleCloudMlV1__Version (Maybe GoogleCloudMlV1__RouteMap)
gcmvvRoutes
  = lens _gcmvvRoutes (\ s a -> s{_gcmvvRoutes = a})

-- | Automatically scale the number of nodes used to serve the model in
-- response to increases and decreases in traffic. Care should be taken to
-- ramp up traffic according to the model\'s ability to scale or you will
-- start seeing increases in latency and 429 response codes.
gcmvvAutoScaling :: Lens' GoogleCloudMlV1__Version (Maybe GoogleCloudMlV1__AutoScaling)
gcmvvAutoScaling
  = lens _gcmvvAutoScaling
      (\ s a -> s{_gcmvvAutoScaling = a})

-- | Required. The version of Python used in prediction. The following Python
-- versions are available: * Python \'3.7\' is available when
-- \`runtime_version\` is set to \'1.15\' or later. * Python \'3.5\' is
-- available when \`runtime_version\` is set to a version from \'1.4\' to
-- \'1.14\'. * Python \'2.7\' is available when \`runtime_version\` is set
-- to \'1.15\' or earlier. Read more about the Python versions available
-- for [each runtime version](\/ml-engine\/docs\/runtime-version-list).
gcmvvPythonVersion :: Lens' GoogleCloudMlV1__Version (Maybe Text)
gcmvvPythonVersion
  = lens _gcmvvPythonVersion
      (\ s a -> s{_gcmvvPythonVersion = a})

-- | Required. The AI Platform runtime version to use for this deployment.
-- For more information, see the [runtime version
-- list](\/ml-engine\/docs\/runtime-version-list) and [how to manage
-- runtime versions](\/ml-engine\/docs\/versioning).
gcmvvRuntimeVersion :: Lens' GoogleCloudMlV1__Version (Maybe Text)
gcmvvRuntimeVersion
  = lens _gcmvvRuntimeVersion
      (\ s a -> s{_gcmvvRuntimeVersion = a})

-- | Optional. Configures explainability features on the model\'s version.
-- Some explanation features require additional metadata to be loaded as
-- part of the model payload.
gcmvvExplanationConfig :: Lens' GoogleCloudMlV1__Version (Maybe GoogleCloudMlV1__ExplanationConfig)
gcmvvExplanationConfig
  = lens _gcmvvExplanationConfig
      (\ s a -> s{_gcmvvExplanationConfig = a})

-- | Output only. The [AI Platform (Unified)
-- \`Model\`](https:\/\/cloud.google.com\/ai-platform-unified\/docs\/reference\/rest\/v1beta1\/projects.locations.models)
-- ID for the last [model
-- migration](https:\/\/cloud.google.com\/ai-platform-unified\/docs\/start\/migrating-to-ai-platform-unified).
gcmvvLastMigrationModelId :: Lens' GoogleCloudMlV1__Version (Maybe Text)
gcmvvLastMigrationModelId
  = lens _gcmvvLastMigrationModelId
      (\ s a -> s{_gcmvvLastMigrationModelId = a})

-- | Output only. The time the version was last used for prediction.
gcmvvLastUseTime :: Lens' GoogleCloudMlV1__Version (Maybe UTCTime)
gcmvvLastUseTime
  = lens _gcmvvLastUseTime
      (\ s a -> s{_gcmvvLastUseTime = a})
      . mapping _DateTime

-- | Optional. Specifies the service account for resource access control. If
-- you specify this field, then you must also specify either the
-- \`containerSpec\` or the \`predictionClass\` field. Learn more about
-- [using a custom service
-- account](\/ai-platform\/prediction\/docs\/custom-service-account).
gcmvvServiceAccount :: Lens' GoogleCloudMlV1__Version (Maybe Text)
gcmvvServiceAccount
  = lens _gcmvvServiceAccount
      (\ s a -> s{_gcmvvServiceAccount = a})

-- | Required. The name specified for the version when it was created. The
-- version name must be unique within the model it is created in.
gcmvvName :: Lens' GoogleCloudMlV1__Version (Maybe Text)
gcmvvName
  = lens _gcmvvName (\ s a -> s{_gcmvvName = a})

-- | Optional. Cloud Storage paths (\`gs:\/\/…\`) of packages for [custom
-- prediction
-- routines](\/ml-engine\/docs\/tensorflow\/custom-prediction-routines) or
-- [scikit-learn pipelines with custom
-- code](\/ml-engine\/docs\/scikit\/exporting-for-prediction#custom-pipeline-code).
-- For a custom prediction routine, one of these packages must contain your
-- Predictor class (see
-- [\`predictionClass\`](#Version.FIELDS.prediction_class)). Additionally,
-- include any dependencies used by your Predictor or scikit-learn pipeline
-- uses that are not already included in your selected [runtime
-- version](\/ml-engine\/docs\/tensorflow\/runtime-version-list). If you
-- specify this field, you must also set
-- [\`runtimeVersion\`](#Version.FIELDS.runtime_version) to 1.4 or greater.
gcmvvPackageURIs :: Lens' GoogleCloudMlV1__Version [Text]
gcmvvPackageURIs
  = lens _gcmvvPackageURIs
      (\ s a -> s{_gcmvvPackageURIs = a})
      . _Default
      . _Coerce

-- | Optional. Specifies a custom container to use for serving predictions.
-- If you specify this field, then \`machineType\` is required. If you
-- specify this field, then \`deploymentUri\` is optional. If you specify
-- this field, then you must not specify \`runtimeVersion\`,
-- \`packageUris\`, \`framework\`, \`pythonVersion\`, or
-- \`predictionClass\`.
gcmvvContainer :: Lens' GoogleCloudMlV1__Version (Maybe GoogleCloudMlV1__ContainerSpec)
gcmvvContainer
  = lens _gcmvvContainer
      (\ s a -> s{_gcmvvContainer = a})

-- | The Cloud Storage URI of a directory containing trained model artifacts
-- to be used to create the model version. See the [guide to deploying
-- models](\/ai-platform\/prediction\/docs\/deploying-models) for more
-- information. The total number of files under this directory must not
-- exceed 1000. During projects.models.versions.create, AI Platform
-- Prediction copies all files from the specified directory to a location
-- managed by the service. From then on, AI Platform Prediction uses these
-- copies of the model artifacts to serve predictions, not the original
-- files in Cloud Storage, so this location is useful only as a historical
-- record. If you specify container, then this field is optional.
-- Otherwise, it is required. Learn [how to use this field with a custom
-- container](\/ai-platform\/prediction\/docs\/custom-container-requirements#artifacts).
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

-- | Optional. Accelerator config for using GPUs for online prediction
-- (beta). Only specify this field if you have specified a Compute Engine
-- (N1) machine type in the \`machineType\` field. Learn more about [using
-- GPUs for online
-- prediction](\/ml-engine\/docs\/machine-types-online-prediction#gpus).
gcmvvAcceleratorConfig :: Lens' GoogleCloudMlV1__Version (Maybe GoogleCloudMlV1__AcceleratorConfig)
gcmvvAcceleratorConfig
  = lens _gcmvvAcceleratorConfig
      (\ s a -> s{_gcmvvAcceleratorConfig = a})

-- | Optional. The type of machine on which to serve the model. Currently
-- only applies to online prediction service. To learn about valid values
-- for this field, read [Choosing a machine type for online
-- prediction](\/ai-platform\/prediction\/docs\/machine-types-online-prediction).
-- If this field is not specified and you are using a [regional
-- endpoint](\/ai-platform\/prediction\/docs\/regional-endpoints), then the
-- machine type defaults to \`n1-standard-2\`. If this field is not
-- specified and you are using the global endpoint (\`ml.googleapis.com\`),
-- then the machine type defaults to \`mls1-c1-m2\`.
gcmvvMachineType :: Lens' GoogleCloudMlV1__Version (Maybe Text)
gcmvvMachineType
  = lens _gcmvvMachineType
      (\ s a -> s{_gcmvvMachineType = a})

-- | Optional. One or more labels that you can add, to organize your model
-- versions. Each label is a key-value pair, where both the key and the
-- value are arbitrary strings that you supply. For more information, see
-- the documentation on using labels.
gcmvvLabels :: Lens' GoogleCloudMlV1__Version (Maybe GoogleCloudMlV1__VersionLabels)
gcmvvLabels
  = lens _gcmvvLabels (\ s a -> s{_gcmvvLabels = a})

-- | Optional. *Only* specify this field in a projects.models.versions.patch
-- request. Specifying it in a projects.models.versions.create request has
-- no effect. Configures the request-response pair logging on predictions
-- from this Version.
gcmvvRequestLoggingConfig :: Lens' GoogleCloudMlV1__Version (Maybe GoogleCloudMlV1__RequestLoggingConfig)
gcmvvRequestLoggingConfig
  = lens _gcmvvRequestLoggingConfig
      (\ s a -> s{_gcmvvRequestLoggingConfig = a})

-- | Optional. The fully qualified name (module_name.class_name) of a class
-- that implements the Predictor interface described in this reference
-- field. The module containing this class should be included in a package
-- provided to the [\`packageUris\` field](#Version.FIELDS.package_uris).
-- Specify this field if and only if you are deploying a [custom prediction
-- routine
-- (beta)](\/ml-engine\/docs\/tensorflow\/custom-prediction-routines). If
-- you specify this field, you must set
-- [\`runtimeVersion\`](#Version.FIELDS.runtime_version) to 1.4 or greater
-- and you must set \`machineType\` to a [legacy (MLS1) machine
-- type](\/ml-engine\/docs\/machine-types-online-prediction). The following
-- code sample provides the Predictor interface: class Predictor(object):
-- \"\"\"Interface for constructing custom predictors.\"\"\" def
-- predict(self, instances, **kwargs): \"\"\"Performs custom prediction.
-- Instances are the decoded values from the request. They have already
-- been deserialized from JSON. Args: instances: A list of prediction input
-- instances. **kwargs: A dictionary of keyword args provided as additional
-- fields on the predict request body. Returns: A list of outputs
-- containing the prediction results. This list must be JSON serializable.
-- \"\"\" raise NotImplementedError() \'classmethod def from_path(cls,
-- model_dir): \"\"\"Creates an instance of Predictor using the given path.
-- Loading of the predictor should be done in this method. Args: model_dir:
-- The local directory that contains the exported model file along with any
-- additional files uploaded when creating the version resource. Returns:
-- An instance implementing this Predictor class. \"\"\" raise
-- NotImplementedError() Learn more about [the Predictor interface and
-- custom prediction
-- routines](\/ml-engine\/docs\/tensorflow\/custom-prediction-routines).
gcmvvPredictionClass :: Lens' GoogleCloudMlV1__Version (Maybe Text)
gcmvvPredictionClass
  = lens _gcmvvPredictionClass
      (\ s a -> s{_gcmvvPredictionClass = a})

-- | Output only. The last time this version was successfully [migrated to AI
-- Platform
-- (Unified)](https:\/\/cloud.google.com\/ai-platform-unified\/docs\/start\/migrating-to-ai-platform-unified).
gcmvvLastMigrationTime :: Lens' GoogleCloudMlV1__Version (Maybe UTCTime)
gcmvvLastMigrationTime
  = lens _gcmvvLastMigrationTime
      (\ s a -> s{_gcmvvLastMigrationTime = a})
      . mapping _DateTime

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
-- version by calling projects.methods.versions.setDefault.
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
                     <*> (o .:? "routes")
                     <*> (o .:? "autoScaling")
                     <*> (o .:? "pythonVersion")
                     <*> (o .:? "runtimeVersion")
                     <*> (o .:? "explanationConfig")
                     <*> (o .:? "lastMigrationModelId")
                     <*> (o .:? "lastUseTime")
                     <*> (o .:? "serviceAccount")
                     <*> (o .:? "name")
                     <*> (o .:? "packageUris" .!= mempty)
                     <*> (o .:? "container")
                     <*> (o .:? "deploymentUri")
                     <*> (o .:? "manualScaling")
                     <*> (o .:? "acceleratorConfig")
                     <*> (o .:? "machineType")
                     <*> (o .:? "labels")
                     <*> (o .:? "requestLoggingConfig")
                     <*> (o .:? "predictionClass")
                     <*> (o .:? "lastMigrationTime")
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
                  ("routes" .=) <$> _gcmvvRoutes,
                  ("autoScaling" .=) <$> _gcmvvAutoScaling,
                  ("pythonVersion" .=) <$> _gcmvvPythonVersion,
                  ("runtimeVersion" .=) <$> _gcmvvRuntimeVersion,
                  ("explanationConfig" .=) <$> _gcmvvExplanationConfig,
                  ("lastMigrationModelId" .=) <$>
                    _gcmvvLastMigrationModelId,
                  ("lastUseTime" .=) <$> _gcmvvLastUseTime,
                  ("serviceAccount" .=) <$> _gcmvvServiceAccount,
                  ("name" .=) <$> _gcmvvName,
                  ("packageUris" .=) <$> _gcmvvPackageURIs,
                  ("container" .=) <$> _gcmvvContainer,
                  ("deploymentUri" .=) <$> _gcmvvDeploymentURI,
                  ("manualScaling" .=) <$> _gcmvvManualScaling,
                  ("acceleratorConfig" .=) <$> _gcmvvAcceleratorConfig,
                  ("machineType" .=) <$> _gcmvvMachineType,
                  ("labels" .=) <$> _gcmvvLabels,
                  ("requestLoggingConfig" .=) <$>
                    _gcmvvRequestLoggingConfig,
                  ("predictionClass" .=) <$> _gcmvvPredictionClass,
                  ("lastMigrationTime" .=) <$> _gcmvvLastMigrationTime,
                  ("errorMessage" .=) <$> _gcmvvErrorMessage,
                  ("description" .=) <$> _gcmvvDescription,
                  ("createTime" .=) <$> _gcmvvCreateTime,
                  ("isDefault" .=) <$> _gcmvvIsDefault])

-- | The median automated stopping rule stops a pending trial if the trial\'s
-- best objective_value is strictly below the median \'performance\' of all
-- completed trials reported up to the trial\'s last measurement.
-- Currently, \'performance\' refers to the running average of the
-- objective values reported by the trial in each measurement.
--
-- /See:/ 'googleCloudMlV1_AutomatedStoppingConfig_MedianAutomatedStoppingConfig' smart constructor.
newtype GoogleCloudMlV1_AutomatedStoppingConfig_MedianAutomatedStoppingConfig =
  GoogleCloudMlV1_AutomatedStoppingConfig_MedianAutomatedStoppingConfig'
    { _gcmvascmascUseElapsedTime :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudMlV1_AutomatedStoppingConfig_MedianAutomatedStoppingConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvascmascUseElapsedTime'
googleCloudMlV1_AutomatedStoppingConfig_MedianAutomatedStoppingConfig
    :: GoogleCloudMlV1_AutomatedStoppingConfig_MedianAutomatedStoppingConfig
googleCloudMlV1_AutomatedStoppingConfig_MedianAutomatedStoppingConfig =
  GoogleCloudMlV1_AutomatedStoppingConfig_MedianAutomatedStoppingConfig'
    {_gcmvascmascUseElapsedTime = Nothing}


-- | If true, the median automated stopping rule applies to
-- measurement.use_elapsed_time, which means the elapsed_time field of the
-- current trial\'s latest measurement is used to compute the median
-- objective value for each completed trial.
gcmvascmascUseElapsedTime :: Lens' GoogleCloudMlV1_AutomatedStoppingConfig_MedianAutomatedStoppingConfig (Maybe Bool)
gcmvascmascUseElapsedTime
  = lens _gcmvascmascUseElapsedTime
      (\ s a -> s{_gcmvascmascUseElapsedTime = a})

instance FromJSON
           GoogleCloudMlV1_AutomatedStoppingConfig_MedianAutomatedStoppingConfig
         where
        parseJSON
          = withObject
              "GoogleCloudMlV1AutomatedStoppingConfigMedianAutomatedStoppingConfig"
              (\ o ->
                 GoogleCloudMlV1_AutomatedStoppingConfig_MedianAutomatedStoppingConfig'
                   <$> (o .:? "useElapsedTime"))

instance ToJSON
           GoogleCloudMlV1_AutomatedStoppingConfig_MedianAutomatedStoppingConfig
         where
        toJSON
          GoogleCloudMlV1_AutomatedStoppingConfig_MedianAutomatedStoppingConfig'{..}
          = object
              (catMaybes
                 [("useElapsedTime" .=) <$>
                    _gcmvascmascUseElapsedTime])

-- | Represents results of a prediction job.
--
-- /See:/ 'googleCloudMlV1__PredictionOutput' smart constructor.
data GoogleCloudMlV1__PredictionOutput =
  GoogleCloudMlV1__PredictionOutput'
    { _gcmvpoNodeHours :: !(Maybe (Textual Double))
    , _gcmvpoErrorCount :: !(Maybe (Textual Int64))
    , _gcmvpoPredictionCount :: !(Maybe (Textual Int64))
    , _gcmvpoOutputPath :: !(Maybe Text)
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

-- | An attribution method that approximates Shapley values for features that
-- contribute to the label being predicted. A sampling strategy is used to
-- approximate the value rather than considering all subsets of features.
--
-- /See:/ 'googleCloudMlV1__SampledShapleyAttribution' smart constructor.
newtype GoogleCloudMlV1__SampledShapleyAttribution =
  GoogleCloudMlV1__SampledShapleyAttribution'
    { _gcmvssaNumPaths :: Maybe (Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudMlV1__SampledShapleyAttribution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvssaNumPaths'
googleCloudMlV1__SampledShapleyAttribution
    :: GoogleCloudMlV1__SampledShapleyAttribution
googleCloudMlV1__SampledShapleyAttribution =
  GoogleCloudMlV1__SampledShapleyAttribution' {_gcmvssaNumPaths = Nothing}


-- | The number of feature permutations to consider when approximating the
-- Shapley values.
gcmvssaNumPaths :: Lens' GoogleCloudMlV1__SampledShapleyAttribution (Maybe Int32)
gcmvssaNumPaths
  = lens _gcmvssaNumPaths
      (\ s a -> s{_gcmvssaNumPaths = a})
      . mapping _Coerce

instance FromJSON
           GoogleCloudMlV1__SampledShapleyAttribution
         where
        parseJSON
          = withObject
              "GoogleCloudMlV1SampledShapleyAttribution"
              (\ o ->
                 GoogleCloudMlV1__SampledShapleyAttribution' <$>
                   (o .:? "numPaths"))

instance ToJSON
           GoogleCloudMlV1__SampledShapleyAttribution
         where
        toJSON
          GoogleCloudMlV1__SampledShapleyAttribution'{..}
          = object
              (catMaybes [("numPaths" .=) <$> _gcmvssaNumPaths])

-- | The web URIs for the training job. Currently for debug terminal access
-- to the job. Only set for in-progress hyperparameter tuning trials with
-- web access enabled.
--
-- /See:/ 'googleCloudMlV1__HyperparameterOutputWebAccessURIs' smart constructor.
newtype GoogleCloudMlV1__HyperparameterOutputWebAccessURIs =
  GoogleCloudMlV1__HyperparameterOutputWebAccessURIs'
    { _gcmvhowauAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudMlV1__HyperparameterOutputWebAccessURIs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvhowauAddtional'
googleCloudMlV1__HyperparameterOutputWebAccessURIs
    :: HashMap Text Text -- ^ 'gcmvhowauAddtional'
    -> GoogleCloudMlV1__HyperparameterOutputWebAccessURIs
googleCloudMlV1__HyperparameterOutputWebAccessURIs pGcmvhowauAddtional_ =
  GoogleCloudMlV1__HyperparameterOutputWebAccessURIs'
    {_gcmvhowauAddtional = _Coerce # pGcmvhowauAddtional_}


gcmvhowauAddtional :: Lens' GoogleCloudMlV1__HyperparameterOutputWebAccessURIs (HashMap Text Text)
gcmvhowauAddtional
  = lens _gcmvhowauAddtional
      (\ s a -> s{_gcmvhowauAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudMlV1__HyperparameterOutputWebAccessURIs
         where
        parseJSON
          = withObject
              "GoogleCloudMlV1HyperparameterOutputWebAccessURIs"
              (\ o ->
                 GoogleCloudMlV1__HyperparameterOutputWebAccessURIs'
                   <$> (parseJSONObject o))

instance ToJSON
           GoogleCloudMlV1__HyperparameterOutputWebAccessURIs
         where
        toJSON = toJSON . _gcmvhowauAddtional

-- | Represents output related to a built-in algorithm Job.
--
-- /See:/ 'googleCloudMlV1__BuiltInAlgorithmOutput' smart constructor.
data GoogleCloudMlV1__BuiltInAlgorithmOutput =
  GoogleCloudMlV1__BuiltInAlgorithmOutput'
    { _gcmvbiaoFramework :: !(Maybe Text)
    , _gcmvbiaoPythonVersion :: !(Maybe Text)
    , _gcmvbiaoRuntimeVersion :: !(Maybe Text)
    , _gcmvbiaoModelPath :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudMlV1__BuiltInAlgorithmOutput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvbiaoFramework'
--
-- * 'gcmvbiaoPythonVersion'
--
-- * 'gcmvbiaoRuntimeVersion'
--
-- * 'gcmvbiaoModelPath'
googleCloudMlV1__BuiltInAlgorithmOutput
    :: GoogleCloudMlV1__BuiltInAlgorithmOutput
googleCloudMlV1__BuiltInAlgorithmOutput =
  GoogleCloudMlV1__BuiltInAlgorithmOutput'
    { _gcmvbiaoFramework = Nothing
    , _gcmvbiaoPythonVersion = Nothing
    , _gcmvbiaoRuntimeVersion = Nothing
    , _gcmvbiaoModelPath = Nothing
    }


-- | Framework on which the built-in algorithm was trained.
gcmvbiaoFramework :: Lens' GoogleCloudMlV1__BuiltInAlgorithmOutput (Maybe Text)
gcmvbiaoFramework
  = lens _gcmvbiaoFramework
      (\ s a -> s{_gcmvbiaoFramework = a})

-- | Python version on which the built-in algorithm was trained.
gcmvbiaoPythonVersion :: Lens' GoogleCloudMlV1__BuiltInAlgorithmOutput (Maybe Text)
gcmvbiaoPythonVersion
  = lens _gcmvbiaoPythonVersion
      (\ s a -> s{_gcmvbiaoPythonVersion = a})

-- | AI Platform runtime version on which the built-in algorithm was trained.
gcmvbiaoRuntimeVersion :: Lens' GoogleCloudMlV1__BuiltInAlgorithmOutput (Maybe Text)
gcmvbiaoRuntimeVersion
  = lens _gcmvbiaoRuntimeVersion
      (\ s a -> s{_gcmvbiaoRuntimeVersion = a})

-- | The Cloud Storage path to the \`model\/\` directory where the training
-- job saves the trained model. Only set for successful jobs that don\'t
-- use hyperparameter tuning.
gcmvbiaoModelPath :: Lens' GoogleCloudMlV1__BuiltInAlgorithmOutput (Maybe Text)
gcmvbiaoModelPath
  = lens _gcmvbiaoModelPath
      (\ s a -> s{_gcmvbiaoModelPath = a})

instance FromJSON
           GoogleCloudMlV1__BuiltInAlgorithmOutput
         where
        parseJSON
          = withObject "GoogleCloudMlV1BuiltInAlgorithmOutput"
              (\ o ->
                 GoogleCloudMlV1__BuiltInAlgorithmOutput' <$>
                   (o .:? "framework") <*> (o .:? "pythonVersion") <*>
                     (o .:? "runtimeVersion")
                     <*> (o .:? "modelPath"))

instance ToJSON
           GoogleCloudMlV1__BuiltInAlgorithmOutput
         where
        toJSON GoogleCloudMlV1__BuiltInAlgorithmOutput'{..}
          = object
              (catMaybes
                 [("framework" .=) <$> _gcmvbiaoFramework,
                  ("pythonVersion" .=) <$> _gcmvbiaoPythonVersion,
                  ("runtimeVersion" .=) <$> _gcmvbiaoRuntimeVersion,
                  ("modelPath" .=) <$> _gcmvbiaoModelPath])

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

-- | Configuration for Automated Early Stopping of Trials. If no
-- implementation_config is set, automated early stopping will not be run.
--
-- /See:/ 'googleCloudMlV1__AutomatedStoppingConfig' smart constructor.
data GoogleCloudMlV1__AutomatedStoppingConfig =
  GoogleCloudMlV1__AutomatedStoppingConfig'
    { _gcmvascDecayCurveStoppingConfig :: !(Maybe GoogleCloudMlV1_AutomatedStoppingConfig_DecayCurveAutomatedStoppingConfig)
    , _gcmvascMedianAutomatedStoppingConfig :: !(Maybe GoogleCloudMlV1_AutomatedStoppingConfig_MedianAutomatedStoppingConfig)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudMlV1__AutomatedStoppingConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvascDecayCurveStoppingConfig'
--
-- * 'gcmvascMedianAutomatedStoppingConfig'
googleCloudMlV1__AutomatedStoppingConfig
    :: GoogleCloudMlV1__AutomatedStoppingConfig
googleCloudMlV1__AutomatedStoppingConfig =
  GoogleCloudMlV1__AutomatedStoppingConfig'
    { _gcmvascDecayCurveStoppingConfig = Nothing
    , _gcmvascMedianAutomatedStoppingConfig = Nothing
    }


gcmvascDecayCurveStoppingConfig :: Lens' GoogleCloudMlV1__AutomatedStoppingConfig (Maybe GoogleCloudMlV1_AutomatedStoppingConfig_DecayCurveAutomatedStoppingConfig)
gcmvascDecayCurveStoppingConfig
  = lens _gcmvascDecayCurveStoppingConfig
      (\ s a -> s{_gcmvascDecayCurveStoppingConfig = a})

gcmvascMedianAutomatedStoppingConfig :: Lens' GoogleCloudMlV1__AutomatedStoppingConfig (Maybe GoogleCloudMlV1_AutomatedStoppingConfig_MedianAutomatedStoppingConfig)
gcmvascMedianAutomatedStoppingConfig
  = lens _gcmvascMedianAutomatedStoppingConfig
      (\ s a ->
         s{_gcmvascMedianAutomatedStoppingConfig = a})

instance FromJSON
           GoogleCloudMlV1__AutomatedStoppingConfig
         where
        parseJSON
          = withObject "GoogleCloudMlV1AutomatedStoppingConfig"
              (\ o ->
                 GoogleCloudMlV1__AutomatedStoppingConfig' <$>
                   (o .:? "decayCurveStoppingConfig") <*>
                     (o .:? "medianAutomatedStoppingConfig"))

instance ToJSON
           GoogleCloudMlV1__AutomatedStoppingConfig
         where
        toJSON GoogleCloudMlV1__AutomatedStoppingConfig'{..}
          = object
              (catMaybes
                 [("decayCurveStoppingConfig" .=) <$>
                    _gcmvascDecayCurveStoppingConfig,
                  ("medianAutomatedStoppingConfig" .=) <$>
                    _gcmvascMedianAutomatedStoppingConfig])

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


-- | Required. The prediction request body. Refer to the [request body
-- details section](#request-body-details) for more information on how to
-- structure your request.
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

-- | The request message for the SuggestTrial service method.
--
-- /See:/ 'googleCloudMlV1__SuggestTrialsRequest' smart constructor.
data GoogleCloudMlV1__SuggestTrialsRequest =
  GoogleCloudMlV1__SuggestTrialsRequest'
    { _gcmvstrClientId :: !(Maybe Text)
    , _gcmvstrSuggestionCount :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudMlV1__SuggestTrialsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvstrClientId'
--
-- * 'gcmvstrSuggestionCount'
googleCloudMlV1__SuggestTrialsRequest
    :: GoogleCloudMlV1__SuggestTrialsRequest
googleCloudMlV1__SuggestTrialsRequest =
  GoogleCloudMlV1__SuggestTrialsRequest'
    {_gcmvstrClientId = Nothing, _gcmvstrSuggestionCount = Nothing}


-- | Required. The identifier of the client that is requesting the
-- suggestion. If multiple SuggestTrialsRequests have the same
-- \`client_id\`, the service will return the identical suggested trial if
-- the trial is pending, and provide a new trial if the last suggested
-- trial was completed.
gcmvstrClientId :: Lens' GoogleCloudMlV1__SuggestTrialsRequest (Maybe Text)
gcmvstrClientId
  = lens _gcmvstrClientId
      (\ s a -> s{_gcmvstrClientId = a})

-- | Required. The number of suggestions requested.
gcmvstrSuggestionCount :: Lens' GoogleCloudMlV1__SuggestTrialsRequest (Maybe Int32)
gcmvstrSuggestionCount
  = lens _gcmvstrSuggestionCount
      (\ s a -> s{_gcmvstrSuggestionCount = a})
      . mapping _Coerce

instance FromJSON
           GoogleCloudMlV1__SuggestTrialsRequest
         where
        parseJSON
          = withObject "GoogleCloudMlV1SuggestTrialsRequest"
              (\ o ->
                 GoogleCloudMlV1__SuggestTrialsRequest' <$>
                   (o .:? "clientId") <*> (o .:? "suggestionCount"))

instance ToJSON GoogleCloudMlV1__SuggestTrialsRequest
         where
        toJSON GoogleCloudMlV1__SuggestTrialsRequest'{..}
          = object
              (catMaybes
                 [("clientId" .=) <$> _gcmvstrClientId,
                  ("suggestionCount" .=) <$> _gcmvstrSuggestionCount])

--
-- /See:/ 'googleCloudMlV1_StudyConfigParameterSpec_DiscreteValueSpec' smart constructor.
newtype GoogleCloudMlV1_StudyConfigParameterSpec_DiscreteValueSpec =
  GoogleCloudMlV1_StudyConfigParameterSpec_DiscreteValueSpec'
    { _gcmvscpsdvsValues :: Maybe [Textual Double]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudMlV1_StudyConfigParameterSpec_DiscreteValueSpec' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvscpsdvsValues'
googleCloudMlV1_StudyConfigParameterSpec_DiscreteValueSpec
    :: GoogleCloudMlV1_StudyConfigParameterSpec_DiscreteValueSpec
googleCloudMlV1_StudyConfigParameterSpec_DiscreteValueSpec =
  GoogleCloudMlV1_StudyConfigParameterSpec_DiscreteValueSpec'
    {_gcmvscpsdvsValues = Nothing}


-- | Must be specified if type is \`DISCRETE\`. A list of feasible points.
-- The list should be in strictly increasing order. For instance, this
-- parameter might have possible settings of 1.5, 2.5, and 4.0. This list
-- should not contain more than 1,000 values.
gcmvscpsdvsValues :: Lens' GoogleCloudMlV1_StudyConfigParameterSpec_DiscreteValueSpec [Double]
gcmvscpsdvsValues
  = lens _gcmvscpsdvsValues
      (\ s a -> s{_gcmvscpsdvsValues = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudMlV1_StudyConfigParameterSpec_DiscreteValueSpec
         where
        parseJSON
          = withObject
              "GoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpec"
              (\ o ->
                 GoogleCloudMlV1_StudyConfigParameterSpec_DiscreteValueSpec'
                   <$> (o .:? "values" .!= mempty))

instance ToJSON
           GoogleCloudMlV1_StudyConfigParameterSpec_DiscreteValueSpec
         where
        toJSON
          GoogleCloudMlV1_StudyConfigParameterSpec_DiscreteValueSpec'{..}
          = object
              (catMaybes [("values" .=) <$> _gcmvscpsdvsValues])

-- | Represents a metric to optimize.
--
-- /See:/ 'googleCloudMlV1_StudyConfig_MetricSpec' smart constructor.
data GoogleCloudMlV1_StudyConfig_MetricSpec =
  GoogleCloudMlV1_StudyConfig_MetricSpec'
    { _gcmvscmsMetric :: !(Maybe Text)
    , _gcmvscmsGoal :: !(Maybe GoogleCloudMlV1_StudyConfig_MetricSpecGoal)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudMlV1_StudyConfig_MetricSpec' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvscmsMetric'
--
-- * 'gcmvscmsGoal'
googleCloudMlV1_StudyConfig_MetricSpec
    :: GoogleCloudMlV1_StudyConfig_MetricSpec
googleCloudMlV1_StudyConfig_MetricSpec =
  GoogleCloudMlV1_StudyConfig_MetricSpec'
    {_gcmvscmsMetric = Nothing, _gcmvscmsGoal = Nothing}


-- | Required. The name of the metric.
gcmvscmsMetric :: Lens' GoogleCloudMlV1_StudyConfig_MetricSpec (Maybe Text)
gcmvscmsMetric
  = lens _gcmvscmsMetric
      (\ s a -> s{_gcmvscmsMetric = a})

-- | Required. The optimization goal of the metric.
gcmvscmsGoal :: Lens' GoogleCloudMlV1_StudyConfig_MetricSpec (Maybe GoogleCloudMlV1_StudyConfig_MetricSpecGoal)
gcmvscmsGoal
  = lens _gcmvscmsGoal (\ s a -> s{_gcmvscmsGoal = a})

instance FromJSON
           GoogleCloudMlV1_StudyConfig_MetricSpec
         where
        parseJSON
          = withObject "GoogleCloudMlV1StudyConfigMetricSpec"
              (\ o ->
                 GoogleCloudMlV1_StudyConfig_MetricSpec' <$>
                   (o .:? "metric") <*> (o .:? "goal"))

instance ToJSON
           GoogleCloudMlV1_StudyConfig_MetricSpec
         where
        toJSON GoogleCloudMlV1_StudyConfig_MetricSpec'{..}
          = object
              (catMaybes
                 [("metric" .=) <$> _gcmvscmsMetric,
                  ("goal" .=) <$> _gcmvscmsGoal])

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

-- | Attributes credit by computing the XRAI taking advantage of the model\'s
-- fully differentiable structure. Refer to this paper for more details:
-- https:\/\/arxiv.org\/abs\/1906.02825 Currently only implemented for
-- models with natural image inputs.
--
-- /See:/ 'googleCloudMlV1__XraiAttribution' smart constructor.
newtype GoogleCloudMlV1__XraiAttribution =
  GoogleCloudMlV1__XraiAttribution'
    { _gcmvxaNumIntegralSteps :: Maybe (Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudMlV1__XraiAttribution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvxaNumIntegralSteps'
googleCloudMlV1__XraiAttribution
    :: GoogleCloudMlV1__XraiAttribution
googleCloudMlV1__XraiAttribution =
  GoogleCloudMlV1__XraiAttribution' {_gcmvxaNumIntegralSteps = Nothing}


-- | Number of steps for approximating the path integral. A good value to
-- start is 50 and gradually increase until the sum to diff property is met
-- within the desired error range.
gcmvxaNumIntegralSteps :: Lens' GoogleCloudMlV1__XraiAttribution (Maybe Int32)
gcmvxaNumIntegralSteps
  = lens _gcmvxaNumIntegralSteps
      (\ s a -> s{_gcmvxaNumIntegralSteps = a})
      . mapping _Coerce

instance FromJSON GoogleCloudMlV1__XraiAttribution
         where
        parseJSON
          = withObject "GoogleCloudMlV1XraiAttribution"
              (\ o ->
                 GoogleCloudMlV1__XraiAttribution' <$>
                   (o .:? "numIntegralSteps"))

instance ToJSON GoogleCloudMlV1__XraiAttribution
         where
        toJSON GoogleCloudMlV1__XraiAttribution'{..}
          = object
              (catMaybes
                 [("numIntegralSteps" .=) <$>
                    _gcmvxaNumIntegralSteps])

-- | The message will be placed in the response field of a completed
-- google.longrunning.Operation associated with a
-- CheckTrialEarlyStoppingState request.
--
-- /See:/ 'googleCloudMlV1__CheckTrialEarlyStoppingStateResponse' smart constructor.
data GoogleCloudMlV1__CheckTrialEarlyStoppingStateResponse =
  GoogleCloudMlV1__CheckTrialEarlyStoppingStateResponse'
    { _gcmvctessrStartTime :: !(Maybe DateTime')
    , _gcmvctessrShouldStop :: !(Maybe Bool)
    , _gcmvctessrEndTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudMlV1__CheckTrialEarlyStoppingStateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvctessrStartTime'
--
-- * 'gcmvctessrShouldStop'
--
-- * 'gcmvctessrEndTime'
googleCloudMlV1__CheckTrialEarlyStoppingStateResponse
    :: GoogleCloudMlV1__CheckTrialEarlyStoppingStateResponse
googleCloudMlV1__CheckTrialEarlyStoppingStateResponse =
  GoogleCloudMlV1__CheckTrialEarlyStoppingStateResponse'
    { _gcmvctessrStartTime = Nothing
    , _gcmvctessrShouldStop = Nothing
    , _gcmvctessrEndTime = Nothing
    }


-- | The time at which the operation was started.
gcmvctessrStartTime :: Lens' GoogleCloudMlV1__CheckTrialEarlyStoppingStateResponse (Maybe UTCTime)
gcmvctessrStartTime
  = lens _gcmvctessrStartTime
      (\ s a -> s{_gcmvctessrStartTime = a})
      . mapping _DateTime

-- | True if the Trial should stop.
gcmvctessrShouldStop :: Lens' GoogleCloudMlV1__CheckTrialEarlyStoppingStateResponse (Maybe Bool)
gcmvctessrShouldStop
  = lens _gcmvctessrShouldStop
      (\ s a -> s{_gcmvctessrShouldStop = a})

-- | The time at which operation processing completed.
gcmvctessrEndTime :: Lens' GoogleCloudMlV1__CheckTrialEarlyStoppingStateResponse (Maybe UTCTime)
gcmvctessrEndTime
  = lens _gcmvctessrEndTime
      (\ s a -> s{_gcmvctessrEndTime = a})
      . mapping _DateTime

instance FromJSON
           GoogleCloudMlV1__CheckTrialEarlyStoppingStateResponse
         where
        parseJSON
          = withObject
              "GoogleCloudMlV1CheckTrialEarlyStoppingStateResponse"
              (\ o ->
                 GoogleCloudMlV1__CheckTrialEarlyStoppingStateResponse'
                   <$>
                   (o .:? "startTime") <*> (o .:? "shouldStop") <*>
                     (o .:? "endTime"))

instance ToJSON
           GoogleCloudMlV1__CheckTrialEarlyStoppingStateResponse
         where
        toJSON
          GoogleCloudMlV1__CheckTrialEarlyStoppingStateResponse'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _gcmvctessrStartTime,
                  ("shouldStop" .=) <$> _gcmvctessrShouldStop,
                  ("endTime" .=) <$> _gcmvctessrEndTime])

-- | Provides the configuration for logging a type of permissions. Example: {
-- \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\",
-- \"exempted_members\": [ \"user:jose\'example.com\" ] }, { \"log_type\":
-- \"DATA_WRITE\" } ] } This enables \'DATA_READ\' and \'DATA_WRITE\'
-- logging, while exempting jose\'example.com from DATA_READ logging.
--
-- /See:/ 'googleIAMV1__AuditLogConfig' smart constructor.
data GoogleIAMV1__AuditLogConfig =
  GoogleIAMV1__AuditLogConfig'
    { _givalcLogType :: !(Maybe GoogleIAMV1__AuditLogConfigLogType)
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

-- | This message will be placed in the response field of a completed
-- google.longrunning.Operation associated with a SuggestTrials request.
--
-- /See:/ 'googleCloudMlV1__SuggestTrialsResponse' smart constructor.
data GoogleCloudMlV1__SuggestTrialsResponse =
  GoogleCloudMlV1__SuggestTrialsResponse'
    { _gcmvstrStartTime :: !(Maybe DateTime')
    , _gcmvstrStudyState :: !(Maybe GoogleCloudMlV1__SuggestTrialsResponseStudyState)
    , _gcmvstrEndTime :: !(Maybe DateTime')
    , _gcmvstrTrials :: !(Maybe [GoogleCloudMlV1__Trial])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudMlV1__SuggestTrialsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvstrStartTime'
--
-- * 'gcmvstrStudyState'
--
-- * 'gcmvstrEndTime'
--
-- * 'gcmvstrTrials'
googleCloudMlV1__SuggestTrialsResponse
    :: GoogleCloudMlV1__SuggestTrialsResponse
googleCloudMlV1__SuggestTrialsResponse =
  GoogleCloudMlV1__SuggestTrialsResponse'
    { _gcmvstrStartTime = Nothing
    , _gcmvstrStudyState = Nothing
    , _gcmvstrEndTime = Nothing
    , _gcmvstrTrials = Nothing
    }


-- | The time at which the operation was started.
gcmvstrStartTime :: Lens' GoogleCloudMlV1__SuggestTrialsResponse (Maybe UTCTime)
gcmvstrStartTime
  = lens _gcmvstrStartTime
      (\ s a -> s{_gcmvstrStartTime = a})
      . mapping _DateTime

-- | The state of the study.
gcmvstrStudyState :: Lens' GoogleCloudMlV1__SuggestTrialsResponse (Maybe GoogleCloudMlV1__SuggestTrialsResponseStudyState)
gcmvstrStudyState
  = lens _gcmvstrStudyState
      (\ s a -> s{_gcmvstrStudyState = a})

-- | The time at which operation processing completed.
gcmvstrEndTime :: Lens' GoogleCloudMlV1__SuggestTrialsResponse (Maybe UTCTime)
gcmvstrEndTime
  = lens _gcmvstrEndTime
      (\ s a -> s{_gcmvstrEndTime = a})
      . mapping _DateTime

-- | A list of trials.
gcmvstrTrials :: Lens' GoogleCloudMlV1__SuggestTrialsResponse [GoogleCloudMlV1__Trial]
gcmvstrTrials
  = lens _gcmvstrTrials
      (\ s a -> s{_gcmvstrTrials = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudMlV1__SuggestTrialsResponse
         where
        parseJSON
          = withObject "GoogleCloudMlV1SuggestTrialsResponse"
              (\ o ->
                 GoogleCloudMlV1__SuggestTrialsResponse' <$>
                   (o .:? "startTime") <*> (o .:? "studyState") <*>
                     (o .:? "endTime")
                     <*> (o .:? "trials" .!= mempty))

instance ToJSON
           GoogleCloudMlV1__SuggestTrialsResponse
         where
        toJSON GoogleCloudMlV1__SuggestTrialsResponse'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _gcmvstrStartTime,
                  ("studyState" .=) <$> _gcmvstrStudyState,
                  ("endTime" .=) <$> _gcmvstrEndTime,
                  ("trials" .=) <$> _gcmvstrTrials])

-- | A message representing a metric in the measurement.
--
-- /See:/ 'googleCloudMlV1_Measurement_Metric' smart constructor.
data GoogleCloudMlV1_Measurement_Metric =
  GoogleCloudMlV1_Measurement_Metric'
    { _gcmvmmValue :: !(Maybe (Textual Double))
    , _gcmvmmMetric :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudMlV1_Measurement_Metric' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvmmValue'
--
-- * 'gcmvmmMetric'
googleCloudMlV1_Measurement_Metric
    :: GoogleCloudMlV1_Measurement_Metric
googleCloudMlV1_Measurement_Metric =
  GoogleCloudMlV1_Measurement_Metric'
    {_gcmvmmValue = Nothing, _gcmvmmMetric = Nothing}


-- | Required. The value for this metric.
gcmvmmValue :: Lens' GoogleCloudMlV1_Measurement_Metric (Maybe Double)
gcmvmmValue
  = lens _gcmvmmValue (\ s a -> s{_gcmvmmValue = a}) .
      mapping _Coerce

-- | Required. Metric name.
gcmvmmMetric :: Lens' GoogleCloudMlV1_Measurement_Metric (Maybe Text)
gcmvmmMetric
  = lens _gcmvmmMetric (\ s a -> s{_gcmvmmMetric = a})

instance FromJSON GoogleCloudMlV1_Measurement_Metric
         where
        parseJSON
          = withObject "GoogleCloudMlV1MeasurementMetric"
              (\ o ->
                 GoogleCloudMlV1_Measurement_Metric' <$>
                   (o .:? "value") <*> (o .:? "metric"))

instance ToJSON GoogleCloudMlV1_Measurement_Metric
         where
        toJSON GoogleCloudMlV1_Measurement_Metric'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _gcmvmmValue,
                  ("metric" .=) <$> _gcmvmmMetric])

-- | Request for explanations to be issued against a trained model.
--
-- /See:/ 'googleCloudMlV1__ExplainRequest' smart constructor.
newtype GoogleCloudMlV1__ExplainRequest =
  GoogleCloudMlV1__ExplainRequest'
    { _gcmverHTTPBody :: Maybe GoogleAPI__HTTPBody
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudMlV1__ExplainRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmverHTTPBody'
googleCloudMlV1__ExplainRequest
    :: GoogleCloudMlV1__ExplainRequest
googleCloudMlV1__ExplainRequest =
  GoogleCloudMlV1__ExplainRequest' {_gcmverHTTPBody = Nothing}


-- | Required. The explanation request body.
gcmverHTTPBody :: Lens' GoogleCloudMlV1__ExplainRequest (Maybe GoogleAPI__HTTPBody)
gcmverHTTPBody
  = lens _gcmverHTTPBody
      (\ s a -> s{_gcmverHTTPBody = a})

instance FromJSON GoogleCloudMlV1__ExplainRequest
         where
        parseJSON
          = withObject "GoogleCloudMlV1ExplainRequest"
              (\ o ->
                 GoogleCloudMlV1__ExplainRequest' <$>
                   (o .:? "httpBody"))

instance ToJSON GoogleCloudMlV1__ExplainRequest where
        toJSON GoogleCloudMlV1__ExplainRequest'{..}
          = object
              (catMaybes [("httpBody" .=) <$> _gcmverHTTPBody])

-- | Response message for the ListModels method.
--
-- /See:/ 'googleCloudMlV1__ListModelsResponse' smart constructor.
data GoogleCloudMlV1__ListModelsResponse =
  GoogleCloudMlV1__ListModelsResponse'
    { _gcmvlmrNextPageToken :: !(Maybe Text)
    , _gcmvlmrModels :: !(Maybe [GoogleCloudMlV1__Model])
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

--
-- /See:/ 'googleCloudMlV1_AutomatedStoppingConfig_DecayCurveAutomatedStoppingConfig' smart constructor.
newtype GoogleCloudMlV1_AutomatedStoppingConfig_DecayCurveAutomatedStoppingConfig =
  GoogleCloudMlV1_AutomatedStoppingConfig_DecayCurveAutomatedStoppingConfig'
    { _gcmvascdcascUseElapsedTime :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudMlV1_AutomatedStoppingConfig_DecayCurveAutomatedStoppingConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvascdcascUseElapsedTime'
googleCloudMlV1_AutomatedStoppingConfig_DecayCurveAutomatedStoppingConfig
    :: GoogleCloudMlV1_AutomatedStoppingConfig_DecayCurveAutomatedStoppingConfig
googleCloudMlV1_AutomatedStoppingConfig_DecayCurveAutomatedStoppingConfig =
  GoogleCloudMlV1_AutomatedStoppingConfig_DecayCurveAutomatedStoppingConfig'
    {_gcmvascdcascUseElapsedTime = Nothing}


-- | If true, measurement.elapsed_time is used as the x-axis of each Trials
-- Decay Curve. Otherwise, Measurement.steps will be used as the x-axis.
gcmvascdcascUseElapsedTime :: Lens' GoogleCloudMlV1_AutomatedStoppingConfig_DecayCurveAutomatedStoppingConfig (Maybe Bool)
gcmvascdcascUseElapsedTime
  = lens _gcmvascdcascUseElapsedTime
      (\ s a -> s{_gcmvascdcascUseElapsedTime = a})

instance FromJSON
           GoogleCloudMlV1_AutomatedStoppingConfig_DecayCurveAutomatedStoppingConfig
         where
        parseJSON
          = withObject
              "GoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfig"
              (\ o ->
                 GoogleCloudMlV1_AutomatedStoppingConfig_DecayCurveAutomatedStoppingConfig'
                   <$> (o .:? "useElapsedTime"))

instance ToJSON
           GoogleCloudMlV1_AutomatedStoppingConfig_DecayCurveAutomatedStoppingConfig
         where
        toJSON
          GoogleCloudMlV1_AutomatedStoppingConfig_DecayCurveAutomatedStoppingConfig'{..}
          = object
              (catMaybes
                 [("useElapsedTime" .=) <$>
                    _gcmvascdcascUseElapsedTime])

-- | The response message for Operations.ListOperations.
--
-- /See:/ 'googleLongrunning__ListOperationsResponse' smart constructor.
data GoogleLongrunning__ListOperationsResponse =
  GoogleLongrunning__ListOperationsResponse'
    { _gllorNextPageToken :: !(Maybe Text)
    , _gllorOperations :: !(Maybe [GoogleLongrunning__Operation])
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

-- | Represents a hardware accelerator request config. Note that the
-- AcceleratorConfig can be used in both Jobs and Versions. Learn more
-- about [accelerators for training](\/ml-engine\/docs\/using-gpus) and
-- [accelerators for online
-- prediction](\/ml-engine\/docs\/machine-types-online-prediction#gpus).
--
-- /See:/ 'googleCloudMlV1__AcceleratorConfig' smart constructor.
data GoogleCloudMlV1__AcceleratorConfig =
  GoogleCloudMlV1__AcceleratorConfig'
    { _gcmvacCount :: !(Maybe (Textual Int64))
    , _gcmvacType :: !(Maybe GoogleCloudMlV1__AcceleratorConfigType)
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

-- | The type of accelerator to use.
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

-- | An Identity and Access Management (IAM) policy, which specifies access
-- controls for Google Cloud resources. A \`Policy\` is a collection of
-- \`bindings\`. A \`binding\` binds one or more \`members\` to a single
-- \`role\`. Members can be user accounts, service accounts, Google groups,
-- and domains (such as G Suite). A \`role\` is a named list of
-- permissions; each \`role\` can be an IAM predefined role or a
-- user-created custom role. For some types of Google Cloud resources, a
-- \`binding\` can also specify a \`condition\`, which is a logical
-- expression that allows access to a resource only if the expression
-- evaluates to \`true\`. A condition can add constraints based on
-- attributes of the request, the resource, or both. To learn which
-- resources support conditions in their IAM policies, see the [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
-- **JSON example:** { \"bindings\": [ { \"role\":
-- \"roles\/resourcemanager.organizationAdmin\", \"members\": [
-- \"user:mike\'example.com\", \"group:admins\'example.com\",
-- \"domain:google.com\",
-- \"serviceAccount:my-project-id\'appspot.gserviceaccount.com\" ] }, {
-- \"role\": \"roles\/resourcemanager.organizationViewer\", \"members\": [
-- \"user:eve\'example.com\" ], \"condition\": { \"title\": \"expirable
-- access\", \"description\": \"Does not grant access after Sep 2020\",
-- \"expression\": \"request.time \<
-- timestamp(\'2020-10-01T00:00:00.000Z\')\", } } ], \"etag\":
-- \"BwWWja0YfJA=\", \"version\": 3 } **YAML example:** bindings: -
-- members: - user:mike\'example.com - group:admins\'example.com -
-- domain:google.com -
-- serviceAccount:my-project-id\'appspot.gserviceaccount.com role:
-- roles\/resourcemanager.organizationAdmin - members: -
-- user:eve\'example.com role: roles\/resourcemanager.organizationViewer
-- condition: title: expirable access description: Does not grant access
-- after Sep 2020 expression: request.time \<
-- timestamp(\'2020-10-01T00:00:00.000Z\') - etag: BwWWja0YfJA= - version:
-- 3 For a description of IAM and its features, see the [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/docs\/).
--
-- /See:/ 'googleIAMV1__Policy' smart constructor.
data GoogleIAMV1__Policy =
  GoogleIAMV1__Policy'
    { _givpAuditConfigs :: !(Maybe [GoogleIAMV1__AuditConfig])
    , _givpEtag :: !(Maybe Bytes)
    , _givpVersion :: !(Maybe (Textual Int32))
    , _givpBindings :: !(Maybe [GoogleIAMV1__Binding])
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
-- version of the policy. **Important:** If you use IAM Conditions, you
-- must include the \`etag\` field whenever you call \`setIamPolicy\`. If
-- you omit this field, then IAM allows you to overwrite a version \`3\`
-- policy with a version \`1\` policy, and all of the conditions in the
-- version \`3\` policy are lost.
givpEtag :: Lens' GoogleIAMV1__Policy (Maybe ByteString)
givpEtag
  = lens _givpEtag (\ s a -> s{_givpEtag = a}) .
      mapping _Bytes

-- | Specifies the format of the policy. Valid values are \`0\`, \`1\`, and
-- \`3\`. Requests that specify an invalid value are rejected. Any
-- operation that affects conditional role bindings must specify version
-- \`3\`. This requirement applies to the following operations: * Getting a
-- policy that includes a conditional role binding * Adding a conditional
-- role binding to a policy * Changing a conditional role binding in a
-- policy * Removing any role binding, with or without a condition, from a
-- policy that includes conditions **Important:** If you use IAM
-- Conditions, you must include the \`etag\` field whenever you call
-- \`setIamPolicy\`. If you omit this field, then IAM allows you to
-- overwrite a version \`3\` policy with a version \`1\` policy, and all of
-- the conditions in the version \`3\` policy are lost. If a policy does
-- not include any conditions, operations on that policy may specify any
-- valid version or leave the field unset. To learn which resources support
-- conditions in their IAM policies, see the [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
givpVersion :: Lens' GoogleIAMV1__Policy (Maybe Int32)
givpVersion
  = lens _givpVersion (\ s a -> s{_givpVersion = a}) .
      mapping _Coerce

-- | Associates a list of \`members\` to a \`role\`. Optionally, may specify
-- a \`condition\` that determines how and when the \`bindings\` are
-- applied. Each of the \`bindings\` must contain at least one member.
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

-- | Represents a custom encryption key configuration that can be applied to
-- a resource.
--
-- /See:/ 'googleCloudMlV1__EncryptionConfig' smart constructor.
newtype GoogleCloudMlV1__EncryptionConfig =
  GoogleCloudMlV1__EncryptionConfig'
    { _gcmvecKmsKeyName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudMlV1__EncryptionConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvecKmsKeyName'
googleCloudMlV1__EncryptionConfig
    :: GoogleCloudMlV1__EncryptionConfig
googleCloudMlV1__EncryptionConfig =
  GoogleCloudMlV1__EncryptionConfig' {_gcmvecKmsKeyName = Nothing}


-- | The Cloud KMS resource identifier of the customer-managed encryption key
-- used to protect a resource, such as a training job. It has the following
-- format:
-- \`projects\/{PROJECT_ID}\/locations\/{REGION}\/keyRings\/{KEY_RING_NAME}\/cryptoKeys\/{KEY_NAME}\`
gcmvecKmsKeyName :: Lens' GoogleCloudMlV1__EncryptionConfig (Maybe Text)
gcmvecKmsKeyName
  = lens _gcmvecKmsKeyName
      (\ s a -> s{_gcmvecKmsKeyName = a})

instance FromJSON GoogleCloudMlV1__EncryptionConfig
         where
        parseJSON
          = withObject "GoogleCloudMlV1EncryptionConfig"
              (\ o ->
                 GoogleCloudMlV1__EncryptionConfig' <$>
                   (o .:? "kmsKeyName"))

instance ToJSON GoogleCloudMlV1__EncryptionConfig
         where
        toJSON GoogleCloudMlV1__EncryptionConfig'{..}
          = object
              (catMaybes [("kmsKeyName" .=) <$> _gcmvecKmsKeyName])

-- | Response message for the ListJobs method.
--
-- /See:/ 'googleCloudMlV1__ListJobsResponse' smart constructor.
data GoogleCloudMlV1__ListJobsResponse =
  GoogleCloudMlV1__ListJobsResponse'
    { _gcmvljrNextPageToken :: !(Maybe Text)
    , _gcmvljrJobs :: !(Maybe [GoogleCloudMlV1__Job])
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

-- | Represents configuration of a study.
--
-- /See:/ 'googleCloudMlV1__StudyConfig' smart constructor.
data GoogleCloudMlV1__StudyConfig =
  GoogleCloudMlV1__StudyConfig'
    { _gcmvscMetrics :: !(Maybe [GoogleCloudMlV1_StudyConfig_MetricSpec])
    , _gcmvscAutomatedStoppingConfig :: !(Maybe GoogleCloudMlV1__AutomatedStoppingConfig)
    , _gcmvscAlgorithm :: !(Maybe GoogleCloudMlV1__StudyConfigAlgorithm)
    , _gcmvscParameters :: !(Maybe [GoogleCloudMlV1_StudyConfig_ParameterSpec])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudMlV1__StudyConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvscMetrics'
--
-- * 'gcmvscAutomatedStoppingConfig'
--
-- * 'gcmvscAlgorithm'
--
-- * 'gcmvscParameters'
googleCloudMlV1__StudyConfig
    :: GoogleCloudMlV1__StudyConfig
googleCloudMlV1__StudyConfig =
  GoogleCloudMlV1__StudyConfig'
    { _gcmvscMetrics = Nothing
    , _gcmvscAutomatedStoppingConfig = Nothing
    , _gcmvscAlgorithm = Nothing
    , _gcmvscParameters = Nothing
    }


-- | Metric specs for the study.
gcmvscMetrics :: Lens' GoogleCloudMlV1__StudyConfig [GoogleCloudMlV1_StudyConfig_MetricSpec]
gcmvscMetrics
  = lens _gcmvscMetrics
      (\ s a -> s{_gcmvscMetrics = a})
      . _Default
      . _Coerce

-- | Configuration for automated stopping of unpromising Trials.
gcmvscAutomatedStoppingConfig :: Lens' GoogleCloudMlV1__StudyConfig (Maybe GoogleCloudMlV1__AutomatedStoppingConfig)
gcmvscAutomatedStoppingConfig
  = lens _gcmvscAutomatedStoppingConfig
      (\ s a -> s{_gcmvscAutomatedStoppingConfig = a})

-- | The search algorithm specified for the study.
gcmvscAlgorithm :: Lens' GoogleCloudMlV1__StudyConfig (Maybe GoogleCloudMlV1__StudyConfigAlgorithm)
gcmvscAlgorithm
  = lens _gcmvscAlgorithm
      (\ s a -> s{_gcmvscAlgorithm = a})

-- | Required. The set of parameters to tune.
gcmvscParameters :: Lens' GoogleCloudMlV1__StudyConfig [GoogleCloudMlV1_StudyConfig_ParameterSpec]
gcmvscParameters
  = lens _gcmvscParameters
      (\ s a -> s{_gcmvscParameters = a})
      . _Default
      . _Coerce

instance FromJSON GoogleCloudMlV1__StudyConfig where
        parseJSON
          = withObject "GoogleCloudMlV1StudyConfig"
              (\ o ->
                 GoogleCloudMlV1__StudyConfig' <$>
                   (o .:? "metrics" .!= mempty) <*>
                     (o .:? "automatedStoppingConfig")
                     <*> (o .:? "algorithm")
                     <*> (o .:? "parameters" .!= mempty))

instance ToJSON GoogleCloudMlV1__StudyConfig where
        toJSON GoogleCloudMlV1__StudyConfig'{..}
          = object
              (catMaybes
                 [("metrics" .=) <$> _gcmvscMetrics,
                  ("automatedStoppingConfig" .=) <$>
                    _gcmvscAutomatedStoppingConfig,
                  ("algorithm" .=) <$> _gcmvscAlgorithm,
                  ("parameters" .=) <$> _gcmvscParameters])

-- | Metadata field of a google.longrunning.Operation associated with a
-- SuggestTrialsRequest.
--
-- /See:/ 'googleCloudMlV1__SuggestTrialsMetadata' smart constructor.
data GoogleCloudMlV1__SuggestTrialsMetadata =
  GoogleCloudMlV1__SuggestTrialsMetadata'
    { _gcmvstmClientId :: !(Maybe Text)
    , _gcmvstmSuggestionCount :: !(Maybe (Textual Int32))
    , _gcmvstmStudy :: !(Maybe Text)
    , _gcmvstmCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudMlV1__SuggestTrialsMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvstmClientId'
--
-- * 'gcmvstmSuggestionCount'
--
-- * 'gcmvstmStudy'
--
-- * 'gcmvstmCreateTime'
googleCloudMlV1__SuggestTrialsMetadata
    :: GoogleCloudMlV1__SuggestTrialsMetadata
googleCloudMlV1__SuggestTrialsMetadata =
  GoogleCloudMlV1__SuggestTrialsMetadata'
    { _gcmvstmClientId = Nothing
    , _gcmvstmSuggestionCount = Nothing
    , _gcmvstmStudy = Nothing
    , _gcmvstmCreateTime = Nothing
    }


-- | The identifier of the client that is requesting the suggestion.
gcmvstmClientId :: Lens' GoogleCloudMlV1__SuggestTrialsMetadata (Maybe Text)
gcmvstmClientId
  = lens _gcmvstmClientId
      (\ s a -> s{_gcmvstmClientId = a})

-- | The number of suggestions requested.
gcmvstmSuggestionCount :: Lens' GoogleCloudMlV1__SuggestTrialsMetadata (Maybe Int32)
gcmvstmSuggestionCount
  = lens _gcmvstmSuggestionCount
      (\ s a -> s{_gcmvstmSuggestionCount = a})
      . mapping _Coerce

-- | The name of the study that the trial belongs to.
gcmvstmStudy :: Lens' GoogleCloudMlV1__SuggestTrialsMetadata (Maybe Text)
gcmvstmStudy
  = lens _gcmvstmStudy (\ s a -> s{_gcmvstmStudy = a})

-- | The time operation was submitted.
gcmvstmCreateTime :: Lens' GoogleCloudMlV1__SuggestTrialsMetadata (Maybe UTCTime)
gcmvstmCreateTime
  = lens _gcmvstmCreateTime
      (\ s a -> s{_gcmvstmCreateTime = a})
      . mapping _DateTime

instance FromJSON
           GoogleCloudMlV1__SuggestTrialsMetadata
         where
        parseJSON
          = withObject "GoogleCloudMlV1SuggestTrialsMetadata"
              (\ o ->
                 GoogleCloudMlV1__SuggestTrialsMetadata' <$>
                   (o .:? "clientId") <*> (o .:? "suggestionCount") <*>
                     (o .:? "study")
                     <*> (o .:? "createTime"))

instance ToJSON
           GoogleCloudMlV1__SuggestTrialsMetadata
         where
        toJSON GoogleCloudMlV1__SuggestTrialsMetadata'{..}
          = object
              (catMaybes
                 [("clientId" .=) <$> _gcmvstmClientId,
                  ("suggestionCount" .=) <$> _gcmvstmSuggestionCount,
                  ("study" .=) <$> _gcmvstmStudy,
                  ("createTime" .=) <$> _gcmvstmCreateTime])

-- | Response message for the ListVersions method.
--
-- /See:/ 'googleCloudMlV1__ListVersionsResponse' smart constructor.
data GoogleCloudMlV1__ListVersionsResponse =
  GoogleCloudMlV1__ListVersionsResponse'
    { _gcmvlvrNextPageToken :: !(Maybe Text)
    , _gcmvlvrVersions :: !(Maybe [GoogleCloudMlV1__Version])
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

-- | Represents a textual expression in the Common Expression Language (CEL)
-- syntax. CEL is a C-like expression language. The syntax and semantics of
-- CEL are documented at https:\/\/github.com\/google\/cel-spec. Example
-- (Comparison): title: \"Summary size limit\" description: \"Determines if
-- a summary is less than 100 chars\" expression: \"document.summary.size()
-- \< 100\" Example (Equality): title: \"Requestor is owner\" description:
-- \"Determines if requestor is the document owner\" expression:
-- \"document.owner == request.auth.claims.email\" Example (Logic): title:
-- \"Public documents\" description: \"Determine whether the document
-- should be publicly visible\" expression: \"document.type != \'private\'
-- && document.type != \'internal\'\" Example (Data Manipulation): title:
-- \"Notification string\" description: \"Create a notification string with
-- a timestamp.\" expression: \"\'New message received at \' +
-- string(document.create_time)\" The exact variables and functions that
-- may be referenced within an expression are determined by the service
-- that evaluates it. See the service documentation for additional
-- information.
--
-- /See:/ 'googleType__Expr' smart constructor.
data GoogleType__Expr =
  GoogleType__Expr'
    { _gteLocation :: !(Maybe Text)
    , _gteExpression :: !(Maybe Text)
    , _gteTitle :: !(Maybe Text)
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


-- | Optional. String indicating the location of the expression for error
-- reporting, e.g. a file name and a position in the file.
gteLocation :: Lens' GoogleType__Expr (Maybe Text)
gteLocation
  = lens _gteLocation (\ s a -> s{_gteLocation = a})

-- | Textual representation of an expression in Common Expression Language
-- syntax.
gteExpression :: Lens' GoogleType__Expr (Maybe Text)
gteExpression
  = lens _gteExpression
      (\ s a -> s{_gteExpression = a})

-- | Optional. Title for the expression, i.e. a short string describing its
-- purpose. This can be used e.g. in UIs which allow to enter the
-- expression.
gteTitle :: Lens' GoogleType__Expr (Maybe Text)
gteTitle = lens _gteTitle (\ s a -> s{_gteTitle = a})

-- | Optional. Description of the expression. This is a longer text which
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

-- | The request message for the ListTrials service method.
--
-- /See:/ 'googleCloudMlV1__ListOptimalTrialsRequest' smart constructor.
data GoogleCloudMlV1__ListOptimalTrialsRequest =
  GoogleCloudMlV1__ListOptimalTrialsRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudMlV1__ListOptimalTrialsRequest' with the minimum fields required to make a request.
--
googleCloudMlV1__ListOptimalTrialsRequest
    :: GoogleCloudMlV1__ListOptimalTrialsRequest
googleCloudMlV1__ListOptimalTrialsRequest =
  GoogleCloudMlV1__ListOptimalTrialsRequest'


instance FromJSON
           GoogleCloudMlV1__ListOptimalTrialsRequest
         where
        parseJSON
          = withObject
              "GoogleCloudMlV1ListOptimalTrialsRequest"
              (\ o ->
                 pure GoogleCloudMlV1__ListOptimalTrialsRequest')

instance ToJSON
           GoogleCloudMlV1__ListOptimalTrialsRequest
         where
        toJSON = const emptyObject

--
-- /See:/ 'googleCloudMlV1__ListStudiesResponse' smart constructor.
newtype GoogleCloudMlV1__ListStudiesResponse =
  GoogleCloudMlV1__ListStudiesResponse'
    { _gcmvlsrStudies :: Maybe [GoogleCloudMlV1__Study]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudMlV1__ListStudiesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvlsrStudies'
googleCloudMlV1__ListStudiesResponse
    :: GoogleCloudMlV1__ListStudiesResponse
googleCloudMlV1__ListStudiesResponse =
  GoogleCloudMlV1__ListStudiesResponse' {_gcmvlsrStudies = Nothing}


-- | The studies associated with the project.
gcmvlsrStudies :: Lens' GoogleCloudMlV1__ListStudiesResponse [GoogleCloudMlV1__Study]
gcmvlsrStudies
  = lens _gcmvlsrStudies
      (\ s a -> s{_gcmvlsrStudies = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudMlV1__ListStudiesResponse
         where
        parseJSON
          = withObject "GoogleCloudMlV1ListStudiesResponse"
              (\ o ->
                 GoogleCloudMlV1__ListStudiesResponse' <$>
                   (o .:? "studies" .!= mempty))

instance ToJSON GoogleCloudMlV1__ListStudiesResponse
         where
        toJSON GoogleCloudMlV1__ListStudiesResponse'{..}
          = object
              (catMaybes [("studies" .=) <$> _gcmvlsrStudies])

-- | Represents the result of a single hyperparameter tuning trial from a
-- training job. The TrainingOutput object that is returned on successful
-- completion of a training job with hyperparameter tuning includes a list
-- of HyperparameterOutput objects, one for each successful trial.
--
-- /See:/ 'googleCloudMlV1__HyperparameterOutput' smart constructor.
data GoogleCloudMlV1__HyperparameterOutput =
  GoogleCloudMlV1__HyperparameterOutput'
    { _gcmvhoState :: !(Maybe GoogleCloudMlV1__HyperparameterOutputState)
    , _gcmvhoIsTrialStoppedEarly :: !(Maybe Bool)
    , _gcmvhoStartTime :: !(Maybe DateTime')
    , _gcmvhoAllMetrics :: !(Maybe [GoogleCloudMlV1_HyperparameterOutput_HyperparameterMetric])
    , _gcmvhoHyperparameters :: !(Maybe GoogleCloudMlV1__HyperparameterOutputHyperparameters)
    , _gcmvhoTrialId :: !(Maybe Text)
    , _gcmvhoEndTime :: !(Maybe DateTime')
    , _gcmvhoFinalMetric :: !(Maybe GoogleCloudMlV1_HyperparameterOutput_HyperparameterMetric)
    , _gcmvhoBuiltInAlgorithmOutput :: !(Maybe GoogleCloudMlV1__BuiltInAlgorithmOutput)
    , _gcmvhoWebAccessURIs :: !(Maybe GoogleCloudMlV1__HyperparameterOutputWebAccessURIs)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudMlV1__HyperparameterOutput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvhoState'
--
-- * 'gcmvhoIsTrialStoppedEarly'
--
-- * 'gcmvhoStartTime'
--
-- * 'gcmvhoAllMetrics'
--
-- * 'gcmvhoHyperparameters'
--
-- * 'gcmvhoTrialId'
--
-- * 'gcmvhoEndTime'
--
-- * 'gcmvhoFinalMetric'
--
-- * 'gcmvhoBuiltInAlgorithmOutput'
--
-- * 'gcmvhoWebAccessURIs'
googleCloudMlV1__HyperparameterOutput
    :: GoogleCloudMlV1__HyperparameterOutput
googleCloudMlV1__HyperparameterOutput =
  GoogleCloudMlV1__HyperparameterOutput'
    { _gcmvhoState = Nothing
    , _gcmvhoIsTrialStoppedEarly = Nothing
    , _gcmvhoStartTime = Nothing
    , _gcmvhoAllMetrics = Nothing
    , _gcmvhoHyperparameters = Nothing
    , _gcmvhoTrialId = Nothing
    , _gcmvhoEndTime = Nothing
    , _gcmvhoFinalMetric = Nothing
    , _gcmvhoBuiltInAlgorithmOutput = Nothing
    , _gcmvhoWebAccessURIs = Nothing
    }


-- | Output only. The detailed state of the trial.
gcmvhoState :: Lens' GoogleCloudMlV1__HyperparameterOutput (Maybe GoogleCloudMlV1__HyperparameterOutputState)
gcmvhoState
  = lens _gcmvhoState (\ s a -> s{_gcmvhoState = a})

-- | True if the trial is stopped early.
gcmvhoIsTrialStoppedEarly :: Lens' GoogleCloudMlV1__HyperparameterOutput (Maybe Bool)
gcmvhoIsTrialStoppedEarly
  = lens _gcmvhoIsTrialStoppedEarly
      (\ s a -> s{_gcmvhoIsTrialStoppedEarly = a})

-- | Output only. Start time for the trial.
gcmvhoStartTime :: Lens' GoogleCloudMlV1__HyperparameterOutput (Maybe UTCTime)
gcmvhoStartTime
  = lens _gcmvhoStartTime
      (\ s a -> s{_gcmvhoStartTime = a})
      . mapping _DateTime

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

-- | Output only. End time for the trial.
gcmvhoEndTime :: Lens' GoogleCloudMlV1__HyperparameterOutput (Maybe UTCTime)
gcmvhoEndTime
  = lens _gcmvhoEndTime
      (\ s a -> s{_gcmvhoEndTime = a})
      . mapping _DateTime

-- | The final objective metric seen for this trial.
gcmvhoFinalMetric :: Lens' GoogleCloudMlV1__HyperparameterOutput (Maybe GoogleCloudMlV1_HyperparameterOutput_HyperparameterMetric)
gcmvhoFinalMetric
  = lens _gcmvhoFinalMetric
      (\ s a -> s{_gcmvhoFinalMetric = a})

-- | Details related to built-in algorithms jobs. Only set for trials of
-- built-in algorithms jobs that have succeeded.
gcmvhoBuiltInAlgorithmOutput :: Lens' GoogleCloudMlV1__HyperparameterOutput (Maybe GoogleCloudMlV1__BuiltInAlgorithmOutput)
gcmvhoBuiltInAlgorithmOutput
  = lens _gcmvhoBuiltInAlgorithmOutput
      (\ s a -> s{_gcmvhoBuiltInAlgorithmOutput = a})

-- | The web URIs for the training job. Currently for debug terminal access
-- to the job. Only set for in-progress hyperparameter tuning trials with
-- web access enabled.
gcmvhoWebAccessURIs :: Lens' GoogleCloudMlV1__HyperparameterOutput (Maybe GoogleCloudMlV1__HyperparameterOutputWebAccessURIs)
gcmvhoWebAccessURIs
  = lens _gcmvhoWebAccessURIs
      (\ s a -> s{_gcmvhoWebAccessURIs = a})

instance FromJSON
           GoogleCloudMlV1__HyperparameterOutput
         where
        parseJSON
          = withObject "GoogleCloudMlV1HyperparameterOutput"
              (\ o ->
                 GoogleCloudMlV1__HyperparameterOutput' <$>
                   (o .:? "state") <*> (o .:? "isTrialStoppedEarly") <*>
                     (o .:? "startTime")
                     <*> (o .:? "allMetrics" .!= mempty)
                     <*> (o .:? "hyperparameters")
                     <*> (o .:? "trialId")
                     <*> (o .:? "endTime")
                     <*> (o .:? "finalMetric")
                     <*> (o .:? "builtInAlgorithmOutput")
                     <*> (o .:? "webAccessUris"))

instance ToJSON GoogleCloudMlV1__HyperparameterOutput
         where
        toJSON GoogleCloudMlV1__HyperparameterOutput'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _gcmvhoState,
                  ("isTrialStoppedEarly" .=) <$>
                    _gcmvhoIsTrialStoppedEarly,
                  ("startTime" .=) <$> _gcmvhoStartTime,
                  ("allMetrics" .=) <$> _gcmvhoAllMetrics,
                  ("hyperparameters" .=) <$> _gcmvhoHyperparameters,
                  ("trialId" .=) <$> _gcmvhoTrialId,
                  ("endTime" .=) <$> _gcmvhoEndTime,
                  ("finalMetric" .=) <$> _gcmvhoFinalMetric,
                  ("builtInAlgorithmOutput" .=) <$>
                    _gcmvhoBuiltInAlgorithmOutput,
                  ("webAccessUris" .=) <$> _gcmvhoWebAccessURIs])

-- | Returns service account information associated with a project.
--
-- /See:/ 'googleCloudMlV1__GetConfigResponse' smart constructor.
data GoogleCloudMlV1__GetConfigResponse =
  GoogleCloudMlV1__GetConfigResponse'
    { _gcmvgcrConfig :: !(Maybe GoogleCloudMlV1__Config)
    , _gcmvgcrServiceAccount :: !(Maybe Text)
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

-- | A message representing a Study.
--
-- /See:/ 'googleCloudMlV1__Study' smart constructor.
data GoogleCloudMlV1__Study =
  GoogleCloudMlV1__Study'
    { _gcmvsState :: !(Maybe GoogleCloudMlV1__StudyState)
    , _gcmvsName :: !(Maybe Text)
    , _gcmvsInactiveReason :: !(Maybe Text)
    , _gcmvsStudyConfig :: !(Maybe GoogleCloudMlV1__StudyConfig)
    , _gcmvsCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudMlV1__Study' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvsState'
--
-- * 'gcmvsName'
--
-- * 'gcmvsInactiveReason'
--
-- * 'gcmvsStudyConfig'
--
-- * 'gcmvsCreateTime'
googleCloudMlV1__Study
    :: GoogleCloudMlV1__Study
googleCloudMlV1__Study =
  GoogleCloudMlV1__Study'
    { _gcmvsState = Nothing
    , _gcmvsName = Nothing
    , _gcmvsInactiveReason = Nothing
    , _gcmvsStudyConfig = Nothing
    , _gcmvsCreateTime = Nothing
    }


-- | Output only. The detailed state of a study.
gcmvsState :: Lens' GoogleCloudMlV1__Study (Maybe GoogleCloudMlV1__StudyState)
gcmvsState
  = lens _gcmvsState (\ s a -> s{_gcmvsState = a})

-- | Output only. The name of a study.
gcmvsName :: Lens' GoogleCloudMlV1__Study (Maybe Text)
gcmvsName
  = lens _gcmvsName (\ s a -> s{_gcmvsName = a})

-- | Output only. A human readable reason why the Study is inactive. This
-- should be empty if a study is ACTIVE or COMPLETED.
gcmvsInactiveReason :: Lens' GoogleCloudMlV1__Study (Maybe Text)
gcmvsInactiveReason
  = lens _gcmvsInactiveReason
      (\ s a -> s{_gcmvsInactiveReason = a})

-- | Required. Configuration of the study.
gcmvsStudyConfig :: Lens' GoogleCloudMlV1__Study (Maybe GoogleCloudMlV1__StudyConfig)
gcmvsStudyConfig
  = lens _gcmvsStudyConfig
      (\ s a -> s{_gcmvsStudyConfig = a})

-- | Output only. Time at which the study was created.
gcmvsCreateTime :: Lens' GoogleCloudMlV1__Study (Maybe UTCTime)
gcmvsCreateTime
  = lens _gcmvsCreateTime
      (\ s a -> s{_gcmvsCreateTime = a})
      . mapping _DateTime

instance FromJSON GoogleCloudMlV1__Study where
        parseJSON
          = withObject "GoogleCloudMlV1Study"
              (\ o ->
                 GoogleCloudMlV1__Study' <$>
                   (o .:? "state") <*> (o .:? "name") <*>
                     (o .:? "inactiveReason")
                     <*> (o .:? "studyConfig")
                     <*> (o .:? "createTime"))

instance ToJSON GoogleCloudMlV1__Study where
        toJSON GoogleCloudMlV1__Study'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _gcmvsState,
                  ("name" .=) <$> _gcmvsName,
                  ("inactiveReason" .=) <$> _gcmvsInactiveReason,
                  ("studyConfig" .=) <$> _gcmvsStudyConfig,
                  ("createTime" .=) <$> _gcmvsCreateTime])

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
    { _gloDone :: !(Maybe Bool)
    , _gloError :: !(Maybe GoogleRpc__Status)
    , _gloResponse :: !(Maybe GoogleLongrunning__OperationResponse)
    , _gloName :: !(Maybe Text)
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
-- \`name\` should be a resource name ending with
-- \`operations\/{unique_id}\`.
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
    { _gcmvmEtag :: !(Maybe Bytes)
    , _gcmvmRegions :: !(Maybe [Text])
    , _gcmvmDefaultVersion :: !(Maybe GoogleCloudMlV1__Version)
    , _gcmvmName :: !(Maybe Text)
    , _gcmvmLabels :: !(Maybe GoogleCloudMlV1__ModelLabels)
    , _gcmvmOnlinePredictionConsoleLogging :: !(Maybe Bool)
    , _gcmvmDescription :: !(Maybe Text)
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
-- * 'gcmvmOnlinePredictionConsoleLogging'
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
    , _gcmvmOnlinePredictionConsoleLogging = Nothing
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
-- Only one region per model is supported. Defaults to \'us-central1\' if
-- nothing is set. See the available regions for AI Platform services.
-- Note: * No matter where a model is deployed, it can always be accessed
-- by users from anywhere, both for online and batch prediction. * The
-- region for a batch prediction job is set by the region field when
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
-- projects.models.versions.setDefault.
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
-- documentation on using labels.
gcmvmLabels :: Lens' GoogleCloudMlV1__Model (Maybe GoogleCloudMlV1__ModelLabels)
gcmvmLabels
  = lens _gcmvmLabels (\ s a -> s{_gcmvmLabels = a})

-- | Optional. If true, online prediction nodes send \`stderr\` and
-- \`stdout\` streams to Cloud Logging. These can be more verbose than the
-- standard access logs (see \`onlinePredictionLogging\`) and can incur
-- higher cost. However, they are helpful for debugging. Note that [logs
-- may incur a cost](\/stackdriver\/pricing), especially if your project
-- receives prediction requests at a high QPS. Estimate your costs before
-- enabling this option. Default is false.
gcmvmOnlinePredictionConsoleLogging :: Lens' GoogleCloudMlV1__Model (Maybe Bool)
gcmvmOnlinePredictionConsoleLogging
  = lens _gcmvmOnlinePredictionConsoleLogging
      (\ s a ->
         s{_gcmvmOnlinePredictionConsoleLogging = a})

-- | Optional. The description specified for the model when it was created.
gcmvmDescription :: Lens' GoogleCloudMlV1__Model (Maybe Text)
gcmvmDescription
  = lens _gcmvmDescription
      (\ s a -> s{_gcmvmDescription = a})

-- | Optional. If true, online prediction access logs are sent to Cloud
-- Logging. These logs are like standard server access logs, containing
-- information like timestamp and latency for each request. Note that [logs
-- may incur a cost](\/stackdriver\/pricing), especially if your project
-- receives prediction requests at a high queries per second rate (QPS).
-- Estimate your costs before enabling this option. Default is false.
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
                     <*> (o .:? "onlinePredictionConsoleLogging")
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
                  ("onlinePredictionConsoleLogging" .=) <$>
                    _gcmvmOnlinePredictionConsoleLogging,
                  ("description" .=) <$> _gcmvmDescription,
                  ("onlinePredictionLogging" .=) <$>
                    _gcmvmOnlinePredictionLogging])

-- | Represents a training or prediction job.
--
-- /See:/ 'googleCloudMlV1__Job' smart constructor.
data GoogleCloudMlV1__Job =
  GoogleCloudMlV1__Job'
    { _gcmvjEtag :: !(Maybe Bytes)
    , _gcmvjState :: !(Maybe GoogleCloudMlV1__JobState)
    , _gcmvjTrainingOutput :: !(Maybe GoogleCloudMlV1__TrainingOutput)
    , _gcmvjJobId :: !(Maybe Text)
    , _gcmvjStartTime :: !(Maybe DateTime')
    , _gcmvjPredictionInput :: !(Maybe GoogleCloudMlV1__PredictionInput)
    , _gcmvjEndTime :: !(Maybe DateTime')
    , _gcmvjPredictionOutput :: !(Maybe GoogleCloudMlV1__PredictionOutput)
    , _gcmvjLabels :: !(Maybe GoogleCloudMlV1__JobLabels)
    , _gcmvjErrorMessage :: !(Maybe Text)
    , _gcmvjTrainingInput :: !(Maybe GoogleCloudMlV1__TrainingInput)
    , _gcmvjCreateTime :: !(Maybe DateTime')
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
-- documentation on using labels.
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
-- documentation on using labels.
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
-- documentation on using labels.
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

-- | The response message for the ListOptimalTrials method.
--
-- /See:/ 'googleCloudMlV1__ListOptimalTrialsResponse' smart constructor.
newtype GoogleCloudMlV1__ListOptimalTrialsResponse =
  GoogleCloudMlV1__ListOptimalTrialsResponse'
    { _gcmvlotrTrials :: Maybe [GoogleCloudMlV1__Trial]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudMlV1__ListOptimalTrialsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvlotrTrials'
googleCloudMlV1__ListOptimalTrialsResponse
    :: GoogleCloudMlV1__ListOptimalTrialsResponse
googleCloudMlV1__ListOptimalTrialsResponse =
  GoogleCloudMlV1__ListOptimalTrialsResponse' {_gcmvlotrTrials = Nothing}


-- | The pareto-optimal trials for multiple objective study or the optimal
-- trial for single objective study. The definition of pareto-optimal can
-- be checked in wiki page.
-- https:\/\/en.wikipedia.org\/wiki\/Pareto_efficiency
gcmvlotrTrials :: Lens' GoogleCloudMlV1__ListOptimalTrialsResponse [GoogleCloudMlV1__Trial]
gcmvlotrTrials
  = lens _gcmvlotrTrials
      (\ s a -> s{_gcmvlotrTrials = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudMlV1__ListOptimalTrialsResponse
         where
        parseJSON
          = withObject
              "GoogleCloudMlV1ListOptimalTrialsResponse"
              (\ o ->
                 GoogleCloudMlV1__ListOptimalTrialsResponse' <$>
                   (o .:? "trials" .!= mempty))

instance ToJSON
           GoogleCloudMlV1__ListOptimalTrialsResponse
         where
        toJSON
          GoogleCloudMlV1__ListOptimalTrialsResponse'{..}
          = object
              (catMaybes [("trials" .=) <$> _gcmvlotrTrials])

-- | The \`Status\` type defines a logical error model that is suitable for
-- different programming environments, including REST APIs and RPC APIs. It
-- is used by [gRPC](https:\/\/github.com\/grpc). Each \`Status\` message
-- contains three pieces of data: error code, error message, and error
-- details. You can find out more about this error model and how to work
-- with it in the [API Design
-- Guide](https:\/\/cloud.google.com\/apis\/design\/errors).
--
-- /See:/ 'googleRpc__Status' smart constructor.
data GoogleRpc__Status =
  GoogleRpc__Status'
    { _grsDetails :: !(Maybe [GoogleRpc__StatusDetailsItem])
    , _grsCode :: !(Maybe (Textual Int32))
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

-- | Represents the configuration for a replica in a cluster.
--
-- /See:/ 'googleCloudMlV1__ReplicaConfig' smart constructor.
data GoogleCloudMlV1__ReplicaConfig =
  GoogleCloudMlV1__ReplicaConfig'
    { _gcmvrcDiskConfig :: !(Maybe GoogleCloudMlV1__DiskConfig)
    , _gcmvrcContainerCommand :: !(Maybe [Text])
    , _gcmvrcImageURI :: !(Maybe Text)
    , _gcmvrcAcceleratorConfig :: !(Maybe GoogleCloudMlV1__AcceleratorConfig)
    , _gcmvrcContainerArgs :: !(Maybe [Text])
    , _gcmvrcTpuTfVersion :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudMlV1__ReplicaConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvrcDiskConfig'
--
-- * 'gcmvrcContainerCommand'
--
-- * 'gcmvrcImageURI'
--
-- * 'gcmvrcAcceleratorConfig'
--
-- * 'gcmvrcContainerArgs'
--
-- * 'gcmvrcTpuTfVersion'
googleCloudMlV1__ReplicaConfig
    :: GoogleCloudMlV1__ReplicaConfig
googleCloudMlV1__ReplicaConfig =
  GoogleCloudMlV1__ReplicaConfig'
    { _gcmvrcDiskConfig = Nothing
    , _gcmvrcContainerCommand = Nothing
    , _gcmvrcImageURI = Nothing
    , _gcmvrcAcceleratorConfig = Nothing
    , _gcmvrcContainerArgs = Nothing
    , _gcmvrcTpuTfVersion = Nothing
    }


-- | Represents the configuration of disk options.
gcmvrcDiskConfig :: Lens' GoogleCloudMlV1__ReplicaConfig (Maybe GoogleCloudMlV1__DiskConfig)
gcmvrcDiskConfig
  = lens _gcmvrcDiskConfig
      (\ s a -> s{_gcmvrcDiskConfig = a})

-- | The command with which the replica\'s custom container is run. If
-- provided, it will override default ENTRYPOINT of the docker image. If
-- not provided, the docker image\'s ENTRYPOINT is used. It cannot be set
-- if custom container image is not provided. Note that this field and
-- [TrainingInput.args] are mutually exclusive, i.e., both cannot be set at
-- the same time.
gcmvrcContainerCommand :: Lens' GoogleCloudMlV1__ReplicaConfig [Text]
gcmvrcContainerCommand
  = lens _gcmvrcContainerCommand
      (\ s a -> s{_gcmvrcContainerCommand = a})
      . _Default
      . _Coerce

-- | The Docker image to run on the replica. This image must be in Container
-- Registry. Learn more about [configuring custom
-- containers](\/ai-platform\/training\/docs\/distributed-training-containers).
gcmvrcImageURI :: Lens' GoogleCloudMlV1__ReplicaConfig (Maybe Text)
gcmvrcImageURI
  = lens _gcmvrcImageURI
      (\ s a -> s{_gcmvrcImageURI = a})

-- | Represents the type and number of accelerators used by the replica.
-- [Learn about restrictions on accelerator configurations for
-- training.](\/ai-platform\/training\/docs\/using-gpus#compute-engine-machine-types-with-gpu)
gcmvrcAcceleratorConfig :: Lens' GoogleCloudMlV1__ReplicaConfig (Maybe GoogleCloudMlV1__AcceleratorConfig)
gcmvrcAcceleratorConfig
  = lens _gcmvrcAcceleratorConfig
      (\ s a -> s{_gcmvrcAcceleratorConfig = a})

-- | Arguments to the entrypoint command. The following rules apply for
-- container_command and container_args: - If you do not supply command or
-- args: The defaults defined in the Docker image are used. - If you supply
-- a command but no args: The default EntryPoint and the default Cmd
-- defined in the Docker image are ignored. Your command is run without any
-- arguments. - If you supply only args: The default Entrypoint defined in
-- the Docker image is run with the args that you supplied. - If you supply
-- a command and args: The default Entrypoint and the default Cmd defined
-- in the Docker image are ignored. Your command is run with your args. It
-- cannot be set if custom container image is not provided. Note that this
-- field and [TrainingInput.args] are mutually exclusive, i.e., both cannot
-- be set at the same time.
gcmvrcContainerArgs :: Lens' GoogleCloudMlV1__ReplicaConfig [Text]
gcmvrcContainerArgs
  = lens _gcmvrcContainerArgs
      (\ s a -> s{_gcmvrcContainerArgs = a})
      . _Default
      . _Coerce

-- | The AI Platform runtime version that includes a TensorFlow version
-- matching the one used in the custom container. This field is required if
-- the replica is a TPU worker that uses a custom container. Otherwise, do
-- not specify this field. This must be a [runtime version that currently
-- supports training with
-- TPUs](\/ml-engine\/docs\/tensorflow\/runtime-version-list#tpu-support).
-- Note that the version of TensorFlow included in a runtime version may
-- differ from the numbering of the runtime version itself, because it may
-- have a different [patch
-- version](https:\/\/www.tensorflow.org\/guide\/version_compat#semantic_versioning_20).
-- In this field, you must specify the runtime version (TensorFlow minor
-- version). For example, if your custom container runs TensorFlow
-- \`1.x.y\`, specify \`1.x\`.
gcmvrcTpuTfVersion :: Lens' GoogleCloudMlV1__ReplicaConfig (Maybe Text)
gcmvrcTpuTfVersion
  = lens _gcmvrcTpuTfVersion
      (\ s a -> s{_gcmvrcTpuTfVersion = a})

instance FromJSON GoogleCloudMlV1__ReplicaConfig
         where
        parseJSON
          = withObject "GoogleCloudMlV1ReplicaConfig"
              (\ o ->
                 GoogleCloudMlV1__ReplicaConfig' <$>
                   (o .:? "diskConfig") <*>
                     (o .:? "containerCommand" .!= mempty)
                     <*> (o .:? "imageUri")
                     <*> (o .:? "acceleratorConfig")
                     <*> (o .:? "containerArgs" .!= mempty)
                     <*> (o .:? "tpuTfVersion"))

instance ToJSON GoogleCloudMlV1__ReplicaConfig where
        toJSON GoogleCloudMlV1__ReplicaConfig'{..}
          = object
              (catMaybes
                 [("diskConfig" .=) <$> _gcmvrcDiskConfig,
                  ("containerCommand" .=) <$> _gcmvrcContainerCommand,
                  ("imageUri" .=) <$> _gcmvrcImageURI,
                  ("acceleratorConfig" .=) <$>
                    _gcmvrcAcceleratorConfig,
                  ("containerArgs" .=) <$> _gcmvrcContainerArgs,
                  ("tpuTfVersion" .=) <$> _gcmvrcTpuTfVersion])

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
    { _gcmvhsResumePreviousJobId :: !(Maybe Text)
    , _gcmvhsParams :: !(Maybe [GoogleCloudMlV1__ParameterSpec])
    , _gcmvhsAlgorithm :: !(Maybe GoogleCloudMlV1__HyperparameterSpecAlgorithm)
    , _gcmvhsGoal :: !(Maybe GoogleCloudMlV1__HyperparameterSpecGoal)
    , _gcmvhsMaxTrials :: !(Maybe (Textual Int32))
    , _gcmvhsEnableTrialEarlyStopping :: !(Maybe Bool)
    , _gcmvhsMaxParallelTrials :: !(Maybe (Textual Int32))
    , _gcmvhsMaxFailedTrials :: !(Maybe (Textual Int32))
    , _gcmvhsHyperparameterMetricTag :: !(Maybe Text)
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
-- * 'gcmvhsMaxFailedTrials'
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
    , _gcmvhsMaxFailedTrials = Nothing
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
-- job. Uses the default AI Platform hyperparameter tuning algorithm if
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

-- | Optional. The number of failed trials that need to be seen before
-- failing the hyperparameter tuning job. You can specify this field to
-- override the default failing criteria for AI Platform hyperparameter
-- tuning jobs. Defaults to zero, which means the service decides when a
-- hyperparameter job should fail.
gcmvhsMaxFailedTrials :: Lens' GoogleCloudMlV1__HyperparameterSpec (Maybe Int32)
gcmvhsMaxFailedTrials
  = lens _gcmvhsMaxFailedTrials
      (\ s a -> s{_gcmvhsMaxFailedTrials = a})
      . mapping _Coerce

-- | Optional. The TensorFlow summary tag name to use for optimizing trials.
-- For current versions of TensorFlow, this tag name should exactly match
-- what is shown in TensorBoard, including all scopes. For versions of
-- TensorFlow prior to 0.12, this should be only the tag passed to
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
                     <*> (o .:? "maxFailedTrials")
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
                  ("maxFailedTrials" .=) <$> _gcmvhsMaxFailedTrials,
                  ("hyperparameterMetricTag" .=) <$>
                    _gcmvhsHyperparameterMetricTag])

-- | The request message for the CompleteTrial service method.
--
-- /See:/ 'googleCloudMlV1__CompleteTrialRequest' smart constructor.
data GoogleCloudMlV1__CompleteTrialRequest =
  GoogleCloudMlV1__CompleteTrialRequest'
    { _gcmvctrFinalMeasurement :: !(Maybe GoogleCloudMlV1__Measurement)
    , _gcmvctrInfeasibleReason :: !(Maybe Text)
    , _gcmvctrTrialInfeasible :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudMlV1__CompleteTrialRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvctrFinalMeasurement'
--
-- * 'gcmvctrInfeasibleReason'
--
-- * 'gcmvctrTrialInfeasible'
googleCloudMlV1__CompleteTrialRequest
    :: GoogleCloudMlV1__CompleteTrialRequest
googleCloudMlV1__CompleteTrialRequest =
  GoogleCloudMlV1__CompleteTrialRequest'
    { _gcmvctrFinalMeasurement = Nothing
    , _gcmvctrInfeasibleReason = Nothing
    , _gcmvctrTrialInfeasible = Nothing
    }


-- | Optional. If provided, it will be used as the completed trial\'s
-- final_measurement; Otherwise, the service will auto-select a previously
-- reported measurement as the final-measurement
gcmvctrFinalMeasurement :: Lens' GoogleCloudMlV1__CompleteTrialRequest (Maybe GoogleCloudMlV1__Measurement)
gcmvctrFinalMeasurement
  = lens _gcmvctrFinalMeasurement
      (\ s a -> s{_gcmvctrFinalMeasurement = a})

-- | Optional. A human readable reason why the trial was infeasible. This
-- should only be provided if \`trial_infeasible\` is true.
gcmvctrInfeasibleReason :: Lens' GoogleCloudMlV1__CompleteTrialRequest (Maybe Text)
gcmvctrInfeasibleReason
  = lens _gcmvctrInfeasibleReason
      (\ s a -> s{_gcmvctrInfeasibleReason = a})

-- | Optional. True if the trial cannot be run with the given Parameter, and
-- final_measurement will be ignored.
gcmvctrTrialInfeasible :: Lens' GoogleCloudMlV1__CompleteTrialRequest (Maybe Bool)
gcmvctrTrialInfeasible
  = lens _gcmvctrTrialInfeasible
      (\ s a -> s{_gcmvctrTrialInfeasible = a})

instance FromJSON
           GoogleCloudMlV1__CompleteTrialRequest
         where
        parseJSON
          = withObject "GoogleCloudMlV1CompleteTrialRequest"
              (\ o ->
                 GoogleCloudMlV1__CompleteTrialRequest' <$>
                   (o .:? "finalMeasurement") <*>
                     (o .:? "infeasibleReason")
                     <*> (o .:? "trialInfeasible"))

instance ToJSON GoogleCloudMlV1__CompleteTrialRequest
         where
        toJSON GoogleCloudMlV1__CompleteTrialRequest'{..}
          = object
              (catMaybes
                 [("finalMeasurement" .=) <$>
                    _gcmvctrFinalMeasurement,
                  ("infeasibleReason" .=) <$> _gcmvctrInfeasibleReason,
                  ("trialInfeasible" .=) <$> _gcmvctrTrialInfeasible])

-- | A message representing a trial.
--
-- /See:/ 'googleCloudMlV1__Trial' smart constructor.
data GoogleCloudMlV1__Trial =
  GoogleCloudMlV1__Trial'
    { _gcmvtClientId :: !(Maybe Text)
    , _gcmvtState :: !(Maybe GoogleCloudMlV1__TrialState)
    , _gcmvtStartTime :: !(Maybe DateTime')
    , _gcmvtFinalMeasurement :: !(Maybe GoogleCloudMlV1__Measurement)
    , _gcmvtMeasurements :: !(Maybe [GoogleCloudMlV1__Measurement])
    , _gcmvtName :: !(Maybe Text)
    , _gcmvtEndTime :: !(Maybe DateTime')
    , _gcmvtParameters :: !(Maybe [GoogleCloudMlV1_Trial_Parameter])
    , _gcmvtInfeasibleReason :: !(Maybe Text)
    , _gcmvtTrialInfeasible :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudMlV1__Trial' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvtClientId'
--
-- * 'gcmvtState'
--
-- * 'gcmvtStartTime'
--
-- * 'gcmvtFinalMeasurement'
--
-- * 'gcmvtMeasurements'
--
-- * 'gcmvtName'
--
-- * 'gcmvtEndTime'
--
-- * 'gcmvtParameters'
--
-- * 'gcmvtInfeasibleReason'
--
-- * 'gcmvtTrialInfeasible'
googleCloudMlV1__Trial
    :: GoogleCloudMlV1__Trial
googleCloudMlV1__Trial =
  GoogleCloudMlV1__Trial'
    { _gcmvtClientId = Nothing
    , _gcmvtState = Nothing
    , _gcmvtStartTime = Nothing
    , _gcmvtFinalMeasurement = Nothing
    , _gcmvtMeasurements = Nothing
    , _gcmvtName = Nothing
    , _gcmvtEndTime = Nothing
    , _gcmvtParameters = Nothing
    , _gcmvtInfeasibleReason = Nothing
    , _gcmvtTrialInfeasible = Nothing
    }


-- | Output only. The identifier of the client that originally requested this
-- trial.
gcmvtClientId :: Lens' GoogleCloudMlV1__Trial (Maybe Text)
gcmvtClientId
  = lens _gcmvtClientId
      (\ s a -> s{_gcmvtClientId = a})

-- | The detailed state of a trial.
gcmvtState :: Lens' GoogleCloudMlV1__Trial (Maybe GoogleCloudMlV1__TrialState)
gcmvtState
  = lens _gcmvtState (\ s a -> s{_gcmvtState = a})

-- | Output only. Time at which the trial was started.
gcmvtStartTime :: Lens' GoogleCloudMlV1__Trial (Maybe UTCTime)
gcmvtStartTime
  = lens _gcmvtStartTime
      (\ s a -> s{_gcmvtStartTime = a})
      . mapping _DateTime

-- | The final measurement containing the objective value.
gcmvtFinalMeasurement :: Lens' GoogleCloudMlV1__Trial (Maybe GoogleCloudMlV1__Measurement)
gcmvtFinalMeasurement
  = lens _gcmvtFinalMeasurement
      (\ s a -> s{_gcmvtFinalMeasurement = a})

-- | A list of measurements that are strictly lexicographically ordered by
-- their induced tuples (steps, elapsed_time). These are used for early
-- stopping computations.
gcmvtMeasurements :: Lens' GoogleCloudMlV1__Trial [GoogleCloudMlV1__Measurement]
gcmvtMeasurements
  = lens _gcmvtMeasurements
      (\ s a -> s{_gcmvtMeasurements = a})
      . _Default
      . _Coerce

-- | Output only. Name of the trial assigned by the service.
gcmvtName :: Lens' GoogleCloudMlV1__Trial (Maybe Text)
gcmvtName
  = lens _gcmvtName (\ s a -> s{_gcmvtName = a})

-- | Output only. Time at which the trial\'s status changed to COMPLETED.
gcmvtEndTime :: Lens' GoogleCloudMlV1__Trial (Maybe UTCTime)
gcmvtEndTime
  = lens _gcmvtEndTime (\ s a -> s{_gcmvtEndTime = a})
      . mapping _DateTime

-- | The parameters of the trial.
gcmvtParameters :: Lens' GoogleCloudMlV1__Trial [GoogleCloudMlV1_Trial_Parameter]
gcmvtParameters
  = lens _gcmvtParameters
      (\ s a -> s{_gcmvtParameters = a})
      . _Default
      . _Coerce

-- | Output only. A human readable string describing why the trial is
-- infeasible. This should only be set if trial_infeasible is true.
gcmvtInfeasibleReason :: Lens' GoogleCloudMlV1__Trial (Maybe Text)
gcmvtInfeasibleReason
  = lens _gcmvtInfeasibleReason
      (\ s a -> s{_gcmvtInfeasibleReason = a})

-- | Output only. If true, the parameters in this trial are not attempted
-- again.
gcmvtTrialInfeasible :: Lens' GoogleCloudMlV1__Trial (Maybe Bool)
gcmvtTrialInfeasible
  = lens _gcmvtTrialInfeasible
      (\ s a -> s{_gcmvtTrialInfeasible = a})

instance FromJSON GoogleCloudMlV1__Trial where
        parseJSON
          = withObject "GoogleCloudMlV1Trial"
              (\ o ->
                 GoogleCloudMlV1__Trial' <$>
                   (o .:? "clientId") <*> (o .:? "state") <*>
                     (o .:? "startTime")
                     <*> (o .:? "finalMeasurement")
                     <*> (o .:? "measurements" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "endTime")
                     <*> (o .:? "parameters" .!= mempty)
                     <*> (o .:? "infeasibleReason")
                     <*> (o .:? "trialInfeasible"))

instance ToJSON GoogleCloudMlV1__Trial where
        toJSON GoogleCloudMlV1__Trial'{..}
          = object
              (catMaybes
                 [("clientId" .=) <$> _gcmvtClientId,
                  ("state" .=) <$> _gcmvtState,
                  ("startTime" .=) <$> _gcmvtStartTime,
                  ("finalMeasurement" .=) <$> _gcmvtFinalMeasurement,
                  ("measurements" .=) <$> _gcmvtMeasurements,
                  ("name" .=) <$> _gcmvtName,
                  ("endTime" .=) <$> _gcmvtEndTime,
                  ("parameters" .=) <$> _gcmvtParameters,
                  ("infeasibleReason" .=) <$> _gcmvtInfeasibleReason,
                  ("trialInfeasible" .=) <$> _gcmvtTrialInfeasible])

-- | Options for automatically scaling a model.
--
-- /See:/ 'googleCloudMlV1__AutoScaling' smart constructor.
data GoogleCloudMlV1__AutoScaling =
  GoogleCloudMlV1__AutoScaling'
    { _gcmvasMetrics :: !(Maybe [GoogleCloudMlV1__MetricSpec])
    , _gcmvasMinNodes :: !(Maybe (Textual Int32))
    , _gcmvasMaxNodes :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudMlV1__AutoScaling' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvasMetrics'
--
-- * 'gcmvasMinNodes'
--
-- * 'gcmvasMaxNodes'
googleCloudMlV1__AutoScaling
    :: GoogleCloudMlV1__AutoScaling
googleCloudMlV1__AutoScaling =
  GoogleCloudMlV1__AutoScaling'
    { _gcmvasMetrics = Nothing
    , _gcmvasMinNodes = Nothing
    , _gcmvasMaxNodes = Nothing
    }


-- | MetricSpec contains the specifications to use to calculate the desired
-- nodes count.
gcmvasMetrics :: Lens' GoogleCloudMlV1__AutoScaling [GoogleCloudMlV1__MetricSpec]
gcmvasMetrics
  = lens _gcmvasMetrics
      (\ s a -> s{_gcmvasMetrics = a})
      . _Default
      . _Coerce

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
-- nodes are used. If \`min_nodes\` is not specified and AutoScaling is
-- used with a [legacy (MLS1) machine
-- type](\/ml-engine\/docs\/machine-types-online-prediction), \`min_nodes\`
-- defaults to 0, in which case, when traffic to a model stops (and after a
-- cool-down period), nodes will be shut down and no charges will be
-- incurred until traffic to the model resumes. If \`min_nodes\` is not
-- specified and AutoScaling is used with a [Compute Engine (N1) machine
-- type](\/ml-engine\/docs\/machine-types-online-prediction), \`min_nodes\`
-- defaults to 1. \`min_nodes\` must be at least 1 for use with a Compute
-- Engine machine type. You can set \`min_nodes\` when creating the model
-- version, and you can also update \`min_nodes\` for an existing version:
-- update_body.json: { \'autoScaling\': { \'minNodes\': 5 } } HTTP request:
-- PATCH
-- https:\/\/ml.googleapis.com\/v1\/{name=projects\/*\/models\/*\/versions\/*}?update_mask=autoScaling.minNodes
-- -d \'.\/update_body.json
gcmvasMinNodes :: Lens' GoogleCloudMlV1__AutoScaling (Maybe Int32)
gcmvasMinNodes
  = lens _gcmvasMinNodes
      (\ s a -> s{_gcmvasMinNodes = a})
      . mapping _Coerce

-- | The maximum number of nodes to scale this model under load. The actual
-- value will depend on resource quota and availability.
gcmvasMaxNodes :: Lens' GoogleCloudMlV1__AutoScaling (Maybe Int32)
gcmvasMaxNodes
  = lens _gcmvasMaxNodes
      (\ s a -> s{_gcmvasMaxNodes = a})
      . mapping _Coerce

instance FromJSON GoogleCloudMlV1__AutoScaling where
        parseJSON
          = withObject "GoogleCloudMlV1AutoScaling"
              (\ o ->
                 GoogleCloudMlV1__AutoScaling' <$>
                   (o .:? "metrics" .!= mempty) <*> (o .:? "minNodes")
                     <*> (o .:? "maxNodes"))

instance ToJSON GoogleCloudMlV1__AutoScaling where
        toJSON GoogleCloudMlV1__AutoScaling'{..}
          = object
              (catMaybes
                 [("metrics" .=) <$> _gcmvasMetrics,
                  ("minNodes" .=) <$> _gcmvasMinNodes,
                  ("maxNodes" .=) <$> _gcmvasMaxNodes])

--
-- /See:/ 'googleCloudMlV1_StudyConfigParameterSpec_DoubleValueSpec' smart constructor.
data GoogleCloudMlV1_StudyConfigParameterSpec_DoubleValueSpec =
  GoogleCloudMlV1_StudyConfigParameterSpec_DoubleValueSpec'
    { _gcmvscpsdvsMaxValue :: !(Maybe (Textual Double))
    , _gcmvscpsdvsMinValue :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudMlV1_StudyConfigParameterSpec_DoubleValueSpec' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvscpsdvsMaxValue'
--
-- * 'gcmvscpsdvsMinValue'
googleCloudMlV1_StudyConfigParameterSpec_DoubleValueSpec
    :: GoogleCloudMlV1_StudyConfigParameterSpec_DoubleValueSpec
googleCloudMlV1_StudyConfigParameterSpec_DoubleValueSpec =
  GoogleCloudMlV1_StudyConfigParameterSpec_DoubleValueSpec'
    {_gcmvscpsdvsMaxValue = Nothing, _gcmvscpsdvsMinValue = Nothing}


-- | Must be specified if type is \`DOUBLE\`. Maximum value of the parameter.
gcmvscpsdvsMaxValue :: Lens' GoogleCloudMlV1_StudyConfigParameterSpec_DoubleValueSpec (Maybe Double)
gcmvscpsdvsMaxValue
  = lens _gcmvscpsdvsMaxValue
      (\ s a -> s{_gcmvscpsdvsMaxValue = a})
      . mapping _Coerce

-- | Must be specified if type is \`DOUBLE\`. Minimum value of the parameter.
gcmvscpsdvsMinValue :: Lens' GoogleCloudMlV1_StudyConfigParameterSpec_DoubleValueSpec (Maybe Double)
gcmvscpsdvsMinValue
  = lens _gcmvscpsdvsMinValue
      (\ s a -> s{_gcmvscpsdvsMinValue = a})
      . mapping _Coerce

instance FromJSON
           GoogleCloudMlV1_StudyConfigParameterSpec_DoubleValueSpec
         where
        parseJSON
          = withObject
              "GoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpec"
              (\ o ->
                 GoogleCloudMlV1_StudyConfigParameterSpec_DoubleValueSpec'
                   <$> (o .:? "maxValue") <*> (o .:? "minValue"))

instance ToJSON
           GoogleCloudMlV1_StudyConfigParameterSpec_DoubleValueSpec
         where
        toJSON
          GoogleCloudMlV1_StudyConfigParameterSpec_DoubleValueSpec'{..}
          = object
              (catMaybes
                 [("maxValue" .=) <$> _gcmvscpsdvsMaxValue,
                  ("minValue" .=) <$> _gcmvscpsdvsMinValue])

-- | Specification of a custom container for serving predictions. This
-- message is a subset of the [Kubernetes Container v1 core
-- specification](https:\/\/kubernetes.io\/docs\/reference\/generated\/kubernetes-api\/v1.18\/#container-v1-core).
--
-- /See:/ 'googleCloudMlV1__ContainerSpec' smart constructor.
data GoogleCloudMlV1__ContainerSpec =
  GoogleCloudMlV1__ContainerSpec'
    { _gcmvcsImage :: !(Maybe Text)
    , _gcmvcsCommand :: !(Maybe [Text])
    , _gcmvcsArgs :: !(Maybe [Text])
    , _gcmvcsEnv :: !(Maybe [GoogleCloudMlV1__EnvVar])
    , _gcmvcsPorts :: !(Maybe [GoogleCloudMlV1__ContainerPort])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudMlV1__ContainerSpec' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvcsImage'
--
-- * 'gcmvcsCommand'
--
-- * 'gcmvcsArgs'
--
-- * 'gcmvcsEnv'
--
-- * 'gcmvcsPorts'
googleCloudMlV1__ContainerSpec
    :: GoogleCloudMlV1__ContainerSpec
googleCloudMlV1__ContainerSpec =
  GoogleCloudMlV1__ContainerSpec'
    { _gcmvcsImage = Nothing
    , _gcmvcsCommand = Nothing
    , _gcmvcsArgs = Nothing
    , _gcmvcsEnv = Nothing
    , _gcmvcsPorts = Nothing
    }


-- | URI of the Docker image to be used as the custom container for serving
-- predictions. This URI must identify [an image in Artifact
-- Registry](\/artifact-registry\/docs\/overview) and begin with the
-- hostname \`{REGION}-docker.pkg.dev\`, where \`{REGION}\` is replaced by
-- the region that matches AI Platform Prediction [regional
-- endpoint](\/ai-platform\/prediction\/docs\/regional-endpoints) that you
-- are using. For example, if you are using the
-- \`us-central1-ml.googleapis.com\` endpoint, then this URI must begin
-- with \`us-central1-docker.pkg.dev\`. To use a custom container, the [AI
-- Platform Google-managed service
-- account](\/ai-platform\/prediction\/docs\/custom-service-account#default)
-- must have permission to pull (read) the Docker image at this URI. The AI
-- Platform Google-managed service account has the following format:
-- \`service-{PROJECT_NUMBER}\'cloud-ml.google.com.iam.gserviceaccount.com\`
-- {PROJECT_NUMBER} is replaced by your Google Cloud project number. By
-- default, this service account has necessary permissions to pull an
-- Artifact Registry image in the same Google Cloud project where you are
-- using AI Platform Prediction. In this case, no configuration is
-- necessary. If you want to use an image from a different Google Cloud
-- project, learn how to [grant the Artifact Registry Reader
-- (roles\/artifactregistry.reader) role for a
-- repository](\/artifact-registry\/docs\/access-control#grant-repo) to
-- your projet\'s AI Platform Google-managed service account. To learn
-- about the requirements for the Docker image itself, read [Custom
-- container
-- requirements](\/ai-platform\/prediction\/docs\/custom-container-requirements).
gcmvcsImage :: Lens' GoogleCloudMlV1__ContainerSpec (Maybe Text)
gcmvcsImage
  = lens _gcmvcsImage (\ s a -> s{_gcmvcsImage = a})

-- | Immutable. Specifies the command that runs when the container starts.
-- This overrides the container\'s
-- [\`ENTRYPOINT\`](https:\/\/docs.docker.com\/engine\/reference\/builder\/#entrypoint).
-- Specify this field as an array of executable and arguments, similar to a
-- Docker \`ENTRYPOINT\`\'s \"exec\" form, not its \"shell\" form. If you
-- do not specify this field, then the container\'s \`ENTRYPOINT\` runs, in
-- conjunction with the args field or the container\'s
-- [\`CMD\`](https:\/\/docs.docker.com\/engine\/reference\/builder\/#cmd),
-- if either exists. If this field is not specified and the container does
-- not have an \`ENTRYPOINT\`, then refer to the [Docker documentation
-- about how \`CMD\` and \`ENTRYPOINT\`
-- interact](https:\/\/docs.docker.com\/engine\/reference\/builder\/#understand-how-cmd-and-entrypoint-interact).
-- If you specify this field, then you can also specify the \`args\` field
-- to provide additional arguments for this command. However, if you
-- specify this field, then the container\'s \`CMD\` is ignored. See the
-- [Kubernetes documentation about how the \`command\` and \`args\` fields
-- interact with a container\'s \`ENTRYPOINT\` and
-- \`CMD\`](https:\/\/kubernetes.io\/docs\/tasks\/inject-data-application\/define-command-argument-container\/#notes).
-- In this field, you can reference [environment variables set by AI
-- Platform
-- Prediction](\/ai-platform\/prediction\/docs\/custom-container-requirements#aip-variables)
-- and environment variables set in the env field. You cannot reference
-- environment variables set in the Docker image. In order for environment
-- variables to be expanded, reference them by using the following syntax:
-- $( VARIABLE_NAME) Note that this differs from Bash variable expansion,
-- which does not use parentheses. If a variable cannot be resolved, the
-- reference in the input string is used unchanged. To avoid variable
-- expansion, you can escape this syntax with \`$$\`; for example:
-- $$(VARIABLE_NAME) This field corresponds to the \`command\` field of the
-- [Kubernetes Containers v1 core
-- API](https:\/\/kubernetes.io\/docs\/reference\/generated\/kubernetes-api\/v1.18\/#container-v1-core).
gcmvcsCommand :: Lens' GoogleCloudMlV1__ContainerSpec [Text]
gcmvcsCommand
  = lens _gcmvcsCommand
      (\ s a -> s{_gcmvcsCommand = a})
      . _Default
      . _Coerce

-- | Immutable. Specifies arguments for the command that runs when the
-- container starts. This overrides the container\'s
-- [\`CMD\`](https:\/\/docs.docker.com\/engine\/reference\/builder\/#cmd).
-- Specify this field as an array of executable and arguments, similar to a
-- Docker \`CMD\`\'s \"default parameters\" form. If you don\'t specify
-- this field but do specify the command field, then the command from the
-- \`command\` field runs without any additional arguments. See the
-- [Kubernetes documentation about how the \`command\` and \`args\` fields
-- interact with a container\'s \`ENTRYPOINT\` and
-- \`CMD\`](https:\/\/kubernetes.io\/docs\/tasks\/inject-data-application\/define-command-argument-container\/#notes).
-- If you don\'t specify this field and don\'t specify the \`commmand\`
-- field, then the container\'s
-- [\`ENTRYPOINT\`](https:\/\/docs.docker.com\/engine\/reference\/builder\/#cmd)
-- and \`CMD\` determine what runs based on their default behavior. See the
-- [Docker documentation about how \`CMD\` and \`ENTRYPOINT\`
-- interact](https:\/\/docs.docker.com\/engine\/reference\/builder\/#understand-how-cmd-and-entrypoint-interact).
-- In this field, you can reference [environment variables set by AI
-- Platform
-- Prediction](\/ai-platform\/prediction\/docs\/custom-container-requirements#aip-variables)
-- and environment variables set in the env field. You cannot reference
-- environment variables set in the Docker image. In order for environment
-- variables to be expanded, reference them by using the following syntax:
-- $( VARIABLE_NAME) Note that this differs from Bash variable expansion,
-- which does not use parentheses. If a variable cannot be resolved, the
-- reference in the input string is used unchanged. To avoid variable
-- expansion, you can escape this syntax with \`$$\`; for example:
-- $$(VARIABLE_NAME) This field corresponds to the \`args\` field of the
-- [Kubernetes Containers v1 core
-- API](https:\/\/kubernetes.io\/docs\/reference\/generated\/kubernetes-api\/v1.18\/#container-v1-core).
gcmvcsArgs :: Lens' GoogleCloudMlV1__ContainerSpec [Text]
gcmvcsArgs
  = lens _gcmvcsArgs (\ s a -> s{_gcmvcsArgs = a}) .
      _Default
      . _Coerce

-- | Immutable. List of environment variables to set in the container. After
-- the container starts running, code running in the container can read
-- these environment variables. Additionally, the command and args fields
-- can reference these variables. Later entries in this list can also
-- reference earlier entries. For example, the following example sets the
-- variable \`VAR_2\` to have the value \`foo bar\`: \`\`\`json [ {
-- \"name\": \"VAR_1\", \"value\": \"foo\" }, { \"name\": \"VAR_2\",
-- \"value\": \"$(VAR_1) bar\" } ] \`\`\` If you switch the order of the
-- variables in the example, then the expansion does not occur. This field
-- corresponds to the \`env\` field of the [Kubernetes Containers v1 core
-- API](https:\/\/kubernetes.io\/docs\/reference\/generated\/kubernetes-api\/v1.18\/#container-v1-core).
gcmvcsEnv :: Lens' GoogleCloudMlV1__ContainerSpec [GoogleCloudMlV1__EnvVar]
gcmvcsEnv
  = lens _gcmvcsEnv (\ s a -> s{_gcmvcsEnv = a}) .
      _Default
      . _Coerce

-- | Immutable. List of ports to expose from the container. AI Platform
-- Prediction sends any prediction requests that it receives to the first
-- port on this list. AI Platform Prediction also sends [liveness and
-- health
-- checks](\/ai-platform\/prediction\/docs\/custom-container-requirements#health)
-- to this port. If you do not specify this field, it defaults to following
-- value: \`\`\`json [ { \"containerPort\": 8080 } ] \`\`\` AI Platform
-- Prediction does not use ports other than the first one listed. This
-- field corresponds to the \`ports\` field of the [Kubernetes Containers
-- v1 core
-- API](https:\/\/kubernetes.io\/docs\/reference\/generated\/kubernetes-api\/v1.18\/#container-v1-core).
gcmvcsPorts :: Lens' GoogleCloudMlV1__ContainerSpec [GoogleCloudMlV1__ContainerPort]
gcmvcsPorts
  = lens _gcmvcsPorts (\ s a -> s{_gcmvcsPorts = a}) .
      _Default
      . _Coerce

instance FromJSON GoogleCloudMlV1__ContainerSpec
         where
        parseJSON
          = withObject "GoogleCloudMlV1ContainerSpec"
              (\ o ->
                 GoogleCloudMlV1__ContainerSpec' <$>
                   (o .:? "image") <*> (o .:? "command" .!= mempty) <*>
                     (o .:? "args" .!= mempty)
                     <*> (o .:? "env" .!= mempty)
                     <*> (o .:? "ports" .!= mempty))

instance ToJSON GoogleCloudMlV1__ContainerSpec where
        toJSON GoogleCloudMlV1__ContainerSpec'{..}
          = object
              (catMaybes
                 [("image" .=) <$> _gcmvcsImage,
                  ("command" .=) <$> _gcmvcsCommand,
                  ("args" .=) <$> _gcmvcsArgs,
                  ("env" .=) <$> _gcmvcsEnv,
                  ("ports" .=) <$> _gcmvcsPorts])

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

-- | The request message for the CheckTrialEarlyStoppingState service method.
--
-- /See:/ 'googleCloudMlV1__CheckTrialEarlyStoppingStateRequest' smart constructor.
data GoogleCloudMlV1__CheckTrialEarlyStoppingStateRequest =
  GoogleCloudMlV1__CheckTrialEarlyStoppingStateRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudMlV1__CheckTrialEarlyStoppingStateRequest' with the minimum fields required to make a request.
--
googleCloudMlV1__CheckTrialEarlyStoppingStateRequest
    :: GoogleCloudMlV1__CheckTrialEarlyStoppingStateRequest
googleCloudMlV1__CheckTrialEarlyStoppingStateRequest =
  GoogleCloudMlV1__CheckTrialEarlyStoppingStateRequest'


instance FromJSON
           GoogleCloudMlV1__CheckTrialEarlyStoppingStateRequest
         where
        parseJSON
          = withObject
              "GoogleCloudMlV1CheckTrialEarlyStoppingStateRequest"
              (\ o ->
                 pure
                   GoogleCloudMlV1__CheckTrialEarlyStoppingStateRequest')

instance ToJSON
           GoogleCloudMlV1__CheckTrialEarlyStoppingStateRequest
         where
        toJSON = const emptyObject

-- | This message will be placed in the metadata field of a
-- google.longrunning.Operation associated with a
-- CheckTrialEarlyStoppingState request.
--
-- /See:/ 'googleCloudMlV1__CheckTrialEarlyStoppingStateMetatData' smart constructor.
data GoogleCloudMlV1__CheckTrialEarlyStoppingStateMetatData =
  GoogleCloudMlV1__CheckTrialEarlyStoppingStateMetatData'
    { _gcmvctessmdTrial :: !(Maybe Text)
    , _gcmvctessmdStudy :: !(Maybe Text)
    , _gcmvctessmdCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudMlV1__CheckTrialEarlyStoppingStateMetatData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvctessmdTrial'
--
-- * 'gcmvctessmdStudy'
--
-- * 'gcmvctessmdCreateTime'
googleCloudMlV1__CheckTrialEarlyStoppingStateMetatData
    :: GoogleCloudMlV1__CheckTrialEarlyStoppingStateMetatData
googleCloudMlV1__CheckTrialEarlyStoppingStateMetatData =
  GoogleCloudMlV1__CheckTrialEarlyStoppingStateMetatData'
    { _gcmvctessmdTrial = Nothing
    , _gcmvctessmdStudy = Nothing
    , _gcmvctessmdCreateTime = Nothing
    }


-- | The trial name.
gcmvctessmdTrial :: Lens' GoogleCloudMlV1__CheckTrialEarlyStoppingStateMetatData (Maybe Text)
gcmvctessmdTrial
  = lens _gcmvctessmdTrial
      (\ s a -> s{_gcmvctessmdTrial = a})

-- | The name of the study that the trial belongs to.
gcmvctessmdStudy :: Lens' GoogleCloudMlV1__CheckTrialEarlyStoppingStateMetatData (Maybe Text)
gcmvctessmdStudy
  = lens _gcmvctessmdStudy
      (\ s a -> s{_gcmvctessmdStudy = a})

-- | The time at which the operation was submitted.
gcmvctessmdCreateTime :: Lens' GoogleCloudMlV1__CheckTrialEarlyStoppingStateMetatData (Maybe UTCTime)
gcmvctessmdCreateTime
  = lens _gcmvctessmdCreateTime
      (\ s a -> s{_gcmvctessmdCreateTime = a})
      . mapping _DateTime

instance FromJSON
           GoogleCloudMlV1__CheckTrialEarlyStoppingStateMetatData
         where
        parseJSON
          = withObject
              "GoogleCloudMlV1CheckTrialEarlyStoppingStateMetatData"
              (\ o ->
                 GoogleCloudMlV1__CheckTrialEarlyStoppingStateMetatData'
                   <$>
                   (o .:? "trial") <*> (o .:? "study") <*>
                     (o .:? "createTime"))

instance ToJSON
           GoogleCloudMlV1__CheckTrialEarlyStoppingStateMetatData
         where
        toJSON
          GoogleCloudMlV1__CheckTrialEarlyStoppingStateMetatData'{..}
          = object
              (catMaybes
                 [("trial" .=) <$> _gcmvctessmdTrial,
                  ("study" .=) <$> _gcmvctessmdStudy,
                  ("createTime" .=) <$> _gcmvctessmdCreateTime])

--
-- /See:/ 'googleCloudMlV1_StudyConfigParameterSpec_CategoricalValueSpec' smart constructor.
newtype GoogleCloudMlV1_StudyConfigParameterSpec_CategoricalValueSpec =
  GoogleCloudMlV1_StudyConfigParameterSpec_CategoricalValueSpec'
    { _gcmvscpscvsValues :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudMlV1_StudyConfigParameterSpec_CategoricalValueSpec' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvscpscvsValues'
googleCloudMlV1_StudyConfigParameterSpec_CategoricalValueSpec
    :: GoogleCloudMlV1_StudyConfigParameterSpec_CategoricalValueSpec
googleCloudMlV1_StudyConfigParameterSpec_CategoricalValueSpec =
  GoogleCloudMlV1_StudyConfigParameterSpec_CategoricalValueSpec'
    {_gcmvscpscvsValues = Nothing}


-- | Must be specified if type is \`CATEGORICAL\`. The list of possible
-- categories.
gcmvscpscvsValues :: Lens' GoogleCloudMlV1_StudyConfigParameterSpec_CategoricalValueSpec [Text]
gcmvscpscvsValues
  = lens _gcmvscpscvsValues
      (\ s a -> s{_gcmvscpscvsValues = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudMlV1_StudyConfigParameterSpec_CategoricalValueSpec
         where
        parseJSON
          = withObject
              "GoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec"
              (\ o ->
                 GoogleCloudMlV1_StudyConfigParameterSpec_CategoricalValueSpec'
                   <$> (o .:? "values" .!= mempty))

instance ToJSON
           GoogleCloudMlV1_StudyConfigParameterSpec_CategoricalValueSpec
         where
        toJSON
          GoogleCloudMlV1_StudyConfigParameterSpec_CategoricalValueSpec'{..}
          = object
              (catMaybes [("values" .=) <$> _gcmvscpscvsValues])

-- | Represents a single parameter to optimize.
--
-- /See:/ 'googleCloudMlV1_StudyConfig_ParameterSpec' smart constructor.
data GoogleCloudMlV1_StudyConfig_ParameterSpec =
  GoogleCloudMlV1_StudyConfig_ParameterSpec'
    { _gcmvscpsParentCategoricalValues :: !(Maybe GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentCategoricalValueSpec)
    , _gcmvscpsDoubleValueSpec :: !(Maybe GoogleCloudMlV1_StudyConfigParameterSpec_DoubleValueSpec)
    , _gcmvscpsParentIntValues :: !(Maybe GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentIntValueSpec)
    , _gcmvscpsParentDiscreteValues :: !(Maybe GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentDiscreteValueSpec)
    , _gcmvscpsChildParameterSpecs :: !(Maybe [GoogleCloudMlV1_StudyConfig_ParameterSpec])
    , _gcmvscpsDiscreteValueSpec :: !(Maybe GoogleCloudMlV1_StudyConfigParameterSpec_DiscreteValueSpec)
    , _gcmvscpsScaleType :: !(Maybe GoogleCloudMlV1_StudyConfig_ParameterSpecScaleType)
    , _gcmvscpsIntegerValueSpec :: !(Maybe GoogleCloudMlV1_StudyConfigParameterSpec_IntegerValueSpec)
    , _gcmvscpsCategoricalValueSpec :: !(Maybe GoogleCloudMlV1_StudyConfigParameterSpec_CategoricalValueSpec)
    , _gcmvscpsType :: !(Maybe GoogleCloudMlV1_StudyConfig_ParameterSpecType)
    , _gcmvscpsParameter :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudMlV1_StudyConfig_ParameterSpec' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvscpsParentCategoricalValues'
--
-- * 'gcmvscpsDoubleValueSpec'
--
-- * 'gcmvscpsParentIntValues'
--
-- * 'gcmvscpsParentDiscreteValues'
--
-- * 'gcmvscpsChildParameterSpecs'
--
-- * 'gcmvscpsDiscreteValueSpec'
--
-- * 'gcmvscpsScaleType'
--
-- * 'gcmvscpsIntegerValueSpec'
--
-- * 'gcmvscpsCategoricalValueSpec'
--
-- * 'gcmvscpsType'
--
-- * 'gcmvscpsParameter'
googleCloudMlV1_StudyConfig_ParameterSpec
    :: GoogleCloudMlV1_StudyConfig_ParameterSpec
googleCloudMlV1_StudyConfig_ParameterSpec =
  GoogleCloudMlV1_StudyConfig_ParameterSpec'
    { _gcmvscpsParentCategoricalValues = Nothing
    , _gcmvscpsDoubleValueSpec = Nothing
    , _gcmvscpsParentIntValues = Nothing
    , _gcmvscpsParentDiscreteValues = Nothing
    , _gcmvscpsChildParameterSpecs = Nothing
    , _gcmvscpsDiscreteValueSpec = Nothing
    , _gcmvscpsScaleType = Nothing
    , _gcmvscpsIntegerValueSpec = Nothing
    , _gcmvscpsCategoricalValueSpec = Nothing
    , _gcmvscpsType = Nothing
    , _gcmvscpsParameter = Nothing
    }


gcmvscpsParentCategoricalValues :: Lens' GoogleCloudMlV1_StudyConfig_ParameterSpec (Maybe GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentCategoricalValueSpec)
gcmvscpsParentCategoricalValues
  = lens _gcmvscpsParentCategoricalValues
      (\ s a -> s{_gcmvscpsParentCategoricalValues = a})

-- | The value spec for a \'DOUBLE\' parameter.
gcmvscpsDoubleValueSpec :: Lens' GoogleCloudMlV1_StudyConfig_ParameterSpec (Maybe GoogleCloudMlV1_StudyConfigParameterSpec_DoubleValueSpec)
gcmvscpsDoubleValueSpec
  = lens _gcmvscpsDoubleValueSpec
      (\ s a -> s{_gcmvscpsDoubleValueSpec = a})

gcmvscpsParentIntValues :: Lens' GoogleCloudMlV1_StudyConfig_ParameterSpec (Maybe GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentIntValueSpec)
gcmvscpsParentIntValues
  = lens _gcmvscpsParentIntValues
      (\ s a -> s{_gcmvscpsParentIntValues = a})

gcmvscpsParentDiscreteValues :: Lens' GoogleCloudMlV1_StudyConfig_ParameterSpec (Maybe GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentDiscreteValueSpec)
gcmvscpsParentDiscreteValues
  = lens _gcmvscpsParentDiscreteValues
      (\ s a -> s{_gcmvscpsParentDiscreteValues = a})

-- | A child node is active if the parameter\'s value matches the child
-- node\'s matching_parent_values. If two items in child_parameter_specs
-- have the same name, they must have disjoint matching_parent_values.
gcmvscpsChildParameterSpecs :: Lens' GoogleCloudMlV1_StudyConfig_ParameterSpec [GoogleCloudMlV1_StudyConfig_ParameterSpec]
gcmvscpsChildParameterSpecs
  = lens _gcmvscpsChildParameterSpecs
      (\ s a -> s{_gcmvscpsChildParameterSpecs = a})
      . _Default
      . _Coerce

-- | The value spec for a \'DISCRETE\' parameter.
gcmvscpsDiscreteValueSpec :: Lens' GoogleCloudMlV1_StudyConfig_ParameterSpec (Maybe GoogleCloudMlV1_StudyConfigParameterSpec_DiscreteValueSpec)
gcmvscpsDiscreteValueSpec
  = lens _gcmvscpsDiscreteValueSpec
      (\ s a -> s{_gcmvscpsDiscreteValueSpec = a})

-- | How the parameter should be scaled. Leave unset for categorical
-- parameters.
gcmvscpsScaleType :: Lens' GoogleCloudMlV1_StudyConfig_ParameterSpec (Maybe GoogleCloudMlV1_StudyConfig_ParameterSpecScaleType)
gcmvscpsScaleType
  = lens _gcmvscpsScaleType
      (\ s a -> s{_gcmvscpsScaleType = a})

-- | The value spec for an \'INTEGER\' parameter.
gcmvscpsIntegerValueSpec :: Lens' GoogleCloudMlV1_StudyConfig_ParameterSpec (Maybe GoogleCloudMlV1_StudyConfigParameterSpec_IntegerValueSpec)
gcmvscpsIntegerValueSpec
  = lens _gcmvscpsIntegerValueSpec
      (\ s a -> s{_gcmvscpsIntegerValueSpec = a})

-- | The value spec for a \'CATEGORICAL\' parameter.
gcmvscpsCategoricalValueSpec :: Lens' GoogleCloudMlV1_StudyConfig_ParameterSpec (Maybe GoogleCloudMlV1_StudyConfigParameterSpec_CategoricalValueSpec)
gcmvscpsCategoricalValueSpec
  = lens _gcmvscpsCategoricalValueSpec
      (\ s a -> s{_gcmvscpsCategoricalValueSpec = a})

-- | Required. The type of the parameter.
gcmvscpsType :: Lens' GoogleCloudMlV1_StudyConfig_ParameterSpec (Maybe GoogleCloudMlV1_StudyConfig_ParameterSpecType)
gcmvscpsType
  = lens _gcmvscpsType (\ s a -> s{_gcmvscpsType = a})

-- | Required. The parameter name must be unique amongst all ParameterSpecs.
gcmvscpsParameter :: Lens' GoogleCloudMlV1_StudyConfig_ParameterSpec (Maybe Text)
gcmvscpsParameter
  = lens _gcmvscpsParameter
      (\ s a -> s{_gcmvscpsParameter = a})

instance FromJSON
           GoogleCloudMlV1_StudyConfig_ParameterSpec
         where
        parseJSON
          = withObject
              "GoogleCloudMlV1StudyConfigParameterSpec"
              (\ o ->
                 GoogleCloudMlV1_StudyConfig_ParameterSpec' <$>
                   (o .:? "parentCategoricalValues") <*>
                     (o .:? "doubleValueSpec")
                     <*> (o .:? "parentIntValues")
                     <*> (o .:? "parentDiscreteValues")
                     <*> (o .:? "childParameterSpecs" .!= mempty)
                     <*> (o .:? "discreteValueSpec")
                     <*> (o .:? "scaleType")
                     <*> (o .:? "integerValueSpec")
                     <*> (o .:? "categoricalValueSpec")
                     <*> (o .:? "type")
                     <*> (o .:? "parameter"))

instance ToJSON
           GoogleCloudMlV1_StudyConfig_ParameterSpec
         where
        toJSON GoogleCloudMlV1_StudyConfig_ParameterSpec'{..}
          = object
              (catMaybes
                 [("parentCategoricalValues" .=) <$>
                    _gcmvscpsParentCategoricalValues,
                  ("doubleValueSpec" .=) <$> _gcmvscpsDoubleValueSpec,
                  ("parentIntValues" .=) <$> _gcmvscpsParentIntValues,
                  ("parentDiscreteValues" .=) <$>
                    _gcmvscpsParentDiscreteValues,
                  ("childParameterSpecs" .=) <$>
                    _gcmvscpsChildParameterSpecs,
                  ("discreteValueSpec" .=) <$>
                    _gcmvscpsDiscreteValueSpec,
                  ("scaleType" .=) <$> _gcmvscpsScaleType,
                  ("integerValueSpec" .=) <$>
                    _gcmvscpsIntegerValueSpec,
                  ("categoricalValueSpec" .=) <$>
                    _gcmvscpsCategoricalValueSpec,
                  ("type" .=) <$> _gcmvscpsType,
                  ("parameter" .=) <$> _gcmvscpsParameter])

--
-- /See:/ 'googleCloudMlV1_StudyConfigParameterSpec_IntegerValueSpec' smart constructor.
data GoogleCloudMlV1_StudyConfigParameterSpec_IntegerValueSpec =
  GoogleCloudMlV1_StudyConfigParameterSpec_IntegerValueSpec'
    { _gcmvscpsivsMaxValue :: !(Maybe (Textual Int64))
    , _gcmvscpsivsMinValue :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudMlV1_StudyConfigParameterSpec_IntegerValueSpec' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvscpsivsMaxValue'
--
-- * 'gcmvscpsivsMinValue'
googleCloudMlV1_StudyConfigParameterSpec_IntegerValueSpec
    :: GoogleCloudMlV1_StudyConfigParameterSpec_IntegerValueSpec
googleCloudMlV1_StudyConfigParameterSpec_IntegerValueSpec =
  GoogleCloudMlV1_StudyConfigParameterSpec_IntegerValueSpec'
    {_gcmvscpsivsMaxValue = Nothing, _gcmvscpsivsMinValue = Nothing}


-- | Must be specified if type is \`INTEGER\`. Maximum value of the
-- parameter.
gcmvscpsivsMaxValue :: Lens' GoogleCloudMlV1_StudyConfigParameterSpec_IntegerValueSpec (Maybe Int64)
gcmvscpsivsMaxValue
  = lens _gcmvscpsivsMaxValue
      (\ s a -> s{_gcmvscpsivsMaxValue = a})
      . mapping _Coerce

-- | Must be specified if type is \`INTEGER\`. Minimum value of the
-- parameter.
gcmvscpsivsMinValue :: Lens' GoogleCloudMlV1_StudyConfigParameterSpec_IntegerValueSpec (Maybe Int64)
gcmvscpsivsMinValue
  = lens _gcmvscpsivsMinValue
      (\ s a -> s{_gcmvscpsivsMinValue = a})
      . mapping _Coerce

instance FromJSON
           GoogleCloudMlV1_StudyConfigParameterSpec_IntegerValueSpec
         where
        parseJSON
          = withObject
              "GoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpec"
              (\ o ->
                 GoogleCloudMlV1_StudyConfigParameterSpec_IntegerValueSpec'
                   <$> (o .:? "maxValue") <*> (o .:? "minValue"))

instance ToJSON
           GoogleCloudMlV1_StudyConfigParameterSpec_IntegerValueSpec
         where
        toJSON
          GoogleCloudMlV1_StudyConfigParameterSpec_IntegerValueSpec'{..}
          = object
              (catMaybes
                 [("maxValue" .=) <$> _gcmvscpsivsMaxValue,
                  ("minValue" .=) <$> _gcmvscpsivsMinValue])

-- | Message holding configuration options for explaining model predictions.
-- There are three feature attribution methods supported for TensorFlow
-- models: integrated gradients, sampled Shapley, and XRAI. [Learn more
-- about feature
-- attributions.](\/ai-platform\/prediction\/docs\/ai-explanations\/overview)
--
-- /See:/ 'googleCloudMlV1__ExplanationConfig' smart constructor.
data GoogleCloudMlV1__ExplanationConfig =
  GoogleCloudMlV1__ExplanationConfig'
    { _gcmvecIntegratedGradientsAttribution :: !(Maybe GoogleCloudMlV1__IntegratedGradientsAttribution)
    , _gcmvecXraiAttribution :: !(Maybe GoogleCloudMlV1__XraiAttribution)
    , _gcmvecSampledShapleyAttribution :: !(Maybe GoogleCloudMlV1__SampledShapleyAttribution)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudMlV1__ExplanationConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvecIntegratedGradientsAttribution'
--
-- * 'gcmvecXraiAttribution'
--
-- * 'gcmvecSampledShapleyAttribution'
googleCloudMlV1__ExplanationConfig
    :: GoogleCloudMlV1__ExplanationConfig
googleCloudMlV1__ExplanationConfig =
  GoogleCloudMlV1__ExplanationConfig'
    { _gcmvecIntegratedGradientsAttribution = Nothing
    , _gcmvecXraiAttribution = Nothing
    , _gcmvecSampledShapleyAttribution = Nothing
    }


-- | Attributes credit by computing the Aumann-Shapley value taking advantage
-- of the model\'s fully differentiable structure. Refer to this paper for
-- more details: https:\/\/arxiv.org\/abs\/1703.01365
gcmvecIntegratedGradientsAttribution :: Lens' GoogleCloudMlV1__ExplanationConfig (Maybe GoogleCloudMlV1__IntegratedGradientsAttribution)
gcmvecIntegratedGradientsAttribution
  = lens _gcmvecIntegratedGradientsAttribution
      (\ s a ->
         s{_gcmvecIntegratedGradientsAttribution = a})

-- | Attributes credit by computing the XRAI taking advantage of the model\'s
-- fully differentiable structure. Refer to this paper for more details:
-- https:\/\/arxiv.org\/abs\/1906.02825 Currently only implemented for
-- models with natural image inputs.
gcmvecXraiAttribution :: Lens' GoogleCloudMlV1__ExplanationConfig (Maybe GoogleCloudMlV1__XraiAttribution)
gcmvecXraiAttribution
  = lens _gcmvecXraiAttribution
      (\ s a -> s{_gcmvecXraiAttribution = a})

-- | An attribution method that approximates Shapley values for features that
-- contribute to the label being predicted. A sampling strategy is used to
-- approximate the value rather than considering all subsets of features.
gcmvecSampledShapleyAttribution :: Lens' GoogleCloudMlV1__ExplanationConfig (Maybe GoogleCloudMlV1__SampledShapleyAttribution)
gcmvecSampledShapleyAttribution
  = lens _gcmvecSampledShapleyAttribution
      (\ s a -> s{_gcmvecSampledShapleyAttribution = a})

instance FromJSON GoogleCloudMlV1__ExplanationConfig
         where
        parseJSON
          = withObject "GoogleCloudMlV1ExplanationConfig"
              (\ o ->
                 GoogleCloudMlV1__ExplanationConfig' <$>
                   (o .:? "integratedGradientsAttribution") <*>
                     (o .:? "xraiAttribution")
                     <*> (o .:? "sampledShapleyAttribution"))

instance ToJSON GoogleCloudMlV1__ExplanationConfig
         where
        toJSON GoogleCloudMlV1__ExplanationConfig'{..}
          = object
              (catMaybes
                 [("integratedGradientsAttribution" .=) <$>
                    _gcmvecIntegratedGradientsAttribution,
                  ("xraiAttribution" .=) <$> _gcmvecXraiAttribution,
                  ("sampledShapleyAttribution" .=) <$>
                    _gcmvecSampledShapleyAttribution])

-- | MetricSpec contains the specifications to use to calculate the desired
-- nodes count when autoscaling is enabled.
--
-- /See:/ 'googleCloudMlV1__MetricSpec' smart constructor.
data GoogleCloudMlV1__MetricSpec =
  GoogleCloudMlV1__MetricSpec'
    { _gcmvmsName :: !(Maybe GoogleCloudMlV1__MetricSpecName)
    , _gcmvmsTarget :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudMlV1__MetricSpec' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvmsName'
--
-- * 'gcmvmsTarget'
googleCloudMlV1__MetricSpec
    :: GoogleCloudMlV1__MetricSpec
googleCloudMlV1__MetricSpec =
  GoogleCloudMlV1__MetricSpec' {_gcmvmsName = Nothing, _gcmvmsTarget = Nothing}


-- | metric name.
gcmvmsName :: Lens' GoogleCloudMlV1__MetricSpec (Maybe GoogleCloudMlV1__MetricSpecName)
gcmvmsName
  = lens _gcmvmsName (\ s a -> s{_gcmvmsName = a})

-- | Target specifies the target value for the given metric; once real metric
-- deviates from the threshold by a certain percentage, the node count
-- changes.
gcmvmsTarget :: Lens' GoogleCloudMlV1__MetricSpec (Maybe Int32)
gcmvmsTarget
  = lens _gcmvmsTarget (\ s a -> s{_gcmvmsTarget = a})
      . mapping _Coerce

instance FromJSON GoogleCloudMlV1__MetricSpec where
        parseJSON
          = withObject "GoogleCloudMlV1MetricSpec"
              (\ o ->
                 GoogleCloudMlV1__MetricSpec' <$>
                   (o .:? "name") <*> (o .:? "target"))

instance ToJSON GoogleCloudMlV1__MetricSpec where
        toJSON GoogleCloudMlV1__MetricSpec'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _gcmvmsName,
                  ("target" .=) <$> _gcmvmsTarget])

-- | Represents a single hyperparameter to optimize.
--
-- /See:/ 'googleCloudMlV1__ParameterSpec' smart constructor.
data GoogleCloudMlV1__ParameterSpec =
  GoogleCloudMlV1__ParameterSpec'
    { _gcmvpsMaxValue :: !(Maybe (Textual Double))
    , _gcmvpsScaleType :: !(Maybe GoogleCloudMlV1__ParameterSpecScaleType)
    , _gcmvpsType :: !(Maybe GoogleCloudMlV1__ParameterSpecType)
    , _gcmvpsDiscreteValues :: !(Maybe [Textual Double])
    , _gcmvpsParameterName :: !(Maybe Text)
    , _gcmvpsCategoricalValues :: !(Maybe [Text])
    , _gcmvpsMinValue :: !(Maybe (Textual Double))
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
    { _givbMembers :: !(Maybe [Text])
    , _givbRole :: !(Maybe Text)
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
-- \`alice\'example.com\` . * \`serviceAccount:{emailid}\`: An email
-- address that represents a service account. For example,
-- \`my-other-app\'appspot.gserviceaccount.com\`. * \`group:{emailid}\`: An
-- email address that represents a Google group. For example,
-- \`admins\'example.com\`. * \`deleted:user:{emailid}?uid={uniqueid}\`: An
-- email address (plus unique identifier) representing a user that has been
-- recently deleted. For example,
-- \`alice\'example.com?uid=123456789012345678901\`. If the user is
-- recovered, this value reverts to \`user:{emailid}\` and the recovered
-- user retains the role in the binding. *
-- \`deleted:serviceAccount:{emailid}?uid={uniqueid}\`: An email address
-- (plus unique identifier) representing a service account that has been
-- recently deleted. For example,
-- \`my-other-app\'appspot.gserviceaccount.com?uid=123456789012345678901\`.
-- If the service account is undeleted, this value reverts to
-- \`serviceAccount:{emailid}\` and the undeleted service account retains
-- the role in the binding. * \`deleted:group:{emailid}?uid={uniqueid}\`:
-- An email address (plus unique identifier) representing a Google group
-- that has been recently deleted. For example,
-- \`admins\'example.com?uid=123456789012345678901\`. If the group is
-- recovered, this value reverts to \`group:{emailid}\` and the recovered
-- group retains the role in the binding. * \`domain:{domain}\`: The G
-- Suite domain (primary) that represents all the users of that domain. For
-- example, \`google.com\` or \`example.com\`.
givbMembers :: Lens' GoogleIAMV1__Binding [Text]
givbMembers
  = lens _givbMembers (\ s a -> s{_givbMembers = a}) .
      _Default
      . _Coerce

-- | Role that is assigned to \`members\`. For example, \`roles\/viewer\`,
-- \`roles\/editor\`, or \`roles\/owner\`.
givbRole :: Lens' GoogleIAMV1__Binding (Maybe Text)
givbRole = lens _givbRole (\ s a -> s{_givbRole = a})

-- | The condition that is associated with this binding. If the condition
-- evaluates to \`true\`, then this binding applies to the current request.
-- If the condition evaluates to \`false\`, then this binding does not
-- apply to the current request. However, a different role binding might
-- grant the same role to one or more of the members in this binding. To
-- learn which resources support conditions in their IAM policies, see the
-- [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
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

-- | Represents the spec to match discrete values from parent parameter.
--
-- /See:/ 'googleCloudMlV1_StudyConfigParameterSpec_MatchingParentDiscreteValueSpec' smart constructor.
newtype GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentDiscreteValueSpec =
  GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentDiscreteValueSpec'
    { _gcmvscpsmpdvsValues :: Maybe [Textual Double]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentDiscreteValueSpec' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvscpsmpdvsValues'
googleCloudMlV1_StudyConfigParameterSpec_MatchingParentDiscreteValueSpec
    :: GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentDiscreteValueSpec
googleCloudMlV1_StudyConfigParameterSpec_MatchingParentDiscreteValueSpec =
  GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentDiscreteValueSpec'
    {_gcmvscpsmpdvsValues = Nothing}


-- | Matches values of the parent parameter with type \'DISCRETE\'. All
-- values must exist in \`discrete_value_spec\` of parent parameter.
gcmvscpsmpdvsValues :: Lens' GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentDiscreteValueSpec [Double]
gcmvscpsmpdvsValues
  = lens _gcmvscpsmpdvsValues
      (\ s a -> s{_gcmvscpsmpdvsValues = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentDiscreteValueSpec
         where
        parseJSON
          = withObject
              "GoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpec"
              (\ o ->
                 GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentDiscreteValueSpec'
                   <$> (o .:? "values" .!= mempty))

instance ToJSON
           GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentDiscreteValueSpec
         where
        toJSON
          GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentDiscreteValueSpec'{..}
          = object
              (catMaybes [("values" .=) <$> _gcmvscpsmpdvsValues])

-- | An observed value of a metric.
--
-- /See:/ 'googleCloudMlV1_HyperparameterOutput_HyperparameterMetric' smart constructor.
data GoogleCloudMlV1_HyperparameterOutput_HyperparameterMetric =
  GoogleCloudMlV1_HyperparameterOutput_HyperparameterMetric'
    { _gcmvhohmTrainingStep :: !(Maybe (Textual Int64))
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

--
-- /See:/ 'googleCloudMlV1__StopTrialRequest' smart constructor.
data GoogleCloudMlV1__StopTrialRequest =
  GoogleCloudMlV1__StopTrialRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudMlV1__StopTrialRequest' with the minimum fields required to make a request.
--
googleCloudMlV1__StopTrialRequest
    :: GoogleCloudMlV1__StopTrialRequest
googleCloudMlV1__StopTrialRequest = GoogleCloudMlV1__StopTrialRequest'


instance FromJSON GoogleCloudMlV1__StopTrialRequest
         where
        parseJSON
          = withObject "GoogleCloudMlV1StopTrialRequest"
              (\ o -> pure GoogleCloudMlV1__StopTrialRequest')

instance ToJSON GoogleCloudMlV1__StopTrialRequest
         where
        toJSON = const emptyObject

-- | Represents the spec to match integer values from parent parameter.
--
-- /See:/ 'googleCloudMlV1_StudyConfigParameterSpec_MatchingParentIntValueSpec' smart constructor.
newtype GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentIntValueSpec =
  GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentIntValueSpec'
    { _gcmvscpsmpivsValues :: Maybe [Textual Int64]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentIntValueSpec' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvscpsmpivsValues'
googleCloudMlV1_StudyConfigParameterSpec_MatchingParentIntValueSpec
    :: GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentIntValueSpec
googleCloudMlV1_StudyConfigParameterSpec_MatchingParentIntValueSpec =
  GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentIntValueSpec'
    {_gcmvscpsmpivsValues = Nothing}


-- | Matches values of the parent parameter with type \'INTEGER\'. All values
-- must lie in \`integer_value_spec\` of parent parameter.
gcmvscpsmpivsValues :: Lens' GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentIntValueSpec [Int64]
gcmvscpsmpivsValues
  = lens _gcmvscpsmpivsValues
      (\ s a -> s{_gcmvscpsmpivsValues = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentIntValueSpec
         where
        parseJSON
          = withObject
              "GoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpec"
              (\ o ->
                 GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentIntValueSpec'
                   <$> (o .:? "values" .!= mempty))

instance ToJSON
           GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentIntValueSpec
         where
        toJSON
          GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentIntValueSpec'{..}
          = object
              (catMaybes [("values" .=) <$> _gcmvscpsmpivsValues])

-- | A message representing a parameter to be tuned. Contains the name of the
-- parameter and the suggested value to use for this trial.
--
-- /See:/ 'googleCloudMlV1_Trial_Parameter' smart constructor.
data GoogleCloudMlV1_Trial_Parameter =
  GoogleCloudMlV1_Trial_Parameter'
    { _gcmvtpIntValue :: !(Maybe (Textual Int64))
    , _gcmvtpStringValue :: !(Maybe Text)
    , _gcmvtpFloatValue :: !(Maybe (Textual Double))
    , _gcmvtpParameter :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudMlV1_Trial_Parameter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvtpIntValue'
--
-- * 'gcmvtpStringValue'
--
-- * 'gcmvtpFloatValue'
--
-- * 'gcmvtpParameter'
googleCloudMlV1_Trial_Parameter
    :: GoogleCloudMlV1_Trial_Parameter
googleCloudMlV1_Trial_Parameter =
  GoogleCloudMlV1_Trial_Parameter'
    { _gcmvtpIntValue = Nothing
    , _gcmvtpStringValue = Nothing
    , _gcmvtpFloatValue = Nothing
    , _gcmvtpParameter = Nothing
    }


-- | Must be set if ParameterType is INTEGER
gcmvtpIntValue :: Lens' GoogleCloudMlV1_Trial_Parameter (Maybe Int64)
gcmvtpIntValue
  = lens _gcmvtpIntValue
      (\ s a -> s{_gcmvtpIntValue = a})
      . mapping _Coerce

-- | Must be set if ParameterTypeis CATEGORICAL
gcmvtpStringValue :: Lens' GoogleCloudMlV1_Trial_Parameter (Maybe Text)
gcmvtpStringValue
  = lens _gcmvtpStringValue
      (\ s a -> s{_gcmvtpStringValue = a})

-- | Must be set if ParameterType is DOUBLE or DISCRETE.
gcmvtpFloatValue :: Lens' GoogleCloudMlV1_Trial_Parameter (Maybe Double)
gcmvtpFloatValue
  = lens _gcmvtpFloatValue
      (\ s a -> s{_gcmvtpFloatValue = a})
      . mapping _Coerce

-- | The name of the parameter.
gcmvtpParameter :: Lens' GoogleCloudMlV1_Trial_Parameter (Maybe Text)
gcmvtpParameter
  = lens _gcmvtpParameter
      (\ s a -> s{_gcmvtpParameter = a})

instance FromJSON GoogleCloudMlV1_Trial_Parameter
         where
        parseJSON
          = withObject "GoogleCloudMlV1TrialParameter"
              (\ o ->
                 GoogleCloudMlV1_Trial_Parameter' <$>
                   (o .:? "intValue") <*> (o .:? "stringValue") <*>
                     (o .:? "floatValue")
                     <*> (o .:? "parameter"))

instance ToJSON GoogleCloudMlV1_Trial_Parameter where
        toJSON GoogleCloudMlV1_Trial_Parameter'{..}
          = object
              (catMaybes
                 [("intValue" .=) <$> _gcmvtpIntValue,
                  ("stringValue" .=) <$> _gcmvtpStringValue,
                  ("floatValue" .=) <$> _gcmvtpFloatValue,
                  ("parameter" .=) <$> _gcmvtpParameter])

-- | Request message for \`SetIamPolicy\` method.
--
-- /See:/ 'googleIAMV1__SetIAMPolicyRequest' smart constructor.
data GoogleIAMV1__SetIAMPolicyRequest =
  GoogleIAMV1__SetIAMPolicyRequest'
    { _givsiprUpdateMask :: !(Maybe GFieldMask)
    , _givsiprPolicy :: !(Maybe GoogleIAMV1__Policy)
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
-- the following default mask is used: \`paths: \"bindings, etag\"\`
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

-- | Represents input parameters for a prediction job.
--
-- /See:/ 'googleCloudMlV1__PredictionInput' smart constructor.
data GoogleCloudMlV1__PredictionInput =
  GoogleCloudMlV1__PredictionInput'
    { _gcmvpiVersionName :: !(Maybe Text)
    , _gcmvpiModelName :: !(Maybe Text)
    , _gcmvpiDataFormat :: !(Maybe GoogleCloudMlV1__PredictionInputDataFormat)
    , _gcmvpiURI :: !(Maybe Text)
    , _gcmvpiRuntimeVersion :: !(Maybe Text)
    , _gcmvpiBatchSize :: !(Maybe (Textual Int64))
    , _gcmvpiMaxWorkerCount :: !(Maybe (Textual Int64))
    , _gcmvpiOutputDataFormat :: !(Maybe GoogleCloudMlV1__PredictionInputOutputDataFormat)
    , _gcmvpiOutputPath :: !(Maybe Text)
    , _gcmvpiRegion :: !(Maybe Text)
    , _gcmvpiInputPaths :: !(Maybe [Text])
    , _gcmvpiSignatureName :: !(Maybe Text)
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

-- | Optional. The AI Platform runtime version to use for this batch
-- prediction. If not set, AI Platform will pick the runtime version used
-- during the CreateVersion request for this model version, or choose the
-- latest stable version when model version information is not available
-- such as when the model is specified by uri.
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

-- | Required. The output Google Cloud Storage location.
gcmvpiOutputPath :: Lens' GoogleCloudMlV1__PredictionInput (Maybe Text)
gcmvpiOutputPath
  = lens _gcmvpiOutputPath
      (\ s a -> s{_gcmvpiOutputPath = a})

-- | Required. The Google Compute Engine region to run the prediction job in.
-- See the available regions for AI Platform services.
gcmvpiRegion :: Lens' GoogleCloudMlV1__PredictionInput (Maybe Text)
gcmvpiRegion
  = lens _gcmvpiRegion (\ s a -> s{_gcmvpiRegion = a})

-- | Required. The Cloud Storage location of the input data files. May
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
                  ("outputPath" .=) <$> _gcmvpiOutputPath,
                  ("region" .=) <$> _gcmvpiRegion,
                  ("inputPaths" .=) <$> _gcmvpiInputPaths,
                  ("signatureName" .=) <$> _gcmvpiSignatureName])

-- | Attributes credit by computing the Aumann-Shapley value taking advantage
-- of the model\'s fully differentiable structure. Refer to this paper for
-- more details: https:\/\/arxiv.org\/abs\/1703.01365
--
-- /See:/ 'googleCloudMlV1__IntegratedGradientsAttribution' smart constructor.
newtype GoogleCloudMlV1__IntegratedGradientsAttribution =
  GoogleCloudMlV1__IntegratedGradientsAttribution'
    { _gcmvigaNumIntegralSteps :: Maybe (Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudMlV1__IntegratedGradientsAttribution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvigaNumIntegralSteps'
googleCloudMlV1__IntegratedGradientsAttribution
    :: GoogleCloudMlV1__IntegratedGradientsAttribution
googleCloudMlV1__IntegratedGradientsAttribution =
  GoogleCloudMlV1__IntegratedGradientsAttribution'
    {_gcmvigaNumIntegralSteps = Nothing}


-- | Number of steps for approximating the path integral. A good value to
-- start is 50 and gradually increase until the sum to diff property is met
-- within the desired error range.
gcmvigaNumIntegralSteps :: Lens' GoogleCloudMlV1__IntegratedGradientsAttribution (Maybe Int32)
gcmvigaNumIntegralSteps
  = lens _gcmvigaNumIntegralSteps
      (\ s a -> s{_gcmvigaNumIntegralSteps = a})
      . mapping _Coerce

instance FromJSON
           GoogleCloudMlV1__IntegratedGradientsAttribution
         where
        parseJSON
          = withObject
              "GoogleCloudMlV1IntegratedGradientsAttribution"
              (\ o ->
                 GoogleCloudMlV1__IntegratedGradientsAttribution' <$>
                   (o .:? "numIntegralSteps"))

instance ToJSON
           GoogleCloudMlV1__IntegratedGradientsAttribution
         where
        toJSON
          GoogleCloudMlV1__IntegratedGradientsAttribution'{..}
          = object
              (catMaybes
                 [("numIntegralSteps" .=) <$>
                    _gcmvigaNumIntegralSteps])

-- | Output only. The web URIs for the training job. Currently for debug
-- terminal access to the job.
--
-- /See:/ 'googleCloudMlV1__TrainingOutputWebAccessURIs' smart constructor.
newtype GoogleCloudMlV1__TrainingOutputWebAccessURIs =
  GoogleCloudMlV1__TrainingOutputWebAccessURIs'
    { _gcmvtowauAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudMlV1__TrainingOutputWebAccessURIs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvtowauAddtional'
googleCloudMlV1__TrainingOutputWebAccessURIs
    :: HashMap Text Text -- ^ 'gcmvtowauAddtional'
    -> GoogleCloudMlV1__TrainingOutputWebAccessURIs
googleCloudMlV1__TrainingOutputWebAccessURIs pGcmvtowauAddtional_ =
  GoogleCloudMlV1__TrainingOutputWebAccessURIs'
    {_gcmvtowauAddtional = _Coerce # pGcmvtowauAddtional_}


gcmvtowauAddtional :: Lens' GoogleCloudMlV1__TrainingOutputWebAccessURIs (HashMap Text Text)
gcmvtowauAddtional
  = lens _gcmvtowauAddtional
      (\ s a -> s{_gcmvtowauAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudMlV1__TrainingOutputWebAccessURIs
         where
        parseJSON
          = withObject
              "GoogleCloudMlV1TrainingOutputWebAccessURIs"
              (\ o ->
                 GoogleCloudMlV1__TrainingOutputWebAccessURIs' <$>
                   (parseJSONObject o))

instance ToJSON
           GoogleCloudMlV1__TrainingOutputWebAccessURIs
         where
        toJSON = toJSON . _gcmvtowauAddtional

-- | Represents a network port in a single container. This message is a
-- subset of the [Kubernetes ContainerPort v1 core
-- specification](https:\/\/kubernetes.io\/docs\/reference\/generated\/kubernetes-api\/v1.18\/#containerport-v1-core).
--
-- /See:/ 'googleCloudMlV1__ContainerPort' smart constructor.
newtype GoogleCloudMlV1__ContainerPort =
  GoogleCloudMlV1__ContainerPort'
    { _gcmvcpContainerPort :: Maybe (Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudMlV1__ContainerPort' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvcpContainerPort'
googleCloudMlV1__ContainerPort
    :: GoogleCloudMlV1__ContainerPort
googleCloudMlV1__ContainerPort =
  GoogleCloudMlV1__ContainerPort' {_gcmvcpContainerPort = Nothing}


-- | Number of the port to expose on the container. This must be a valid port
-- number: 0 \< PORT_NUMBER \< 65536.
gcmvcpContainerPort :: Lens' GoogleCloudMlV1__ContainerPort (Maybe Int32)
gcmvcpContainerPort
  = lens _gcmvcpContainerPort
      (\ s a -> s{_gcmvcpContainerPort = a})
      . mapping _Coerce

instance FromJSON GoogleCloudMlV1__ContainerPort
         where
        parseJSON
          = withObject "GoogleCloudMlV1ContainerPort"
              (\ o ->
                 GoogleCloudMlV1__ContainerPort' <$>
                   (o .:? "containerPort"))

instance ToJSON GoogleCloudMlV1__ContainerPort where
        toJSON GoogleCloudMlV1__ContainerPort'{..}
          = object
              (catMaybes
                 [("containerPort" .=) <$> _gcmvcpContainerPort])

-- | Represents input parameters for a training job. When using the gcloud
-- command to submit your training job, you can specify the input
-- parameters as command-line arguments and\/or in a YAML configuration
-- file referenced from the --config command-line argument. For details,
-- see the guide to [submitting a training
-- job](\/ai-platform\/training\/docs\/training-jobs).
--
-- /See:/ 'googleCloudMlV1__TrainingInput' smart constructor.
data GoogleCloudMlV1__TrainingInput =
  GoogleCloudMlV1__TrainingInput'
    { _gcmvtiMasterType :: !(Maybe Text)
    , _gcmvtiWorkerConfig :: !(Maybe GoogleCloudMlV1__ReplicaConfig)
    , _gcmvtiParameterServerCount :: !(Maybe (Textual Int64))
    , _gcmvtiArgs :: !(Maybe [Text])
    , _gcmvtiEnableWebAccess :: !(Maybe Bool)
    , _gcmvtiUseChiefInTfConfig :: !(Maybe Bool)
    , _gcmvtiWorkerCount :: !(Maybe (Textual Int64))
    , _gcmvtiJobDir :: !(Maybe Text)
    , _gcmvtiEvaluatorCount :: !(Maybe (Textual Int64))
    , _gcmvtiEvaluatorType :: !(Maybe Text)
    , _gcmvtiNetwork :: !(Maybe Text)
    , _gcmvtiPythonVersion :: !(Maybe Text)
    , _gcmvtiRuntimeVersion :: !(Maybe Text)
    , _gcmvtiWorkerType :: !(Maybe Text)
    , _gcmvtiMasterConfig :: !(Maybe GoogleCloudMlV1__ReplicaConfig)
    , _gcmvtiPythonModule :: !(Maybe Text)
    , _gcmvtiParameterServerType :: !(Maybe Text)
    , _gcmvtiServiceAccount :: !(Maybe Text)
    , _gcmvtiHyperparameters :: !(Maybe GoogleCloudMlV1__HyperparameterSpec)
    , _gcmvtiPackageURIs :: !(Maybe [Text])
    , _gcmvtiScaleTier :: !(Maybe GoogleCloudMlV1__TrainingInputScaleTier)
    , _gcmvtiEncryptionConfig :: !(Maybe GoogleCloudMlV1__EncryptionConfig)
    , _gcmvtiRegion :: !(Maybe Text)
    , _gcmvtiScheduling :: !(Maybe GoogleCloudMlV1__Scheduling)
    , _gcmvtiParameterServerConfig :: !(Maybe GoogleCloudMlV1__ReplicaConfig)
    , _gcmvtiEvaluatorConfig :: !(Maybe GoogleCloudMlV1__ReplicaConfig)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudMlV1__TrainingInput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvtiMasterType'
--
-- * 'gcmvtiWorkerConfig'
--
-- * 'gcmvtiParameterServerCount'
--
-- * 'gcmvtiArgs'
--
-- * 'gcmvtiEnableWebAccess'
--
-- * 'gcmvtiUseChiefInTfConfig'
--
-- * 'gcmvtiWorkerCount'
--
-- * 'gcmvtiJobDir'
--
-- * 'gcmvtiEvaluatorCount'
--
-- * 'gcmvtiEvaluatorType'
--
-- * 'gcmvtiNetwork'
--
-- * 'gcmvtiPythonVersion'
--
-- * 'gcmvtiRuntimeVersion'
--
-- * 'gcmvtiWorkerType'
--
-- * 'gcmvtiMasterConfig'
--
-- * 'gcmvtiPythonModule'
--
-- * 'gcmvtiParameterServerType'
--
-- * 'gcmvtiServiceAccount'
--
-- * 'gcmvtiHyperparameters'
--
-- * 'gcmvtiPackageURIs'
--
-- * 'gcmvtiScaleTier'
--
-- * 'gcmvtiEncryptionConfig'
--
-- * 'gcmvtiRegion'
--
-- * 'gcmvtiScheduling'
--
-- * 'gcmvtiParameterServerConfig'
--
-- * 'gcmvtiEvaluatorConfig'
googleCloudMlV1__TrainingInput
    :: GoogleCloudMlV1__TrainingInput
googleCloudMlV1__TrainingInput =
  GoogleCloudMlV1__TrainingInput'
    { _gcmvtiMasterType = Nothing
    , _gcmvtiWorkerConfig = Nothing
    , _gcmvtiParameterServerCount = Nothing
    , _gcmvtiArgs = Nothing
    , _gcmvtiEnableWebAccess = Nothing
    , _gcmvtiUseChiefInTfConfig = Nothing
    , _gcmvtiWorkerCount = Nothing
    , _gcmvtiJobDir = Nothing
    , _gcmvtiEvaluatorCount = Nothing
    , _gcmvtiEvaluatorType = Nothing
    , _gcmvtiNetwork = Nothing
    , _gcmvtiPythonVersion = Nothing
    , _gcmvtiRuntimeVersion = Nothing
    , _gcmvtiWorkerType = Nothing
    , _gcmvtiMasterConfig = Nothing
    , _gcmvtiPythonModule = Nothing
    , _gcmvtiParameterServerType = Nothing
    , _gcmvtiServiceAccount = Nothing
    , _gcmvtiHyperparameters = Nothing
    , _gcmvtiPackageURIs = Nothing
    , _gcmvtiScaleTier = Nothing
    , _gcmvtiEncryptionConfig = Nothing
    , _gcmvtiRegion = Nothing
    , _gcmvtiScheduling = Nothing
    , _gcmvtiParameterServerConfig = Nothing
    , _gcmvtiEvaluatorConfig = Nothing
    }


-- | Optional. Specifies the type of virtual machine to use for your training
-- job\'s master worker. You must specify this field when \`scaleTier\` is
-- set to \`CUSTOM\`. You can use certain Compute Engine machine types
-- directly in this field. See the [list of compatible Compute Engine
-- machine
-- types](\/ai-platform\/training\/docs\/machine-types#compute-engine-machine-types).
-- Alternatively, you can use the certain legacy machine types in this
-- field. See the [list of legacy machine
-- types](\/ai-platform\/training\/docs\/machine-types#legacy-machine-types).
-- Finally, if you want to use a TPU for training, specify \`cloud_tpu\` in
-- this field. Learn more about the [special configuration options for
-- training with
-- TPUs](\/ai-platform\/training\/docs\/using-tpus#configuring_a_custom_tpu_machine).
gcmvtiMasterType :: Lens' GoogleCloudMlV1__TrainingInput (Maybe Text)
gcmvtiMasterType
  = lens _gcmvtiMasterType
      (\ s a -> s{_gcmvtiMasterType = a})

-- | Optional. The configuration for workers. You should only set
-- \`workerConfig.acceleratorConfig\` if \`workerType\` is set to a Compute
-- Engine machine type. [Learn about restrictions on accelerator
-- configurations for
-- training.](\/ai-platform\/training\/docs\/using-gpus#compute-engine-machine-types-with-gpu)
-- Set \`workerConfig.imageUri\` only if you build a custom image for your
-- worker. If \`workerConfig.imageUri\` has not been set, AI Platform uses
-- the value of \`masterConfig.imageUri\`. Learn more about [configuring
-- custom
-- containers](\/ai-platform\/training\/docs\/distributed-training-containers).
gcmvtiWorkerConfig :: Lens' GoogleCloudMlV1__TrainingInput (Maybe GoogleCloudMlV1__ReplicaConfig)
gcmvtiWorkerConfig
  = lens _gcmvtiWorkerConfig
      (\ s a -> s{_gcmvtiWorkerConfig = a})

-- | Optional. The number of parameter server replicas to use for the
-- training job. Each replica in the cluster will be of the type specified
-- in \`parameter_server_type\`. This value can only be used when
-- \`scale_tier\` is set to \`CUSTOM\`. If you set this value, you must
-- also set \`parameter_server_type\`. The default value is zero.
gcmvtiParameterServerCount :: Lens' GoogleCloudMlV1__TrainingInput (Maybe Int64)
gcmvtiParameterServerCount
  = lens _gcmvtiParameterServerCount
      (\ s a -> s{_gcmvtiParameterServerCount = a})
      . mapping _Coerce

-- | Optional. Command-line arguments passed to the training application when
-- it starts. If your job uses a custom container, then the arguments are
-- passed to the container\'s \`ENTRYPOINT\` command.
gcmvtiArgs :: Lens' GoogleCloudMlV1__TrainingInput [Text]
gcmvtiArgs
  = lens _gcmvtiArgs (\ s a -> s{_gcmvtiArgs = a}) .
      _Default
      . _Coerce

-- | Optional. Whether to enable web access for the training job.
gcmvtiEnableWebAccess :: Lens' GoogleCloudMlV1__TrainingInput (Maybe Bool)
gcmvtiEnableWebAccess
  = lens _gcmvtiEnableWebAccess
      (\ s a -> s{_gcmvtiEnableWebAccess = a})

-- | Optional. Use \`chief\` instead of \`master\` in the \`TF_CONFIG\`
-- environment variable when training with a custom container. Defaults to
-- \`false\`. [Learn more about this
-- field.](\/ai-platform\/training\/docs\/distributed-training-details#chief-versus-master)
-- This field has no effect for training jobs that don\'t use a custom
-- container.
gcmvtiUseChiefInTfConfig :: Lens' GoogleCloudMlV1__TrainingInput (Maybe Bool)
gcmvtiUseChiefInTfConfig
  = lens _gcmvtiUseChiefInTfConfig
      (\ s a -> s{_gcmvtiUseChiefInTfConfig = a})

-- | Optional. The number of worker replicas to use for the training job.
-- Each replica in the cluster will be of the type specified in
-- \`worker_type\`. This value can only be used when \`scale_tier\` is set
-- to \`CUSTOM\`. If you set this value, you must also set \`worker_type\`.
-- The default value is zero.
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

-- | Optional. The number of evaluator replicas to use for the training job.
-- Each replica in the cluster will be of the type specified in
-- \`evaluator_type\`. This value can only be used when \`scale_tier\` is
-- set to \`CUSTOM\`. If you set this value, you must also set
-- \`evaluator_type\`. The default value is zero.
gcmvtiEvaluatorCount :: Lens' GoogleCloudMlV1__TrainingInput (Maybe Int64)
gcmvtiEvaluatorCount
  = lens _gcmvtiEvaluatorCount
      (\ s a -> s{_gcmvtiEvaluatorCount = a})
      . mapping _Coerce

-- | Optional. Specifies the type of virtual machine to use for your training
-- job\'s evaluator nodes. The supported values are the same as those
-- described in the entry for \`masterType\`. This value must be consistent
-- with the category of machine type that \`masterType\` uses. In other
-- words, both must be Compute Engine machine types or both must be legacy
-- machine types. This value must be present when \`scaleTier\` is set to
-- \`CUSTOM\` and \`evaluatorCount\` is greater than zero.
gcmvtiEvaluatorType :: Lens' GoogleCloudMlV1__TrainingInput (Maybe Text)
gcmvtiEvaluatorType
  = lens _gcmvtiEvaluatorType
      (\ s a -> s{_gcmvtiEvaluatorType = a})

-- | Optional. The full name of the [Compute Engine
-- network](\/vpc\/docs\/vpc) to which the Job is peered. For example,
-- \`projects\/12345\/global\/networks\/myVPC\`. The format of this field
-- is \`projects\/{project}\/global\/networks\/{network}\`, where {project}
-- is a project number (like \`12345\`) and {network} is network name.
-- Private services access must already be configured for the network. If
-- left unspecified, the Job is not peered with any network. [Learn about
-- using VPC Network Peering.](\/ai-platform\/training\/docs\/vpc-peering).
gcmvtiNetwork :: Lens' GoogleCloudMlV1__TrainingInput (Maybe Text)
gcmvtiNetwork
  = lens _gcmvtiNetwork
      (\ s a -> s{_gcmvtiNetwork = a})

-- | Optional. The version of Python used in training. You must either
-- specify this field or specify \`masterConfig.imageUri\`. The following
-- Python versions are available: * Python \'3.7\' is available when
-- \`runtime_version\` is set to \'1.15\' or later. * Python \'3.5\' is
-- available when \`runtime_version\` is set to a version from \'1.4\' to
-- \'1.14\'. * Python \'2.7\' is available when \`runtime_version\` is set
-- to \'1.15\' or earlier. Read more about the Python versions available
-- for [each runtime version](\/ml-engine\/docs\/runtime-version-list).
gcmvtiPythonVersion :: Lens' GoogleCloudMlV1__TrainingInput (Maybe Text)
gcmvtiPythonVersion
  = lens _gcmvtiPythonVersion
      (\ s a -> s{_gcmvtiPythonVersion = a})

-- | Optional. The AI Platform runtime version to use for training. You must
-- either specify this field or specify \`masterConfig.imageUri\`. For more
-- information, see the [runtime version
-- list](\/ai-platform\/training\/docs\/runtime-version-list) and learn
-- [how to manage runtime
-- versions](\/ai-platform\/training\/docs\/versioning).
gcmvtiRuntimeVersion :: Lens' GoogleCloudMlV1__TrainingInput (Maybe Text)
gcmvtiRuntimeVersion
  = lens _gcmvtiRuntimeVersion
      (\ s a -> s{_gcmvtiRuntimeVersion = a})

-- | Optional. Specifies the type of virtual machine to use for your training
-- job\'s worker nodes. The supported values are the same as those
-- described in the entry for \`masterType\`. This value must be consistent
-- with the category of machine type that \`masterType\` uses. In other
-- words, both must be Compute Engine machine types or both must be legacy
-- machine types. If you use \`cloud_tpu\` for this value, see special
-- instructions for [configuring a custom TPU
-- machine](\/ml-engine\/docs\/tensorflow\/using-tpus#configuring_a_custom_tpu_machine).
-- This value must be present when \`scaleTier\` is set to \`CUSTOM\` and
-- \`workerCount\` is greater than zero.
gcmvtiWorkerType :: Lens' GoogleCloudMlV1__TrainingInput (Maybe Text)
gcmvtiWorkerType
  = lens _gcmvtiWorkerType
      (\ s a -> s{_gcmvtiWorkerType = a})

-- | Optional. The configuration for your master worker. You should only set
-- \`masterConfig.acceleratorConfig\` if \`masterType\` is set to a Compute
-- Engine machine type. Learn about [restrictions on accelerator
-- configurations for
-- training.](\/ai-platform\/training\/docs\/using-gpus#compute-engine-machine-types-with-gpu)
-- Set \`masterConfig.imageUri\` only if you build a custom image. Only one
-- of \`masterConfig.imageUri\` and \`runtimeVersion\` should be set. Learn
-- more about [configuring custom
-- containers](\/ai-platform\/training\/docs\/distributed-training-containers).
gcmvtiMasterConfig :: Lens' GoogleCloudMlV1__TrainingInput (Maybe GoogleCloudMlV1__ReplicaConfig)
gcmvtiMasterConfig
  = lens _gcmvtiMasterConfig
      (\ s a -> s{_gcmvtiMasterConfig = a})

-- | Required. The Python module name to run after installing the packages.
gcmvtiPythonModule :: Lens' GoogleCloudMlV1__TrainingInput (Maybe Text)
gcmvtiPythonModule
  = lens _gcmvtiPythonModule
      (\ s a -> s{_gcmvtiPythonModule = a})

-- | Optional. Specifies the type of virtual machine to use for your training
-- job\'s parameter server. The supported values are the same as those
-- described in the entry for \`master_type\`. This value must be
-- consistent with the category of machine type that \`masterType\` uses.
-- In other words, both must be Compute Engine machine types or both must
-- be legacy machine types. This value must be present when \`scaleTier\`
-- is set to \`CUSTOM\` and \`parameter_server_count\` is greater than
-- zero.
gcmvtiParameterServerType :: Lens' GoogleCloudMlV1__TrainingInput (Maybe Text)
gcmvtiParameterServerType
  = lens _gcmvtiParameterServerType
      (\ s a -> s{_gcmvtiParameterServerType = a})

-- | Optional. The email address of a service account to use when running the
-- training appplication. You must have the \`iam.serviceAccounts.actAs\`
-- permission for the specified service account. In addition, the AI
-- Platform Training Google-managed service account must have the
-- \`roles\/iam.serviceAccountAdmin\` role for the specified service
-- account. [Learn more about configuring a service
-- account.](\/ai-platform\/training\/docs\/custom-service-account) If not
-- specified, the AI Platform Training Google-managed service account is
-- used by default.
gcmvtiServiceAccount :: Lens' GoogleCloudMlV1__TrainingInput (Maybe Text)
gcmvtiServiceAccount
  = lens _gcmvtiServiceAccount
      (\ s a -> s{_gcmvtiServiceAccount = a})

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

-- | Optional. Options for using customer-managed encryption keys (CMEK) to
-- protect resources created by a training job, instead of using Google\'s
-- default encryption. If this is set, then all resources created by the
-- training job will be encrypted with the customer-managed encryption key
-- that you specify. [Learn how and when to use CMEK with AI Platform
-- Training](\/ai-platform\/training\/docs\/cmek).
gcmvtiEncryptionConfig :: Lens' GoogleCloudMlV1__TrainingInput (Maybe GoogleCloudMlV1__EncryptionConfig)
gcmvtiEncryptionConfig
  = lens _gcmvtiEncryptionConfig
      (\ s a -> s{_gcmvtiEncryptionConfig = a})

-- | Required. The region to run the training job in. See the [available
-- regions](\/ai-platform\/training\/docs\/regions) for AI Platform
-- Training.
gcmvtiRegion :: Lens' GoogleCloudMlV1__TrainingInput (Maybe Text)
gcmvtiRegion
  = lens _gcmvtiRegion (\ s a -> s{_gcmvtiRegion = a})

-- | Optional. Scheduling options for a training job.
gcmvtiScheduling :: Lens' GoogleCloudMlV1__TrainingInput (Maybe GoogleCloudMlV1__Scheduling)
gcmvtiScheduling
  = lens _gcmvtiScheduling
      (\ s a -> s{_gcmvtiScheduling = a})

-- | Optional. The configuration for parameter servers. You should only set
-- \`parameterServerConfig.acceleratorConfig\` if \`parameterServerType\`
-- is set to a Compute Engine machine type. [Learn about restrictions on
-- accelerator configurations for
-- training.](\/ai-platform\/training\/docs\/using-gpus#compute-engine-machine-types-with-gpu)
-- Set \`parameterServerConfig.imageUri\` only if you build a custom image
-- for your parameter server. If \`parameterServerConfig.imageUri\` has not
-- been set, AI Platform uses the value of \`masterConfig.imageUri\`. Learn
-- more about [configuring custom
-- containers](\/ai-platform\/training\/docs\/distributed-training-containers).
gcmvtiParameterServerConfig :: Lens' GoogleCloudMlV1__TrainingInput (Maybe GoogleCloudMlV1__ReplicaConfig)
gcmvtiParameterServerConfig
  = lens _gcmvtiParameterServerConfig
      (\ s a -> s{_gcmvtiParameterServerConfig = a})

-- | Optional. The configuration for evaluators. You should only set
-- \`evaluatorConfig.acceleratorConfig\` if \`evaluatorType\` is set to a
-- Compute Engine machine type. [Learn about restrictions on accelerator
-- configurations for
-- training.](\/ai-platform\/training\/docs\/using-gpus#compute-engine-machine-types-with-gpu)
-- Set \`evaluatorConfig.imageUri\` only if you build a custom image for
-- your evaluator. If \`evaluatorConfig.imageUri\` has not been set, AI
-- Platform uses the value of \`masterConfig.imageUri\`. Learn more about
-- [configuring custom
-- containers](\/ai-platform\/training\/docs\/distributed-training-containers).
gcmvtiEvaluatorConfig :: Lens' GoogleCloudMlV1__TrainingInput (Maybe GoogleCloudMlV1__ReplicaConfig)
gcmvtiEvaluatorConfig
  = lens _gcmvtiEvaluatorConfig
      (\ s a -> s{_gcmvtiEvaluatorConfig = a})

instance FromJSON GoogleCloudMlV1__TrainingInput
         where
        parseJSON
          = withObject "GoogleCloudMlV1TrainingInput"
              (\ o ->
                 GoogleCloudMlV1__TrainingInput' <$>
                   (o .:? "masterType") <*> (o .:? "workerConfig") <*>
                     (o .:? "parameterServerCount")
                     <*> (o .:? "args" .!= mempty)
                     <*> (o .:? "enableWebAccess")
                     <*> (o .:? "useChiefInTfConfig")
                     <*> (o .:? "workerCount")
                     <*> (o .:? "jobDir")
                     <*> (o .:? "evaluatorCount")
                     <*> (o .:? "evaluatorType")
                     <*> (o .:? "network")
                     <*> (o .:? "pythonVersion")
                     <*> (o .:? "runtimeVersion")
                     <*> (o .:? "workerType")
                     <*> (o .:? "masterConfig")
                     <*> (o .:? "pythonModule")
                     <*> (o .:? "parameterServerType")
                     <*> (o .:? "serviceAccount")
                     <*> (o .:? "hyperparameters")
                     <*> (o .:? "packageUris" .!= mempty)
                     <*> (o .:? "scaleTier")
                     <*> (o .:? "encryptionConfig")
                     <*> (o .:? "region")
                     <*> (o .:? "scheduling")
                     <*> (o .:? "parameterServerConfig")
                     <*> (o .:? "evaluatorConfig"))

instance ToJSON GoogleCloudMlV1__TrainingInput where
        toJSON GoogleCloudMlV1__TrainingInput'{..}
          = object
              (catMaybes
                 [("masterType" .=) <$> _gcmvtiMasterType,
                  ("workerConfig" .=) <$> _gcmvtiWorkerConfig,
                  ("parameterServerCount" .=) <$>
                    _gcmvtiParameterServerCount,
                  ("args" .=) <$> _gcmvtiArgs,
                  ("enableWebAccess" .=) <$> _gcmvtiEnableWebAccess,
                  ("useChiefInTfConfig" .=) <$>
                    _gcmvtiUseChiefInTfConfig,
                  ("workerCount" .=) <$> _gcmvtiWorkerCount,
                  ("jobDir" .=) <$> _gcmvtiJobDir,
                  ("evaluatorCount" .=) <$> _gcmvtiEvaluatorCount,
                  ("evaluatorType" .=) <$> _gcmvtiEvaluatorType,
                  ("network" .=) <$> _gcmvtiNetwork,
                  ("pythonVersion" .=) <$> _gcmvtiPythonVersion,
                  ("runtimeVersion" .=) <$> _gcmvtiRuntimeVersion,
                  ("workerType" .=) <$> _gcmvtiWorkerType,
                  ("masterConfig" .=) <$> _gcmvtiMasterConfig,
                  ("pythonModule" .=) <$> _gcmvtiPythonModule,
                  ("parameterServerType" .=) <$>
                    _gcmvtiParameterServerType,
                  ("serviceAccount" .=) <$> _gcmvtiServiceAccount,
                  ("hyperparameters" .=) <$> _gcmvtiHyperparameters,
                  ("packageUris" .=) <$> _gcmvtiPackageURIs,
                  ("scaleTier" .=) <$> _gcmvtiScaleTier,
                  ("encryptionConfig" .=) <$> _gcmvtiEncryptionConfig,
                  ("region" .=) <$> _gcmvtiRegion,
                  ("scheduling" .=) <$> _gcmvtiScheduling,
                  ("parameterServerConfig" .=) <$>
                    _gcmvtiParameterServerConfig,
                  ("evaluatorConfig" .=) <$> _gcmvtiEvaluatorConfig])

-- | Represents the spec to match categorical values from parent parameter.
--
-- /See:/ 'googleCloudMlV1_StudyConfigParameterSpec_MatchingParentCategoricalValueSpec' smart constructor.
newtype GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentCategoricalValueSpec =
  GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentCategoricalValueSpec'
    { _gcmvscpsmpcvsValues :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentCategoricalValueSpec' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvscpsmpcvsValues'
googleCloudMlV1_StudyConfigParameterSpec_MatchingParentCategoricalValueSpec
    :: GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentCategoricalValueSpec
googleCloudMlV1_StudyConfigParameterSpec_MatchingParentCategoricalValueSpec =
  GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentCategoricalValueSpec'
    {_gcmvscpsmpcvsValues = Nothing}


-- | Matches values of the parent parameter with type \'CATEGORICAL\'. All
-- values must exist in \`categorical_value_spec\` of parent parameter.
gcmvscpsmpcvsValues :: Lens' GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentCategoricalValueSpec [Text]
gcmvscpsmpcvsValues
  = lens _gcmvscpsmpcvsValues
      (\ s a -> s{_gcmvscpsmpcvsValues = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentCategoricalValueSpec
         where
        parseJSON
          = withObject
              "GoogleCloudMlV1StudyConfigParameterSpecMatchingParentCategoricalValueSpec"
              (\ o ->
                 GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentCategoricalValueSpec'
                   <$> (o .:? "values" .!= mempty))

instance ToJSON
           GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentCategoricalValueSpec
         where
        toJSON
          GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentCategoricalValueSpec'{..}
          = object
              (catMaybes [("values" .=) <$> _gcmvscpsmpcvsValues])

-- | Specifies HTTP paths served by a custom container. AI Platform
-- Prediction sends requests to these paths on the container; the custom
-- container must run an HTTP server that responds to these requests with
-- appropriate responses. Read [Custom container
-- requirements](\/ai-platform\/prediction\/docs\/custom-container-requirements)
-- for details on how to create your container image to meet these
-- requirements.
--
-- /See:/ 'googleCloudMlV1__RouteMap' smart constructor.
data GoogleCloudMlV1__RouteMap =
  GoogleCloudMlV1__RouteMap'
    { _gcmvrmHealth :: !(Maybe Text)
    , _gcmvrmPredict :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudMlV1__RouteMap' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvrmHealth'
--
-- * 'gcmvrmPredict'
googleCloudMlV1__RouteMap
    :: GoogleCloudMlV1__RouteMap
googleCloudMlV1__RouteMap =
  GoogleCloudMlV1__RouteMap' {_gcmvrmHealth = Nothing, _gcmvrmPredict = Nothing}


-- | HTTP path on the container to send health checkss to. AI Platform
-- Prediction intermittently sends GET requests to this path on the
-- container\'s IP address and port to check that the container is healthy.
-- Read more about [health
-- checks](\/ai-platform\/prediction\/docs\/custom-container-requirements#checks).
-- For example, if you set this field to \`\/bar\`, then AI Platform
-- Prediction intermittently sends a GET request to the \`\/bar\` path on
-- the port of your container specified by the first value of
-- Version.container.ports. If you don\'t specify this field, it defaults
-- to the following value: \/v1\/models\/ MODEL\/versions\/VERSION The
-- placeholders in this value are replaced as follows: * MODEL: The name of
-- the parent Model. This does not include the
-- \"projects\/PROJECT_ID\/models\/\" prefix that the API returns in
-- output; it is the bare model name, as provided to
-- projects.models.create. * VERSION: The name of the model version. This
-- does not include the \"projects\/PROJECT_ID
-- \/models\/MODEL\/versions\/\" prefix that the API returns in output; it
-- is the bare version name, as provided to
-- projects.models.versions.create.
gcmvrmHealth :: Lens' GoogleCloudMlV1__RouteMap (Maybe Text)
gcmvrmHealth
  = lens _gcmvrmHealth (\ s a -> s{_gcmvrmHealth = a})

-- | HTTP path on the container to send prediction requests to. AI Platform
-- Prediction forwards requests sent using projects.predict to this path on
-- the container\'s IP address and port. AI Platform Prediction then
-- returns the container\'s response in the API response. For example, if
-- you set this field to \`\/foo\`, then when AI Platform Prediction
-- receives a prediction request, it forwards the request body in a POST
-- request to the \`\/foo\` path on the port of your container specified by
-- the first value of Version.container.ports. If you don\'t specify this
-- field, it defaults to the following value:
-- \/v1\/models\/MODEL\/versions\/VERSION:predict The placeholders in this
-- value are replaced as follows: * MODEL: The name of the parent Model.
-- This does not include the \"projects\/PROJECT_ID\/models\/\" prefix that
-- the API returns in output; it is the bare model name, as provided to
-- projects.models.create. * VERSION: The name of the model version. This
-- does not include the \"projects\/PROJECT_ID\/models\/MODEL\/versions\/\"
-- prefix that the API returns in output; it is the bare version name, as
-- provided to projects.models.versions.create.
gcmvrmPredict :: Lens' GoogleCloudMlV1__RouteMap (Maybe Text)
gcmvrmPredict
  = lens _gcmvrmPredict
      (\ s a -> s{_gcmvrmPredict = a})

instance FromJSON GoogleCloudMlV1__RouteMap where
        parseJSON
          = withObject "GoogleCloudMlV1RouteMap"
              (\ o ->
                 GoogleCloudMlV1__RouteMap' <$>
                   (o .:? "health") <*> (o .:? "predict"))

instance ToJSON GoogleCloudMlV1__RouteMap where
        toJSON GoogleCloudMlV1__RouteMap'{..}
          = object
              (catMaybes
                 [("health" .=) <$> _gcmvrmHealth,
                  ("predict" .=) <$> _gcmvrmPredict])

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
    { _gcmvlName :: !(Maybe Text)
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
    { _gcmvcAvailableAccelerators :: !(Maybe [GoogleCloudMlV1__CapabilityAvailableAcceleratorsItem])
    , _gcmvcType :: !(Maybe GoogleCloudMlV1__CapabilityType)
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
gcmvcAvailableAccelerators :: Lens' GoogleCloudMlV1__Capability [GoogleCloudMlV1__CapabilityAvailableAcceleratorsItem]
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
    { _gcmvomStartTime :: !(Maybe DateTime')
    , _gcmvomModelName :: !(Maybe Text)
    , _gcmvomProjectNumber :: !(Maybe (Textual Int64))
    , _gcmvomVersion :: !(Maybe GoogleCloudMlV1__Version)
    , _gcmvomEndTime :: !(Maybe DateTime')
    , _gcmvomIsCancellationRequested :: !(Maybe Bool)
    , _gcmvomLabels :: !(Maybe GoogleCloudMlV1__OperationMetadataLabels)
    , _gcmvomOperationType :: !(Maybe GoogleCloudMlV1__OperationMetadataOperationType)
    , _gcmvomCreateTime :: !(Maybe DateTime')
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

-- | Represents an environment variable to be made available in a container.
-- This message is a subset of the [Kubernetes EnvVar v1 core
-- specification](https:\/\/kubernetes.io\/docs\/reference\/generated\/kubernetes-api\/v1.18\/#envvar-v1-core).
--
-- /See:/ 'googleCloudMlV1__EnvVar' smart constructor.
data GoogleCloudMlV1__EnvVar =
  GoogleCloudMlV1__EnvVar'
    { _gcmvevValue :: !(Maybe Text)
    , _gcmvevName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudMlV1__EnvVar' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvevValue'
--
-- * 'gcmvevName'
googleCloudMlV1__EnvVar
    :: GoogleCloudMlV1__EnvVar
googleCloudMlV1__EnvVar =
  GoogleCloudMlV1__EnvVar' {_gcmvevValue = Nothing, _gcmvevName = Nothing}


-- | Value of the environment variable. Defaults to an empty string. In this
-- field, you can reference [environment variables set by AI Platform
-- Prediction](\/ai-platform\/prediction\/docs\/custom-container-requirements#aip-variables)
-- and environment variables set earlier in the same env field as where
-- this message occurs. You cannot reference environment variables set in
-- the Docker image. In order for environment variables to be expanded,
-- reference them by using the following syntax: $(VARIABLE_NAME) Note that
-- this differs from Bash variable expansion, which does not use
-- parentheses. If a variable cannot be resolved, the reference in the
-- input string is used unchanged. To avoid variable expansion, you can
-- escape this syntax with \`$$\`; for example: $$(VARIABLE_NAME)
gcmvevValue :: Lens' GoogleCloudMlV1__EnvVar (Maybe Text)
gcmvevValue
  = lens _gcmvevValue (\ s a -> s{_gcmvevValue = a})

-- | Name of the environment variable. Must be a [valid C
-- identifier](https:\/\/github.com\/kubernetes\/kubernetes\/blob\/v1.18.8\/staging\/src\/k8s.io\/apimachinery\/pkg\/util\/validation\/validation.go#L258)
-- and must not begin with the prefix \`AIP_\`.
gcmvevName :: Lens' GoogleCloudMlV1__EnvVar (Maybe Text)
gcmvevName
  = lens _gcmvevName (\ s a -> s{_gcmvevName = a})

instance FromJSON GoogleCloudMlV1__EnvVar where
        parseJSON
          = withObject "GoogleCloudMlV1EnvVar"
              (\ o ->
                 GoogleCloudMlV1__EnvVar' <$>
                   (o .:? "value") <*> (o .:? "name"))

instance ToJSON GoogleCloudMlV1__EnvVar where
        toJSON GoogleCloudMlV1__EnvVar'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _gcmvevValue,
                  ("name" .=) <$> _gcmvevName])

-- | The response message for the ListTrials method.
--
-- /See:/ 'googleCloudMlV1__ListTrialsResponse' smart constructor.
newtype GoogleCloudMlV1__ListTrialsResponse =
  GoogleCloudMlV1__ListTrialsResponse'
    { _gcmvltrTrials :: Maybe [GoogleCloudMlV1__Trial]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudMlV1__ListTrialsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvltrTrials'
googleCloudMlV1__ListTrialsResponse
    :: GoogleCloudMlV1__ListTrialsResponse
googleCloudMlV1__ListTrialsResponse =
  GoogleCloudMlV1__ListTrialsResponse' {_gcmvltrTrials = Nothing}


-- | The trials associated with the study.
gcmvltrTrials :: Lens' GoogleCloudMlV1__ListTrialsResponse [GoogleCloudMlV1__Trial]
gcmvltrTrials
  = lens _gcmvltrTrials
      (\ s a -> s{_gcmvltrTrials = a})
      . _Default
      . _Coerce

instance FromJSON GoogleCloudMlV1__ListTrialsResponse
         where
        parseJSON
          = withObject "GoogleCloudMlV1ListTrialsResponse"
              (\ o ->
                 GoogleCloudMlV1__ListTrialsResponse' <$>
                   (o .:? "trials" .!= mempty))

instance ToJSON GoogleCloudMlV1__ListTrialsResponse
         where
        toJSON GoogleCloudMlV1__ListTrialsResponse'{..}
          = object
              (catMaybes [("trials" .=) <$> _gcmvltrTrials])

-- | The request message for the AddTrialMeasurement service method.
--
-- /See:/ 'googleCloudMlV1__AddTrialMeasurementRequest' smart constructor.
newtype GoogleCloudMlV1__AddTrialMeasurementRequest =
  GoogleCloudMlV1__AddTrialMeasurementRequest'
    { _gcmvatmrMeasurement :: Maybe GoogleCloudMlV1__Measurement
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudMlV1__AddTrialMeasurementRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvatmrMeasurement'
googleCloudMlV1__AddTrialMeasurementRequest
    :: GoogleCloudMlV1__AddTrialMeasurementRequest
googleCloudMlV1__AddTrialMeasurementRequest =
  GoogleCloudMlV1__AddTrialMeasurementRequest' {_gcmvatmrMeasurement = Nothing}


-- | Required. The measurement to be added to a trial.
gcmvatmrMeasurement :: Lens' GoogleCloudMlV1__AddTrialMeasurementRequest (Maybe GoogleCloudMlV1__Measurement)
gcmvatmrMeasurement
  = lens _gcmvatmrMeasurement
      (\ s a -> s{_gcmvatmrMeasurement = a})

instance FromJSON
           GoogleCloudMlV1__AddTrialMeasurementRequest
         where
        parseJSON
          = withObject
              "GoogleCloudMlV1AddTrialMeasurementRequest"
              (\ o ->
                 GoogleCloudMlV1__AddTrialMeasurementRequest' <$>
                   (o .:? "measurement"))

instance ToJSON
           GoogleCloudMlV1__AddTrialMeasurementRequest
         where
        toJSON
          GoogleCloudMlV1__AddTrialMeasurementRequest'{..}
          = object
              (catMaybes
                 [("measurement" .=) <$> _gcmvatmrMeasurement])

-- | Configuration for logging request-response pairs to a BigQuery table.
-- Online prediction requests to a model version and the responses to these
-- requests are converted to raw strings and saved to the specified
-- BigQuery table. Logging is constrained by [BigQuery quotas and
-- limits](\/bigquery\/quotas). If your project exceeds BigQuery quotas or
-- limits, AI Platform Prediction does not log request-response pairs, but
-- it continues to serve predictions. If you are using [continuous
-- evaluation](\/ml-engine\/docs\/continuous-evaluation\/), you do not need
-- to specify this configuration manually. Setting up continuous evaluation
-- automatically enables logging of request-response pairs.
--
-- /See:/ 'googleCloudMlV1__RequestLoggingConfig' smart constructor.
data GoogleCloudMlV1__RequestLoggingConfig =
  GoogleCloudMlV1__RequestLoggingConfig'
    { _gcmvrlcSamplingPercentage :: !(Maybe (Textual Double))
    , _gcmvrlcBigQueryTableName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudMlV1__RequestLoggingConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvrlcSamplingPercentage'
--
-- * 'gcmvrlcBigQueryTableName'
googleCloudMlV1__RequestLoggingConfig
    :: GoogleCloudMlV1__RequestLoggingConfig
googleCloudMlV1__RequestLoggingConfig =
  GoogleCloudMlV1__RequestLoggingConfig'
    {_gcmvrlcSamplingPercentage = Nothing, _gcmvrlcBigQueryTableName = Nothing}


-- | Percentage of requests to be logged, expressed as a fraction from 0 to
-- 1. For example, if you want to log 10% of requests, enter \`0.1\`. The
-- sampling window is the lifetime of the model version. Defaults to 0.
gcmvrlcSamplingPercentage :: Lens' GoogleCloudMlV1__RequestLoggingConfig (Maybe Double)
gcmvrlcSamplingPercentage
  = lens _gcmvrlcSamplingPercentage
      (\ s a -> s{_gcmvrlcSamplingPercentage = a})
      . mapping _Coerce

-- | Required. Fully qualified BigQuery table name in the following format:
-- \" project_id.dataset_name.table_name\" The specified table must already
-- exist, and the \"Cloud ML Service Agent\" for your project must have
-- permission to write to it. The table must have the following
-- [schema](\/bigquery\/docs\/schemas): Field nameType Mode model STRING
-- REQUIRED model_version STRING REQUIRED time TIMESTAMP REQUIRED raw_data
-- STRING REQUIRED raw_prediction STRING NULLABLE groundtruth STRING
-- NULLABLE
gcmvrlcBigQueryTableName :: Lens' GoogleCloudMlV1__RequestLoggingConfig (Maybe Text)
gcmvrlcBigQueryTableName
  = lens _gcmvrlcBigQueryTableName
      (\ s a -> s{_gcmvrlcBigQueryTableName = a})

instance FromJSON
           GoogleCloudMlV1__RequestLoggingConfig
         where
        parseJSON
          = withObject "GoogleCloudMlV1RequestLoggingConfig"
              (\ o ->
                 GoogleCloudMlV1__RequestLoggingConfig' <$>
                   (o .:? "samplingPercentage") <*>
                     (o .:? "bigqueryTableName"))

instance ToJSON GoogleCloudMlV1__RequestLoggingConfig
         where
        toJSON GoogleCloudMlV1__RequestLoggingConfig'{..}
          = object
              (catMaybes
                 [("samplingPercentage" .=) <$>
                    _gcmvrlcSamplingPercentage,
                  ("bigqueryTableName" .=) <$>
                    _gcmvrlcBigQueryTableName])

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

-- | All parameters related to scheduling of training jobs.
--
-- /See:/ 'googleCloudMlV1__Scheduling' smart constructor.
data GoogleCloudMlV1__Scheduling =
  GoogleCloudMlV1__Scheduling'
    { _gcmvsMaxWaitTime :: !(Maybe GDuration)
    , _gcmvsPriority :: !(Maybe (Textual Int32))
    , _gcmvsMaxRunningTime :: !(Maybe GDuration)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudMlV1__Scheduling' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvsMaxWaitTime'
--
-- * 'gcmvsPriority'
--
-- * 'gcmvsMaxRunningTime'
googleCloudMlV1__Scheduling
    :: GoogleCloudMlV1__Scheduling
googleCloudMlV1__Scheduling =
  GoogleCloudMlV1__Scheduling'
    { _gcmvsMaxWaitTime = Nothing
    , _gcmvsPriority = Nothing
    , _gcmvsMaxRunningTime = Nothing
    }


-- | Optional. The maximum job wait time, expressed in seconds. The field can
-- contain up to nine fractional digits, terminated by \`s\`. If not
-- specified, there is no limit to the wait time. The minimum for this
-- field is \`1800s\` (30 minutes). If the training job has not entered the
-- \`RUNNING\` state after this duration, AI Platform Training cancels it.
-- After the job begins running, it can no longer be cancelled due to the
-- maximum wait time. Therefore the duration limited by this field does not
-- overlap with the duration limited by Scheduling.max_running_time. For
-- example, if the job temporarily stops running and retries due to a [VM
-- restart](\/ai-platform\/training\/docs\/overview#restarts), this cannot
-- lead to a maximum wait time cancellation. However, independently of this
-- constraint, AI Platform Training might stop a job if there are too many
-- retries due to exhausted resources in a region. The following example
-- describes how you might use this field: To cancel your job if it
-- doesn\'t start running within 1 hour, set this field to \`3600s\` (1
-- hour * 60 minutes \/ hour * 60 seconds \/ minute). If the job is still
-- in the \`QUEUED\` or \`PREPARING\` state after an hour of waiting, AI
-- Platform Training cancels the job. If you submit your training job using
-- the \`gcloud\` tool, you can [specify this field in a \`config.yaml\`
-- file](\/ai-platform\/training\/docs\/training-jobs#formatting_your_configuration_parameters).
-- For example: \`\`\`yaml trainingInput: scheduling: maxWaitTime: 3600s
-- \`\`\`
gcmvsMaxWaitTime :: Lens' GoogleCloudMlV1__Scheduling (Maybe Scientific)
gcmvsMaxWaitTime
  = lens _gcmvsMaxWaitTime
      (\ s a -> s{_gcmvsMaxWaitTime = a})
      . mapping _GDuration

-- | Optional. Job scheduling will be based on this priority, which in the
-- range [0, 1000]. The bigger the number, the higher the priority. Default
-- to 0 if not set. If there are multiple jobs requesting same type of
-- accelerators, the high priority job will be scheduled prior to ones with
-- low priority.
gcmvsPriority :: Lens' GoogleCloudMlV1__Scheduling (Maybe Int32)
gcmvsPriority
  = lens _gcmvsPriority
      (\ s a -> s{_gcmvsPriority = a})
      . mapping _Coerce

-- | Optional. The maximum job running time, expressed in seconds. The field
-- can contain up to nine fractional digits, terminated by \`s\`. If not
-- specified, this field defaults to \`604800s\` (seven days). If the
-- training job is still running after this duration, AI Platform Training
-- cancels it. The duration is measured from when the job enters the
-- \`RUNNING\` state; therefore it does not overlap with the duration
-- limited by Scheduling.max_wait_time. For example, if you want to ensure
-- your job runs for no more than 2 hours, set this field to \`7200s\` (2
-- hours * 60 minutes \/ hour * 60 seconds \/ minute). If you submit your
-- training job using the \`gcloud\` tool, you can [specify this field in a
-- \`config.yaml\`
-- file](\/ai-platform\/training\/docs\/training-jobs#formatting_your_configuration_parameters).
-- For example: \`\`\`yaml trainingInput: scheduling: maxRunningTime: 7200s
-- \`\`\`
gcmvsMaxRunningTime :: Lens' GoogleCloudMlV1__Scheduling (Maybe Scientific)
gcmvsMaxRunningTime
  = lens _gcmvsMaxRunningTime
      (\ s a -> s{_gcmvsMaxRunningTime = a})
      . mapping _GDuration

instance FromJSON GoogleCloudMlV1__Scheduling where
        parseJSON
          = withObject "GoogleCloudMlV1Scheduling"
              (\ o ->
                 GoogleCloudMlV1__Scheduling' <$>
                   (o .:? "maxWaitTime") <*> (o .:? "priority") <*>
                     (o .:? "maxRunningTime"))

instance ToJSON GoogleCloudMlV1__Scheduling where
        toJSON GoogleCloudMlV1__Scheduling'{..}
          = object
              (catMaybes
                 [("maxWaitTime" .=) <$> _gcmvsMaxWaitTime,
                  ("priority" .=) <$> _gcmvsPriority,
                  ("maxRunningTime" .=) <$> _gcmvsMaxRunningTime])

-- | Represents results of a training job. Output only.
--
-- /See:/ 'googleCloudMlV1__TrainingOutput' smart constructor.
data GoogleCloudMlV1__TrainingOutput =
  GoogleCloudMlV1__TrainingOutput'
    { _gcmvtoIsHyperparameterTuningJob :: !(Maybe Bool)
    , _gcmvtoIsBuiltInAlgorithmJob :: !(Maybe Bool)
    , _gcmvtoCompletedTrialCount :: !(Maybe (Textual Int64))
    , _gcmvtoConsumedMLUnits :: !(Maybe (Textual Double))
    , _gcmvtoBuiltInAlgorithmOutput :: !(Maybe GoogleCloudMlV1__BuiltInAlgorithmOutput)
    , _gcmvtoHyperparameterMetricTag :: !(Maybe Text)
    , _gcmvtoWebAccessURIs :: !(Maybe GoogleCloudMlV1__TrainingOutputWebAccessURIs)
    , _gcmvtoTrials :: !(Maybe [GoogleCloudMlV1__HyperparameterOutput])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudMlV1__TrainingOutput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvtoIsHyperparameterTuningJob'
--
-- * 'gcmvtoIsBuiltInAlgorithmJob'
--
-- * 'gcmvtoCompletedTrialCount'
--
-- * 'gcmvtoConsumedMLUnits'
--
-- * 'gcmvtoBuiltInAlgorithmOutput'
--
-- * 'gcmvtoHyperparameterMetricTag'
--
-- * 'gcmvtoWebAccessURIs'
--
-- * 'gcmvtoTrials'
googleCloudMlV1__TrainingOutput
    :: GoogleCloudMlV1__TrainingOutput
googleCloudMlV1__TrainingOutput =
  GoogleCloudMlV1__TrainingOutput'
    { _gcmvtoIsHyperparameterTuningJob = Nothing
    , _gcmvtoIsBuiltInAlgorithmJob = Nothing
    , _gcmvtoCompletedTrialCount = Nothing
    , _gcmvtoConsumedMLUnits = Nothing
    , _gcmvtoBuiltInAlgorithmOutput = Nothing
    , _gcmvtoHyperparameterMetricTag = Nothing
    , _gcmvtoWebAccessURIs = Nothing
    , _gcmvtoTrials = Nothing
    }


-- | Whether this job is a hyperparameter tuning job.
gcmvtoIsHyperparameterTuningJob :: Lens' GoogleCloudMlV1__TrainingOutput (Maybe Bool)
gcmvtoIsHyperparameterTuningJob
  = lens _gcmvtoIsHyperparameterTuningJob
      (\ s a -> s{_gcmvtoIsHyperparameterTuningJob = a})

-- | Whether this job is a built-in Algorithm job.
gcmvtoIsBuiltInAlgorithmJob :: Lens' GoogleCloudMlV1__TrainingOutput (Maybe Bool)
gcmvtoIsBuiltInAlgorithmJob
  = lens _gcmvtoIsBuiltInAlgorithmJob
      (\ s a -> s{_gcmvtoIsBuiltInAlgorithmJob = a})

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

-- | Details related to built-in algorithms jobs. Only set for built-in
-- algorithms jobs.
gcmvtoBuiltInAlgorithmOutput :: Lens' GoogleCloudMlV1__TrainingOutput (Maybe GoogleCloudMlV1__BuiltInAlgorithmOutput)
gcmvtoBuiltInAlgorithmOutput
  = lens _gcmvtoBuiltInAlgorithmOutput
      (\ s a -> s{_gcmvtoBuiltInAlgorithmOutput = a})

-- | The TensorFlow summary tag name used for optimizing hyperparameter
-- tuning trials. See
-- [\`HyperparameterSpec.hyperparameterMetricTag\`](#HyperparameterSpec.FIELDS.hyperparameter_metric_tag)
-- for more information. Only set for hyperparameter tuning jobs.
gcmvtoHyperparameterMetricTag :: Lens' GoogleCloudMlV1__TrainingOutput (Maybe Text)
gcmvtoHyperparameterMetricTag
  = lens _gcmvtoHyperparameterMetricTag
      (\ s a -> s{_gcmvtoHyperparameterMetricTag = a})

-- | Output only. The web URIs for the training job. Currently for debug
-- terminal access to the job.
gcmvtoWebAccessURIs :: Lens' GoogleCloudMlV1__TrainingOutput (Maybe GoogleCloudMlV1__TrainingOutputWebAccessURIs)
gcmvtoWebAccessURIs
  = lens _gcmvtoWebAccessURIs
      (\ s a -> s{_gcmvtoWebAccessURIs = a})

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
                     (o .:? "isBuiltInAlgorithmJob")
                     <*> (o .:? "completedTrialCount")
                     <*> (o .:? "consumedMLUnits")
                     <*> (o .:? "builtInAlgorithmOutput")
                     <*> (o .:? "hyperparameterMetricTag")
                     <*> (o .:? "webAccessUris")
                     <*> (o .:? "trials" .!= mempty))

instance ToJSON GoogleCloudMlV1__TrainingOutput where
        toJSON GoogleCloudMlV1__TrainingOutput'{..}
          = object
              (catMaybes
                 [("isHyperparameterTuningJob" .=) <$>
                    _gcmvtoIsHyperparameterTuningJob,
                  ("isBuiltInAlgorithmJob" .=) <$>
                    _gcmvtoIsBuiltInAlgorithmJob,
                  ("completedTrialCount" .=) <$>
                    _gcmvtoCompletedTrialCount,
                  ("consumedMLUnits" .=) <$> _gcmvtoConsumedMLUnits,
                  ("builtInAlgorithmOutput" .=) <$>
                    _gcmvtoBuiltInAlgorithmOutput,
                  ("hyperparameterMetricTag" .=) <$>
                    _gcmvtoHyperparameterMetricTag,
                  ("webAccessUris" .=) <$> _gcmvtoWebAccessURIs,
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
    { _gahttpbExtensions :: !(Maybe [GoogleAPI__HTTPBodyExtensionsItem])
    , _gahttpbData :: !(Maybe Bytes)
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

-- | The HTTP request\/response body as raw binary.
gahttpbData :: Lens' GoogleAPI__HTTPBody (Maybe ByteString)
gahttpbData
  = lens _gahttpbData (\ s a -> s{_gahttpbData = a}) .
      mapping _Bytes

-- | The HTTP Content-Type header value specifying the content type of the
-- body.
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
    , _gcmvllrLocations :: !(Maybe [GoogleCloudMlV1__Location])
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

-- | Represents the config of disk options.
--
-- /See:/ 'googleCloudMlV1__DiskConfig' smart constructor.
data GoogleCloudMlV1__DiskConfig =
  GoogleCloudMlV1__DiskConfig'
    { _gcmvdcBootDiskType :: !(Maybe Text)
    , _gcmvdcBootDiskSizeGb :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudMlV1__DiskConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmvdcBootDiskType'
--
-- * 'gcmvdcBootDiskSizeGb'
googleCloudMlV1__DiskConfig
    :: GoogleCloudMlV1__DiskConfig
googleCloudMlV1__DiskConfig =
  GoogleCloudMlV1__DiskConfig'
    {_gcmvdcBootDiskType = Nothing, _gcmvdcBootDiskSizeGb = Nothing}


-- | Type of the boot disk (default is \"pd-ssd\"). Valid values: \"pd-ssd\"
-- (Persistent Disk Solid State Drive) or \"pd-standard\" (Persistent Disk
-- Hard Disk Drive).
gcmvdcBootDiskType :: Lens' GoogleCloudMlV1__DiskConfig (Maybe Text)
gcmvdcBootDiskType
  = lens _gcmvdcBootDiskType
      (\ s a -> s{_gcmvdcBootDiskType = a})

-- | Size in GB of the boot disk (default is 100GB).
gcmvdcBootDiskSizeGb :: Lens' GoogleCloudMlV1__DiskConfig (Maybe Int32)
gcmvdcBootDiskSizeGb
  = lens _gcmvdcBootDiskSizeGb
      (\ s a -> s{_gcmvdcBootDiskSizeGb = a})
      . mapping _Coerce

instance FromJSON GoogleCloudMlV1__DiskConfig where
        parseJSON
          = withObject "GoogleCloudMlV1DiskConfig"
              (\ o ->
                 GoogleCloudMlV1__DiskConfig' <$>
                   (o .:? "bootDiskType") <*> (o .:? "bootDiskSizeGb"))

instance ToJSON GoogleCloudMlV1__DiskConfig where
        toJSON GoogleCloudMlV1__DiskConfig'{..}
          = object
              (catMaybes
                 [("bootDiskType" .=) <$> _gcmvdcBootDiskType,
                  ("bootDiskSizeGb" .=) <$> _gcmvdcBootDiskSizeGb])

-- | Optional. One or more labels that you can add, to organize your model
-- versions. Each label is a key-value pair, where both the key and the
-- value are arbitrary strings that you supply. For more information, see
-- the documentation on using labels.
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
