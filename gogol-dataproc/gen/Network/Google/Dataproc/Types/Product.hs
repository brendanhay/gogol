{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Dataproc.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Dataproc.Types.Product where

import           Network.Google.Dataproc.Types.Sum
import           Network.Google.Prelude

-- | Encapsulates the full scoping used to reference a job.
--
-- /See:/ 'jobReference' smart constructor.
data JobReference =
  JobReference'
    { _jrJobId     :: !(Maybe Text)
    , _jrProjectId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'JobReference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jrJobId'
--
-- * 'jrProjectId'
jobReference
    :: JobReference
jobReference = JobReference' {_jrJobId = Nothing, _jrProjectId = Nothing}


-- | Optional. The job ID, which must be unique within the project.The ID
-- must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), or
-- hyphens (-). The maximum length is 100 characters.If not specified by
-- the caller, the job ID will be provided by the server.
jrJobId :: Lens' JobReference (Maybe Text)
jrJobId = lens _jrJobId (\ s a -> s{_jrJobId = a})

-- | Required. The ID of the Google Cloud Platform project that the job
-- belongs to.
jrProjectId :: Lens' JobReference (Maybe Text)
jrProjectId
  = lens _jrProjectId (\ s a -> s{_jrProjectId = a})

instance FromJSON JobReference where
        parseJSON
          = withObject "JobReference"
              (\ o ->
                 JobReference' <$>
                   (o .:? "jobId") <*> (o .:? "projectId"))

instance ToJSON JobReference where
        toJSON JobReference'{..}
          = object
              (catMaybes
                 [("jobId" .=) <$> _jrJobId,
                  ("projectId" .=) <$> _jrProjectId])

-- | The Status type defines a logical error model that is suitable for
-- different programming environments, including REST APIs and RPC APIs. It
-- is used by gRPC (https:\/\/github.com\/grpc). The error model is
-- designed to be: Simple to use and understand for most users Flexible
-- enough to meet unexpected needsOverviewThe Status message contains three
-- pieces of data: error code, error message, and error details. The error
-- code should be an enum value of google.rpc.Code, but it may accept
-- additional error codes if needed. The error message should be a
-- developer-facing English message that helps developers understand and
-- resolve the error. If a localized user-facing error message is needed,
-- put the localized message in the error details or localize it in the
-- client. The optional error details may contain arbitrary information
-- about the error. There is a predefined set of error detail types in the
-- package google.rpc that can be used for common error conditions.Language
-- mappingThe Status message is the logical representation of the error
-- model, but it is not necessarily the actual wire format. When the Status
-- message is exposed in different client libraries and different wire
-- protocols, it can be mapped differently. For example, it will likely be
-- mapped to some exceptions in Java, but more likely mapped to some error
-- codes in C.Other usesThe error model and the Status message can be used
-- in a variety of environments, either with or without APIs, to provide a
-- consistent developer experience across different environments.Example
-- uses of this error model include: Partial errors. If a service needs to
-- return partial errors to the client, it may embed the Status in the
-- normal response to indicate the partial errors. Workflow errors. A
-- typical workflow has multiple steps. Each step may have a Status message
-- for error reporting. Batch operations. If a client uses batch request
-- and batch response, the Status message should be used directly inside
-- batch response, one for each error sub-response. Asynchronous
-- operations. If an API call embeds asynchronous operation results in its
-- response, the status of those operations should be represented directly
-- using the Status message. Logging. If some API errors are stored in
-- logs, the message Status could be used directly after any stripping
-- needed for security\/privacy reasons.
--
-- /See:/ 'status' smart constructor.
data Status =
  Status'
    { _sDetails :: !(Maybe [StatusDetailsItem])
    , _sCode    :: !(Maybe (Textual Int32))
    , _sMessage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Status' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sDetails'
--
-- * 'sCode'
--
-- * 'sMessage'
status
    :: Status
status = Status' {_sDetails = Nothing, _sCode = Nothing, _sMessage = Nothing}


-- | A list of messages that carry the error details. There is a common set
-- of message types for APIs to use.
sDetails :: Lens' Status [StatusDetailsItem]
sDetails
  = lens _sDetails (\ s a -> s{_sDetails = a}) .
      _Default
      . _Coerce

-- | The status code, which should be an enum value of google.rpc.Code.
sCode :: Lens' Status (Maybe Int32)
sCode
  = lens _sCode (\ s a -> s{_sCode = a}) .
      mapping _Coerce

-- | A developer-facing error message, which should be in English. Any
-- user-facing error message should be localized and sent in the
-- google.rpc.Status.details field, or localized by the client.
sMessage :: Lens' Status (Maybe Text)
sMessage = lens _sMessage (\ s a -> s{_sMessage = a})

instance FromJSON Status where
        parseJSON
          = withObject "Status"
              (\ o ->
                 Status' <$>
                   (o .:? "details" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON Status where
        toJSON Status'{..}
          = object
              (catMaybes
                 [("details" .=) <$> _sDetails,
                  ("code" .=) <$> _sCode,
                  ("message" .=) <$> _sMessage])

-- | Optional. A mapping of property names to values, used to configure
-- PySpark. Properties that conflict with values set by the Cloud Dataproc
-- API may be overwritten. Can include properties set in
-- \/etc\/spark\/conf\/spark-defaults.conf and classes in user code.
--
-- /See:/ 'pySparkJobProperties' smart constructor.
newtype PySparkJobProperties =
  PySparkJobProperties'
    { _psjpAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PySparkJobProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psjpAddtional'
pySparkJobProperties
    :: HashMap Text Text -- ^ 'psjpAddtional'
    -> PySparkJobProperties
pySparkJobProperties pPsjpAddtional_ =
  PySparkJobProperties' {_psjpAddtional = _Coerce # pPsjpAddtional_}


psjpAddtional :: Lens' PySparkJobProperties (HashMap Text Text)
psjpAddtional
  = lens _psjpAddtional
      (\ s a -> s{_psjpAddtional = a})
      . _Coerce

instance FromJSON PySparkJobProperties where
        parseJSON
          = withObject "PySparkJobProperties"
              (\ o ->
                 PySparkJobProperties' <$> (parseJSONObject o))

instance ToJSON PySparkJobProperties where
        toJSON = toJSON . _psjpAddtional

-- | The location of diagnostic output.
--
-- /See:/ 'diagnoseClusterResults' smart constructor.
newtype DiagnoseClusterResults =
  DiagnoseClusterResults'
    { _dcrOutputURI :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DiagnoseClusterResults' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcrOutputURI'
diagnoseClusterResults
    :: DiagnoseClusterResults
diagnoseClusterResults = DiagnoseClusterResults' {_dcrOutputURI = Nothing}


-- | Output only. The Cloud Storage URI of the diagnostic output. The output
-- report is a plain text file with a summary of collected diagnostics.
dcrOutputURI :: Lens' DiagnoseClusterResults (Maybe Text)
dcrOutputURI
  = lens _dcrOutputURI (\ s a -> s{_dcrOutputURI = a})

instance FromJSON DiagnoseClusterResults where
        parseJSON
          = withObject "DiagnoseClusterResults"
              (\ o ->
                 DiagnoseClusterResults' <$> (o .:? "outputUri"))

instance ToJSON DiagnoseClusterResults where
        toJSON DiagnoseClusterResults'{..}
          = object
              (catMaybes [("outputUri" .=) <$> _dcrOutputURI])

-- | Optional. The config settings for Compute Engine resources in an
-- instance group, such as a master or worker group.
--
-- /See:/ 'instanceGroupConfig' smart constructor.
data InstanceGroupConfig =
  InstanceGroupConfig'
    { _igcNumInstances       :: !(Maybe (Textual Int32))
    , _igcDiskConfig         :: !(Maybe DiskConfig)
    , _igcIsPreemptible      :: !(Maybe Bool)
    , _igcImageURI           :: !(Maybe Text)
    , _igcAccelerators       :: !(Maybe [AcceleratorConfig])
    , _igcInstanceNames      :: !(Maybe [Text])
    , _igcManagedGroupConfig :: !(Maybe ManagedGroupConfig)
    , _igcMachineTypeURI     :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstanceGroupConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igcNumInstances'
--
-- * 'igcDiskConfig'
--
-- * 'igcIsPreemptible'
--
-- * 'igcImageURI'
--
-- * 'igcAccelerators'
--
-- * 'igcInstanceNames'
--
-- * 'igcManagedGroupConfig'
--
-- * 'igcMachineTypeURI'
instanceGroupConfig
    :: InstanceGroupConfig
instanceGroupConfig =
  InstanceGroupConfig'
    { _igcNumInstances = Nothing
    , _igcDiskConfig = Nothing
    , _igcIsPreemptible = Nothing
    , _igcImageURI = Nothing
    , _igcAccelerators = Nothing
    , _igcInstanceNames = Nothing
    , _igcManagedGroupConfig = Nothing
    , _igcMachineTypeURI = Nothing
    }


-- | Optional. The number of VM instances in the instance group. For master
-- instance groups, must be set to 1.
igcNumInstances :: Lens' InstanceGroupConfig (Maybe Int32)
igcNumInstances
  = lens _igcNumInstances
      (\ s a -> s{_igcNumInstances = a})
      . mapping _Coerce

-- | Optional. Disk option config settings.
igcDiskConfig :: Lens' InstanceGroupConfig (Maybe DiskConfig)
igcDiskConfig
  = lens _igcDiskConfig
      (\ s a -> s{_igcDiskConfig = a})

-- | Optional. Specifies that this instance group contains preemptible
-- instances.
igcIsPreemptible :: Lens' InstanceGroupConfig (Maybe Bool)
igcIsPreemptible
  = lens _igcIsPreemptible
      (\ s a -> s{_igcIsPreemptible = a})

-- | Optional. The Compute Engine image resource used for cluster instances.
-- It can be specified or may be inferred from
-- SoftwareConfig.image_version.
igcImageURI :: Lens' InstanceGroupConfig (Maybe Text)
igcImageURI
  = lens _igcImageURI (\ s a -> s{_igcImageURI = a})

-- | Optional. The Compute Engine accelerator configuration for these
-- instances.Beta Feature: This feature is still under development. It may
-- be changed before final release.
igcAccelerators :: Lens' InstanceGroupConfig [AcceleratorConfig]
igcAccelerators
  = lens _igcAccelerators
      (\ s a -> s{_igcAccelerators = a})
      . _Default
      . _Coerce

-- | Output only. The list of instance names. Cloud Dataproc derives the
-- names from cluster_name, num_instances, and the instance group.
igcInstanceNames :: Lens' InstanceGroupConfig [Text]
igcInstanceNames
  = lens _igcInstanceNames
      (\ s a -> s{_igcInstanceNames = a})
      . _Default
      . _Coerce

-- | Output only. The config for Compute Engine Instance Group Manager that
-- manages this group. This is only used for preemptible instance groups.
igcManagedGroupConfig :: Lens' InstanceGroupConfig (Maybe ManagedGroupConfig)
igcManagedGroupConfig
  = lens _igcManagedGroupConfig
      (\ s a -> s{_igcManagedGroupConfig = a})

-- | Optional. The Compute Engine machine type used for cluster instances.A
-- full URL, partial URI, or short name are valid. Examples:
-- https:\/\/www.googleapis.com\/compute\/v1\/projects\/[project_id]\/zones\/us-east1-a\/machineTypes\/n1-standard-2
-- projects\/[project_id]\/zones\/us-east1-a\/machineTypes\/n1-standard-2
-- n1-standard-2Auto Zone Exception: If you are using the Cloud Dataproc
-- Auto Zone Placement feature, you must use the short name of the machine
-- type resource, for example, n1-standard-2.
igcMachineTypeURI :: Lens' InstanceGroupConfig (Maybe Text)
igcMachineTypeURI
  = lens _igcMachineTypeURI
      (\ s a -> s{_igcMachineTypeURI = a})

instance FromJSON InstanceGroupConfig where
        parseJSON
          = withObject "InstanceGroupConfig"
              (\ o ->
                 InstanceGroupConfig' <$>
                   (o .:? "numInstances") <*> (o .:? "diskConfig") <*>
                     (o .:? "isPreemptible")
                     <*> (o .:? "imageUri")
                     <*> (o .:? "accelerators" .!= mempty)
                     <*> (o .:? "instanceNames" .!= mempty)
                     <*> (o .:? "managedGroupConfig")
                     <*> (o .:? "machineTypeUri"))

instance ToJSON InstanceGroupConfig where
        toJSON InstanceGroupConfig'{..}
          = object
              (catMaybes
                 [("numInstances" .=) <$> _igcNumInstances,
                  ("diskConfig" .=) <$> _igcDiskConfig,
                  ("isPreemptible" .=) <$> _igcIsPreemptible,
                  ("imageUri" .=) <$> _igcImageURI,
                  ("accelerators" .=) <$> _igcAccelerators,
                  ("instanceNames" .=) <$> _igcInstanceNames,
                  ("managedGroupConfig" .=) <$> _igcManagedGroupConfig,
                  ("machineTypeUri" .=) <$> _igcMachineTypeURI])

-- | A Cloud Dataproc job for running Apache Spark
-- (http:\/\/spark.apache.org\/) applications on YARN.
--
-- /See:/ 'sparkJob' smart constructor.
data SparkJob =
  SparkJob'
    { _sjArgs           :: !(Maybe [Text])
    , _sjMainJarFileURI :: !(Maybe Text)
    , _sjJarFileURIs    :: !(Maybe [Text])
    , _sjFileURIs       :: !(Maybe [Text])
    , _sjArchiveURIs    :: !(Maybe [Text])
    , _sjMainClass      :: !(Maybe Text)
    , _sjLoggingConfig  :: !(Maybe LoggingConfig)
    , _sjProperties     :: !(Maybe SparkJobProperties)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SparkJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sjArgs'
--
-- * 'sjMainJarFileURI'
--
-- * 'sjJarFileURIs'
--
-- * 'sjFileURIs'
--
-- * 'sjArchiveURIs'
--
-- * 'sjMainClass'
--
-- * 'sjLoggingConfig'
--
-- * 'sjProperties'
sparkJob
    :: SparkJob
sparkJob =
  SparkJob'
    { _sjArgs = Nothing
    , _sjMainJarFileURI = Nothing
    , _sjJarFileURIs = Nothing
    , _sjFileURIs = Nothing
    , _sjArchiveURIs = Nothing
    , _sjMainClass = Nothing
    , _sjLoggingConfig = Nothing
    , _sjProperties = Nothing
    }


-- | Optional. The arguments to pass to the driver. Do not include arguments,
-- such as --conf, that can be set as job properties, since a collision may
-- occur that causes an incorrect job submission.
sjArgs :: Lens' SparkJob [Text]
sjArgs
  = lens _sjArgs (\ s a -> s{_sjArgs = a}) . _Default .
      _Coerce

-- | The HCFS URI of the jar file that contains the main class.
sjMainJarFileURI :: Lens' SparkJob (Maybe Text)
sjMainJarFileURI
  = lens _sjMainJarFileURI
      (\ s a -> s{_sjMainJarFileURI = a})

-- | Optional. HCFS URIs of jar files to add to the CLASSPATHs of the Spark
-- driver and tasks.
sjJarFileURIs :: Lens' SparkJob [Text]
sjJarFileURIs
  = lens _sjJarFileURIs
      (\ s a -> s{_sjJarFileURIs = a})
      . _Default
      . _Coerce

-- | Optional. HCFS URIs of files to be copied to the working directory of
-- Spark drivers and distributed tasks. Useful for naively parallel tasks.
sjFileURIs :: Lens' SparkJob [Text]
sjFileURIs
  = lens _sjFileURIs (\ s a -> s{_sjFileURIs = a}) .
      _Default
      . _Coerce

-- | Optional. HCFS URIs of archives to be extracted in the working directory
-- of Spark drivers and tasks. Supported file types: .jar, .tar, .tar.gz,
-- .tgz, and .zip.
sjArchiveURIs :: Lens' SparkJob [Text]
sjArchiveURIs
  = lens _sjArchiveURIs
      (\ s a -> s{_sjArchiveURIs = a})
      . _Default
      . _Coerce

-- | The name of the driver\'s main class. The jar file that contains the
-- class must be in the default CLASSPATH or specified in jar_file_uris.
sjMainClass :: Lens' SparkJob (Maybe Text)
sjMainClass
  = lens _sjMainClass (\ s a -> s{_sjMainClass = a})

-- | Optional. The runtime log config for job execution.
sjLoggingConfig :: Lens' SparkJob (Maybe LoggingConfig)
sjLoggingConfig
  = lens _sjLoggingConfig
      (\ s a -> s{_sjLoggingConfig = a})

-- | Optional. A mapping of property names to values, used to configure
-- Spark. Properties that conflict with values set by the Cloud Dataproc
-- API may be overwritten. Can include properties set in
-- \/etc\/spark\/conf\/spark-defaults.conf and classes in user code.
sjProperties :: Lens' SparkJob (Maybe SparkJobProperties)
sjProperties
  = lens _sjProperties (\ s a -> s{_sjProperties = a})

instance FromJSON SparkJob where
        parseJSON
          = withObject "SparkJob"
              (\ o ->
                 SparkJob' <$>
                   (o .:? "args" .!= mempty) <*>
                     (o .:? "mainJarFileUri")
                     <*> (o .:? "jarFileUris" .!= mempty)
                     <*> (o .:? "fileUris" .!= mempty)
                     <*> (o .:? "archiveUris" .!= mempty)
                     <*> (o .:? "mainClass")
                     <*> (o .:? "loggingConfig")
                     <*> (o .:? "properties"))

instance ToJSON SparkJob where
        toJSON SparkJob'{..}
          = object
              (catMaybes
                 [("args" .=) <$> _sjArgs,
                  ("mainJarFileUri" .=) <$> _sjMainJarFileURI,
                  ("jarFileUris" .=) <$> _sjJarFileURIs,
                  ("fileUris" .=) <$> _sjFileURIs,
                  ("archiveUris" .=) <$> _sjArchiveURIs,
                  ("mainClass" .=) <$> _sjMainClass,
                  ("loggingConfig" .=) <$> _sjLoggingConfig,
                  ("properties" .=) <$> _sjProperties])

-- | Optional. The properties to set on daemon config files.Property keys are
-- specified in prefix:property format, for example core:hadoop.tmp.dir.
-- The following are supported prefixes and their mappings:
-- capacity-scheduler: capacity-scheduler.xml core: core-site.xml distcp:
-- distcp-default.xml hdfs: hdfs-site.xml hive: hive-site.xml mapred:
-- mapred-site.xml pig: pig.properties spark: spark-defaults.conf yarn:
-- yarn-site.xmlFor more information, see Cluster properties.
--
-- /See:/ 'softwareConfigProperties' smart constructor.
newtype SoftwareConfigProperties =
  SoftwareConfigProperties'
    { _scpAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SoftwareConfigProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scpAddtional'
softwareConfigProperties
    :: HashMap Text Text -- ^ 'scpAddtional'
    -> SoftwareConfigProperties
softwareConfigProperties pScpAddtional_ =
  SoftwareConfigProperties' {_scpAddtional = _Coerce # pScpAddtional_}


scpAddtional :: Lens' SoftwareConfigProperties (HashMap Text Text)
scpAddtional
  = lens _scpAddtional (\ s a -> s{_scpAddtional = a})
      . _Coerce

instance FromJSON SoftwareConfigProperties where
        parseJSON
          = withObject "SoftwareConfigProperties"
              (\ o ->
                 SoftwareConfigProperties' <$> (parseJSONObject o))

instance ToJSON SoftwareConfigProperties where
        toJSON = toJSON . _scpAddtional

-- | The workflow graph.
--
-- /See:/ 'workflowGraph' smart constructor.
newtype WorkflowGraph =
  WorkflowGraph'
    { _wgNodes :: Maybe [WorkflowNode]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WorkflowGraph' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wgNodes'
workflowGraph
    :: WorkflowGraph
workflowGraph = WorkflowGraph' {_wgNodes = Nothing}


-- | Output only. The workflow nodes.
wgNodes :: Lens' WorkflowGraph [WorkflowNode]
wgNodes
  = lens _wgNodes (\ s a -> s{_wgNodes = a}) . _Default
      . _Coerce

instance FromJSON WorkflowGraph where
        parseJSON
          = withObject "WorkflowGraph"
              (\ o ->
                 WorkflowGraph' <$> (o .:? "nodes" .!= mempty))

instance ToJSON WorkflowGraph where
        toJSON WorkflowGraph'{..}
          = object (catMaybes [("nodes" .=) <$> _wgNodes])

-- | The cluster operation triggered by a workflow.
--
-- /See:/ 'clusterOperation' smart constructor.
data ClusterOperation =
  ClusterOperation'
    { _coDone        :: !(Maybe Bool)
    , _coError       :: !(Maybe Text)
    , _coOperationId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ClusterOperation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'coDone'
--
-- * 'coError'
--
-- * 'coOperationId'
clusterOperation
    :: ClusterOperation
clusterOperation =
  ClusterOperation'
    {_coDone = Nothing, _coError = Nothing, _coOperationId = Nothing}


-- | Output only. Indicates the operation is done.
coDone :: Lens' ClusterOperation (Maybe Bool)
coDone = lens _coDone (\ s a -> s{_coDone = a})

-- | Output only. Error, if operation failed.
coError :: Lens' ClusterOperation (Maybe Text)
coError = lens _coError (\ s a -> s{_coError = a})

-- | Output only. The id of the cluster operation.
coOperationId :: Lens' ClusterOperation (Maybe Text)
coOperationId
  = lens _coOperationId
      (\ s a -> s{_coOperationId = a})

instance FromJSON ClusterOperation where
        parseJSON
          = withObject "ClusterOperation"
              (\ o ->
                 ClusterOperation' <$>
                   (o .:? "done") <*> (o .:? "error") <*>
                     (o .:? "operationId"))

instance ToJSON ClusterOperation where
        toJSON ClusterOperation'{..}
          = object
              (catMaybes
                 [("done" .=) <$> _coDone, ("error" .=) <$> _coError,
                  ("operationId" .=) <$> _coOperationId])

-- | A selector that chooses target cluster for jobs based on metadata.
--
-- /See:/ 'clusterSelector' smart constructor.
data ClusterSelector =
  ClusterSelector'
    { _csZone          :: !(Maybe Text)
    , _csClusterLabels :: !(Maybe ClusterSelectorClusterLabels)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ClusterSelector' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csZone'
--
-- * 'csClusterLabels'
clusterSelector
    :: ClusterSelector
clusterSelector =
  ClusterSelector' {_csZone = Nothing, _csClusterLabels = Nothing}


-- | Optional. The zone where workflow process executes. This parameter does
-- not affect the selection of the cluster.If unspecified, the zone of the
-- first cluster matching the selector is used.
csZone :: Lens' ClusterSelector (Maybe Text)
csZone = lens _csZone (\ s a -> s{_csZone = a})

-- | Required. The cluster labels. Cluster must have all labels to match.
csClusterLabels :: Lens' ClusterSelector (Maybe ClusterSelectorClusterLabels)
csClusterLabels
  = lens _csClusterLabels
      (\ s a -> s{_csClusterLabels = a})

instance FromJSON ClusterSelector where
        parseJSON
          = withObject "ClusterSelector"
              (\ o ->
                 ClusterSelector' <$>
                   (o .:? "zone") <*> (o .:? "clusterLabels"))

instance ToJSON ClusterSelector where
        toJSON ClusterSelector'{..}
          = object
              (catMaybes
                 [("zone" .=) <$> _csZone,
                  ("clusterLabels" .=) <$> _csClusterLabels])

-- | Job scheduling options.
--
-- /See:/ 'jobScheduling' smart constructor.
newtype JobScheduling =
  JobScheduling'
    { _jsMaxFailuresPerHour :: Maybe (Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'JobScheduling' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jsMaxFailuresPerHour'
jobScheduling
    :: JobScheduling
jobScheduling = JobScheduling' {_jsMaxFailuresPerHour = Nothing}


-- | Optional. Maximum number of times per hour a driver may be restarted as
-- a result of driver terminating with non-zero code before job is reported
-- failed.A job may be reported as thrashing if driver exits with non-zero
-- code 4 times within 10 minute window.Maximum value is 10.
jsMaxFailuresPerHour :: Lens' JobScheduling (Maybe Int32)
jsMaxFailuresPerHour
  = lens _jsMaxFailuresPerHour
      (\ s a -> s{_jsMaxFailuresPerHour = a})
      . mapping _Coerce

instance FromJSON JobScheduling where
        parseJSON
          = withObject "JobScheduling"
              (\ o ->
                 JobScheduling' <$> (o .:? "maxFailuresPerHour"))

instance ToJSON JobScheduling where
        toJSON JobScheduling'{..}
          = object
              (catMaybes
                 [("maxFailuresPerHour" .=) <$>
                    _jsMaxFailuresPerHour])

-- | Specifies the config of disk options for a group of VM instances.
--
-- /See:/ 'diskConfig' smart constructor.
data DiskConfig =
  DiskConfig'
    { _dcNumLocalSsds   :: !(Maybe (Textual Int32))
    , _dcBootDiskType   :: !(Maybe Text)
    , _dcBootDiskSizeGb :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DiskConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcNumLocalSsds'
--
-- * 'dcBootDiskType'
--
-- * 'dcBootDiskSizeGb'
diskConfig
    :: DiskConfig
diskConfig =
  DiskConfig'
    { _dcNumLocalSsds = Nothing
    , _dcBootDiskType = Nothing
    , _dcBootDiskSizeGb = Nothing
    }


-- | Optional. Number of attached SSDs, from 0 to 4 (default is 0). If SSDs
-- are not attached, the boot disk is used to store runtime logs and HDFS
-- (https:\/\/hadoop.apache.org\/docs\/r1.2.1\/hdfs_user_guide.html) data.
-- If one or more SSDs are attached, this runtime bulk data is spread
-- across them, and the boot disk contains only basic config and installed
-- binaries.
dcNumLocalSsds :: Lens' DiskConfig (Maybe Int32)
dcNumLocalSsds
  = lens _dcNumLocalSsds
      (\ s a -> s{_dcNumLocalSsds = a})
      . mapping _Coerce

-- | Optional. Type of the boot disk (default is \"pd-standard\"). Valid
-- values: \"pd-ssd\" (Persistent Disk Solid State Drive) or
-- \"pd-standard\" (Persistent Disk Hard Disk Drive).
dcBootDiskType :: Lens' DiskConfig (Maybe Text)
dcBootDiskType
  = lens _dcBootDiskType
      (\ s a -> s{_dcBootDiskType = a})

-- | Optional. Size in GB of the boot disk (default is 500GB).
dcBootDiskSizeGb :: Lens' DiskConfig (Maybe Int32)
dcBootDiskSizeGb
  = lens _dcBootDiskSizeGb
      (\ s a -> s{_dcBootDiskSizeGb = a})
      . mapping _Coerce

instance FromJSON DiskConfig where
        parseJSON
          = withObject "DiskConfig"
              (\ o ->
                 DiskConfig' <$>
                   (o .:? "numLocalSsds") <*> (o .:? "bootDiskType") <*>
                     (o .:? "bootDiskSizeGb"))

instance ToJSON DiskConfig where
        toJSON DiskConfig'{..}
          = object
              (catMaybes
                 [("numLocalSsds" .=) <$> _dcNumLocalSsds,
                  ("bootDiskType" .=) <$> _dcBootDiskType,
                  ("bootDiskSizeGb" .=) <$> _dcBootDiskSizeGb])

-- | Output only. Labels associated with the operation
--
-- /See:/ 'clusterOperationMetadataLabels' smart constructor.
newtype ClusterOperationMetadataLabels =
  ClusterOperationMetadataLabels'
    { _comlAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ClusterOperationMetadataLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'comlAddtional'
clusterOperationMetadataLabels
    :: HashMap Text Text -- ^ 'comlAddtional'
    -> ClusterOperationMetadataLabels
clusterOperationMetadataLabels pComlAddtional_ =
  ClusterOperationMetadataLabels' {_comlAddtional = _Coerce # pComlAddtional_}


comlAddtional :: Lens' ClusterOperationMetadataLabels (HashMap Text Text)
comlAddtional
  = lens _comlAddtional
      (\ s a -> s{_comlAddtional = a})
      . _Coerce

instance FromJSON ClusterOperationMetadataLabels
         where
        parseJSON
          = withObject "ClusterOperationMetadataLabels"
              (\ o ->
                 ClusterOperationMetadataLabels' <$>
                   (parseJSONObject o))

instance ToJSON ClusterOperationMetadataLabels where
        toJSON = toJSON . _comlAddtional

-- | Represents an expression text. Example: title: \"User account presence\"
-- description: \"Determines whether the request has a user account\"
-- expression: \"size(request.user) > 0\"
--
-- /See:/ 'expr' smart constructor.
data Expr =
  Expr'
    { _eLocation    :: !(Maybe Text)
    , _eExpression  :: !(Maybe Text)
    , _eTitle       :: !(Maybe Text)
    , _eDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Expr' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eLocation'
--
-- * 'eExpression'
--
-- * 'eTitle'
--
-- * 'eDescription'
expr
    :: Expr
expr =
  Expr'
    { _eLocation = Nothing
    , _eExpression = Nothing
    , _eTitle = Nothing
    , _eDescription = Nothing
    }


-- | An optional string indicating the location of the expression for error
-- reporting, e.g. a file name and a position in the file.
eLocation :: Lens' Expr (Maybe Text)
eLocation
  = lens _eLocation (\ s a -> s{_eLocation = a})

-- | Textual representation of an expression in Common Expression Language
-- syntax.The application context of the containing message determines
-- which well-known feature set of CEL is supported.
eExpression :: Lens' Expr (Maybe Text)
eExpression
  = lens _eExpression (\ s a -> s{_eExpression = a})

-- | An optional title for the expression, i.e. a short string describing its
-- purpose. This can be used e.g. in UIs which allow to enter the
-- expression.
eTitle :: Lens' Expr (Maybe Text)
eTitle = lens _eTitle (\ s a -> s{_eTitle = a})

-- | An optional description of the expression. This is a longer text which
-- describes the expression, e.g. when hovered over it in a UI.
eDescription :: Lens' Expr (Maybe Text)
eDescription
  = lens _eDescription (\ s a -> s{_eDescription = a})

instance FromJSON Expr where
        parseJSON
          = withObject "Expr"
              (\ o ->
                 Expr' <$>
                   (o .:? "location") <*> (o .:? "expression") <*>
                     (o .:? "title")
                     <*> (o .:? "description"))

instance ToJSON Expr where
        toJSON Expr'{..}
          = object
              (catMaybes
                 [("location" .=) <$> _eLocation,
                  ("expression" .=) <$> _eExpression,
                  ("title" .=) <$> _eTitle,
                  ("description" .=) <$> _eDescription])

-- | The response message for Operations.ListOperations.
--
-- /See:/ 'listOperationsResponse' smart constructor.
data ListOperationsResponse =
  ListOperationsResponse'
    { _lorNextPageToken :: !(Maybe Text)
    , _lorOperations    :: !(Maybe [Operation])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListOperationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lorNextPageToken'
--
-- * 'lorOperations'
listOperationsResponse
    :: ListOperationsResponse
listOperationsResponse =
  ListOperationsResponse'
    {_lorNextPageToken = Nothing, _lorOperations = Nothing}


-- | The standard List next-page token.
lorNextPageToken :: Lens' ListOperationsResponse (Maybe Text)
lorNextPageToken
  = lens _lorNextPageToken
      (\ s a -> s{_lorNextPageToken = a})

-- | A list of operations that matches the specified filter in the request.
lorOperations :: Lens' ListOperationsResponse [Operation]
lorOperations
  = lens _lorOperations
      (\ s a -> s{_lorOperations = a})
      . _Default
      . _Coerce

instance FromJSON ListOperationsResponse where
        parseJSON
          = withObject "ListOperationsResponse"
              (\ o ->
                 ListOperationsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "operations" .!= mempty))

instance ToJSON ListOperationsResponse where
        toJSON ListOperationsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lorNextPageToken,
                  ("operations" .=) <$> _lorOperations])

-- | Optional. Mapping of query variable names to values (equivalent to the
-- Hive command: SET name=\"value\";).
--
-- /See:/ 'hiveJobScriptVariables' smart constructor.
newtype HiveJobScriptVariables =
  HiveJobScriptVariables'
    { _hjsvAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HiveJobScriptVariables' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hjsvAddtional'
hiveJobScriptVariables
    :: HashMap Text Text -- ^ 'hjsvAddtional'
    -> HiveJobScriptVariables
hiveJobScriptVariables pHjsvAddtional_ =
  HiveJobScriptVariables' {_hjsvAddtional = _Coerce # pHjsvAddtional_}


hjsvAddtional :: Lens' HiveJobScriptVariables (HashMap Text Text)
hjsvAddtional
  = lens _hjsvAddtional
      (\ s a -> s{_hjsvAddtional = a})
      . _Coerce

instance FromJSON HiveJobScriptVariables where
        parseJSON
          = withObject "HiveJobScriptVariables"
              (\ o ->
                 HiveJobScriptVariables' <$> (parseJSONObject o))

instance ToJSON HiveJobScriptVariables where
        toJSON = toJSON . _hjsvAddtional

-- | Request message for GetIamPolicy method.
--
-- /See:/ 'getIAMPolicyRequest' smart constructor.
data GetIAMPolicyRequest =
  GetIAMPolicyRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GetIAMPolicyRequest' with the minimum fields required to make a request.
--
getIAMPolicyRequest
    :: GetIAMPolicyRequest
getIAMPolicyRequest = GetIAMPolicyRequest'


instance FromJSON GetIAMPolicyRequest where
        parseJSON
          = withObject "GetIAMPolicyRequest"
              (\ o -> pure GetIAMPolicyRequest')

instance ToJSON GetIAMPolicyRequest where
        toJSON = const emptyObject

-- | Specifies workflow execution target.Either managed_cluster or
-- cluster_selector is required.
--
-- /See:/ 'workflowTemplatePlacement' smart constructor.
data WorkflowTemplatePlacement =
  WorkflowTemplatePlacement'
    { _wtpClusterSelector :: !(Maybe ClusterSelector)
    , _wtpManagedCluster  :: !(Maybe ManagedCluster)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WorkflowTemplatePlacement' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wtpClusterSelector'
--
-- * 'wtpManagedCluster'
workflowTemplatePlacement
    :: WorkflowTemplatePlacement
workflowTemplatePlacement =
  WorkflowTemplatePlacement'
    {_wtpClusterSelector = Nothing, _wtpManagedCluster = Nothing}


-- | Optional. A selector that chooses target cluster for jobs based on
-- metadata.The selector is evaluated at the time each job is submitted.
wtpClusterSelector :: Lens' WorkflowTemplatePlacement (Maybe ClusterSelector)
wtpClusterSelector
  = lens _wtpClusterSelector
      (\ s a -> s{_wtpClusterSelector = a})

-- | Optional. A cluster that is managed by the workflow.
wtpManagedCluster :: Lens' WorkflowTemplatePlacement (Maybe ManagedCluster)
wtpManagedCluster
  = lens _wtpManagedCluster
      (\ s a -> s{_wtpManagedCluster = a})

instance FromJSON WorkflowTemplatePlacement where
        parseJSON
          = withObject "WorkflowTemplatePlacement"
              (\ o ->
                 WorkflowTemplatePlacement' <$>
                   (o .:? "clusterSelector") <*>
                     (o .:? "managedCluster"))

instance ToJSON WorkflowTemplatePlacement where
        toJSON WorkflowTemplatePlacement'{..}
          = object
              (catMaybes
                 [("clusterSelector" .=) <$> _wtpClusterSelector,
                  ("managedCluster" .=) <$> _wtpManagedCluster])

-- | Describes the identifying information, config, and status of a cluster
-- of Compute Engine instances.
--
-- /See:/ 'cluster' smart constructor.
data Cluster =
  Cluster'
    { _cStatus        :: !(Maybe ClusterStatus)
    , _cMetrics       :: !(Maybe ClusterMetrics)
    , _cClusterUuid   :: !(Maybe Text)
    , _cConfig        :: !(Maybe ClusterConfig)
    , _cClusterName   :: !(Maybe Text)
    , _cLabels        :: !(Maybe ClusterLabels)
    , _cProjectId     :: !(Maybe Text)
    , _cStatusHistory :: !(Maybe [ClusterStatus])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Cluster' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cStatus'
--
-- * 'cMetrics'
--
-- * 'cClusterUuid'
--
-- * 'cConfig'
--
-- * 'cClusterName'
--
-- * 'cLabels'
--
-- * 'cProjectId'
--
-- * 'cStatusHistory'
cluster
    :: Cluster
cluster =
  Cluster'
    { _cStatus = Nothing
    , _cMetrics = Nothing
    , _cClusterUuid = Nothing
    , _cConfig = Nothing
    , _cClusterName = Nothing
    , _cLabels = Nothing
    , _cProjectId = Nothing
    , _cStatusHistory = Nothing
    }


-- | Output only. Cluster status.
cStatus :: Lens' Cluster (Maybe ClusterStatus)
cStatus = lens _cStatus (\ s a -> s{_cStatus = a})

-- | Contains cluster daemon metrics such as HDFS and YARN stats.Beta
-- Feature: This report is available for testing purposes only. It may be
-- changed before final release.
cMetrics :: Lens' Cluster (Maybe ClusterMetrics)
cMetrics = lens _cMetrics (\ s a -> s{_cMetrics = a})

-- | Output only. A cluster UUID (Unique Universal Identifier). Cloud
-- Dataproc generates this value when it creates the cluster.
cClusterUuid :: Lens' Cluster (Maybe Text)
cClusterUuid
  = lens _cClusterUuid (\ s a -> s{_cClusterUuid = a})

-- | Required. The cluster config. Note that Cloud Dataproc may set default
-- values, and values may change when clusters are updated.
cConfig :: Lens' Cluster (Maybe ClusterConfig)
cConfig = lens _cConfig (\ s a -> s{_cConfig = a})

-- | Required. The cluster name. Cluster names within a project must be
-- unique. Names of deleted clusters can be reused.
cClusterName :: Lens' Cluster (Maybe Text)
cClusterName
  = lens _cClusterName (\ s a -> s{_cClusterName = a})

-- | Optional. The labels to associate with this cluster. Label keys must
-- contain 1 to 63 characters, and must conform to RFC 1035
-- (https:\/\/www.ietf.org\/rfc\/rfc1035.txt). Label values may be empty,
-- but, if present, must contain 1 to 63 characters, and must conform to
-- RFC 1035 (https:\/\/www.ietf.org\/rfc\/rfc1035.txt). No more than 32
-- labels can be associated with a cluster.
cLabels :: Lens' Cluster (Maybe ClusterLabels)
cLabels = lens _cLabels (\ s a -> s{_cLabels = a})

-- | Required. The Google Cloud Platform project ID that the cluster belongs
-- to.
cProjectId :: Lens' Cluster (Maybe Text)
cProjectId
  = lens _cProjectId (\ s a -> s{_cProjectId = a})

-- | Output only. The previous cluster status.
cStatusHistory :: Lens' Cluster [ClusterStatus]
cStatusHistory
  = lens _cStatusHistory
      (\ s a -> s{_cStatusHistory = a})
      . _Default
      . _Coerce

instance FromJSON Cluster where
        parseJSON
          = withObject "Cluster"
              (\ o ->
                 Cluster' <$>
                   (o .:? "status") <*> (o .:? "metrics") <*>
                     (o .:? "clusterUuid")
                     <*> (o .:? "config")
                     <*> (o .:? "clusterName")
                     <*> (o .:? "labels")
                     <*> (o .:? "projectId")
                     <*> (o .:? "statusHistory" .!= mempty))

instance ToJSON Cluster where
        toJSON Cluster'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _cStatus,
                  ("metrics" .=) <$> _cMetrics,
                  ("clusterUuid" .=) <$> _cClusterUuid,
                  ("config" .=) <$> _cConfig,
                  ("clusterName" .=) <$> _cClusterName,
                  ("labels" .=) <$> _cLabels,
                  ("projectId" .=) <$> _cProjectId,
                  ("statusHistory" .=) <$> _cStatusHistory])

-- | Optional. The labels to associate with this cluster.Label keys must be
-- between 1 and 63 characters long, and must conform to the following PCRE
-- regular expression: \\p{Ll}\\p{Lo}{0,62}Label values must be between 1
-- and 63 characters long, and must conform to the following PCRE regular
-- expression: \\p{Ll}\\p{Lo}\\p{N}_-{0,63}No more than 32 labels can be
-- associated with a given cluster.
--
-- /See:/ 'managedClusterLabels' smart constructor.
newtype ManagedClusterLabels =
  ManagedClusterLabels'
    { _mclAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagedClusterLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mclAddtional'
managedClusterLabels
    :: HashMap Text Text -- ^ 'mclAddtional'
    -> ManagedClusterLabels
managedClusterLabels pMclAddtional_ =
  ManagedClusterLabels' {_mclAddtional = _Coerce # pMclAddtional_}


mclAddtional :: Lens' ManagedClusterLabels (HashMap Text Text)
mclAddtional
  = lens _mclAddtional (\ s a -> s{_mclAddtional = a})
      . _Coerce

instance FromJSON ManagedClusterLabels where
        parseJSON
          = withObject "ManagedClusterLabels"
              (\ o ->
                 ManagedClusterLabels' <$> (parseJSONObject o))

instance ToJSON ManagedClusterLabels where
        toJSON = toJSON . _mclAddtional

-- | Configuration for parameter validation.
--
-- /See:/ 'parameterValidation' smart constructor.
data ParameterValidation =
  ParameterValidation'
    { _pvRegex  :: !(Maybe RegexValidation)
    , _pvValues :: !(Maybe ValueValidation)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ParameterValidation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pvRegex'
--
-- * 'pvValues'
parameterValidation
    :: ParameterValidation
parameterValidation =
  ParameterValidation' {_pvRegex = Nothing, _pvValues = Nothing}


-- | Validation based on regular expressions.
pvRegex :: Lens' ParameterValidation (Maybe RegexValidation)
pvRegex = lens _pvRegex (\ s a -> s{_pvRegex = a})

-- | Validation based on a list of allowed values.
pvValues :: Lens' ParameterValidation (Maybe ValueValidation)
pvValues = lens _pvValues (\ s a -> s{_pvValues = a})

instance FromJSON ParameterValidation where
        parseJSON
          = withObject "ParameterValidation"
              (\ o ->
                 ParameterValidation' <$>
                   (o .:? "regex") <*> (o .:? "values"))

instance ToJSON ParameterValidation where
        toJSON ParameterValidation'{..}
          = object
              (catMaybes
                 [("regex" .=) <$> _pvRegex,
                  ("values" .=) <$> _pvValues])

-- | Optional. The labels to associate with this job. Label keys must contain
-- 1 to 63 characters, and must conform to RFC 1035
-- (https:\/\/www.ietf.org\/rfc\/rfc1035.txt). Label values may be empty,
-- but, if present, must contain 1 to 63 characters, and must conform to
-- RFC 1035 (https:\/\/www.ietf.org\/rfc\/rfc1035.txt). No more than 32
-- labels can be associated with a job.
--
-- /See:/ 'jobLabels' smart constructor.
newtype JobLabels =
  JobLabels'
    { _jlAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'JobLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jlAddtional'
jobLabels
    :: HashMap Text Text -- ^ 'jlAddtional'
    -> JobLabels
jobLabels pJlAddtional_ = JobLabels' {_jlAddtional = _Coerce # pJlAddtional_}


jlAddtional :: Lens' JobLabels (HashMap Text Text)
jlAddtional
  = lens _jlAddtional (\ s a -> s{_jlAddtional = a}) .
      _Coerce

instance FromJSON JobLabels where
        parseJSON
          = withObject "JobLabels"
              (\ o -> JobLabels' <$> (parseJSONObject o))

instance ToJSON JobLabels where
        toJSON = toJSON . _jlAddtional

-- | A request to submit a job.
--
-- /See:/ 'submitJobRequest' smart constructor.
data SubmitJobRequest =
  SubmitJobRequest'
    { _sjrRequestId :: !(Maybe Text)
    , _sjrJob       :: !(Maybe Job)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SubmitJobRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sjrRequestId'
--
-- * 'sjrJob'
submitJobRequest
    :: SubmitJobRequest
submitJobRequest =
  SubmitJobRequest' {_sjrRequestId = Nothing, _sjrJob = Nothing}


-- | Optional. A unique id used to identify the request. If the server
-- receives two SubmitJobRequest requests with the same id, then the second
-- request will be ignored and the first Job created and stored in the
-- backend is returned.It is recommended to always set this value to a UUID
-- (https:\/\/en.wikipedia.org\/wiki\/Universally_unique_identifier).The id
-- must contain only letters (a-z, A-Z), numbers (0-9), underscores (_),
-- and hyphens (-). The maximum length is 40 characters.
sjrRequestId :: Lens' SubmitJobRequest (Maybe Text)
sjrRequestId
  = lens _sjrRequestId (\ s a -> s{_sjrRequestId = a})

-- | Required. The job resource.
sjrJob :: Lens' SubmitJobRequest (Maybe Job)
sjrJob = lens _sjrJob (\ s a -> s{_sjrJob = a})

instance FromJSON SubmitJobRequest where
        parseJSON
          = withObject "SubmitJobRequest"
              (\ o ->
                 SubmitJobRequest' <$>
                   (o .:? "requestId") <*> (o .:? "job"))

instance ToJSON SubmitJobRequest where
        toJSON SubmitJobRequest'{..}
          = object
              (catMaybes
                 [("requestId" .=) <$> _sjrRequestId,
                  ("job" .=) <$> _sjrJob])

-- | Contains cluster daemon metrics, such as HDFS and YARN stats.Beta
-- Feature: This report is available for testing purposes only. It may be
-- changed before final release.
--
-- /See:/ 'clusterMetrics' smart constructor.
data ClusterMetrics =
  ClusterMetrics'
    { _cmYarnMetrics :: !(Maybe ClusterMetricsYarnMetrics)
    , _cmHdfsMetrics :: !(Maybe ClusterMetricsHdfsMetrics)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ClusterMetrics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmYarnMetrics'
--
-- * 'cmHdfsMetrics'
clusterMetrics
    :: ClusterMetrics
clusterMetrics =
  ClusterMetrics' {_cmYarnMetrics = Nothing, _cmHdfsMetrics = Nothing}


-- | The YARN metrics.
cmYarnMetrics :: Lens' ClusterMetrics (Maybe ClusterMetricsYarnMetrics)
cmYarnMetrics
  = lens _cmYarnMetrics
      (\ s a -> s{_cmYarnMetrics = a})

-- | The HDFS metrics.
cmHdfsMetrics :: Lens' ClusterMetrics (Maybe ClusterMetricsHdfsMetrics)
cmHdfsMetrics
  = lens _cmHdfsMetrics
      (\ s a -> s{_cmHdfsMetrics = a})

instance FromJSON ClusterMetrics where
        parseJSON
          = withObject "ClusterMetrics"
              (\ o ->
                 ClusterMetrics' <$>
                   (o .:? "yarnMetrics") <*> (o .:? "hdfsMetrics"))

instance ToJSON ClusterMetrics where
        toJSON ClusterMetrics'{..}
          = object
              (catMaybes
                 [("yarnMetrics" .=) <$> _cmYarnMetrics,
                  ("hdfsMetrics" .=) <$> _cmHdfsMetrics])

-- | This resource represents a long-running operation that is the result of
-- a network API call.
--
-- /See:/ 'operation' smart constructor.
data Operation =
  Operation'
    { _oDone     :: !(Maybe Bool)
    , _oError    :: !(Maybe Status)
    , _oResponse :: !(Maybe OperationResponse)
    , _oName     :: !(Maybe Text)
    , _oMetadata :: !(Maybe OperationMetadata)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Operation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oDone'
--
-- * 'oError'
--
-- * 'oResponse'
--
-- * 'oName'
--
-- * 'oMetadata'
operation
    :: Operation
operation =
  Operation'
    { _oDone = Nothing
    , _oError = Nothing
    , _oResponse = Nothing
    , _oName = Nothing
    , _oMetadata = Nothing
    }


-- | If the value is false, it means the operation is still in progress. If
-- true, the operation is completed, and either error or response is
-- available.
oDone :: Lens' Operation (Maybe Bool)
oDone = lens _oDone (\ s a -> s{_oDone = a})

-- | The error result of the operation in case of failure or cancellation.
oError :: Lens' Operation (Maybe Status)
oError = lens _oError (\ s a -> s{_oError = a})

-- | The normal response of the operation in case of success. If the original
-- method returns no data on success, such as Delete, the response is
-- google.protobuf.Empty. If the original method is standard
-- Get\/Create\/Update, the response should be the resource. For other
-- methods, the response should have the type XxxResponse, where Xxx is the
-- original method name. For example, if the original method name is
-- TakeSnapshot(), the inferred response type is TakeSnapshotResponse.
oResponse :: Lens' Operation (Maybe OperationResponse)
oResponse
  = lens _oResponse (\ s a -> s{_oResponse = a})

-- | The server-assigned name, which is only unique within the same service
-- that originally returns it. If you use the default HTTP mapping, the
-- name should have the format of operations\/some\/unique\/name.
oName :: Lens' Operation (Maybe Text)
oName = lens _oName (\ s a -> s{_oName = a})

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
oMetadata :: Lens' Operation (Maybe OperationMetadata)
oMetadata
  = lens _oMetadata (\ s a -> s{_oMetadata = a})

instance FromJSON Operation where
        parseJSON
          = withObject "Operation"
              (\ o ->
                 Operation' <$>
                   (o .:? "done") <*> (o .:? "error") <*>
                     (o .:? "response")
                     <*> (o .:? "name")
                     <*> (o .:? "metadata"))

instance ToJSON Operation where
        toJSON Operation'{..}
          = object
              (catMaybes
                 [("done" .=) <$> _oDone, ("error" .=) <$> _oError,
                  ("response" .=) <$> _oResponse,
                  ("name" .=) <$> _oName,
                  ("metadata" .=) <$> _oMetadata])

-- | A generic empty message that you can re-use to avoid defining duplicated
-- empty messages in your APIs. A typical example is to use it as the
-- request or the response type of an API method. For instance: service Foo
-- { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The
-- JSON representation for Empty is empty JSON object {}.
--
-- /See:/ 'empty' smart constructor.
data Empty =
  Empty'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Empty' with the minimum fields required to make a request.
--
empty
    :: Empty
empty = Empty'


instance FromJSON Empty where
        parseJSON = withObject "Empty" (\ o -> pure Empty')

instance ToJSON Empty where
        toJSON = const emptyObject

-- | A Cloud Dataproc job for running Apache Hive
-- (https:\/\/hive.apache.org\/) queries on YARN.
--
-- /See:/ 'hiveJob' smart constructor.
data HiveJob =
  HiveJob'
    { _hjQueryFileURI      :: !(Maybe Text)
    , _hjJarFileURIs       :: !(Maybe [Text])
    , _hjScriptVariables   :: !(Maybe HiveJobScriptVariables)
    , _hjQueryList         :: !(Maybe QueryList)
    , _hjContinueOnFailure :: !(Maybe Bool)
    , _hjProperties        :: !(Maybe HiveJobProperties)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HiveJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hjQueryFileURI'
--
-- * 'hjJarFileURIs'
--
-- * 'hjScriptVariables'
--
-- * 'hjQueryList'
--
-- * 'hjContinueOnFailure'
--
-- * 'hjProperties'
hiveJob
    :: HiveJob
hiveJob =
  HiveJob'
    { _hjQueryFileURI = Nothing
    , _hjJarFileURIs = Nothing
    , _hjScriptVariables = Nothing
    , _hjQueryList = Nothing
    , _hjContinueOnFailure = Nothing
    , _hjProperties = Nothing
    }


-- | The HCFS URI of the script that contains Hive queries.
hjQueryFileURI :: Lens' HiveJob (Maybe Text)
hjQueryFileURI
  = lens _hjQueryFileURI
      (\ s a -> s{_hjQueryFileURI = a})

-- | Optional. HCFS URIs of jar files to add to the CLASSPATH of the Hive
-- server and Hadoop MapReduce (MR) tasks. Can contain Hive SerDes and
-- UDFs.
hjJarFileURIs :: Lens' HiveJob [Text]
hjJarFileURIs
  = lens _hjJarFileURIs
      (\ s a -> s{_hjJarFileURIs = a})
      . _Default
      . _Coerce

-- | Optional. Mapping of query variable names to values (equivalent to the
-- Hive command: SET name=\"value\";).
hjScriptVariables :: Lens' HiveJob (Maybe HiveJobScriptVariables)
hjScriptVariables
  = lens _hjScriptVariables
      (\ s a -> s{_hjScriptVariables = a})

-- | A list of queries.
hjQueryList :: Lens' HiveJob (Maybe QueryList)
hjQueryList
  = lens _hjQueryList (\ s a -> s{_hjQueryList = a})

-- | Optional. Whether to continue executing queries if a query fails. The
-- default value is false. Setting to true can be useful when executing
-- independent parallel queries.
hjContinueOnFailure :: Lens' HiveJob (Maybe Bool)
hjContinueOnFailure
  = lens _hjContinueOnFailure
      (\ s a -> s{_hjContinueOnFailure = a})

-- | Optional. A mapping of property names and values, used to configure
-- Hive. Properties that conflict with values set by the Cloud Dataproc API
-- may be overwritten. Can include properties set in
-- \/etc\/hadoop\/conf\/*-site.xml, \/etc\/hive\/conf\/hive-site.xml, and
-- classes in user code.
hjProperties :: Lens' HiveJob (Maybe HiveJobProperties)
hjProperties
  = lens _hjProperties (\ s a -> s{_hjProperties = a})

instance FromJSON HiveJob where
        parseJSON
          = withObject "HiveJob"
              (\ o ->
                 HiveJob' <$>
                   (o .:? "queryFileUri") <*>
                     (o .:? "jarFileUris" .!= mempty)
                     <*> (o .:? "scriptVariables")
                     <*> (o .:? "queryList")
                     <*> (o .:? "continueOnFailure")
                     <*> (o .:? "properties"))

instance ToJSON HiveJob where
        toJSON HiveJob'{..}
          = object
              (catMaybes
                 [("queryFileUri" .=) <$> _hjQueryFileURI,
                  ("jarFileUris" .=) <$> _hjJarFileURIs,
                  ("scriptVariables" .=) <$> _hjScriptVariables,
                  ("queryList" .=) <$> _hjQueryList,
                  ("continueOnFailure" .=) <$> _hjContinueOnFailure,
                  ("properties" .=) <$> _hjProperties])

-- | Optional. The labels to associate with this job.Label keys must be
-- between 1 and 63 characters long, and must conform to the following
-- regular expression: \\p{Ll}\\p{Lo}{0,62}Label values must be between 1
-- and 63 characters long, and must conform to the following regular
-- expression: \\p{Ll}\\p{Lo}\\p{N}_-{0,63}No more than 32 labels can be
-- associated with a given job.
--
-- /See:/ 'orderedJobLabels' smart constructor.
newtype OrderedJobLabels =
  OrderedJobLabels'
    { _ojlAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderedJobLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ojlAddtional'
orderedJobLabels
    :: HashMap Text Text -- ^ 'ojlAddtional'
    -> OrderedJobLabels
orderedJobLabels pOjlAddtional_ =
  OrderedJobLabels' {_ojlAddtional = _Coerce # pOjlAddtional_}


ojlAddtional :: Lens' OrderedJobLabels (HashMap Text Text)
ojlAddtional
  = lens _ojlAddtional (\ s a -> s{_ojlAddtional = a})
      . _Coerce

instance FromJSON OrderedJobLabels where
        parseJSON
          = withObject "OrderedJobLabels"
              (\ o -> OrderedJobLabels' <$> (parseJSONObject o))

instance ToJSON OrderedJobLabels where
        toJSON = toJSON . _ojlAddtional

-- | Required. The cluster labels. Cluster must have all labels to match.
--
-- /See:/ 'clusterSelectorClusterLabels' smart constructor.
newtype ClusterSelectorClusterLabels =
  ClusterSelectorClusterLabels'
    { _csclAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ClusterSelectorClusterLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csclAddtional'
clusterSelectorClusterLabels
    :: HashMap Text Text -- ^ 'csclAddtional'
    -> ClusterSelectorClusterLabels
clusterSelectorClusterLabels pCsclAddtional_ =
  ClusterSelectorClusterLabels' {_csclAddtional = _Coerce # pCsclAddtional_}


csclAddtional :: Lens' ClusterSelectorClusterLabels (HashMap Text Text)
csclAddtional
  = lens _csclAddtional
      (\ s a -> s{_csclAddtional = a})
      . _Coerce

instance FromJSON ClusterSelectorClusterLabels where
        parseJSON
          = withObject "ClusterSelectorClusterLabels"
              (\ o ->
                 ClusterSelectorClusterLabels' <$>
                   (parseJSONObject o))

instance ToJSON ClusterSelectorClusterLabels where
        toJSON = toJSON . _csclAddtional

-- | Optional. Mapping of query variable names to values (equivalent to the
-- Spark SQL command: SET name=\"value\";).
--
-- /See:/ 'sparkSQLJobScriptVariables' smart constructor.
newtype SparkSQLJobScriptVariables =
  SparkSQLJobScriptVariables'
    { _ssqljsvAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SparkSQLJobScriptVariables' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssqljsvAddtional'
sparkSQLJobScriptVariables
    :: HashMap Text Text -- ^ 'ssqljsvAddtional'
    -> SparkSQLJobScriptVariables
sparkSQLJobScriptVariables pSsqljsvAddtional_ =
  SparkSQLJobScriptVariables' {_ssqljsvAddtional = _Coerce # pSsqljsvAddtional_}


ssqljsvAddtional :: Lens' SparkSQLJobScriptVariables (HashMap Text Text)
ssqljsvAddtional
  = lens _ssqljsvAddtional
      (\ s a -> s{_ssqljsvAddtional = a})
      . _Coerce

instance FromJSON SparkSQLJobScriptVariables where
        parseJSON
          = withObject "SparkSQLJobScriptVariables"
              (\ o ->
                 SparkSQLJobScriptVariables' <$> (parseJSONObject o))

instance ToJSON SparkSQLJobScriptVariables where
        toJSON = toJSON . _ssqljsvAddtional

-- | Optional. A mapping of property names to values, used to configure Pig.
-- Properties that conflict with values set by the Cloud Dataproc API may
-- be overwritten. Can include properties set in
-- \/etc\/hadoop\/conf\/*-site.xml, \/etc\/pig\/conf\/pig.properties, and
-- classes in user code.
--
-- /See:/ 'pigJobProperties' smart constructor.
newtype PigJobProperties =
  PigJobProperties'
    { _pjpAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PigJobProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pjpAddtional'
pigJobProperties
    :: HashMap Text Text -- ^ 'pjpAddtional'
    -> PigJobProperties
pigJobProperties pPjpAddtional_ =
  PigJobProperties' {_pjpAddtional = _Coerce # pPjpAddtional_}


pjpAddtional :: Lens' PigJobProperties (HashMap Text Text)
pjpAddtional
  = lens _pjpAddtional (\ s a -> s{_pjpAddtional = a})
      . _Coerce

instance FromJSON PigJobProperties where
        parseJSON
          = withObject "PigJobProperties"
              (\ o -> PigJobProperties' <$> (parseJSONObject o))

instance ToJSON PigJobProperties where
        toJSON = toJSON . _pjpAddtional

-- | The cluster config.
--
-- /See:/ 'clusterConfig' smart constructor.
data ClusterConfig =
  ClusterConfig'
    { _ccWorkerConfig          :: !(Maybe InstanceGroupConfig)
    , _ccInitializationActions :: !(Maybe [NodeInitializationAction])
    , _ccMasterConfig          :: !(Maybe InstanceGroupConfig)
    , _ccGceClusterConfig      :: !(Maybe GceClusterConfig)
    , _ccConfigBucket          :: !(Maybe Text)
    , _ccEncryptionConfig      :: !(Maybe EncryptionConfig)
    , _ccSoftwareConfig        :: !(Maybe SoftwareConfig)
    , _ccSecondaryWorkerConfig :: !(Maybe InstanceGroupConfig)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ClusterConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccWorkerConfig'
--
-- * 'ccInitializationActions'
--
-- * 'ccMasterConfig'
--
-- * 'ccGceClusterConfig'
--
-- * 'ccConfigBucket'
--
-- * 'ccEncryptionConfig'
--
-- * 'ccSoftwareConfig'
--
-- * 'ccSecondaryWorkerConfig'
clusterConfig
    :: ClusterConfig
clusterConfig =
  ClusterConfig'
    { _ccWorkerConfig = Nothing
    , _ccInitializationActions = Nothing
    , _ccMasterConfig = Nothing
    , _ccGceClusterConfig = Nothing
    , _ccConfigBucket = Nothing
    , _ccEncryptionConfig = Nothing
    , _ccSoftwareConfig = Nothing
    , _ccSecondaryWorkerConfig = Nothing
    }


-- | Optional. The Compute Engine config settings for worker instances in a
-- cluster.
ccWorkerConfig :: Lens' ClusterConfig (Maybe InstanceGroupConfig)
ccWorkerConfig
  = lens _ccWorkerConfig
      (\ s a -> s{_ccWorkerConfig = a})

-- | Optional. Commands to execute on each node after config is completed. By
-- default, executables are run on master and all worker nodes. You can
-- test a node\'s role metadata to run an executable on a master or worker
-- node, as shown below using curl (you can also use wget): ROLE=$(curl -H
-- Metadata-Flavor:Google
-- http:\/\/metadata\/computeMetadata\/v1\/instance\/attributes\/dataproc-role)
-- if [[ \"${ROLE}\" == \'Master\' ]]; then ... master specific actions ...
-- else ... worker specific actions ... fi
ccInitializationActions :: Lens' ClusterConfig [NodeInitializationAction]
ccInitializationActions
  = lens _ccInitializationActions
      (\ s a -> s{_ccInitializationActions = a})
      . _Default
      . _Coerce

-- | Optional. The Compute Engine config settings for the master instance in
-- a cluster.
ccMasterConfig :: Lens' ClusterConfig (Maybe InstanceGroupConfig)
ccMasterConfig
  = lens _ccMasterConfig
      (\ s a -> s{_ccMasterConfig = a})

-- | Optional. The shared Compute Engine config settings for all instances in
-- a cluster.
ccGceClusterConfig :: Lens' ClusterConfig (Maybe GceClusterConfig)
ccGceClusterConfig
  = lens _ccGceClusterConfig
      (\ s a -> s{_ccGceClusterConfig = a})

-- | Optional. A Google Cloud Storage bucket used to stage job dependencies,
-- config files, and job driver console output. If you do not specify a
-- staging bucket, Cloud Dataproc will determine a Cloud Storage location
-- (US, ASIA, or EU) for your cluster\'s staging bucket according to the
-- Google Compute Engine zone where your cluster is deployed, and then
-- create and manage this project-level, per-location bucket (see Cloud
-- Dataproc staging bucket).
ccConfigBucket :: Lens' ClusterConfig (Maybe Text)
ccConfigBucket
  = lens _ccConfigBucket
      (\ s a -> s{_ccConfigBucket = a})

-- | Optional. Encryption settings for the cluster.
ccEncryptionConfig :: Lens' ClusterConfig (Maybe EncryptionConfig)
ccEncryptionConfig
  = lens _ccEncryptionConfig
      (\ s a -> s{_ccEncryptionConfig = a})

-- | Optional. The config settings for software inside the cluster.
ccSoftwareConfig :: Lens' ClusterConfig (Maybe SoftwareConfig)
ccSoftwareConfig
  = lens _ccSoftwareConfig
      (\ s a -> s{_ccSoftwareConfig = a})

-- | Optional. The Compute Engine config settings for additional worker
-- instances in a cluster.
ccSecondaryWorkerConfig :: Lens' ClusterConfig (Maybe InstanceGroupConfig)
ccSecondaryWorkerConfig
  = lens _ccSecondaryWorkerConfig
      (\ s a -> s{_ccSecondaryWorkerConfig = a})

instance FromJSON ClusterConfig where
        parseJSON
          = withObject "ClusterConfig"
              (\ o ->
                 ClusterConfig' <$>
                   (o .:? "workerConfig") <*>
                     (o .:? "initializationActions" .!= mempty)
                     <*> (o .:? "masterConfig")
                     <*> (o .:? "gceClusterConfig")
                     <*> (o .:? "configBucket")
                     <*> (o .:? "encryptionConfig")
                     <*> (o .:? "softwareConfig")
                     <*> (o .:? "secondaryWorkerConfig"))

instance ToJSON ClusterConfig where
        toJSON ClusterConfig'{..}
          = object
              (catMaybes
                 [("workerConfig" .=) <$> _ccWorkerConfig,
                  ("initializationActions" .=) <$>
                    _ccInitializationActions,
                  ("masterConfig" .=) <$> _ccMasterConfig,
                  ("gceClusterConfig" .=) <$> _ccGceClusterConfig,
                  ("configBucket" .=) <$> _ccConfigBucket,
                  ("encryptionConfig" .=) <$> _ccEncryptionConfig,
                  ("softwareConfig" .=) <$> _ccSoftwareConfig,
                  ("secondaryWorkerConfig" .=) <$>
                    _ccSecondaryWorkerConfig])

-- | A request to instantiate a workflow template.
--
-- /See:/ 'instantiateWorkflowTemplateRequest' smart constructor.
data InstantiateWorkflowTemplateRequest =
  InstantiateWorkflowTemplateRequest'
    { _iwtrRequestId  :: !(Maybe Text)
    , _iwtrVersion    :: !(Maybe (Textual Int32))
    , _iwtrParameters :: !(Maybe InstantiateWorkflowTemplateRequestParameters)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstantiateWorkflowTemplateRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iwtrRequestId'
--
-- * 'iwtrVersion'
--
-- * 'iwtrParameters'
instantiateWorkflowTemplateRequest
    :: InstantiateWorkflowTemplateRequest
instantiateWorkflowTemplateRequest =
  InstantiateWorkflowTemplateRequest'
    { _iwtrRequestId = Nothing
    , _iwtrVersion = Nothing
    , _iwtrParameters = Nothing
    }


-- | Optional. A tag that prevents multiple concurrent workflow instances
-- with the same tag from running. This mitigates risk of concurrent
-- instances started due to retries.It is recommended to always set this
-- value to a UUID
-- (https:\/\/en.wikipedia.org\/wiki\/Universally_unique_identifier).The
-- tag must contain only letters (a-z, A-Z), numbers (0-9), underscores
-- (_), and hyphens (-). The maximum length is 40 characters.
iwtrRequestId :: Lens' InstantiateWorkflowTemplateRequest (Maybe Text)
iwtrRequestId
  = lens _iwtrRequestId
      (\ s a -> s{_iwtrRequestId = a})

-- | Optional. The version of workflow template to instantiate. If specified,
-- the workflow will be instantiated only if the current version of the
-- workflow template has the supplied version.This option cannot be used to
-- instantiate a previous version of workflow template.
iwtrVersion :: Lens' InstantiateWorkflowTemplateRequest (Maybe Int32)
iwtrVersion
  = lens _iwtrVersion (\ s a -> s{_iwtrVersion = a}) .
      mapping _Coerce

-- | Optional. Map from parameter names to values that should be used for
-- those parameters. Values may not exceed 100 characters.
iwtrParameters :: Lens' InstantiateWorkflowTemplateRequest (Maybe InstantiateWorkflowTemplateRequestParameters)
iwtrParameters
  = lens _iwtrParameters
      (\ s a -> s{_iwtrParameters = a})

instance FromJSON InstantiateWorkflowTemplateRequest
         where
        parseJSON
          = withObject "InstantiateWorkflowTemplateRequest"
              (\ o ->
                 InstantiateWorkflowTemplateRequest' <$>
                   (o .:? "requestId") <*> (o .:? "version") <*>
                     (o .:? "parameters"))

instance ToJSON InstantiateWorkflowTemplateRequest
         where
        toJSON InstantiateWorkflowTemplateRequest'{..}
          = object
              (catMaybes
                 [("requestId" .=) <$> _iwtrRequestId,
                  ("version" .=) <$> _iwtrVersion,
                  ("parameters" .=) <$> _iwtrParameters])

-- | Optional. A mapping of property names to values, used to configure
-- Hadoop. Properties that conflict with values set by the Cloud Dataproc
-- API may be overwritten. Can include properties set in
-- \/etc\/hadoop\/conf\/*-site and classes in user code.
--
-- /See:/ 'hadoopJobProperties' smart constructor.
newtype HadoopJobProperties =
  HadoopJobProperties'
    { _hjpAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HadoopJobProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hjpAddtional'
hadoopJobProperties
    :: HashMap Text Text -- ^ 'hjpAddtional'
    -> HadoopJobProperties
hadoopJobProperties pHjpAddtional_ =
  HadoopJobProperties' {_hjpAddtional = _Coerce # pHjpAddtional_}


hjpAddtional :: Lens' HadoopJobProperties (HashMap Text Text)
hjpAddtional
  = lens _hjpAddtional (\ s a -> s{_hjpAddtional = a})
      . _Coerce

instance FromJSON HadoopJobProperties where
        parseJSON
          = withObject "HadoopJobProperties"
              (\ o -> HadoopJobProperties' <$> (parseJSONObject o))

instance ToJSON HadoopJobProperties where
        toJSON = toJSON . _hjpAddtional

-- | A Cloud Dataproc workflow template resource.
--
-- /See:/ 'workflowTemplate' smart constructor.
data WorkflowTemplate =
  WorkflowTemplate'
    { _wtJobs       :: !(Maybe [OrderedJob])
    , _wtUpdateTime :: !(Maybe DateTime')
    , _wtName       :: !(Maybe Text)
    , _wtVersion    :: !(Maybe (Textual Int32))
    , _wtParameters :: !(Maybe [TemplateParameter])
    , _wtId         :: !(Maybe Text)
    , _wtLabels     :: !(Maybe WorkflowTemplateLabels)
    , _wtCreateTime :: !(Maybe DateTime')
    , _wtPlacement  :: !(Maybe WorkflowTemplatePlacement)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WorkflowTemplate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wtJobs'
--
-- * 'wtUpdateTime'
--
-- * 'wtName'
--
-- * 'wtVersion'
--
-- * 'wtParameters'
--
-- * 'wtId'
--
-- * 'wtLabels'
--
-- * 'wtCreateTime'
--
-- * 'wtPlacement'
workflowTemplate
    :: WorkflowTemplate
workflowTemplate =
  WorkflowTemplate'
    { _wtJobs = Nothing
    , _wtUpdateTime = Nothing
    , _wtName = Nothing
    , _wtVersion = Nothing
    , _wtParameters = Nothing
    , _wtId = Nothing
    , _wtLabels = Nothing
    , _wtCreateTime = Nothing
    , _wtPlacement = Nothing
    }


-- | Required. The Directed Acyclic Graph of Jobs to submit.
wtJobs :: Lens' WorkflowTemplate [OrderedJob]
wtJobs
  = lens _wtJobs (\ s a -> s{_wtJobs = a}) . _Default .
      _Coerce

-- | Output only. The time template was last updated.
wtUpdateTime :: Lens' WorkflowTemplate (Maybe UTCTime)
wtUpdateTime
  = lens _wtUpdateTime (\ s a -> s{_wtUpdateTime = a})
      . mapping _DateTime

-- | Output only. The \"resource name\" of the template, as described in
-- https:\/\/cloud.google.com\/apis\/design\/resource_names of the form
-- projects\/{project_id}\/regions\/{region}\/workflowTemplates\/{template_id}
wtName :: Lens' WorkflowTemplate (Maybe Text)
wtName = lens _wtName (\ s a -> s{_wtName = a})

-- | Optional. Used to perform a consistent read-modify-write.This field
-- should be left blank for a CreateWorkflowTemplate request. It is
-- required for an UpdateWorkflowTemplate request, and must match the
-- current server version. A typical update template flow would fetch the
-- current template with a GetWorkflowTemplate request, which will return
-- the current template with the version field filled in with the current
-- server version. The user updates other fields in the template, then
-- returns it as part of the UpdateWorkflowTemplate request.
wtVersion :: Lens' WorkflowTemplate (Maybe Int32)
wtVersion
  = lens _wtVersion (\ s a -> s{_wtVersion = a}) .
      mapping _Coerce

-- | Optional. Template parameters whose values are substituted into the
-- template. Values for parameters must be provided when the template is
-- instantiated.
wtParameters :: Lens' WorkflowTemplate [TemplateParameter]
wtParameters
  = lens _wtParameters (\ s a -> s{_wtParameters = a})
      . _Default
      . _Coerce

-- | Required. The template id.The id must contain only letters (a-z, A-Z),
-- numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end
-- with underscore or hyphen. Must consist of between 3 and 50 characters.
wtId :: Lens' WorkflowTemplate (Maybe Text)
wtId = lens _wtId (\ s a -> s{_wtId = a})

-- | Optional. The labels to associate with this template. These labels will
-- be propagated to all jobs and clusters created by the workflow
-- instance.Label keys must contain 1 to 63 characters, and must conform to
-- RFC 1035 (https:\/\/www.ietf.org\/rfc\/rfc1035.txt).Label values may be
-- empty, but, if present, must contain 1 to 63 characters, and must
-- conform to RFC 1035 (https:\/\/www.ietf.org\/rfc\/rfc1035.txt).No more
-- than 32 labels can be associated with a template.
wtLabels :: Lens' WorkflowTemplate (Maybe WorkflowTemplateLabels)
wtLabels = lens _wtLabels (\ s a -> s{_wtLabels = a})

-- | Output only. The time template was created.
wtCreateTime :: Lens' WorkflowTemplate (Maybe UTCTime)
wtCreateTime
  = lens _wtCreateTime (\ s a -> s{_wtCreateTime = a})
      . mapping _DateTime

-- | Required. WorkflowTemplate scheduling information.
wtPlacement :: Lens' WorkflowTemplate (Maybe WorkflowTemplatePlacement)
wtPlacement
  = lens _wtPlacement (\ s a -> s{_wtPlacement = a})

instance FromJSON WorkflowTemplate where
        parseJSON
          = withObject "WorkflowTemplate"
              (\ o ->
                 WorkflowTemplate' <$>
                   (o .:? "jobs" .!= mempty) <*> (o .:? "updateTime")
                     <*> (o .:? "name")
                     <*> (o .:? "version")
                     <*> (o .:? "parameters" .!= mempty)
                     <*> (o .:? "id")
                     <*> (o .:? "labels")
                     <*> (o .:? "createTime")
                     <*> (o .:? "placement"))

instance ToJSON WorkflowTemplate where
        toJSON WorkflowTemplate'{..}
          = object
              (catMaybes
                 [("jobs" .=) <$> _wtJobs,
                  ("updateTime" .=) <$> _wtUpdateTime,
                  ("name" .=) <$> _wtName,
                  ("version" .=) <$> _wtVersion,
                  ("parameters" .=) <$> _wtParameters,
                  ("id" .=) <$> _wtId, ("labels" .=) <$> _wtLabels,
                  ("createTime" .=) <$> _wtCreateTime,
                  ("placement" .=) <$> _wtPlacement])

-- | The status of the operation.
--
-- /See:/ 'clusterOperationStatus' smart constructor.
data ClusterOperationStatus =
  ClusterOperationStatus'
    { _cosState          :: !(Maybe ClusterOperationStatusState)
    , _cosInnerState     :: !(Maybe Text)
    , _cosStateStartTime :: !(Maybe DateTime')
    , _cosDetails        :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ClusterOperationStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cosState'
--
-- * 'cosInnerState'
--
-- * 'cosStateStartTime'
--
-- * 'cosDetails'
clusterOperationStatus
    :: ClusterOperationStatus
clusterOperationStatus =
  ClusterOperationStatus'
    { _cosState = Nothing
    , _cosInnerState = Nothing
    , _cosStateStartTime = Nothing
    , _cosDetails = Nothing
    }


-- | Output only. A message containing the operation state.
cosState :: Lens' ClusterOperationStatus (Maybe ClusterOperationStatusState)
cosState = lens _cosState (\ s a -> s{_cosState = a})

-- | Output only. A message containing the detailed operation state.
cosInnerState :: Lens' ClusterOperationStatus (Maybe Text)
cosInnerState
  = lens _cosInnerState
      (\ s a -> s{_cosInnerState = a})

-- | Output only. The time this state was entered.
cosStateStartTime :: Lens' ClusterOperationStatus (Maybe UTCTime)
cosStateStartTime
  = lens _cosStateStartTime
      (\ s a -> s{_cosStateStartTime = a})
      . mapping _DateTime

-- | Output only. A message containing any operation metadata details.
cosDetails :: Lens' ClusterOperationStatus (Maybe Text)
cosDetails
  = lens _cosDetails (\ s a -> s{_cosDetails = a})

instance FromJSON ClusterOperationStatus where
        parseJSON
          = withObject "ClusterOperationStatus"
              (\ o ->
                 ClusterOperationStatus' <$>
                   (o .:? "state") <*> (o .:? "innerState") <*>
                     (o .:? "stateStartTime")
                     <*> (o .:? "details"))

instance ToJSON ClusterOperationStatus where
        toJSON ClusterOperationStatus'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _cosState,
                  ("innerState" .=) <$> _cosInnerState,
                  ("stateStartTime" .=) <$> _cosStateStartTime,
                  ("details" .=) <$> _cosDetails])

--
-- /See:/ 'statusDetailsItem' smart constructor.
newtype StatusDetailsItem =
  StatusDetailsItem'
    { _sdiAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StatusDetailsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdiAddtional'
statusDetailsItem
    :: HashMap Text JSONValue -- ^ 'sdiAddtional'
    -> StatusDetailsItem
statusDetailsItem pSdiAddtional_ =
  StatusDetailsItem' {_sdiAddtional = _Coerce # pSdiAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
sdiAddtional :: Lens' StatusDetailsItem (HashMap Text JSONValue)
sdiAddtional
  = lens _sdiAddtional (\ s a -> s{_sdiAddtional = a})
      . _Coerce

instance FromJSON StatusDetailsItem where
        parseJSON
          = withObject "StatusDetailsItem"
              (\ o -> StatusDetailsItem' <$> (parseJSONObject o))

instance ToJSON StatusDetailsItem where
        toJSON = toJSON . _sdiAddtional

-- | Optional. A mapping of property names to values, used to configure Spark
-- SQL\'s SparkConf. Properties that conflict with values set by the Cloud
-- Dataproc API may be overwritten.
--
-- /See:/ 'sparkSQLJobProperties' smart constructor.
newtype SparkSQLJobProperties =
  SparkSQLJobProperties'
    { _ssqljpAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SparkSQLJobProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssqljpAddtional'
sparkSQLJobProperties
    :: HashMap Text Text -- ^ 'ssqljpAddtional'
    -> SparkSQLJobProperties
sparkSQLJobProperties pSsqljpAddtional_ =
  SparkSQLJobProperties' {_ssqljpAddtional = _Coerce # pSsqljpAddtional_}


ssqljpAddtional :: Lens' SparkSQLJobProperties (HashMap Text Text)
ssqljpAddtional
  = lens _ssqljpAddtional
      (\ s a -> s{_ssqljpAddtional = a})
      . _Coerce

instance FromJSON SparkSQLJobProperties where
        parseJSON
          = withObject "SparkSQLJobProperties"
              (\ o ->
                 SparkSQLJobProperties' <$> (parseJSONObject o))

instance ToJSON SparkSQLJobProperties where
        toJSON = toJSON . _ssqljpAddtional

-- | Optional. The labels to associate with this template. These labels will
-- be propagated to all jobs and clusters created by the workflow
-- instance.Label keys must contain 1 to 63 characters, and must conform to
-- RFC 1035 (https:\/\/www.ietf.org\/rfc\/rfc1035.txt).Label values may be
-- empty, but, if present, must contain 1 to 63 characters, and must
-- conform to RFC 1035 (https:\/\/www.ietf.org\/rfc\/rfc1035.txt).No more
-- than 32 labels can be associated with a template.
--
-- /See:/ 'workflowTemplateLabels' smart constructor.
newtype WorkflowTemplateLabels =
  WorkflowTemplateLabels'
    { _wtlAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WorkflowTemplateLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wtlAddtional'
workflowTemplateLabels
    :: HashMap Text Text -- ^ 'wtlAddtional'
    -> WorkflowTemplateLabels
workflowTemplateLabels pWtlAddtional_ =
  WorkflowTemplateLabels' {_wtlAddtional = _Coerce # pWtlAddtional_}


wtlAddtional :: Lens' WorkflowTemplateLabels (HashMap Text Text)
wtlAddtional
  = lens _wtlAddtional (\ s a -> s{_wtlAddtional = a})
      . _Coerce

instance FromJSON WorkflowTemplateLabels where
        parseJSON
          = withObject "WorkflowTemplateLabels"
              (\ o ->
                 WorkflowTemplateLabels' <$> (parseJSONObject o))

instance ToJSON WorkflowTemplateLabels where
        toJSON = toJSON . _wtlAddtional

-- | Specifies an executable to run on a fully configured node and a timeout
-- period for executable completion.
--
-- /See:/ 'nodeInitializationAction' smart constructor.
data NodeInitializationAction =
  NodeInitializationAction'
    { _niaExecutionTimeout :: !(Maybe GDuration)
    , _niaExecutableFile   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NodeInitializationAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'niaExecutionTimeout'
--
-- * 'niaExecutableFile'
nodeInitializationAction
    :: NodeInitializationAction
nodeInitializationAction =
  NodeInitializationAction'
    {_niaExecutionTimeout = Nothing, _niaExecutableFile = Nothing}


-- | Optional. Amount of time executable has to complete. Default is 10
-- minutes. Cluster creation fails with an explanatory error message (the
-- name of the executable that caused the error and the exceeded timeout
-- period) if the executable is not completed at end of the timeout period.
niaExecutionTimeout :: Lens' NodeInitializationAction (Maybe Scientific)
niaExecutionTimeout
  = lens _niaExecutionTimeout
      (\ s a -> s{_niaExecutionTimeout = a})
      . mapping _GDuration

-- | Required. Cloud Storage URI of executable file.
niaExecutableFile :: Lens' NodeInitializationAction (Maybe Text)
niaExecutableFile
  = lens _niaExecutableFile
      (\ s a -> s{_niaExecutableFile = a})

instance FromJSON NodeInitializationAction where
        parseJSON
          = withObject "NodeInitializationAction"
              (\ o ->
                 NodeInitializationAction' <$>
                   (o .:? "executionTimeout") <*>
                     (o .:? "executableFile"))

instance ToJSON NodeInitializationAction where
        toJSON NodeInitializationAction'{..}
          = object
              (catMaybes
                 [("executionTimeout" .=) <$> _niaExecutionTimeout,
                  ("executableFile" .=) <$> _niaExecutableFile])

-- | The YARN metrics.
--
-- /See:/ 'clusterMetricsYarnMetrics' smart constructor.
newtype ClusterMetricsYarnMetrics =
  ClusterMetricsYarnMetrics'
    { _cmymAddtional :: HashMap Text (Textual Int64)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ClusterMetricsYarnMetrics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmymAddtional'
clusterMetricsYarnMetrics
    :: HashMap Text Int64 -- ^ 'cmymAddtional'
    -> ClusterMetricsYarnMetrics
clusterMetricsYarnMetrics pCmymAddtional_ =
  ClusterMetricsYarnMetrics' {_cmymAddtional = _Coerce # pCmymAddtional_}


cmymAddtional :: Lens' ClusterMetricsYarnMetrics (HashMap Text Int64)
cmymAddtional
  = lens _cmymAddtional
      (\ s a -> s{_cmymAddtional = a})
      . _Coerce

instance FromJSON ClusterMetricsYarnMetrics where
        parseJSON
          = withObject "ClusterMetricsYarnMetrics"
              (\ o ->
                 ClusterMetricsYarnMetrics' <$> (parseJSONObject o))

instance ToJSON ClusterMetricsYarnMetrics where
        toJSON = toJSON . _cmymAddtional

-- | Validation based on regular expressions.
--
-- /See:/ 'regexValidation' smart constructor.
newtype RegexValidation =
  RegexValidation'
    { _rvRegexes :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegexValidation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rvRegexes'
regexValidation
    :: RegexValidation
regexValidation = RegexValidation' {_rvRegexes = Nothing}


-- | Required. RE2 regular expressions used to validate the parameter\'s
-- value. The value must match the regex in its entirety (substring matches
-- are not sufficient).
rvRegexes :: Lens' RegexValidation [Text]
rvRegexes
  = lens _rvRegexes (\ s a -> s{_rvRegexes = a}) .
      _Default
      . _Coerce

instance FromJSON RegexValidation where
        parseJSON
          = withObject "RegexValidation"
              (\ o ->
                 RegexValidation' <$> (o .:? "regexes" .!= mempty))

instance ToJSON RegexValidation where
        toJSON RegexValidation'{..}
          = object (catMaybes [("regexes" .=) <$> _rvRegexes])

-- | Cloud Dataproc job config.
--
-- /See:/ 'jobPlacement' smart constructor.
data JobPlacement =
  JobPlacement'
    { _jpClusterUuid :: !(Maybe Text)
    , _jpClusterName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'JobPlacement' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jpClusterUuid'
--
-- * 'jpClusterName'
jobPlacement
    :: JobPlacement
jobPlacement =
  JobPlacement' {_jpClusterUuid = Nothing, _jpClusterName = Nothing}


-- | Output only. A cluster UUID generated by the Cloud Dataproc service when
-- the job is submitted.
jpClusterUuid :: Lens' JobPlacement (Maybe Text)
jpClusterUuid
  = lens _jpClusterUuid
      (\ s a -> s{_jpClusterUuid = a})

-- | Required. The name of the cluster where the job will be submitted.
jpClusterName :: Lens' JobPlacement (Maybe Text)
jpClusterName
  = lens _jpClusterName
      (\ s a -> s{_jpClusterName = a})

instance FromJSON JobPlacement where
        parseJSON
          = withObject "JobPlacement"
              (\ o ->
                 JobPlacement' <$>
                   (o .:? "clusterUuid") <*> (o .:? "clusterName"))

instance ToJSON JobPlacement where
        toJSON JobPlacement'{..}
          = object
              (catMaybes
                 [("clusterUuid" .=) <$> _jpClusterUuid,
                  ("clusterName" .=) <$> _jpClusterName])

-- | Request message for SetIamPolicy method.
--
-- /See:/ 'setIAMPolicyRequest' smart constructor.
newtype SetIAMPolicyRequest =
  SetIAMPolicyRequest'
    { _siprPolicy :: Maybe Policy
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SetIAMPolicyRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siprPolicy'
setIAMPolicyRequest
    :: SetIAMPolicyRequest
setIAMPolicyRequest = SetIAMPolicyRequest' {_siprPolicy = Nothing}


-- | REQUIRED: The complete policy to be applied to the resource. The size of
-- the policy is limited to a few 10s of KB. An empty policy is a valid
-- policy but certain Cloud Platform services (such as Projects) might
-- reject them.
siprPolicy :: Lens' SetIAMPolicyRequest (Maybe Policy)
siprPolicy
  = lens _siprPolicy (\ s a -> s{_siprPolicy = a})

instance FromJSON SetIAMPolicyRequest where
        parseJSON
          = withObject "SetIAMPolicyRequest"
              (\ o -> SetIAMPolicyRequest' <$> (o .:? "policy"))

instance ToJSON SetIAMPolicyRequest where
        toJSON SetIAMPolicyRequest'{..}
          = object (catMaybes [("policy" .=) <$> _siprPolicy])

-- | A configurable parameter that replaces one or more fields in the
-- template. Parameterizable fields: - Labels - File uris - Job properties
-- - Job arguments - Script variables - Main class (in HadoopJob and
-- SparkJob) - Zone (in ClusterSelector)
--
-- /See:/ 'templateParameter' smart constructor.
data TemplateParameter =
  TemplateParameter'
    { _tpName        :: !(Maybe Text)
    , _tpValidation  :: !(Maybe ParameterValidation)
    , _tpDescription :: !(Maybe Text)
    , _tpFields      :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TemplateParameter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpName'
--
-- * 'tpValidation'
--
-- * 'tpDescription'
--
-- * 'tpFields'
templateParameter
    :: TemplateParameter
templateParameter =
  TemplateParameter'
    { _tpName = Nothing
    , _tpValidation = Nothing
    , _tpDescription = Nothing
    , _tpFields = Nothing
    }


-- | Required. Parameter name. The parameter name is used as the key, and
-- paired with the parameter value, which are passed to the template when
-- the template is instantiated. The name must contain only capital letters
-- (A-Z), numbers (0-9), and underscores (_), and must not start with a
-- number. The maximum length is 40 characters.
tpName :: Lens' TemplateParameter (Maybe Text)
tpName = lens _tpName (\ s a -> s{_tpName = a})

-- | Optional. Validation rules to be applied to this parameter\'s value.
tpValidation :: Lens' TemplateParameter (Maybe ParameterValidation)
tpValidation
  = lens _tpValidation (\ s a -> s{_tpValidation = a})

-- | Optional. Brief description of the parameter. Must not exceed 1024
-- characters.
tpDescription :: Lens' TemplateParameter (Maybe Text)
tpDescription
  = lens _tpDescription
      (\ s a -> s{_tpDescription = a})

-- | Required. Paths to all fields that the parameter replaces. A field is
-- allowed to appear in at most one parameter\'s list of field paths.A
-- field path is similar in syntax to a google.protobuf.FieldMask. For
-- example, a field path that references the zone field of a workflow
-- template\'s cluster selector would be specified as
-- placement.clusterSelector.zone.Also, field paths can reference fields
-- using the following syntax: Values in maps can be referenced by key:
-- labels\'key\' placement.clusterSelector.clusterLabels\'key\'
-- placement.managedCluster.labels\'key\'
-- placement.clusterSelector.clusterLabels\'key\'
-- jobs\'step-id\'.labels\'key\' Jobs in the jobs list can be referenced by
-- step-id: jobs\'step-id\'.hadoopJob.mainJarFileUri
-- jobs\'step-id\'.hiveJob.queryFileUri
-- jobs\'step-id\'.pySparkJob.mainPythonFileUri
-- jobs\'step-id\'.hadoopJob.jarFileUris0
-- jobs\'step-id\'.hadoopJob.archiveUris0
-- jobs\'step-id\'.hadoopJob.fileUris0
-- jobs\'step-id\'.pySparkJob.pythonFileUris0 Items in repeated fields can
-- be referenced by a zero-based index: jobs\'step-id\'.sparkJob.args0
-- Other examples: jobs\'step-id\'.hadoopJob.properties\'key\'
-- jobs\'step-id\'.hadoopJob.args0
-- jobs\'step-id\'.hiveJob.scriptVariables\'key\'
-- jobs\'step-id\'.hadoopJob.mainJarFileUri
-- placement.clusterSelector.zoneIt may not be possible to parameterize
-- maps and repeated fields in their entirety since only individual map
-- values and individual items in repeated fields can be referenced. For
-- example, the following field paths are invalid:
-- placement.clusterSelector.clusterLabels jobs\'step-id\'.sparkJob.args
tpFields :: Lens' TemplateParameter [Text]
tpFields
  = lens _tpFields (\ s a -> s{_tpFields = a}) .
      _Default
      . _Coerce

instance FromJSON TemplateParameter where
        parseJSON
          = withObject "TemplateParameter"
              (\ o ->
                 TemplateParameter' <$>
                   (o .:? "name") <*> (o .:? "validation") <*>
                     (o .:? "description")
                     <*> (o .:? "fields" .!= mempty))

instance ToJSON TemplateParameter where
        toJSON TemplateParameter'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _tpName,
                  ("validation" .=) <$> _tpValidation,
                  ("description" .=) <$> _tpDescription,
                  ("fields" .=) <$> _tpFields])

-- | Common config settings for resources of Compute Engine cluster
-- instances, applicable to all instances in the cluster.
--
-- /See:/ 'gceClusterConfig' smart constructor.
data GceClusterConfig =
  GceClusterConfig'
    { _gccSubnetworkURI        :: !(Maybe Text)
    , _gccInternalIPOnly       :: !(Maybe Bool)
    , _gccNetworkURI           :: !(Maybe Text)
    , _gccZoneURI              :: !(Maybe Text)
    , _gccServiceAccount       :: !(Maybe Text)
    , _gccMetadata             :: !(Maybe GceClusterConfigMetadata)
    , _gccServiceAccountScopes :: !(Maybe [Text])
    , _gccTags                 :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GceClusterConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gccSubnetworkURI'
--
-- * 'gccInternalIPOnly'
--
-- * 'gccNetworkURI'
--
-- * 'gccZoneURI'
--
-- * 'gccServiceAccount'
--
-- * 'gccMetadata'
--
-- * 'gccServiceAccountScopes'
--
-- * 'gccTags'
gceClusterConfig
    :: GceClusterConfig
gceClusterConfig =
  GceClusterConfig'
    { _gccSubnetworkURI = Nothing
    , _gccInternalIPOnly = Nothing
    , _gccNetworkURI = Nothing
    , _gccZoneURI = Nothing
    , _gccServiceAccount = Nothing
    , _gccMetadata = Nothing
    , _gccServiceAccountScopes = Nothing
    , _gccTags = Nothing
    }


-- | Optional. The Compute Engine subnetwork to be used for machine
-- communications. Cannot be specified with network_uri.A full URL, partial
-- URI, or short name are valid. Examples:
-- https:\/\/www.googleapis.com\/compute\/v1\/projects\/[project_id]\/regions\/us-east1\/subnetworks\/sub0
-- projects\/[project_id]\/regions\/us-east1\/subnetworks\/sub0 sub0
gccSubnetworkURI :: Lens' GceClusterConfig (Maybe Text)
gccSubnetworkURI
  = lens _gccSubnetworkURI
      (\ s a -> s{_gccSubnetworkURI = a})

-- | Optional. If true, all instances in the cluster will only have internal
-- IP addresses. By default, clusters are not restricted to internal IP
-- addresses, and will have ephemeral external IP addresses assigned to
-- each instance. This internal_ip_only restriction can only be enabled for
-- subnetwork enabled networks, and all off-cluster dependencies must be
-- configured to be accessible without external IP addresses.
gccInternalIPOnly :: Lens' GceClusterConfig (Maybe Bool)
gccInternalIPOnly
  = lens _gccInternalIPOnly
      (\ s a -> s{_gccInternalIPOnly = a})

-- | Optional. The Compute Engine network to be used for machine
-- communications. Cannot be specified with subnetwork_uri. If neither
-- network_uri nor subnetwork_uri is specified, the \"default\" network of
-- the project is used, if it exists. Cannot be a \"Custom Subnet Network\"
-- (see Using Subnetworks for more information).A full URL, partial URI, or
-- short name are valid. Examples:
-- https:\/\/www.googleapis.com\/compute\/v1\/projects\/[project_id]\/regions\/global\/default
-- projects\/[project_id]\/regions\/global\/default default
gccNetworkURI :: Lens' GceClusterConfig (Maybe Text)
gccNetworkURI
  = lens _gccNetworkURI
      (\ s a -> s{_gccNetworkURI = a})

-- | Optional. The zone where the Compute Engine cluster will be located. On
-- a create request, it is required in the \"global\" region. If omitted in
-- a non-global Cloud Dataproc region, the service will pick a zone in the
-- corresponding Compute Engine region. On a get request, zone will always
-- be present.A full URL, partial URI, or short name are valid. Examples:
-- https:\/\/www.googleapis.com\/compute\/v1\/projects\/[project_id]\/zones\/[zone]
-- projects\/[project_id]\/zones\/[zone] us-central1-f
gccZoneURI :: Lens' GceClusterConfig (Maybe Text)
gccZoneURI
  = lens _gccZoneURI (\ s a -> s{_gccZoneURI = a})

-- | Optional. The service account of the instances. Defaults to the default
-- Compute Engine service account. Custom service accounts need permissions
-- equivalent to the following IAM roles: roles\/logging.logWriter
-- roles\/storage.objectAdmin(see
-- https:\/\/cloud.google.com\/compute\/docs\/access\/service-accounts#custom_service_accounts
-- for more information). Example:
-- [account_id]\'[project_id].iam.gserviceaccount.com
gccServiceAccount :: Lens' GceClusterConfig (Maybe Text)
gccServiceAccount
  = lens _gccServiceAccount
      (\ s a -> s{_gccServiceAccount = a})

-- | The Compute Engine metadata entries to add to all instances (see Project
-- and instance metadata
-- (https:\/\/cloud.google.com\/compute\/docs\/storing-retrieving-metadata#project_and_instance_metadata)).
gccMetadata :: Lens' GceClusterConfig (Maybe GceClusterConfigMetadata)
gccMetadata
  = lens _gccMetadata (\ s a -> s{_gccMetadata = a})

-- | Optional. The URIs of service account scopes to be included in Compute
-- Engine instances. The following base set of scopes is always included:
-- https:\/\/www.googleapis.com\/auth\/cloud.useraccounts.readonly
-- https:\/\/www.googleapis.com\/auth\/devstorage.read_write
-- https:\/\/www.googleapis.com\/auth\/logging.writeIf no scopes are
-- specified, the following defaults are also provided:
-- https:\/\/www.googleapis.com\/auth\/bigquery
-- https:\/\/www.googleapis.com\/auth\/bigtable.admin.table
-- https:\/\/www.googleapis.com\/auth\/bigtable.data
-- https:\/\/www.googleapis.com\/auth\/devstorage.full_control
gccServiceAccountScopes :: Lens' GceClusterConfig [Text]
gccServiceAccountScopes
  = lens _gccServiceAccountScopes
      (\ s a -> s{_gccServiceAccountScopes = a})
      . _Default
      . _Coerce

-- | The Compute Engine tags to add to all instances (see Tagging instances).
gccTags :: Lens' GceClusterConfig [Text]
gccTags
  = lens _gccTags (\ s a -> s{_gccTags = a}) . _Default
      . _Coerce

instance FromJSON GceClusterConfig where
        parseJSON
          = withObject "GceClusterConfig"
              (\ o ->
                 GceClusterConfig' <$>
                   (o .:? "subnetworkUri") <*> (o .:? "internalIpOnly")
                     <*> (o .:? "networkUri")
                     <*> (o .:? "zoneUri")
                     <*> (o .:? "serviceAccount")
                     <*> (o .:? "metadata")
                     <*> (o .:? "serviceAccountScopes" .!= mempty)
                     <*> (o .:? "tags" .!= mempty))

instance ToJSON GceClusterConfig where
        toJSON GceClusterConfig'{..}
          = object
              (catMaybes
                 [("subnetworkUri" .=) <$> _gccSubnetworkURI,
                  ("internalIpOnly" .=) <$> _gccInternalIPOnly,
                  ("networkUri" .=) <$> _gccNetworkURI,
                  ("zoneUri" .=) <$> _gccZoneURI,
                  ("serviceAccount" .=) <$> _gccServiceAccount,
                  ("metadata" .=) <$> _gccMetadata,
                  ("serviceAccountScopes" .=) <$>
                    _gccServiceAccountScopes,
                  ("tags" .=) <$> _gccTags])

-- | A response to a request to list workflow templates in a project.
--
-- /See:/ 'listWorkflowTemplatesResponse' smart constructor.
data ListWorkflowTemplatesResponse =
  ListWorkflowTemplatesResponse'
    { _lwtrNextPageToken :: !(Maybe Text)
    , _lwtrTemplates     :: !(Maybe [WorkflowTemplate])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListWorkflowTemplatesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lwtrNextPageToken'
--
-- * 'lwtrTemplates'
listWorkflowTemplatesResponse
    :: ListWorkflowTemplatesResponse
listWorkflowTemplatesResponse =
  ListWorkflowTemplatesResponse'
    {_lwtrNextPageToken = Nothing, _lwtrTemplates = Nothing}


-- | Output only. This token is included in the response if there are more
-- results to fetch. To fetch additional results, provide this value as the
-- page_token in a subsequent 'ListWorkflowTemplatesRequest'.
lwtrNextPageToken :: Lens' ListWorkflowTemplatesResponse (Maybe Text)
lwtrNextPageToken
  = lens _lwtrNextPageToken
      (\ s a -> s{_lwtrNextPageToken = a})

-- | Output only. WorkflowTemplates list.
lwtrTemplates :: Lens' ListWorkflowTemplatesResponse [WorkflowTemplate]
lwtrTemplates
  = lens _lwtrTemplates
      (\ s a -> s{_lwtrTemplates = a})
      . _Default
      . _Coerce

instance FromJSON ListWorkflowTemplatesResponse where
        parseJSON
          = withObject "ListWorkflowTemplatesResponse"
              (\ o ->
                 ListWorkflowTemplatesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "templates" .!= mempty))

instance ToJSON ListWorkflowTemplatesResponse where
        toJSON ListWorkflowTemplatesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lwtrNextPageToken,
                  ("templates" .=) <$> _lwtrTemplates])

-- | The Compute Engine metadata entries to add to all instances (see Project
-- and instance metadata
-- (https:\/\/cloud.google.com\/compute\/docs\/storing-retrieving-metadata#project_and_instance_metadata)).
--
-- /See:/ 'gceClusterConfigMetadata' smart constructor.
newtype GceClusterConfigMetadata =
  GceClusterConfigMetadata'
    { _gccmAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GceClusterConfigMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gccmAddtional'
gceClusterConfigMetadata
    :: HashMap Text Text -- ^ 'gccmAddtional'
    -> GceClusterConfigMetadata
gceClusterConfigMetadata pGccmAddtional_ =
  GceClusterConfigMetadata' {_gccmAddtional = _Coerce # pGccmAddtional_}


gccmAddtional :: Lens' GceClusterConfigMetadata (HashMap Text Text)
gccmAddtional
  = lens _gccmAddtional
      (\ s a -> s{_gccmAddtional = a})
      . _Coerce

instance FromJSON GceClusterConfigMetadata where
        parseJSON
          = withObject "GceClusterConfigMetadata"
              (\ o ->
                 GceClusterConfigMetadata' <$> (parseJSONObject o))

instance ToJSON GceClusterConfigMetadata where
        toJSON = toJSON . _gccmAddtional

-- | Optional. A mapping of property names and values, used to configure
-- Hive. Properties that conflict with values set by the Cloud Dataproc API
-- may be overwritten. Can include properties set in
-- \/etc\/hadoop\/conf\/*-site.xml, \/etc\/hive\/conf\/hive-site.xml, and
-- classes in user code.
--
-- /See:/ 'hiveJobProperties' smart constructor.
newtype HiveJobProperties =
  HiveJobProperties'
    { _hAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HiveJobProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hAddtional'
hiveJobProperties
    :: HashMap Text Text -- ^ 'hAddtional'
    -> HiveJobProperties
hiveJobProperties pHAddtional_ =
  HiveJobProperties' {_hAddtional = _Coerce # pHAddtional_}


hAddtional :: Lens' HiveJobProperties (HashMap Text Text)
hAddtional
  = lens _hAddtional (\ s a -> s{_hAddtional = a}) .
      _Coerce

instance FromJSON HiveJobProperties where
        parseJSON
          = withObject "HiveJobProperties"
              (\ o -> HiveJobProperties' <$> (parseJSONObject o))

instance ToJSON HiveJobProperties where
        toJSON = toJSON . _hAddtional

-- | Map from parameter names to values that were used for those parameters.
--
-- /See:/ 'workflowMetadataParameters' smart constructor.
newtype WorkflowMetadataParameters =
  WorkflowMetadataParameters'
    { _wmpAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WorkflowMetadataParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wmpAddtional'
workflowMetadataParameters
    :: HashMap Text Text -- ^ 'wmpAddtional'
    -> WorkflowMetadataParameters
workflowMetadataParameters pWmpAddtional_ =
  WorkflowMetadataParameters' {_wmpAddtional = _Coerce # pWmpAddtional_}


wmpAddtional :: Lens' WorkflowMetadataParameters (HashMap Text Text)
wmpAddtional
  = lens _wmpAddtional (\ s a -> s{_wmpAddtional = a})
      . _Coerce

instance FromJSON WorkflowMetadataParameters where
        parseJSON
          = withObject "WorkflowMetadataParameters"
              (\ o ->
                 WorkflowMetadataParameters' <$> (parseJSONObject o))

instance ToJSON WorkflowMetadataParameters where
        toJSON = toJSON . _wmpAddtional

-- | Cluster that is managed by the workflow.
--
-- /See:/ 'managedCluster' smart constructor.
data ManagedCluster =
  ManagedCluster'
    { _mcConfig      :: !(Maybe ClusterConfig)
    , _mcClusterName :: !(Maybe Text)
    , _mcLabels      :: !(Maybe ManagedClusterLabels)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagedCluster' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcConfig'
--
-- * 'mcClusterName'
--
-- * 'mcLabels'
managedCluster
    :: ManagedCluster
managedCluster =
  ManagedCluster'
    {_mcConfig = Nothing, _mcClusterName = Nothing, _mcLabels = Nothing}


-- | Required. The cluster configuration.
mcConfig :: Lens' ManagedCluster (Maybe ClusterConfig)
mcConfig = lens _mcConfig (\ s a -> s{_mcConfig = a})

-- | Required. The cluster name prefix. A unique cluster name will be formed
-- by appending a random suffix.The name must contain only lower-case
-- letters (a-z), numbers (0-9), and hyphens (-). Must begin with a letter.
-- Cannot begin or end with hyphen. Must consist of between 2 and 35
-- characters.
mcClusterName :: Lens' ManagedCluster (Maybe Text)
mcClusterName
  = lens _mcClusterName
      (\ s a -> s{_mcClusterName = a})

-- | Optional. The labels to associate with this cluster.Label keys must be
-- between 1 and 63 characters long, and must conform to the following PCRE
-- regular expression: \\p{Ll}\\p{Lo}{0,62}Label values must be between 1
-- and 63 characters long, and must conform to the following PCRE regular
-- expression: \\p{Ll}\\p{Lo}\\p{N}_-{0,63}No more than 32 labels can be
-- associated with a given cluster.
mcLabels :: Lens' ManagedCluster (Maybe ManagedClusterLabels)
mcLabels = lens _mcLabels (\ s a -> s{_mcLabels = a})

instance FromJSON ManagedCluster where
        parseJSON
          = withObject "ManagedCluster"
              (\ o ->
                 ManagedCluster' <$>
                   (o .:? "config") <*> (o .:? "clusterName") <*>
                     (o .:? "labels"))

instance ToJSON ManagedCluster where
        toJSON ManagedCluster'{..}
          = object
              (catMaybes
                 [("config" .=) <$> _mcConfig,
                  ("clusterName" .=) <$> _mcClusterName,
                  ("labels" .=) <$> _mcLabels])

-- | Optional. The labels to associate with this cluster. Label keys must
-- contain 1 to 63 characters, and must conform to RFC 1035
-- (https:\/\/www.ietf.org\/rfc\/rfc1035.txt). Label values may be empty,
-- but, if present, must contain 1 to 63 characters, and must conform to
-- RFC 1035 (https:\/\/www.ietf.org\/rfc\/rfc1035.txt). No more than 32
-- labels can be associated with a cluster.
--
-- /See:/ 'clusterLabels' smart constructor.
newtype ClusterLabels =
  ClusterLabels'
    { _clAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ClusterLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clAddtional'
clusterLabels
    :: HashMap Text Text -- ^ 'clAddtional'
    -> ClusterLabels
clusterLabels pClAddtional_ =
  ClusterLabels' {_clAddtional = _Coerce # pClAddtional_}


clAddtional :: Lens' ClusterLabels (HashMap Text Text)
clAddtional
  = lens _clAddtional (\ s a -> s{_clAddtional = a}) .
      _Coerce

instance FromJSON ClusterLabels where
        parseJSON
          = withObject "ClusterLabels"
              (\ o -> ClusterLabels' <$> (parseJSONObject o))

instance ToJSON ClusterLabels where
        toJSON = toJSON . _clAddtional

-- | A Cloud Dataproc job resource.
--
-- /See:/ 'job' smart constructor.
data Job =
  Job'
    { _jSparkJob                :: !(Maybe SparkJob)
    , _jStatus                  :: !(Maybe JobStatus)
    , _jDriverControlFilesURI   :: !(Maybe Text)
    , _jHiveJob                 :: !(Maybe HiveJob)
    , _jReference               :: !(Maybe JobReference)
    , _jSparkSQLJob             :: !(Maybe SparkSQLJob)
    , _jHadoopJob               :: !(Maybe HadoopJob)
    , _jJobUuid                 :: !(Maybe Text)
    , _jYarnApplications        :: !(Maybe [YarnApplication])
    , _jLabels                  :: !(Maybe JobLabels)
    , _jPysparkJob              :: !(Maybe PySparkJob)
    , _jDriverOutputResourceURI :: !(Maybe Text)
    , _jScheduling              :: !(Maybe JobScheduling)
    , _jStatusHistory           :: !(Maybe [JobStatus])
    , _jPlacement               :: !(Maybe JobPlacement)
    , _jPigJob                  :: !(Maybe PigJob)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Job' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jSparkJob'
--
-- * 'jStatus'
--
-- * 'jDriverControlFilesURI'
--
-- * 'jHiveJob'
--
-- * 'jReference'
--
-- * 'jSparkSQLJob'
--
-- * 'jHadoopJob'
--
-- * 'jJobUuid'
--
-- * 'jYarnApplications'
--
-- * 'jLabels'
--
-- * 'jPysparkJob'
--
-- * 'jDriverOutputResourceURI'
--
-- * 'jScheduling'
--
-- * 'jStatusHistory'
--
-- * 'jPlacement'
--
-- * 'jPigJob'
job
    :: Job
job =
  Job'
    { _jSparkJob = Nothing
    , _jStatus = Nothing
    , _jDriverControlFilesURI = Nothing
    , _jHiveJob = Nothing
    , _jReference = Nothing
    , _jSparkSQLJob = Nothing
    , _jHadoopJob = Nothing
    , _jJobUuid = Nothing
    , _jYarnApplications = Nothing
    , _jLabels = Nothing
    , _jPysparkJob = Nothing
    , _jDriverOutputResourceURI = Nothing
    , _jScheduling = Nothing
    , _jStatusHistory = Nothing
    , _jPlacement = Nothing
    , _jPigJob = Nothing
    }


-- | Job is a Spark job.
jSparkJob :: Lens' Job (Maybe SparkJob)
jSparkJob
  = lens _jSparkJob (\ s a -> s{_jSparkJob = a})

-- | Output only. The job status. Additional application-specific status
-- information may be contained in the 'type_job' and 'yarn_applications'
-- fields.
jStatus :: Lens' Job (Maybe JobStatus)
jStatus = lens _jStatus (\ s a -> s{_jStatus = a})

-- | Output only. If present, the location of miscellaneous control files
-- which may be used as part of job setup and handling. If not present,
-- control files may be placed in the same location as driver_output_uri.
jDriverControlFilesURI :: Lens' Job (Maybe Text)
jDriverControlFilesURI
  = lens _jDriverControlFilesURI
      (\ s a -> s{_jDriverControlFilesURI = a})

-- | Job is a Hive job.
jHiveJob :: Lens' Job (Maybe HiveJob)
jHiveJob = lens _jHiveJob (\ s a -> s{_jHiveJob = a})

-- | Optional. The fully qualified reference to the job, which can be used to
-- obtain the equivalent REST path of the job resource. If this property is
-- not specified when a job is created, the server generates a 'job_id'.
jReference :: Lens' Job (Maybe JobReference)
jReference
  = lens _jReference (\ s a -> s{_jReference = a})

-- | Job is a SparkSql job.
jSparkSQLJob :: Lens' Job (Maybe SparkSQLJob)
jSparkSQLJob
  = lens _jSparkSQLJob (\ s a -> s{_jSparkSQLJob = a})

-- | Job is a Hadoop job.
jHadoopJob :: Lens' Job (Maybe HadoopJob)
jHadoopJob
  = lens _jHadoopJob (\ s a -> s{_jHadoopJob = a})

-- | Output only. A UUID that uniquely identifies a job within the project
-- over time. This is in contrast to a user-settable reference.job_id that
-- may be reused over time.
jJobUuid :: Lens' Job (Maybe Text)
jJobUuid = lens _jJobUuid (\ s a -> s{_jJobUuid = a})

-- | Output only. The collection of YARN applications spun up by this
-- job.Beta Feature: This report is available for testing purposes only. It
-- may be changed before final release.
jYarnApplications :: Lens' Job [YarnApplication]
jYarnApplications
  = lens _jYarnApplications
      (\ s a -> s{_jYarnApplications = a})
      . _Default
      . _Coerce

-- | Optional. The labels to associate with this job. Label keys must contain
-- 1 to 63 characters, and must conform to RFC 1035
-- (https:\/\/www.ietf.org\/rfc\/rfc1035.txt). Label values may be empty,
-- but, if present, must contain 1 to 63 characters, and must conform to
-- RFC 1035 (https:\/\/www.ietf.org\/rfc\/rfc1035.txt). No more than 32
-- labels can be associated with a job.
jLabels :: Lens' Job (Maybe JobLabels)
jLabels = lens _jLabels (\ s a -> s{_jLabels = a})

-- | Job is a Pyspark job.
jPysparkJob :: Lens' Job (Maybe PySparkJob)
jPysparkJob
  = lens _jPysparkJob (\ s a -> s{_jPysparkJob = a})

-- | Output only. A URI pointing to the location of the stdout of the job\'s
-- driver program.
jDriverOutputResourceURI :: Lens' Job (Maybe Text)
jDriverOutputResourceURI
  = lens _jDriverOutputResourceURI
      (\ s a -> s{_jDriverOutputResourceURI = a})

-- | Optional. Job scheduling configuration.
jScheduling :: Lens' Job (Maybe JobScheduling)
jScheduling
  = lens _jScheduling (\ s a -> s{_jScheduling = a})

-- | Output only. The previous job status.
jStatusHistory :: Lens' Job [JobStatus]
jStatusHistory
  = lens _jStatusHistory
      (\ s a -> s{_jStatusHistory = a})
      . _Default
      . _Coerce

-- | Required. Job information, including how, when, and where to run the
-- job.
jPlacement :: Lens' Job (Maybe JobPlacement)
jPlacement
  = lens _jPlacement (\ s a -> s{_jPlacement = a})

-- | Job is a Pig job.
jPigJob :: Lens' Job (Maybe PigJob)
jPigJob = lens _jPigJob (\ s a -> s{_jPigJob = a})

instance FromJSON Job where
        parseJSON
          = withObject "Job"
              (\ o ->
                 Job' <$>
                   (o .:? "sparkJob") <*> (o .:? "status") <*>
                     (o .:? "driverControlFilesUri")
                     <*> (o .:? "hiveJob")
                     <*> (o .:? "reference")
                     <*> (o .:? "sparkSqlJob")
                     <*> (o .:? "hadoopJob")
                     <*> (o .:? "jobUuid")
                     <*> (o .:? "yarnApplications" .!= mempty)
                     <*> (o .:? "labels")
                     <*> (o .:? "pysparkJob")
                     <*> (o .:? "driverOutputResourceUri")
                     <*> (o .:? "scheduling")
                     <*> (o .:? "statusHistory" .!= mempty)
                     <*> (o .:? "placement")
                     <*> (o .:? "pigJob"))

instance ToJSON Job where
        toJSON Job'{..}
          = object
              (catMaybes
                 [("sparkJob" .=) <$> _jSparkJob,
                  ("status" .=) <$> _jStatus,
                  ("driverControlFilesUri" .=) <$>
                    _jDriverControlFilesURI,
                  ("hiveJob" .=) <$> _jHiveJob,
                  ("reference" .=) <$> _jReference,
                  ("sparkSqlJob" .=) <$> _jSparkSQLJob,
                  ("hadoopJob" .=) <$> _jHadoopJob,
                  ("jobUuid" .=) <$> _jJobUuid,
                  ("yarnApplications" .=) <$> _jYarnApplications,
                  ("labels" .=) <$> _jLabels,
                  ("pysparkJob" .=) <$> _jPysparkJob,
                  ("driverOutputResourceUri" .=) <$>
                    _jDriverOutputResourceURI,
                  ("scheduling" .=) <$> _jScheduling,
                  ("statusHistory" .=) <$> _jStatusHistory,
                  ("placement" .=) <$> _jPlacement,
                  ("pigJob" .=) <$> _jPigJob])

-- | A request to collect cluster diagnostic information.
--
-- /See:/ 'diagnoseClusterRequest' smart constructor.
data DiagnoseClusterRequest =
  DiagnoseClusterRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DiagnoseClusterRequest' with the minimum fields required to make a request.
--
diagnoseClusterRequest
    :: DiagnoseClusterRequest
diagnoseClusterRequest = DiagnoseClusterRequest'


instance FromJSON DiagnoseClusterRequest where
        parseJSON
          = withObject "DiagnoseClusterRequest"
              (\ o -> pure DiagnoseClusterRequest')

instance ToJSON DiagnoseClusterRequest where
        toJSON = const emptyObject

-- | A Cloud Dataproc job for running Apache Hadoop MapReduce
-- (https:\/\/hadoop.apache.org\/docs\/current\/hadoop-mapreduce-client\/hadoop-mapreduce-client-core\/MapReduceTutorial.html)
-- jobs on Apache Hadoop YARN
-- (https:\/\/hadoop.apache.org\/docs\/r2.7.1\/hadoop-yarn\/hadoop-yarn-site\/YARN.html).
--
-- /See:/ 'hadoopJob' smart constructor.
data HadoopJob =
  HadoopJob'
    { _hArgs           :: !(Maybe [Text])
    , _hMainJarFileURI :: !(Maybe Text)
    , _hJarFileURIs    :: !(Maybe [Text])
    , _hFileURIs       :: !(Maybe [Text])
    , _hArchiveURIs    :: !(Maybe [Text])
    , _hMainClass      :: !(Maybe Text)
    , _hLoggingConfig  :: !(Maybe LoggingConfig)
    , _hProperties     :: !(Maybe HadoopJobProperties)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HadoopJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hArgs'
--
-- * 'hMainJarFileURI'
--
-- * 'hJarFileURIs'
--
-- * 'hFileURIs'
--
-- * 'hArchiveURIs'
--
-- * 'hMainClass'
--
-- * 'hLoggingConfig'
--
-- * 'hProperties'
hadoopJob
    :: HadoopJob
hadoopJob =
  HadoopJob'
    { _hArgs = Nothing
    , _hMainJarFileURI = Nothing
    , _hJarFileURIs = Nothing
    , _hFileURIs = Nothing
    , _hArchiveURIs = Nothing
    , _hMainClass = Nothing
    , _hLoggingConfig = Nothing
    , _hProperties = Nothing
    }


-- | Optional. The arguments to pass to the driver. Do not include arguments,
-- such as -libjars or -Dfoo=bar, that can be set as job properties, since
-- a collision may occur that causes an incorrect job submission.
hArgs :: Lens' HadoopJob [Text]
hArgs
  = lens _hArgs (\ s a -> s{_hArgs = a}) . _Default .
      _Coerce

-- | The HCFS URI of the jar file containing the main class. Examples:
-- \'gs:\/\/foo-bucket\/analytics-binaries\/extract-useful-metrics-mr.jar\'
-- \'hdfs:\/tmp\/test-samples\/custom-wordcount.jar\'
-- \'file:\/\/\/home\/usr\/lib\/hadoop-mapreduce\/hadoop-mapreduce-examples.jar\'
hMainJarFileURI :: Lens' HadoopJob (Maybe Text)
hMainJarFileURI
  = lens _hMainJarFileURI
      (\ s a -> s{_hMainJarFileURI = a})

-- | Optional. Jar file URIs to add to the CLASSPATHs of the Hadoop driver
-- and tasks.
hJarFileURIs :: Lens' HadoopJob [Text]
hJarFileURIs
  = lens _hJarFileURIs (\ s a -> s{_hJarFileURIs = a})
      . _Default
      . _Coerce

-- | Optional. HCFS (Hadoop Compatible Filesystem) URIs of files to be copied
-- to the working directory of Hadoop drivers and distributed tasks. Useful
-- for naively parallel tasks.
hFileURIs :: Lens' HadoopJob [Text]
hFileURIs
  = lens _hFileURIs (\ s a -> s{_hFileURIs = a}) .
      _Default
      . _Coerce

-- | Optional. HCFS URIs of archives to be extracted in the working directory
-- of Hadoop drivers and tasks. Supported file types: .jar, .tar, .tar.gz,
-- .tgz, or .zip.
hArchiveURIs :: Lens' HadoopJob [Text]
hArchiveURIs
  = lens _hArchiveURIs (\ s a -> s{_hArchiveURIs = a})
      . _Default
      . _Coerce

-- | The name of the driver\'s main class. The jar file containing the class
-- must be in the default CLASSPATH or specified in jar_file_uris.
hMainClass :: Lens' HadoopJob (Maybe Text)
hMainClass
  = lens _hMainClass (\ s a -> s{_hMainClass = a})

-- | Optional. The runtime log config for job execution.
hLoggingConfig :: Lens' HadoopJob (Maybe LoggingConfig)
hLoggingConfig
  = lens _hLoggingConfig
      (\ s a -> s{_hLoggingConfig = a})

-- | Optional. A mapping of property names to values, used to configure
-- Hadoop. Properties that conflict with values set by the Cloud Dataproc
-- API may be overwritten. Can include properties set in
-- \/etc\/hadoop\/conf\/*-site and classes in user code.
hProperties :: Lens' HadoopJob (Maybe HadoopJobProperties)
hProperties
  = lens _hProperties (\ s a -> s{_hProperties = a})

instance FromJSON HadoopJob where
        parseJSON
          = withObject "HadoopJob"
              (\ o ->
                 HadoopJob' <$>
                   (o .:? "args" .!= mempty) <*>
                     (o .:? "mainJarFileUri")
                     <*> (o .:? "jarFileUris" .!= mempty)
                     <*> (o .:? "fileUris" .!= mempty)
                     <*> (o .:? "archiveUris" .!= mempty)
                     <*> (o .:? "mainClass")
                     <*> (o .:? "loggingConfig")
                     <*> (o .:? "properties"))

instance ToJSON HadoopJob where
        toJSON HadoopJob'{..}
          = object
              (catMaybes
                 [("args" .=) <$> _hArgs,
                  ("mainJarFileUri" .=) <$> _hMainJarFileURI,
                  ("jarFileUris" .=) <$> _hJarFileURIs,
                  ("fileUris" .=) <$> _hFileURIs,
                  ("archiveUris" .=) <$> _hArchiveURIs,
                  ("mainClass" .=) <$> _hMainClass,
                  ("loggingConfig" .=) <$> _hLoggingConfig,
                  ("properties" .=) <$> _hProperties])

-- | Optional. Map from parameter names to values that should be used for
-- those parameters. Values may not exceed 100 characters.
--
-- /See:/ 'instantiateWorkflowTemplateRequestParameters' smart constructor.
newtype InstantiateWorkflowTemplateRequestParameters =
  InstantiateWorkflowTemplateRequestParameters'
    { _iwtrpAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstantiateWorkflowTemplateRequestParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iwtrpAddtional'
instantiateWorkflowTemplateRequestParameters
    :: HashMap Text Text -- ^ 'iwtrpAddtional'
    -> InstantiateWorkflowTemplateRequestParameters
instantiateWorkflowTemplateRequestParameters pIwtrpAddtional_ =
  InstantiateWorkflowTemplateRequestParameters'
    {_iwtrpAddtional = _Coerce # pIwtrpAddtional_}


iwtrpAddtional :: Lens' InstantiateWorkflowTemplateRequestParameters (HashMap Text Text)
iwtrpAddtional
  = lens _iwtrpAddtional
      (\ s a -> s{_iwtrpAddtional = a})
      . _Coerce

instance FromJSON
           InstantiateWorkflowTemplateRequestParameters
         where
        parseJSON
          = withObject
              "InstantiateWorkflowTemplateRequestParameters"
              (\ o ->
                 InstantiateWorkflowTemplateRequestParameters' <$>
                   (parseJSONObject o))

instance ToJSON
           InstantiateWorkflowTemplateRequestParameters
         where
        toJSON = toJSON . _iwtrpAddtional

-- | Metadata describing the operation.
--
-- /See:/ 'clusterOperationMetadata' smart constructor.
data ClusterOperationMetadata =
  ClusterOperationMetadata'
    { _comStatus        :: !(Maybe ClusterOperationStatus)
    , _comClusterUuid   :: !(Maybe Text)
    , _comWarnings      :: !(Maybe [Text])
    , _comClusterName   :: !(Maybe Text)
    , _comLabels        :: !(Maybe ClusterOperationMetadataLabels)
    , _comOperationType :: !(Maybe Text)
    , _comStatusHistory :: !(Maybe [ClusterOperationStatus])
    , _comDescription   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ClusterOperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'comStatus'
--
-- * 'comClusterUuid'
--
-- * 'comWarnings'
--
-- * 'comClusterName'
--
-- * 'comLabels'
--
-- * 'comOperationType'
--
-- * 'comStatusHistory'
--
-- * 'comDescription'
clusterOperationMetadata
    :: ClusterOperationMetadata
clusterOperationMetadata =
  ClusterOperationMetadata'
    { _comStatus = Nothing
    , _comClusterUuid = Nothing
    , _comWarnings = Nothing
    , _comClusterName = Nothing
    , _comLabels = Nothing
    , _comOperationType = Nothing
    , _comStatusHistory = Nothing
    , _comDescription = Nothing
    }


-- | Output only. Current operation status.
comStatus :: Lens' ClusterOperationMetadata (Maybe ClusterOperationStatus)
comStatus
  = lens _comStatus (\ s a -> s{_comStatus = a})

-- | Output only. Cluster UUID for the operation.
comClusterUuid :: Lens' ClusterOperationMetadata (Maybe Text)
comClusterUuid
  = lens _comClusterUuid
      (\ s a -> s{_comClusterUuid = a})

-- | Output only. Errors encountered during operation execution.
comWarnings :: Lens' ClusterOperationMetadata [Text]
comWarnings
  = lens _comWarnings (\ s a -> s{_comWarnings = a}) .
      _Default
      . _Coerce

-- | Output only. Name of the cluster for the operation.
comClusterName :: Lens' ClusterOperationMetadata (Maybe Text)
comClusterName
  = lens _comClusterName
      (\ s a -> s{_comClusterName = a})

-- | Output only. Labels associated with the operation
comLabels :: Lens' ClusterOperationMetadata (Maybe ClusterOperationMetadataLabels)
comLabels
  = lens _comLabels (\ s a -> s{_comLabels = a})

-- | Output only. The operation type.
comOperationType :: Lens' ClusterOperationMetadata (Maybe Text)
comOperationType
  = lens _comOperationType
      (\ s a -> s{_comOperationType = a})

-- | Output only. The previous operation status.
comStatusHistory :: Lens' ClusterOperationMetadata [ClusterOperationStatus]
comStatusHistory
  = lens _comStatusHistory
      (\ s a -> s{_comStatusHistory = a})
      . _Default
      . _Coerce

-- | Output only. Short description of operation.
comDescription :: Lens' ClusterOperationMetadata (Maybe Text)
comDescription
  = lens _comDescription
      (\ s a -> s{_comDescription = a})

instance FromJSON ClusterOperationMetadata where
        parseJSON
          = withObject "ClusterOperationMetadata"
              (\ o ->
                 ClusterOperationMetadata' <$>
                   (o .:? "status") <*> (o .:? "clusterUuid") <*>
                     (o .:? "warnings" .!= mempty)
                     <*> (o .:? "clusterName")
                     <*> (o .:? "labels")
                     <*> (o .:? "operationType")
                     <*> (o .:? "statusHistory" .!= mempty)
                     <*> (o .:? "description"))

instance ToJSON ClusterOperationMetadata where
        toJSON ClusterOperationMetadata'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _comStatus,
                  ("clusterUuid" .=) <$> _comClusterUuid,
                  ("warnings" .=) <$> _comWarnings,
                  ("clusterName" .=) <$> _comClusterName,
                  ("labels" .=) <$> _comLabels,
                  ("operationType" .=) <$> _comOperationType,
                  ("statusHistory" .=) <$> _comStatusHistory,
                  ("description" .=) <$> _comDescription])

-- | Request message for TestIamPermissions method.
--
-- /See:/ 'testIAMPermissionsRequest' smart constructor.
newtype TestIAMPermissionsRequest =
  TestIAMPermissionsRequest'
    { _tiprPermissions :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TestIAMPermissionsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiprPermissions'
testIAMPermissionsRequest
    :: TestIAMPermissionsRequest
testIAMPermissionsRequest =
  TestIAMPermissionsRequest' {_tiprPermissions = Nothing}


-- | The set of permissions to check for the resource. Permissions with
-- wildcards (such as \'*\' or \'storage.*\') are not allowed. For more
-- information see IAM Overview
-- (https:\/\/cloud.google.com\/iam\/docs\/overview#permissions).
tiprPermissions :: Lens' TestIAMPermissionsRequest [Text]
tiprPermissions
  = lens _tiprPermissions
      (\ s a -> s{_tiprPermissions = a})
      . _Default
      . _Coerce

instance FromJSON TestIAMPermissionsRequest where
        parseJSON
          = withObject "TestIAMPermissionsRequest"
              (\ o ->
                 TestIAMPermissionsRequest' <$>
                   (o .:? "permissions" .!= mempty))

instance ToJSON TestIAMPermissionsRequest where
        toJSON TestIAMPermissionsRequest'{..}
          = object
              (catMaybes [("permissions" .=) <$> _tiprPermissions])

-- | A Cloud Dataproc job for running Apache Spark SQL
-- (http:\/\/spark.apache.org\/sql\/) queries.
--
-- /See:/ 'sparkSQLJob' smart constructor.
data SparkSQLJob =
  SparkSQLJob'
    { _ssqljQueryFileURI    :: !(Maybe Text)
    , _ssqljJarFileURIs     :: !(Maybe [Text])
    , _ssqljScriptVariables :: !(Maybe SparkSQLJobScriptVariables)
    , _ssqljQueryList       :: !(Maybe QueryList)
    , _ssqljLoggingConfig   :: !(Maybe LoggingConfig)
    , _ssqljProperties      :: !(Maybe SparkSQLJobProperties)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SparkSQLJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssqljQueryFileURI'
--
-- * 'ssqljJarFileURIs'
--
-- * 'ssqljScriptVariables'
--
-- * 'ssqljQueryList'
--
-- * 'ssqljLoggingConfig'
--
-- * 'ssqljProperties'
sparkSQLJob
    :: SparkSQLJob
sparkSQLJob =
  SparkSQLJob'
    { _ssqljQueryFileURI = Nothing
    , _ssqljJarFileURIs = Nothing
    , _ssqljScriptVariables = Nothing
    , _ssqljQueryList = Nothing
    , _ssqljLoggingConfig = Nothing
    , _ssqljProperties = Nothing
    }


-- | The HCFS URI of the script that contains SQL queries.
ssqljQueryFileURI :: Lens' SparkSQLJob (Maybe Text)
ssqljQueryFileURI
  = lens _ssqljQueryFileURI
      (\ s a -> s{_ssqljQueryFileURI = a})

-- | Optional. HCFS URIs of jar files to be added to the Spark CLASSPATH.
ssqljJarFileURIs :: Lens' SparkSQLJob [Text]
ssqljJarFileURIs
  = lens _ssqljJarFileURIs
      (\ s a -> s{_ssqljJarFileURIs = a})
      . _Default
      . _Coerce

-- | Optional. Mapping of query variable names to values (equivalent to the
-- Spark SQL command: SET name=\"value\";).
ssqljScriptVariables :: Lens' SparkSQLJob (Maybe SparkSQLJobScriptVariables)
ssqljScriptVariables
  = lens _ssqljScriptVariables
      (\ s a -> s{_ssqljScriptVariables = a})

-- | A list of queries.
ssqljQueryList :: Lens' SparkSQLJob (Maybe QueryList)
ssqljQueryList
  = lens _ssqljQueryList
      (\ s a -> s{_ssqljQueryList = a})

-- | Optional. The runtime log config for job execution.
ssqljLoggingConfig :: Lens' SparkSQLJob (Maybe LoggingConfig)
ssqljLoggingConfig
  = lens _ssqljLoggingConfig
      (\ s a -> s{_ssqljLoggingConfig = a})

-- | Optional. A mapping of property names to values, used to configure Spark
-- SQL\'s SparkConf. Properties that conflict with values set by the Cloud
-- Dataproc API may be overwritten.
ssqljProperties :: Lens' SparkSQLJob (Maybe SparkSQLJobProperties)
ssqljProperties
  = lens _ssqljProperties
      (\ s a -> s{_ssqljProperties = a})

instance FromJSON SparkSQLJob where
        parseJSON
          = withObject "SparkSQLJob"
              (\ o ->
                 SparkSQLJob' <$>
                   (o .:? "queryFileUri") <*>
                     (o .:? "jarFileUris" .!= mempty)
                     <*> (o .:? "scriptVariables")
                     <*> (o .:? "queryList")
                     <*> (o .:? "loggingConfig")
                     <*> (o .:? "properties"))

instance ToJSON SparkSQLJob where
        toJSON SparkSQLJob'{..}
          = object
              (catMaybes
                 [("queryFileUri" .=) <$> _ssqljQueryFileURI,
                  ("jarFileUris" .=) <$> _ssqljJarFileURIs,
                  ("scriptVariables" .=) <$> _ssqljScriptVariables,
                  ("queryList" .=) <$> _ssqljQueryList,
                  ("loggingConfig" .=) <$> _ssqljLoggingConfig,
                  ("properties" .=) <$> _ssqljProperties])

-- | Specifies the selection and config of software inside the cluster.
--
-- /See:/ 'softwareConfig' smart constructor.
data SoftwareConfig =
  SoftwareConfig'
    { _scOptionalComponents :: !(Maybe [Text])
    , _scImageVersion       :: !(Maybe Text)
    , _scProperties         :: !(Maybe SoftwareConfigProperties)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SoftwareConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scOptionalComponents'
--
-- * 'scImageVersion'
--
-- * 'scProperties'
softwareConfig
    :: SoftwareConfig
softwareConfig =
  SoftwareConfig'
    { _scOptionalComponents = Nothing
    , _scImageVersion = Nothing
    , _scProperties = Nothing
    }


-- | The set of optional components to activate on the cluster.
scOptionalComponents :: Lens' SoftwareConfig [Text]
scOptionalComponents
  = lens _scOptionalComponents
      (\ s a -> s{_scOptionalComponents = a})
      . _Default
      . _Coerce

-- | Optional. The version of software inside the cluster. It must be one of
-- the supported Cloud Dataproc Versions, such as \"1.2\" (including a
-- subminor version, such as \"1.2.29\"), or the \"preview\" version. If
-- unspecified, it defaults to the latest Debian version.
scImageVersion :: Lens' SoftwareConfig (Maybe Text)
scImageVersion
  = lens _scImageVersion
      (\ s a -> s{_scImageVersion = a})

-- | Optional. The properties to set on daemon config files.Property keys are
-- specified in prefix:property format, for example core:hadoop.tmp.dir.
-- The following are supported prefixes and their mappings:
-- capacity-scheduler: capacity-scheduler.xml core: core-site.xml distcp:
-- distcp-default.xml hdfs: hdfs-site.xml hive: hive-site.xml mapred:
-- mapred-site.xml pig: pig.properties spark: spark-defaults.conf yarn:
-- yarn-site.xmlFor more information, see Cluster properties.
scProperties :: Lens' SoftwareConfig (Maybe SoftwareConfigProperties)
scProperties
  = lens _scProperties (\ s a -> s{_scProperties = a})

instance FromJSON SoftwareConfig where
        parseJSON
          = withObject "SoftwareConfig"
              (\ o ->
                 SoftwareConfig' <$>
                   (o .:? "optionalComponents" .!= mempty) <*>
                     (o .:? "imageVersion")
                     <*> (o .:? "properties"))

instance ToJSON SoftwareConfig where
        toJSON SoftwareConfig'{..}
          = object
              (catMaybes
                 [("optionalComponents" .=) <$> _scOptionalComponents,
                  ("imageVersion" .=) <$> _scImageVersion,
                  ("properties" .=) <$> _scProperties])

-- | A list of jobs in a project.
--
-- /See:/ 'listJobsResponse' smart constructor.
data ListJobsResponse =
  ListJobsResponse'
    { _ljrNextPageToken :: !(Maybe Text)
    , _ljrJobs          :: !(Maybe [Job])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListJobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ljrNextPageToken'
--
-- * 'ljrJobs'
listJobsResponse
    :: ListJobsResponse
listJobsResponse =
  ListJobsResponse' {_ljrNextPageToken = Nothing, _ljrJobs = Nothing}


-- | Optional. This token is included in the response if there are more
-- results to fetch. To fetch additional results, provide this value as the
-- page_token in a subsequent 'ListJobsRequest'.
ljrNextPageToken :: Lens' ListJobsResponse (Maybe Text)
ljrNextPageToken
  = lens _ljrNextPageToken
      (\ s a -> s{_ljrNextPageToken = a})

-- | Output only. Jobs list.
ljrJobs :: Lens' ListJobsResponse [Job]
ljrJobs
  = lens _ljrJobs (\ s a -> s{_ljrJobs = a}) . _Default
      . _Coerce

instance FromJSON ListJobsResponse where
        parseJSON
          = withObject "ListJobsResponse"
              (\ o ->
                 ListJobsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "jobs" .!= mempty))

instance ToJSON ListJobsResponse where
        toJSON ListJobsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ljrNextPageToken,
                  ("jobs" .=) <$> _ljrJobs])

-- | Specifies the type and number of accelerator cards attached to the
-- instances of an instance. See GPUs on Compute Engine.
--
-- /See:/ 'acceleratorConfig' smart constructor.
data AcceleratorConfig =
  AcceleratorConfig'
    { _acAcceleratorCount   :: !(Maybe (Textual Int32))
    , _acAcceleratorTypeURI :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AcceleratorConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acAcceleratorCount'
--
-- * 'acAcceleratorTypeURI'
acceleratorConfig
    :: AcceleratorConfig
acceleratorConfig =
  AcceleratorConfig'
    {_acAcceleratorCount = Nothing, _acAcceleratorTypeURI = Nothing}


-- | The number of the accelerator cards of this type exposed to this
-- instance.
acAcceleratorCount :: Lens' AcceleratorConfig (Maybe Int32)
acAcceleratorCount
  = lens _acAcceleratorCount
      (\ s a -> s{_acAcceleratorCount = a})
      . mapping _Coerce

-- | Full URL, partial URI, or short name of the accelerator type resource to
-- expose to this instance. See Compute Engine AcceleratorTypes.Examples:
-- https:\/\/www.googleapis.com\/compute\/beta\/projects\/[project_id]\/zones\/us-east1-a\/acceleratorTypes\/nvidia-tesla-k80
-- projects\/[project_id]\/zones\/us-east1-a\/acceleratorTypes\/nvidia-tesla-k80
-- nvidia-tesla-k80Auto Zone Exception: If you are using the Cloud Dataproc
-- Auto Zone Placement feature, you must use the short name of the
-- accelerator type resource, for example, nvidia-tesla-k80.
acAcceleratorTypeURI :: Lens' AcceleratorConfig (Maybe Text)
acAcceleratorTypeURI
  = lens _acAcceleratorTypeURI
      (\ s a -> s{_acAcceleratorTypeURI = a})

instance FromJSON AcceleratorConfig where
        parseJSON
          = withObject "AcceleratorConfig"
              (\ o ->
                 AcceleratorConfig' <$>
                   (o .:? "acceleratorCount") <*>
                     (o .:? "acceleratorTypeUri"))

instance ToJSON AcceleratorConfig where
        toJSON AcceleratorConfig'{..}
          = object
              (catMaybes
                 [("acceleratorCount" .=) <$> _acAcceleratorCount,
                  ("acceleratorTypeUri" .=) <$> _acAcceleratorTypeURI])

-- | Optional. A mapping of property names to values, used to configure
-- Spark. Properties that conflict with values set by the Cloud Dataproc
-- API may be overwritten. Can include properties set in
-- \/etc\/spark\/conf\/spark-defaults.conf and classes in user code.
--
-- /See:/ 'sparkJobProperties' smart constructor.
newtype SparkJobProperties =
  SparkJobProperties'
    { _sjpAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SparkJobProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sjpAddtional'
sparkJobProperties
    :: HashMap Text Text -- ^ 'sjpAddtional'
    -> SparkJobProperties
sparkJobProperties pSjpAddtional_ =
  SparkJobProperties' {_sjpAddtional = _Coerce # pSjpAddtional_}


sjpAddtional :: Lens' SparkJobProperties (HashMap Text Text)
sjpAddtional
  = lens _sjpAddtional (\ s a -> s{_sjpAddtional = a})
      . _Coerce

instance FromJSON SparkJobProperties where
        parseJSON
          = withObject "SparkJobProperties"
              (\ o -> SparkJobProperties' <$> (parseJSONObject o))

instance ToJSON SparkJobProperties where
        toJSON = toJSON . _sjpAddtional

-- | Encryption settings for the cluster.
--
-- /See:/ 'encryptionConfig' smart constructor.
newtype EncryptionConfig =
  EncryptionConfig'
    { _ecGcePdKmsKeyName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EncryptionConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ecGcePdKmsKeyName'
encryptionConfig
    :: EncryptionConfig
encryptionConfig = EncryptionConfig' {_ecGcePdKmsKeyName = Nothing}


-- | Optional. The Cloud KMS key name to use for PD disk encryption for all
-- instances in the cluster.
ecGcePdKmsKeyName :: Lens' EncryptionConfig (Maybe Text)
ecGcePdKmsKeyName
  = lens _ecGcePdKmsKeyName
      (\ s a -> s{_ecGcePdKmsKeyName = a})

instance FromJSON EncryptionConfig where
        parseJSON
          = withObject "EncryptionConfig"
              (\ o ->
                 EncryptionConfig' <$> (o .:? "gcePdKmsKeyName"))

instance ToJSON EncryptionConfig where
        toJSON EncryptionConfig'{..}
          = object
              (catMaybes
                 [("gcePdKmsKeyName" .=) <$> _ecGcePdKmsKeyName])

-- | A Cloud Dataproc job for running Apache PySpark
-- (https:\/\/spark.apache.org\/docs\/0.9.0\/python-programming-guide.html)
-- applications on YARN.
--
-- /See:/ 'pySparkJob' smart constructor.
data PySparkJob =
  PySparkJob'
    { _psjPythonFileURIs    :: !(Maybe [Text])
    , _psjMainPythonFileURI :: !(Maybe Text)
    , _psjArgs              :: !(Maybe [Text])
    , _psjJarFileURIs       :: !(Maybe [Text])
    , _psjFileURIs          :: !(Maybe [Text])
    , _psjArchiveURIs       :: !(Maybe [Text])
    , _psjLoggingConfig     :: !(Maybe LoggingConfig)
    , _psjProperties        :: !(Maybe PySparkJobProperties)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PySparkJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psjPythonFileURIs'
--
-- * 'psjMainPythonFileURI'
--
-- * 'psjArgs'
--
-- * 'psjJarFileURIs'
--
-- * 'psjFileURIs'
--
-- * 'psjArchiveURIs'
--
-- * 'psjLoggingConfig'
--
-- * 'psjProperties'
pySparkJob
    :: PySparkJob
pySparkJob =
  PySparkJob'
    { _psjPythonFileURIs = Nothing
    , _psjMainPythonFileURI = Nothing
    , _psjArgs = Nothing
    , _psjJarFileURIs = Nothing
    , _psjFileURIs = Nothing
    , _psjArchiveURIs = Nothing
    , _psjLoggingConfig = Nothing
    , _psjProperties = Nothing
    }


-- | Optional. HCFS file URIs of Python files to pass to the PySpark
-- framework. Supported file types: .py, .egg, and .zip.
psjPythonFileURIs :: Lens' PySparkJob [Text]
psjPythonFileURIs
  = lens _psjPythonFileURIs
      (\ s a -> s{_psjPythonFileURIs = a})
      . _Default
      . _Coerce

-- | Required. The HCFS URI of the main Python file to use as the driver.
-- Must be a .py file.
psjMainPythonFileURI :: Lens' PySparkJob (Maybe Text)
psjMainPythonFileURI
  = lens _psjMainPythonFileURI
      (\ s a -> s{_psjMainPythonFileURI = a})

-- | Optional. The arguments to pass to the driver. Do not include arguments,
-- such as --conf, that can be set as job properties, since a collision may
-- occur that causes an incorrect job submission.
psjArgs :: Lens' PySparkJob [Text]
psjArgs
  = lens _psjArgs (\ s a -> s{_psjArgs = a}) . _Default
      . _Coerce

-- | Optional. HCFS URIs of jar files to add to the CLASSPATHs of the Python
-- driver and tasks.
psjJarFileURIs :: Lens' PySparkJob [Text]
psjJarFileURIs
  = lens _psjJarFileURIs
      (\ s a -> s{_psjJarFileURIs = a})
      . _Default
      . _Coerce

-- | Optional. HCFS URIs of files to be copied to the working directory of
-- Python drivers and distributed tasks. Useful for naively parallel tasks.
psjFileURIs :: Lens' PySparkJob [Text]
psjFileURIs
  = lens _psjFileURIs (\ s a -> s{_psjFileURIs = a}) .
      _Default
      . _Coerce

-- | Optional. HCFS URIs of archives to be extracted in the working directory
-- of .jar, .tar, .tar.gz, .tgz, and .zip.
psjArchiveURIs :: Lens' PySparkJob [Text]
psjArchiveURIs
  = lens _psjArchiveURIs
      (\ s a -> s{_psjArchiveURIs = a})
      . _Default
      . _Coerce

-- | Optional. The runtime log config for job execution.
psjLoggingConfig :: Lens' PySparkJob (Maybe LoggingConfig)
psjLoggingConfig
  = lens _psjLoggingConfig
      (\ s a -> s{_psjLoggingConfig = a})

-- | Optional. A mapping of property names to values, used to configure
-- PySpark. Properties that conflict with values set by the Cloud Dataproc
-- API may be overwritten. Can include properties set in
-- \/etc\/spark\/conf\/spark-defaults.conf and classes in user code.
psjProperties :: Lens' PySparkJob (Maybe PySparkJobProperties)
psjProperties
  = lens _psjProperties
      (\ s a -> s{_psjProperties = a})

instance FromJSON PySparkJob where
        parseJSON
          = withObject "PySparkJob"
              (\ o ->
                 PySparkJob' <$>
                   (o .:? "pythonFileUris" .!= mempty) <*>
                     (o .:? "mainPythonFileUri")
                     <*> (o .:? "args" .!= mempty)
                     <*> (o .:? "jarFileUris" .!= mempty)
                     <*> (o .:? "fileUris" .!= mempty)
                     <*> (o .:? "archiveUris" .!= mempty)
                     <*> (o .:? "loggingConfig")
                     <*> (o .:? "properties"))

instance ToJSON PySparkJob where
        toJSON PySparkJob'{..}
          = object
              (catMaybes
                 [("pythonFileUris" .=) <$> _psjPythonFileURIs,
                  ("mainPythonFileUri" .=) <$> _psjMainPythonFileURI,
                  ("args" .=) <$> _psjArgs,
                  ("jarFileUris" .=) <$> _psjJarFileURIs,
                  ("fileUris" .=) <$> _psjFileURIs,
                  ("archiveUris" .=) <$> _psjArchiveURIs,
                  ("loggingConfig" .=) <$> _psjLoggingConfig,
                  ("properties" .=) <$> _psjProperties])

-- | Specifies the resources used to actively manage an instance group.
--
-- /See:/ 'managedGroupConfig' smart constructor.
data ManagedGroupConfig =
  ManagedGroupConfig'
    { _mgcInstanceTemplateName     :: !(Maybe Text)
    , _mgcInstanceGroupManagerName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagedGroupConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mgcInstanceTemplateName'
--
-- * 'mgcInstanceGroupManagerName'
managedGroupConfig
    :: ManagedGroupConfig
managedGroupConfig =
  ManagedGroupConfig'
    {_mgcInstanceTemplateName = Nothing, _mgcInstanceGroupManagerName = Nothing}


-- | Output only. The name of the Instance Template used for the Managed
-- Instance Group.
mgcInstanceTemplateName :: Lens' ManagedGroupConfig (Maybe Text)
mgcInstanceTemplateName
  = lens _mgcInstanceTemplateName
      (\ s a -> s{_mgcInstanceTemplateName = a})

-- | Output only. The name of the Instance Group Manager for this group.
mgcInstanceGroupManagerName :: Lens' ManagedGroupConfig (Maybe Text)
mgcInstanceGroupManagerName
  = lens _mgcInstanceGroupManagerName
      (\ s a -> s{_mgcInstanceGroupManagerName = a})

instance FromJSON ManagedGroupConfig where
        parseJSON
          = withObject "ManagedGroupConfig"
              (\ o ->
                 ManagedGroupConfig' <$>
                   (o .:? "instanceTemplateName") <*>
                     (o .:? "instanceGroupManagerName"))

instance ToJSON ManagedGroupConfig where
        toJSON ManagedGroupConfig'{..}
          = object
              (catMaybes
                 [("instanceTemplateName" .=) <$>
                    _mgcInstanceTemplateName,
                  ("instanceGroupManagerName" .=) <$>
                    _mgcInstanceGroupManagerName])

-- | Response message for TestIamPermissions method.
--
-- /See:/ 'testIAMPermissionsResponse' smart constructor.
newtype TestIAMPermissionsResponse =
  TestIAMPermissionsResponse'
    { _tiamprPermissions :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TestIAMPermissionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiamprPermissions'
testIAMPermissionsResponse
    :: TestIAMPermissionsResponse
testIAMPermissionsResponse =
  TestIAMPermissionsResponse' {_tiamprPermissions = Nothing}


-- | A subset of TestPermissionsRequest.permissions that the caller is
-- allowed.
tiamprPermissions :: Lens' TestIAMPermissionsResponse [Text]
tiamprPermissions
  = lens _tiamprPermissions
      (\ s a -> s{_tiamprPermissions = a})
      . _Default
      . _Coerce

instance FromJSON TestIAMPermissionsResponse where
        parseJSON
          = withObject "TestIAMPermissionsResponse"
              (\ o ->
                 TestIAMPermissionsResponse' <$>
                   (o .:? "permissions" .!= mempty))

instance ToJSON TestIAMPermissionsResponse where
        toJSON TestIAMPermissionsResponse'{..}
          = object
              (catMaybes
                 [("permissions" .=) <$> _tiamprPermissions])

-- | The list of all clusters in a project.
--
-- /See:/ 'listClustersResponse' smart constructor.
data ListClustersResponse =
  ListClustersResponse'
    { _lcrNextPageToken :: !(Maybe Text)
    , _lcrClusters      :: !(Maybe [Cluster])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListClustersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcrNextPageToken'
--
-- * 'lcrClusters'
listClustersResponse
    :: ListClustersResponse
listClustersResponse =
  ListClustersResponse' {_lcrNextPageToken = Nothing, _lcrClusters = Nothing}


-- | Output only. This token is included in the response if there are more
-- results to fetch. To fetch additional results, provide this value as the
-- page_token in a subsequent ListClustersRequest.
lcrNextPageToken :: Lens' ListClustersResponse (Maybe Text)
lcrNextPageToken
  = lens _lcrNextPageToken
      (\ s a -> s{_lcrNextPageToken = a})

-- | Output only. The clusters in the project.
lcrClusters :: Lens' ListClustersResponse [Cluster]
lcrClusters
  = lens _lcrClusters (\ s a -> s{_lcrClusters = a}) .
      _Default
      . _Coerce

instance FromJSON ListClustersResponse where
        parseJSON
          = withObject "ListClustersResponse"
              (\ o ->
                 ListClustersResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "clusters" .!= mempty))

instance ToJSON ListClustersResponse where
        toJSON ListClustersResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lcrNextPageToken,
                  ("clusters" .=) <$> _lcrClusters])

-- | Validation based on a list of allowed values.
--
-- /See:/ 'valueValidation' smart constructor.
newtype ValueValidation =
  ValueValidation'
    { _vvValues :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ValueValidation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vvValues'
valueValidation
    :: ValueValidation
valueValidation = ValueValidation' {_vvValues = Nothing}


-- | Required. List of allowed values for the parameter.
vvValues :: Lens' ValueValidation [Text]
vvValues
  = lens _vvValues (\ s a -> s{_vvValues = a}) .
      _Default
      . _Coerce

instance FromJSON ValueValidation where
        parseJSON
          = withObject "ValueValidation"
              (\ o ->
                 ValueValidation' <$> (o .:? "values" .!= mempty))

instance ToJSON ValueValidation where
        toJSON ValueValidation'{..}
          = object (catMaybes [("values" .=) <$> _vvValues])

-- | Defines an Identity and Access Management (IAM) policy. It is used to
-- specify access control policies for Cloud Platform resources.A Policy
-- consists of a list of bindings. A binding binds a list of members to a
-- role, where the members can be user accounts, Google groups, Google
-- domains, and service accounts. A role is a named list of permissions
-- defined by IAM.JSON Example { \"bindings\": [ { \"role\":
-- \"roles\/owner\", \"members\": [ \"user:mike\'example.com\",
-- \"group:admins\'example.com\", \"domain:google.com\",
-- \"serviceAccount:my-other-app\'appspot.gserviceaccount.com\" ] }, {
-- \"role\": \"roles\/viewer\", \"members\": [\"user:sean\'example.com\"] }
-- ] } YAML Example bindings: - members: - user:mike\'example.com -
-- group:admins\'example.com - domain:google.com -
-- serviceAccount:my-other-app\'appspot.gserviceaccount.com role:
-- roles\/owner - members: - user:sean\'example.com role: roles\/viewer For
-- a description of IAM and its features, see the IAM developer\'s guide
-- (https:\/\/cloud.google.com\/iam\/docs).
--
-- /See:/ 'policy' smart constructor.
data Policy =
  Policy'
    { _pEtag     :: !(Maybe Bytes)
    , _pVersion  :: !(Maybe (Textual Int32))
    , _pBindings :: !(Maybe [Binding])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Policy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pEtag'
--
-- * 'pVersion'
--
-- * 'pBindings'
policy
    :: Policy
policy = Policy' {_pEtag = Nothing, _pVersion = Nothing, _pBindings = Nothing}


-- | etag is used for optimistic concurrency control as a way to help prevent
-- simultaneous updates of a policy from overwriting each other. It is
-- strongly suggested that systems make use of the etag in the
-- read-modify-write cycle to perform policy updates in order to avoid race
-- conditions: An etag is returned in the response to getIamPolicy, and
-- systems are expected to put that etag in the request to setIamPolicy to
-- ensure that their change will be applied to the same version of the
-- policy.If no etag is provided in the call to setIamPolicy, then the
-- existing policy is overwritten blindly.
pEtag :: Lens' Policy (Maybe ByteString)
pEtag
  = lens _pEtag (\ s a -> s{_pEtag = a}) .
      mapping _Bytes

-- | Deprecated.
pVersion :: Lens' Policy (Maybe Int32)
pVersion
  = lens _pVersion (\ s a -> s{_pVersion = a}) .
      mapping _Coerce

-- | Associates a list of members to a role. bindings with no members will
-- result in an error.
pBindings :: Lens' Policy [Binding]
pBindings
  = lens _pBindings (\ s a -> s{_pBindings = a}) .
      _Default
      . _Coerce

instance FromJSON Policy where
        parseJSON
          = withObject "Policy"
              (\ o ->
                 Policy' <$>
                   (o .:? "etag") <*> (o .:? "version") <*>
                     (o .:? "bindings" .!= mempty))

instance ToJSON Policy where
        toJSON Policy'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _pEtag,
                  ("version" .=) <$> _pVersion,
                  ("bindings" .=) <$> _pBindings])

-- | A job executed by the workflow.
--
-- /See:/ 'orderedJob' smart constructor.
data OrderedJob =
  OrderedJob'
    { _ojSparkJob            :: !(Maybe SparkJob)
    , _ojStepId              :: !(Maybe Text)
    , _ojPrerequisiteStepIds :: !(Maybe [Text])
    , _ojHiveJob             :: !(Maybe HiveJob)
    , _ojSparkSQLJob         :: !(Maybe SparkSQLJob)
    , _ojHadoopJob           :: !(Maybe HadoopJob)
    , _ojLabels              :: !(Maybe OrderedJobLabels)
    , _ojPysparkJob          :: !(Maybe PySparkJob)
    , _ojScheduling          :: !(Maybe JobScheduling)
    , _ojPigJob              :: !(Maybe PigJob)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderedJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ojSparkJob'
--
-- * 'ojStepId'
--
-- * 'ojPrerequisiteStepIds'
--
-- * 'ojHiveJob'
--
-- * 'ojSparkSQLJob'
--
-- * 'ojHadoopJob'
--
-- * 'ojLabels'
--
-- * 'ojPysparkJob'
--
-- * 'ojScheduling'
--
-- * 'ojPigJob'
orderedJob
    :: OrderedJob
orderedJob =
  OrderedJob'
    { _ojSparkJob = Nothing
    , _ojStepId = Nothing
    , _ojPrerequisiteStepIds = Nothing
    , _ojHiveJob = Nothing
    , _ojSparkSQLJob = Nothing
    , _ojHadoopJob = Nothing
    , _ojLabels = Nothing
    , _ojPysparkJob = Nothing
    , _ojScheduling = Nothing
    , _ojPigJob = Nothing
    }


-- | Job is a Spark job.
ojSparkJob :: Lens' OrderedJob (Maybe SparkJob)
ojSparkJob
  = lens _ojSparkJob (\ s a -> s{_ojSparkJob = a})

-- | Required. The step id. The id must be unique among all jobs within the
-- template.The step id is used as prefix for job id, as job
-- goog-dataproc-workflow-step-id label, and in prerequisiteStepIds field
-- from other steps.The id must contain only letters (a-z, A-Z), numbers
-- (0-9), underscores (_), and hyphens (-). Cannot begin or end with
-- underscore or hyphen. Must consist of between 3 and 50 characters.
ojStepId :: Lens' OrderedJob (Maybe Text)
ojStepId = lens _ojStepId (\ s a -> s{_ojStepId = a})

-- | Optional. The optional list of prerequisite job step_ids. If not
-- specified, the job will start at the beginning of workflow.
ojPrerequisiteStepIds :: Lens' OrderedJob [Text]
ojPrerequisiteStepIds
  = lens _ojPrerequisiteStepIds
      (\ s a -> s{_ojPrerequisiteStepIds = a})
      . _Default
      . _Coerce

-- | Job is a Hive job.
ojHiveJob :: Lens' OrderedJob (Maybe HiveJob)
ojHiveJob
  = lens _ojHiveJob (\ s a -> s{_ojHiveJob = a})

-- | Job is a SparkSql job.
ojSparkSQLJob :: Lens' OrderedJob (Maybe SparkSQLJob)
ojSparkSQLJob
  = lens _ojSparkSQLJob
      (\ s a -> s{_ojSparkSQLJob = a})

-- | Job is a Hadoop job.
ojHadoopJob :: Lens' OrderedJob (Maybe HadoopJob)
ojHadoopJob
  = lens _ojHadoopJob (\ s a -> s{_ojHadoopJob = a})

-- | Optional. The labels to associate with this job.Label keys must be
-- between 1 and 63 characters long, and must conform to the following
-- regular expression: \\p{Ll}\\p{Lo}{0,62}Label values must be between 1
-- and 63 characters long, and must conform to the following regular
-- expression: \\p{Ll}\\p{Lo}\\p{N}_-{0,63}No more than 32 labels can be
-- associated with a given job.
ojLabels :: Lens' OrderedJob (Maybe OrderedJobLabels)
ojLabels = lens _ojLabels (\ s a -> s{_ojLabels = a})

-- | Job is a Pyspark job.
ojPysparkJob :: Lens' OrderedJob (Maybe PySparkJob)
ojPysparkJob
  = lens _ojPysparkJob (\ s a -> s{_ojPysparkJob = a})

-- | Optional. Job scheduling configuration.
ojScheduling :: Lens' OrderedJob (Maybe JobScheduling)
ojScheduling
  = lens _ojScheduling (\ s a -> s{_ojScheduling = a})

-- | Job is a Pig job.
ojPigJob :: Lens' OrderedJob (Maybe PigJob)
ojPigJob = lens _ojPigJob (\ s a -> s{_ojPigJob = a})

instance FromJSON OrderedJob where
        parseJSON
          = withObject "OrderedJob"
              (\ o ->
                 OrderedJob' <$>
                   (o .:? "sparkJob") <*> (o .:? "stepId") <*>
                     (o .:? "prerequisiteStepIds" .!= mempty)
                     <*> (o .:? "hiveJob")
                     <*> (o .:? "sparkSqlJob")
                     <*> (o .:? "hadoopJob")
                     <*> (o .:? "labels")
                     <*> (o .:? "pysparkJob")
                     <*> (o .:? "scheduling")
                     <*> (o .:? "pigJob"))

instance ToJSON OrderedJob where
        toJSON OrderedJob'{..}
          = object
              (catMaybes
                 [("sparkJob" .=) <$> _ojSparkJob,
                  ("stepId" .=) <$> _ojStepId,
                  ("prerequisiteStepIds" .=) <$>
                    _ojPrerequisiteStepIds,
                  ("hiveJob" .=) <$> _ojHiveJob,
                  ("sparkSqlJob" .=) <$> _ojSparkSQLJob,
                  ("hadoopJob" .=) <$> _ojHadoopJob,
                  ("labels" .=) <$> _ojLabels,
                  ("pysparkJob" .=) <$> _ojPysparkJob,
                  ("scheduling" .=) <$> _ojScheduling,
                  ("pigJob" .=) <$> _ojPigJob])

-- | A request to cancel a job.
--
-- /See:/ 'cancelJobRequest' smart constructor.
data CancelJobRequest =
  CancelJobRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CancelJobRequest' with the minimum fields required to make a request.
--
cancelJobRequest
    :: CancelJobRequest
cancelJobRequest = CancelJobRequest'


instance FromJSON CancelJobRequest where
        parseJSON
          = withObject "CancelJobRequest"
              (\ o -> pure CancelJobRequest')

instance ToJSON CancelJobRequest where
        toJSON = const emptyObject

-- | A list of queries to run on a cluster.
--
-- /See:/ 'queryList' smart constructor.
newtype QueryList =
  QueryList'
    { _qlQueries :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'QueryList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qlQueries'
queryList
    :: QueryList
queryList = QueryList' {_qlQueries = Nothing}


-- | Required. The queries to execute. You do not need to terminate a query
-- with a semicolon. Multiple queries can be specified in one string by
-- separating each with a semicolon. Here is an example of an Cloud
-- Dataproc API snippet that uses a QueryList to specify a HiveJob:
-- \"hiveJob\": { \"queryList\": { \"queries\": [ \"query1\", \"query2\",
-- \"query3;query4\", ] } }
qlQueries :: Lens' QueryList [Text]
qlQueries
  = lens _qlQueries (\ s a -> s{_qlQueries = a}) .
      _Default
      . _Coerce

instance FromJSON QueryList where
        parseJSON
          = withObject "QueryList"
              (\ o -> QueryList' <$> (o .:? "queries" .!= mempty))

instance ToJSON QueryList where
        toJSON QueryList'{..}
          = object (catMaybes [("queries" .=) <$> _qlQueries])

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
--
-- /See:/ 'operationMetadata' smart constructor.
newtype OperationMetadata =
  OperationMetadata'
    { _omAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'omAddtional'
operationMetadata
    :: HashMap Text JSONValue -- ^ 'omAddtional'
    -> OperationMetadata
operationMetadata pOmAddtional_ =
  OperationMetadata' {_omAddtional = _Coerce # pOmAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
omAddtional :: Lens' OperationMetadata (HashMap Text JSONValue)
omAddtional
  = lens _omAddtional (\ s a -> s{_omAddtional = a}) .
      _Coerce

instance FromJSON OperationMetadata where
        parseJSON
          = withObject "OperationMetadata"
              (\ o -> OperationMetadata' <$> (parseJSONObject o))

instance ToJSON OperationMetadata where
        toJSON = toJSON . _omAddtional

-- | Cloud Dataproc job status.
--
-- /See:/ 'jobStatus' smart constructor.
data JobStatus =
  JobStatus'
    { _jsState          :: !(Maybe JobStatusState)
    , _jsSubState       :: !(Maybe JobStatusSubState)
    , _jsStateStartTime :: !(Maybe DateTime')
    , _jsDetails        :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'JobStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jsState'
--
-- * 'jsSubState'
--
-- * 'jsStateStartTime'
--
-- * 'jsDetails'
jobStatus
    :: JobStatus
jobStatus =
  JobStatus'
    { _jsState = Nothing
    , _jsSubState = Nothing
    , _jsStateStartTime = Nothing
    , _jsDetails = Nothing
    }


-- | Output only. A state message specifying the overall job state.
jsState :: Lens' JobStatus (Maybe JobStatusState)
jsState = lens _jsState (\ s a -> s{_jsState = a})

-- | Output only. Additional state information, which includes status
-- reported by the agent.
jsSubState :: Lens' JobStatus (Maybe JobStatusSubState)
jsSubState
  = lens _jsSubState (\ s a -> s{_jsSubState = a})

-- | Output only. The time when this state was entered.
jsStateStartTime :: Lens' JobStatus (Maybe UTCTime)
jsStateStartTime
  = lens _jsStateStartTime
      (\ s a -> s{_jsStateStartTime = a})
      . mapping _DateTime

-- | Output only. Optional job state details, such as an error description if
-- the state is 'ERROR'.
jsDetails :: Lens' JobStatus (Maybe Text)
jsDetails
  = lens _jsDetails (\ s a -> s{_jsDetails = a})

instance FromJSON JobStatus where
        parseJSON
          = withObject "JobStatus"
              (\ o ->
                 JobStatus' <$>
                   (o .:? "state") <*> (o .:? "substate") <*>
                     (o .:? "stateStartTime")
                     <*> (o .:? "details"))

instance ToJSON JobStatus where
        toJSON JobStatus'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _jsState,
                  ("substate" .=) <$> _jsSubState,
                  ("stateStartTime" .=) <$> _jsStateStartTime,
                  ("details" .=) <$> _jsDetails])

-- | Optional. Mapping of query variable names to values (equivalent to the
-- Pig command: name=[value]).
--
-- /See:/ 'pigJobScriptVariables' smart constructor.
newtype PigJobScriptVariables =
  PigJobScriptVariables'
    { _pjsvAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PigJobScriptVariables' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pjsvAddtional'
pigJobScriptVariables
    :: HashMap Text Text -- ^ 'pjsvAddtional'
    -> PigJobScriptVariables
pigJobScriptVariables pPjsvAddtional_ =
  PigJobScriptVariables' {_pjsvAddtional = _Coerce # pPjsvAddtional_}


pjsvAddtional :: Lens' PigJobScriptVariables (HashMap Text Text)
pjsvAddtional
  = lens _pjsvAddtional
      (\ s a -> s{_pjsvAddtional = a})
      . _Coerce

instance FromJSON PigJobScriptVariables where
        parseJSON
          = withObject "PigJobScriptVariables"
              (\ o ->
                 PigJobScriptVariables' <$> (parseJSONObject o))

instance ToJSON PigJobScriptVariables where
        toJSON = toJSON . _pjsvAddtional

-- | The HDFS metrics.
--
-- /See:/ 'clusterMetricsHdfsMetrics' smart constructor.
newtype ClusterMetricsHdfsMetrics =
  ClusterMetricsHdfsMetrics'
    { _cmhmAddtional :: HashMap Text (Textual Int64)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ClusterMetricsHdfsMetrics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmhmAddtional'
clusterMetricsHdfsMetrics
    :: HashMap Text Int64 -- ^ 'cmhmAddtional'
    -> ClusterMetricsHdfsMetrics
clusterMetricsHdfsMetrics pCmhmAddtional_ =
  ClusterMetricsHdfsMetrics' {_cmhmAddtional = _Coerce # pCmhmAddtional_}


cmhmAddtional :: Lens' ClusterMetricsHdfsMetrics (HashMap Text Int64)
cmhmAddtional
  = lens _cmhmAddtional
      (\ s a -> s{_cmhmAddtional = a})
      . _Coerce

instance FromJSON ClusterMetricsHdfsMetrics where
        parseJSON
          = withObject "ClusterMetricsHdfsMetrics"
              (\ o ->
                 ClusterMetricsHdfsMetrics' <$> (parseJSONObject o))

instance ToJSON ClusterMetricsHdfsMetrics where
        toJSON = toJSON . _cmhmAddtional

-- | The workflow node.
--
-- /See:/ 'workflowNode' smart constructor.
data WorkflowNode =
  WorkflowNode'
    { _wnState               :: !(Maybe WorkflowNodeState)
    , _wnStepId              :: !(Maybe Text)
    , _wnJobId               :: !(Maybe Text)
    , _wnPrerequisiteStepIds :: !(Maybe [Text])
    , _wnError               :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WorkflowNode' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wnState'
--
-- * 'wnStepId'
--
-- * 'wnJobId'
--
-- * 'wnPrerequisiteStepIds'
--
-- * 'wnError'
workflowNode
    :: WorkflowNode
workflowNode =
  WorkflowNode'
    { _wnState = Nothing
    , _wnStepId = Nothing
    , _wnJobId = Nothing
    , _wnPrerequisiteStepIds = Nothing
    , _wnError = Nothing
    }


-- | Output only. The node state.
wnState :: Lens' WorkflowNode (Maybe WorkflowNodeState)
wnState = lens _wnState (\ s a -> s{_wnState = a})

-- | Output only. The name of the node.
wnStepId :: Lens' WorkflowNode (Maybe Text)
wnStepId = lens _wnStepId (\ s a -> s{_wnStepId = a})

-- | Output only. The job id; populated after the node enters RUNNING state.
wnJobId :: Lens' WorkflowNode (Maybe Text)
wnJobId = lens _wnJobId (\ s a -> s{_wnJobId = a})

-- | Output only. Node\'s prerequisite nodes.
wnPrerequisiteStepIds :: Lens' WorkflowNode [Text]
wnPrerequisiteStepIds
  = lens _wnPrerequisiteStepIds
      (\ s a -> s{_wnPrerequisiteStepIds = a})
      . _Default
      . _Coerce

-- | Output only. The error detail.
wnError :: Lens' WorkflowNode (Maybe Text)
wnError = lens _wnError (\ s a -> s{_wnError = a})

instance FromJSON WorkflowNode where
        parseJSON
          = withObject "WorkflowNode"
              (\ o ->
                 WorkflowNode' <$>
                   (o .:? "state") <*> (o .:? "stepId") <*>
                     (o .:? "jobId")
                     <*> (o .:? "prerequisiteStepIds" .!= mempty)
                     <*> (o .:? "error"))

instance ToJSON WorkflowNode where
        toJSON WorkflowNode'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _wnState,
                  ("stepId" .=) <$> _wnStepId,
                  ("jobId" .=) <$> _wnJobId,
                  ("prerequisiteStepIds" .=) <$>
                    _wnPrerequisiteStepIds,
                  ("error" .=) <$> _wnError])

-- | A Cloud Dataproc workflow template resource.
--
-- /See:/ 'workflowMetadata' smart constructor.
data WorkflowMetadata =
  WorkflowMetadata'
    { _wmGraph         :: !(Maybe WorkflowGraph)
    , _wmState         :: !(Maybe WorkflowMetadataState)
    , _wmClusterUuid   :: !(Maybe Text)
    , _wmStartTime     :: !(Maybe DateTime')
    , _wmDeleteCluster :: !(Maybe ClusterOperation)
    , _wmCreateCluster :: !(Maybe ClusterOperation)
    , _wmVersion       :: !(Maybe (Textual Int32))
    , _wmEndTime       :: !(Maybe DateTime')
    , _wmParameters    :: !(Maybe WorkflowMetadataParameters)
    , _wmClusterName   :: !(Maybe Text)
    , _wmTemplate      :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WorkflowMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wmGraph'
--
-- * 'wmState'
--
-- * 'wmClusterUuid'
--
-- * 'wmStartTime'
--
-- * 'wmDeleteCluster'
--
-- * 'wmCreateCluster'
--
-- * 'wmVersion'
--
-- * 'wmEndTime'
--
-- * 'wmParameters'
--
-- * 'wmClusterName'
--
-- * 'wmTemplate'
workflowMetadata
    :: WorkflowMetadata
workflowMetadata =
  WorkflowMetadata'
    { _wmGraph = Nothing
    , _wmState = Nothing
    , _wmClusterUuid = Nothing
    , _wmStartTime = Nothing
    , _wmDeleteCluster = Nothing
    , _wmCreateCluster = Nothing
    , _wmVersion = Nothing
    , _wmEndTime = Nothing
    , _wmParameters = Nothing
    , _wmClusterName = Nothing
    , _wmTemplate = Nothing
    }


-- | Output only. The workflow graph.
wmGraph :: Lens' WorkflowMetadata (Maybe WorkflowGraph)
wmGraph = lens _wmGraph (\ s a -> s{_wmGraph = a})

-- | Output only. The workflow state.
wmState :: Lens' WorkflowMetadata (Maybe WorkflowMetadataState)
wmState = lens _wmState (\ s a -> s{_wmState = a})

-- | Output only. The UUID of target cluster.
wmClusterUuid :: Lens' WorkflowMetadata (Maybe Text)
wmClusterUuid
  = lens _wmClusterUuid
      (\ s a -> s{_wmClusterUuid = a})

-- | Output only. Workflow start time.
wmStartTime :: Lens' WorkflowMetadata (Maybe UTCTime)
wmStartTime
  = lens _wmStartTime (\ s a -> s{_wmStartTime = a}) .
      mapping _DateTime

-- | Output only. The delete cluster operation metadata.
wmDeleteCluster :: Lens' WorkflowMetadata (Maybe ClusterOperation)
wmDeleteCluster
  = lens _wmDeleteCluster
      (\ s a -> s{_wmDeleteCluster = a})

-- | Output only. The create cluster operation metadata.
wmCreateCluster :: Lens' WorkflowMetadata (Maybe ClusterOperation)
wmCreateCluster
  = lens _wmCreateCluster
      (\ s a -> s{_wmCreateCluster = a})

-- | Output only. The version of template at the time of workflow
-- instantiation.
wmVersion :: Lens' WorkflowMetadata (Maybe Int32)
wmVersion
  = lens _wmVersion (\ s a -> s{_wmVersion = a}) .
      mapping _Coerce

-- | Output only. Workflow end time.
wmEndTime :: Lens' WorkflowMetadata (Maybe UTCTime)
wmEndTime
  = lens _wmEndTime (\ s a -> s{_wmEndTime = a}) .
      mapping _DateTime

-- | Map from parameter names to values that were used for those parameters.
wmParameters :: Lens' WorkflowMetadata (Maybe WorkflowMetadataParameters)
wmParameters
  = lens _wmParameters (\ s a -> s{_wmParameters = a})

-- | Output only. The name of the target cluster.
wmClusterName :: Lens' WorkflowMetadata (Maybe Text)
wmClusterName
  = lens _wmClusterName
      (\ s a -> s{_wmClusterName = a})

-- | Output only. The \"resource name\" of the template.
wmTemplate :: Lens' WorkflowMetadata (Maybe Text)
wmTemplate
  = lens _wmTemplate (\ s a -> s{_wmTemplate = a})

instance FromJSON WorkflowMetadata where
        parseJSON
          = withObject "WorkflowMetadata"
              (\ o ->
                 WorkflowMetadata' <$>
                   (o .:? "graph") <*> (o .:? "state") <*>
                     (o .:? "clusterUuid")
                     <*> (o .:? "startTime")
                     <*> (o .:? "deleteCluster")
                     <*> (o .:? "createCluster")
                     <*> (o .:? "version")
                     <*> (o .:? "endTime")
                     <*> (o .:? "parameters")
                     <*> (o .:? "clusterName")
                     <*> (o .:? "template"))

instance ToJSON WorkflowMetadata where
        toJSON WorkflowMetadata'{..}
          = object
              (catMaybes
                 [("graph" .=) <$> _wmGraph,
                  ("state" .=) <$> _wmState,
                  ("clusterUuid" .=) <$> _wmClusterUuid,
                  ("startTime" .=) <$> _wmStartTime,
                  ("deleteCluster" .=) <$> _wmDeleteCluster,
                  ("createCluster" .=) <$> _wmCreateCluster,
                  ("version" .=) <$> _wmVersion,
                  ("endTime" .=) <$> _wmEndTime,
                  ("parameters" .=) <$> _wmParameters,
                  ("clusterName" .=) <$> _wmClusterName,
                  ("template" .=) <$> _wmTemplate])

-- | The normal response of the operation in case of success. If the original
-- method returns no data on success, such as Delete, the response is
-- google.protobuf.Empty. If the original method is standard
-- Get\/Create\/Update, the response should be the resource. For other
-- methods, the response should have the type XxxResponse, where Xxx is the
-- original method name. For example, if the original method name is
-- TakeSnapshot(), the inferred response type is TakeSnapshotResponse.
--
-- /See:/ 'operationResponse' smart constructor.
newtype OperationResponse =
  OperationResponse'
    { _orAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orAddtional'
operationResponse
    :: HashMap Text JSONValue -- ^ 'orAddtional'
    -> OperationResponse
operationResponse pOrAddtional_ =
  OperationResponse' {_orAddtional = _Coerce # pOrAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
orAddtional :: Lens' OperationResponse (HashMap Text JSONValue)
orAddtional
  = lens _orAddtional (\ s a -> s{_orAddtional = a}) .
      _Coerce

instance FromJSON OperationResponse where
        parseJSON
          = withObject "OperationResponse"
              (\ o -> OperationResponse' <$> (parseJSONObject o))

instance ToJSON OperationResponse where
        toJSON = toJSON . _orAddtional

-- | The per-package log levels for the driver. This may include \"root\"
-- package name to configure rootLogger. Examples: \'com.google = FATAL\',
-- \'root = INFO\', \'org.apache = DEBUG\'
--
-- /See:/ 'loggingConfigDriverLogLevels' smart constructor.
newtype LoggingConfigDriverLogLevels =
  LoggingConfigDriverLogLevels'
    { _lcdllAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LoggingConfigDriverLogLevels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcdllAddtional'
loggingConfigDriverLogLevels
    :: HashMap Text Text -- ^ 'lcdllAddtional'
    -> LoggingConfigDriverLogLevels
loggingConfigDriverLogLevels pLcdllAddtional_ =
  LoggingConfigDriverLogLevels' {_lcdllAddtional = _Coerce # pLcdllAddtional_}


lcdllAddtional :: Lens' LoggingConfigDriverLogLevels (HashMap Text Text)
lcdllAddtional
  = lens _lcdllAddtional
      (\ s a -> s{_lcdllAddtional = a})
      . _Coerce

instance FromJSON LoggingConfigDriverLogLevels where
        parseJSON
          = withObject "LoggingConfigDriverLogLevels"
              (\ o ->
                 LoggingConfigDriverLogLevels' <$>
                   (parseJSONObject o))

instance ToJSON LoggingConfigDriverLogLevels where
        toJSON = toJSON . _lcdllAddtional

-- | The status of a cluster and its instances.
--
-- /See:/ 'clusterStatus' smart constructor.
data ClusterStatus =
  ClusterStatus'
    { _csState          :: !(Maybe ClusterStatusState)
    , _csSubState       :: !(Maybe ClusterStatusSubState)
    , _csStateStartTime :: !(Maybe DateTime')
    , _csDetail         :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ClusterStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csState'
--
-- * 'csSubState'
--
-- * 'csStateStartTime'
--
-- * 'csDetail'
clusterStatus
    :: ClusterStatus
clusterStatus =
  ClusterStatus'
    { _csState = Nothing
    , _csSubState = Nothing
    , _csStateStartTime = Nothing
    , _csDetail = Nothing
    }


-- | Output only. The cluster\'s state.
csState :: Lens' ClusterStatus (Maybe ClusterStatusState)
csState = lens _csState (\ s a -> s{_csState = a})

-- | Output only. Additional state information that includes status reported
-- by the agent.
csSubState :: Lens' ClusterStatus (Maybe ClusterStatusSubState)
csSubState
  = lens _csSubState (\ s a -> s{_csSubState = a})

-- | Output only. Time when this state was entered.
csStateStartTime :: Lens' ClusterStatus (Maybe UTCTime)
csStateStartTime
  = lens _csStateStartTime
      (\ s a -> s{_csStateStartTime = a})
      . mapping _DateTime

-- | Output only. Optional details of cluster\'s state.
csDetail :: Lens' ClusterStatus (Maybe Text)
csDetail = lens _csDetail (\ s a -> s{_csDetail = a})

instance FromJSON ClusterStatus where
        parseJSON
          = withObject "ClusterStatus"
              (\ o ->
                 ClusterStatus' <$>
                   (o .:? "state") <*> (o .:? "substate") <*>
                     (o .:? "stateStartTime")
                     <*> (o .:? "detail"))

instance ToJSON ClusterStatus where
        toJSON ClusterStatus'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _csState,
                  ("substate" .=) <$> _csSubState,
                  ("stateStartTime" .=) <$> _csStateStartTime,
                  ("detail" .=) <$> _csDetail])

-- | A YARN application created by a job. Application information is a subset
-- of 'org.apache.hadoop.yarn.proto.YarnProtos.ApplicationReportProto'.Beta
-- Feature: This report is available for testing purposes only. It may be
-- changed before final release.
--
-- /See:/ 'yarnApplication' smart constructor.
data YarnApplication =
  YarnApplication'
    { _yaTrackingURL :: !(Maybe Text)
    , _yaState       :: !(Maybe YarnApplicationState)
    , _yaProgress    :: !(Maybe (Textual Double))
    , _yaName        :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'YarnApplication' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'yaTrackingURL'
--
-- * 'yaState'
--
-- * 'yaProgress'
--
-- * 'yaName'
yarnApplication
    :: YarnApplication
yarnApplication =
  YarnApplication'
    { _yaTrackingURL = Nothing
    , _yaState = Nothing
    , _yaProgress = Nothing
    , _yaName = Nothing
    }


-- | Optional. The HTTP URL of the ApplicationMaster, HistoryServer, or
-- TimelineServer that provides application-specific information. The URL
-- uses the internal hostname, and requires a proxy server for resolution
-- and, possibly, access.
yaTrackingURL :: Lens' YarnApplication (Maybe Text)
yaTrackingURL
  = lens _yaTrackingURL
      (\ s a -> s{_yaTrackingURL = a})

-- | Required. The application state.
yaState :: Lens' YarnApplication (Maybe YarnApplicationState)
yaState = lens _yaState (\ s a -> s{_yaState = a})

-- | Required. The numerical progress of the application, from 1 to 100.
yaProgress :: Lens' YarnApplication (Maybe Double)
yaProgress
  = lens _yaProgress (\ s a -> s{_yaProgress = a}) .
      mapping _Coerce

-- | Required. The application name.
yaName :: Lens' YarnApplication (Maybe Text)
yaName = lens _yaName (\ s a -> s{_yaName = a})

instance FromJSON YarnApplication where
        parseJSON
          = withObject "YarnApplication"
              (\ o ->
                 YarnApplication' <$>
                   (o .:? "trackingUrl") <*> (o .:? "state") <*>
                     (o .:? "progress")
                     <*> (o .:? "name"))

instance ToJSON YarnApplication where
        toJSON YarnApplication'{..}
          = object
              (catMaybes
                 [("trackingUrl" .=) <$> _yaTrackingURL,
                  ("state" .=) <$> _yaState,
                  ("progress" .=) <$> _yaProgress,
                  ("name" .=) <$> _yaName])

-- | A Cloud Dataproc job for running Apache Pig (https:\/\/pig.apache.org\/)
-- queries on YARN.
--
-- /See:/ 'pigJob' smart constructor.
data PigJob =
  PigJob'
    { _pjQueryFileURI      :: !(Maybe Text)
    , _pjJarFileURIs       :: !(Maybe [Text])
    , _pjScriptVariables   :: !(Maybe PigJobScriptVariables)
    , _pjQueryList         :: !(Maybe QueryList)
    , _pjContinueOnFailure :: !(Maybe Bool)
    , _pjLoggingConfig     :: !(Maybe LoggingConfig)
    , _pjProperties        :: !(Maybe PigJobProperties)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PigJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pjQueryFileURI'
--
-- * 'pjJarFileURIs'
--
-- * 'pjScriptVariables'
--
-- * 'pjQueryList'
--
-- * 'pjContinueOnFailure'
--
-- * 'pjLoggingConfig'
--
-- * 'pjProperties'
pigJob
    :: PigJob
pigJob =
  PigJob'
    { _pjQueryFileURI = Nothing
    , _pjJarFileURIs = Nothing
    , _pjScriptVariables = Nothing
    , _pjQueryList = Nothing
    , _pjContinueOnFailure = Nothing
    , _pjLoggingConfig = Nothing
    , _pjProperties = Nothing
    }


-- | The HCFS URI of the script that contains the Pig queries.
pjQueryFileURI :: Lens' PigJob (Maybe Text)
pjQueryFileURI
  = lens _pjQueryFileURI
      (\ s a -> s{_pjQueryFileURI = a})

-- | Optional. HCFS URIs of jar files to add to the CLASSPATH of the Pig
-- Client and Hadoop MapReduce (MR) tasks. Can contain Pig UDFs.
pjJarFileURIs :: Lens' PigJob [Text]
pjJarFileURIs
  = lens _pjJarFileURIs
      (\ s a -> s{_pjJarFileURIs = a})
      . _Default
      . _Coerce

-- | Optional. Mapping of query variable names to values (equivalent to the
-- Pig command: name=[value]).
pjScriptVariables :: Lens' PigJob (Maybe PigJobScriptVariables)
pjScriptVariables
  = lens _pjScriptVariables
      (\ s a -> s{_pjScriptVariables = a})

-- | A list of queries.
pjQueryList :: Lens' PigJob (Maybe QueryList)
pjQueryList
  = lens _pjQueryList (\ s a -> s{_pjQueryList = a})

-- | Optional. Whether to continue executing queries if a query fails. The
-- default value is false. Setting to true can be useful when executing
-- independent parallel queries.
pjContinueOnFailure :: Lens' PigJob (Maybe Bool)
pjContinueOnFailure
  = lens _pjContinueOnFailure
      (\ s a -> s{_pjContinueOnFailure = a})

-- | Optional. The runtime log config for job execution.
pjLoggingConfig :: Lens' PigJob (Maybe LoggingConfig)
pjLoggingConfig
  = lens _pjLoggingConfig
      (\ s a -> s{_pjLoggingConfig = a})

-- | Optional. A mapping of property names to values, used to configure Pig.
-- Properties that conflict with values set by the Cloud Dataproc API may
-- be overwritten. Can include properties set in
-- \/etc\/hadoop\/conf\/*-site.xml, \/etc\/pig\/conf\/pig.properties, and
-- classes in user code.
pjProperties :: Lens' PigJob (Maybe PigJobProperties)
pjProperties
  = lens _pjProperties (\ s a -> s{_pjProperties = a})

instance FromJSON PigJob where
        parseJSON
          = withObject "PigJob"
              (\ o ->
                 PigJob' <$>
                   (o .:? "queryFileUri") <*>
                     (o .:? "jarFileUris" .!= mempty)
                     <*> (o .:? "scriptVariables")
                     <*> (o .:? "queryList")
                     <*> (o .:? "continueOnFailure")
                     <*> (o .:? "loggingConfig")
                     <*> (o .:? "properties"))

instance ToJSON PigJob where
        toJSON PigJob'{..}
          = object
              (catMaybes
                 [("queryFileUri" .=) <$> _pjQueryFileURI,
                  ("jarFileUris" .=) <$> _pjJarFileURIs,
                  ("scriptVariables" .=) <$> _pjScriptVariables,
                  ("queryList" .=) <$> _pjQueryList,
                  ("continueOnFailure" .=) <$> _pjContinueOnFailure,
                  ("loggingConfig" .=) <$> _pjLoggingConfig,
                  ("properties" .=) <$> _pjProperties])

-- | The runtime logging config of the job.
--
-- /See:/ 'loggingConfig' smart constructor.
newtype LoggingConfig =
  LoggingConfig'
    { _lcDriverLogLevels :: Maybe LoggingConfigDriverLogLevels
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LoggingConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcDriverLogLevels'
loggingConfig
    :: LoggingConfig
loggingConfig = LoggingConfig' {_lcDriverLogLevels = Nothing}


-- | The per-package log levels for the driver. This may include \"root\"
-- package name to configure rootLogger. Examples: \'com.google = FATAL\',
-- \'root = INFO\', \'org.apache = DEBUG\'
lcDriverLogLevels :: Lens' LoggingConfig (Maybe LoggingConfigDriverLogLevels)
lcDriverLogLevels
  = lens _lcDriverLogLevels
      (\ s a -> s{_lcDriverLogLevels = a})

instance FromJSON LoggingConfig where
        parseJSON
          = withObject "LoggingConfig"
              (\ o -> LoggingConfig' <$> (o .:? "driverLogLevels"))

instance ToJSON LoggingConfig where
        toJSON LoggingConfig'{..}
          = object
              (catMaybes
                 [("driverLogLevels" .=) <$> _lcDriverLogLevels])

-- | Associates members with a role.
--
-- /See:/ 'binding' smart constructor.
data Binding =
  Binding'
    { _bMembers   :: !(Maybe [Text])
    , _bRole      :: !(Maybe Text)
    , _bCondition :: !(Maybe Expr)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Binding' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bMembers'
--
-- * 'bRole'
--
-- * 'bCondition'
binding
    :: Binding
binding =
  Binding' {_bMembers = Nothing, _bRole = Nothing, _bCondition = Nothing}


-- | Specifies the identities requesting access for a Cloud Platform
-- resource. members can have the following values: allUsers: A special
-- identifier that represents anyone who is on the internet; with or
-- without a Google account. allAuthenticatedUsers: A special identifier
-- that represents anyone who is authenticated with a Google account or a
-- service account. user:{emailid}: An email address that represents a
-- specific Google account. For example, alice\'gmail.com .
-- serviceAccount:{emailid}: An email address that represents a service
-- account. For example, my-other-app\'appspot.gserviceaccount.com.
-- group:{emailid}: An email address that represents a Google group. For
-- example, admins\'example.com. domain:{domain}: The G Suite domain
-- (primary) that represents all the users of that domain. For example,
-- google.com or example.com.
bMembers :: Lens' Binding [Text]
bMembers
  = lens _bMembers (\ s a -> s{_bMembers = a}) .
      _Default
      . _Coerce

-- | Role that is assigned to members. For example, roles\/viewer,
-- roles\/editor, or roles\/owner.
bRole :: Lens' Binding (Maybe Text)
bRole = lens _bRole (\ s a -> s{_bRole = a})

-- | The condition that is associated with this binding. NOTE: An unsatisfied
-- condition will not allow user access via current binding. Different
-- bindings, including their conditions, are examined independently.
bCondition :: Lens' Binding (Maybe Expr)
bCondition
  = lens _bCondition (\ s a -> s{_bCondition = a})

instance FromJSON Binding where
        parseJSON
          = withObject "Binding"
              (\ o ->
                 Binding' <$>
                   (o .:? "members" .!= mempty) <*> (o .:? "role") <*>
                     (o .:? "condition"))

instance ToJSON Binding where
        toJSON Binding'{..}
          = object
              (catMaybes
                 [("members" .=) <$> _bMembers,
                  ("role" .=) <$> _bRole,
                  ("condition" .=) <$> _bCondition])
