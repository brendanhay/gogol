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

import Network.Google.Dataproc.Types.Sum
import Network.Google.Prelude

-- | Security related configuration, including encryption, Kerberos, etc.
--
-- /See:/ 'securityConfig' smart constructor.
data SecurityConfig =
  SecurityConfig'
    { _scIdentityConfig :: !(Maybe IdentityConfig)
    , _scKerberosConfig :: !(Maybe KerberosConfig)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SecurityConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scIdentityConfig'
--
-- * 'scKerberosConfig'
securityConfig
    :: SecurityConfig
securityConfig =
  SecurityConfig' {_scIdentityConfig = Nothing, _scKerberosConfig = Nothing}


-- | Optional. Identity related configuration, including service account
-- based secure multi-tenancy user mappings.
scIdentityConfig :: Lens' SecurityConfig (Maybe IdentityConfig)
scIdentityConfig
  = lens _scIdentityConfig
      (\ s a -> s{_scIdentityConfig = a})

-- | Optional. Kerberos related configuration.
scKerberosConfig :: Lens' SecurityConfig (Maybe KerberosConfig)
scKerberosConfig
  = lens _scKerberosConfig
      (\ s a -> s{_scKerberosConfig = a})

instance FromJSON SecurityConfig where
        parseJSON
          = withObject "SecurityConfig"
              (\ o ->
                 SecurityConfig' <$>
                   (o .:? "identityConfig") <*>
                     (o .:? "kerberosConfig"))

instance ToJSON SecurityConfig where
        toJSON SecurityConfig'{..}
          = object
              (catMaybes
                 [("identityConfig" .=) <$> _scIdentityConfig,
                  ("kerberosConfig" .=) <$> _scKerberosConfig])

-- | Encapsulates the full scoping used to reference a job.
--
-- /See:/ 'jobReference' smart constructor.
data JobReference =
  JobReference'
    { _jrJobId :: !(Maybe Text)
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

-- | Optional. The ID of the Google Cloud Platform project that the job
-- belongs to. If specified, must match the request project ID.
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
-- is used by gRPC (https:\/\/github.com\/grpc). Each Status message
-- contains three pieces of data: error code, error message, and error
-- details.You can find out more about this error model and how to work
-- with it in the API Design Guide
-- (https:\/\/cloud.google.com\/apis\/design\/errors).
--
-- /See:/ 'status' smart constructor.
data Status =
  Status'
    { _sDetails :: !(Maybe [StatusDetailsItem])
    , _sCode :: !(Maybe (Textual Int32))
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
-- PySpark. Properties that conflict with values set by the Dataproc API
-- may be overwritten. Can include properties set in
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

-- | The config settings for Compute Engine resources in an instance group,
-- such as a master or worker group.
--
-- /See:/ 'instanceGroupConfig' smart constructor.
data InstanceGroupConfig =
  InstanceGroupConfig'
    { _igcNumInstances :: !(Maybe (Textual Int32))
    , _igcDiskConfig :: !(Maybe DiskConfig)
    , _igcIsPreemptible :: !(Maybe Bool)
    , _igcPreemptibility :: !(Maybe InstanceGroupConfigPreemptibility)
    , _igcImageURI :: !(Maybe Text)
    , _igcAccelerators :: !(Maybe [AcceleratorConfig])
    , _igcInstanceNames :: !(Maybe [Text])
    , _igcManagedGroupConfig :: !(Maybe ManagedGroupConfig)
    , _igcMachineTypeURI :: !(Maybe Text)
    , _igcMinCPUPlatform :: !(Maybe Text)
    , _igcInstanceReferences :: !(Maybe [InstanceReference])
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
-- * 'igcPreemptibility'
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
--
-- * 'igcMinCPUPlatform'
--
-- * 'igcInstanceReferences'
instanceGroupConfig
    :: InstanceGroupConfig
instanceGroupConfig =
  InstanceGroupConfig'
    { _igcNumInstances = Nothing
    , _igcDiskConfig = Nothing
    , _igcIsPreemptible = Nothing
    , _igcPreemptibility = Nothing
    , _igcImageURI = Nothing
    , _igcAccelerators = Nothing
    , _igcInstanceNames = Nothing
    , _igcManagedGroupConfig = Nothing
    , _igcMachineTypeURI = Nothing
    , _igcMinCPUPlatform = Nothing
    , _igcInstanceReferences = Nothing
    }


-- | Optional. The number of VM instances in the instance group. For HA
-- cluster master_config groups, must be set to 3. For standard cluster
-- master_config groups, must be set to 1.
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

-- | Output only. Specifies that this instance group contains preemptible
-- instances.
igcIsPreemptible :: Lens' InstanceGroupConfig (Maybe Bool)
igcIsPreemptible
  = lens _igcIsPreemptible
      (\ s a -> s{_igcIsPreemptible = a})

-- | Optional. Specifies the preemptibility of the instance group.The default
-- value for master and worker groups is NON_PREEMPTIBLE. This default
-- cannot be changed.The default value for secondary instances is
-- PREEMPTIBLE.
igcPreemptibility :: Lens' InstanceGroupConfig (Maybe InstanceGroupConfigPreemptibility)
igcPreemptibility
  = lens _igcPreemptibility
      (\ s a -> s{_igcPreemptibility = a})

-- | Optional. The Compute Engine image resource used for cluster
-- instances.The URI can represent an image or image family.Image examples:
-- https:\/\/www.googleapis.com\/compute\/beta\/projects\/[project_id]\/global\/images\/[image-id]
-- projects\/[project_id]\/global\/images\/[image-id] image-idImage family
-- examples. Dataproc will use the most recent image from the family:
-- https:\/\/www.googleapis.com\/compute\/beta\/projects\/[project_id]\/global\/images\/family\/[custom-image-family-name]
-- projects\/[project_id]\/global\/images\/family\/[custom-image-family-name]If
-- the URI is unspecified, it will be inferred from
-- SoftwareConfig.image_version or the system default.
igcImageURI :: Lens' InstanceGroupConfig (Maybe Text)
igcImageURI
  = lens _igcImageURI (\ s a -> s{_igcImageURI = a})

-- | Optional. The Compute Engine accelerator configuration for these
-- instances.
igcAccelerators :: Lens' InstanceGroupConfig [AcceleratorConfig]
igcAccelerators
  = lens _igcAccelerators
      (\ s a -> s{_igcAccelerators = a})
      . _Default
      . _Coerce

-- | Output only. The list of instance names. Dataproc derives the names from
-- cluster_name, num_instances, and the instance group.
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
-- n1-standard-2Auto Zone Exception: If you are using the Dataproc Auto
-- Zone Placement
-- (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/configuring-clusters\/auto-zone#using_auto_zone_placement)
-- feature, you must use the short name of the machine type resource, for
-- example, n1-standard-2.
igcMachineTypeURI :: Lens' InstanceGroupConfig (Maybe Text)
igcMachineTypeURI
  = lens _igcMachineTypeURI
      (\ s a -> s{_igcMachineTypeURI = a})

-- | Optional. Specifies the minimum cpu platform for the Instance Group. See
-- Dataproc -> Minimum CPU Platform
-- (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/compute\/dataproc-min-cpu).
igcMinCPUPlatform :: Lens' InstanceGroupConfig (Maybe Text)
igcMinCPUPlatform
  = lens _igcMinCPUPlatform
      (\ s a -> s{_igcMinCPUPlatform = a})

-- | Output only. List of references to Compute Engine instances.
igcInstanceReferences :: Lens' InstanceGroupConfig [InstanceReference]
igcInstanceReferences
  = lens _igcInstanceReferences
      (\ s a -> s{_igcInstanceReferences = a})
      . _Default
      . _Coerce

instance FromJSON InstanceGroupConfig where
        parseJSON
          = withObject "InstanceGroupConfig"
              (\ o ->
                 InstanceGroupConfig' <$>
                   (o .:? "numInstances") <*> (o .:? "diskConfig") <*>
                     (o .:? "isPreemptible")
                     <*> (o .:? "preemptibility")
                     <*> (o .:? "imageUri")
                     <*> (o .:? "accelerators" .!= mempty)
                     <*> (o .:? "instanceNames" .!= mempty)
                     <*> (o .:? "managedGroupConfig")
                     <*> (o .:? "machineTypeUri")
                     <*> (o .:? "minCpuPlatform")
                     <*> (o .:? "instanceReferences" .!= mempty))

instance ToJSON InstanceGroupConfig where
        toJSON InstanceGroupConfig'{..}
          = object
              (catMaybes
                 [("numInstances" .=) <$> _igcNumInstances,
                  ("diskConfig" .=) <$> _igcDiskConfig,
                  ("isPreemptible" .=) <$> _igcIsPreemptible,
                  ("preemptibility" .=) <$> _igcPreemptibility,
                  ("imageUri" .=) <$> _igcImageURI,
                  ("accelerators" .=) <$> _igcAccelerators,
                  ("instanceNames" .=) <$> _igcInstanceNames,
                  ("managedGroupConfig" .=) <$> _igcManagedGroupConfig,
                  ("machineTypeUri" .=) <$> _igcMachineTypeURI,
                  ("minCpuPlatform" .=) <$> _igcMinCPUPlatform,
                  ("instanceReferences" .=) <$>
                    _igcInstanceReferences])

-- | Identity related configuration, including service account based secure
-- multi-tenancy user mappings.
--
-- /See:/ 'identityConfig' smart constructor.
newtype IdentityConfig =
  IdentityConfig'
    { _icUserServiceAccountMApping :: Maybe IdentityConfigUserServiceAccountMApping
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'IdentityConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icUserServiceAccountMApping'
identityConfig
    :: IdentityConfig
identityConfig = IdentityConfig' {_icUserServiceAccountMApping = Nothing}


-- | Required. Map of user to service account.
icUserServiceAccountMApping :: Lens' IdentityConfig (Maybe IdentityConfigUserServiceAccountMApping)
icUserServiceAccountMApping
  = lens _icUserServiceAccountMApping
      (\ s a -> s{_icUserServiceAccountMApping = a})

instance FromJSON IdentityConfig where
        parseJSON
          = withObject "IdentityConfig"
              (\ o ->
                 IdentityConfig' <$>
                   (o .:? "userServiceAccountMapping"))

instance ToJSON IdentityConfig where
        toJSON IdentityConfig'{..}
          = object
              (catMaybes
                 [("userServiceAccountMapping" .=) <$>
                    _icUserServiceAccountMApping])

-- | A Dataproc job for running Apache Spark (http:\/\/spark.apache.org\/)
-- applications on YARN.
--
-- /See:/ 'sparkJob' smart constructor.
data SparkJob =
  SparkJob'
    { _sjArgs :: !(Maybe [Text])
    , _sjMainJarFileURI :: !(Maybe Text)
    , _sjJarFileURIs :: !(Maybe [Text])
    , _sjFileURIs :: !(Maybe [Text])
    , _sjArchiveURIs :: !(Maybe [Text])
    , _sjMainClass :: !(Maybe Text)
    , _sjLoggingConfig :: !(Maybe LoggingConfig)
    , _sjProperties :: !(Maybe SparkJobProperties)
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

-- | Optional. HCFS URIs of files to be placed in the working directory of
-- each executor. Useful for naively parallel tasks.
sjFileURIs :: Lens' SparkJob [Text]
sjFileURIs
  = lens _sjFileURIs (\ s a -> s{_sjFileURIs = a}) .
      _Default
      . _Coerce

-- | Optional. HCFS URIs of archives to be extracted into the working
-- directory of each executor. Supported file types: .jar, .tar, .tar.gz,
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
-- Spark. Properties that conflict with values set by the Dataproc API may
-- be overwritten. Can include properties set in
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
-- yarn-site.xmlFor more information, see Cluster properties
-- (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/cluster-properties).
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
    { _coDone :: !(Maybe Bool)
    , _coError :: !(Maybe Text)
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
    { _csZone :: !(Maybe Text)
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

-- | Specifies Kerberos related configuration.
--
-- /See:/ 'kerberosConfig' smart constructor.
data KerberosConfig =
  KerberosConfig'
    { _kcEnableKerberos :: !(Maybe Bool)
    , _kcCrossRealmTrustAdminServer :: !(Maybe Text)
    , _kcCrossRealmTrustRealm :: !(Maybe Text)
    , _kcKeyPasswordURI :: !(Maybe Text)
    , _kcKeystorePasswordURI :: !(Maybe Text)
    , _kcKmsKeyURI :: !(Maybe Text)
    , _kcRealm :: !(Maybe Text)
    , _kcTgtLifetimeHours :: !(Maybe (Textual Int32))
    , _kcTruststorePasswordURI :: !(Maybe Text)
    , _kcTruststoreURI :: !(Maybe Text)
    , _kcCrossRealmTrustSharedPasswordURI :: !(Maybe Text)
    , _kcRootPrincipalPasswordURI :: !(Maybe Text)
    , _kcKdcDBKeyURI :: !(Maybe Text)
    , _kcKeystoreURI :: !(Maybe Text)
    , _kcCrossRealmTrustKdc :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'KerberosConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'kcEnableKerberos'
--
-- * 'kcCrossRealmTrustAdminServer'
--
-- * 'kcCrossRealmTrustRealm'
--
-- * 'kcKeyPasswordURI'
--
-- * 'kcKeystorePasswordURI'
--
-- * 'kcKmsKeyURI'
--
-- * 'kcRealm'
--
-- * 'kcTgtLifetimeHours'
--
-- * 'kcTruststorePasswordURI'
--
-- * 'kcTruststoreURI'
--
-- * 'kcCrossRealmTrustSharedPasswordURI'
--
-- * 'kcRootPrincipalPasswordURI'
--
-- * 'kcKdcDBKeyURI'
--
-- * 'kcKeystoreURI'
--
-- * 'kcCrossRealmTrustKdc'
kerberosConfig
    :: KerberosConfig
kerberosConfig =
  KerberosConfig'
    { _kcEnableKerberos = Nothing
    , _kcCrossRealmTrustAdminServer = Nothing
    , _kcCrossRealmTrustRealm = Nothing
    , _kcKeyPasswordURI = Nothing
    , _kcKeystorePasswordURI = Nothing
    , _kcKmsKeyURI = Nothing
    , _kcRealm = Nothing
    , _kcTgtLifetimeHours = Nothing
    , _kcTruststorePasswordURI = Nothing
    , _kcTruststoreURI = Nothing
    , _kcCrossRealmTrustSharedPasswordURI = Nothing
    , _kcRootPrincipalPasswordURI = Nothing
    , _kcKdcDBKeyURI = Nothing
    , _kcKeystoreURI = Nothing
    , _kcCrossRealmTrustKdc = Nothing
    }


-- | Optional. Flag to indicate whether to Kerberize the cluster (default:
-- false). Set this field to true to enable Kerberos on a cluster.
kcEnableKerberos :: Lens' KerberosConfig (Maybe Bool)
kcEnableKerberos
  = lens _kcEnableKerberos
      (\ s a -> s{_kcEnableKerberos = a})

-- | Optional. The admin server (IP or hostname) for the remote trusted realm
-- in a cross realm trust relationship.
kcCrossRealmTrustAdminServer :: Lens' KerberosConfig (Maybe Text)
kcCrossRealmTrustAdminServer
  = lens _kcCrossRealmTrustAdminServer
      (\ s a -> s{_kcCrossRealmTrustAdminServer = a})

-- | Optional. The remote realm the Dataproc on-cluster KDC will trust,
-- should the user enable cross realm trust.
kcCrossRealmTrustRealm :: Lens' KerberosConfig (Maybe Text)
kcCrossRealmTrustRealm
  = lens _kcCrossRealmTrustRealm
      (\ s a -> s{_kcCrossRealmTrustRealm = a})

-- | Optional. The Cloud Storage URI of a KMS encrypted file containing the
-- password to the user provided key. For the self-signed certificate, this
-- password is generated by Dataproc.
kcKeyPasswordURI :: Lens' KerberosConfig (Maybe Text)
kcKeyPasswordURI
  = lens _kcKeyPasswordURI
      (\ s a -> s{_kcKeyPasswordURI = a})

-- | Optional. The Cloud Storage URI of a KMS encrypted file containing the
-- password to the user provided keystore. For the self-signed certificate,
-- this password is generated by Dataproc.
kcKeystorePasswordURI :: Lens' KerberosConfig (Maybe Text)
kcKeystorePasswordURI
  = lens _kcKeystorePasswordURI
      (\ s a -> s{_kcKeystorePasswordURI = a})

-- | Optional. The uri of the KMS key used to encrypt various sensitive
-- files.
kcKmsKeyURI :: Lens' KerberosConfig (Maybe Text)
kcKmsKeyURI
  = lens _kcKmsKeyURI (\ s a -> s{_kcKmsKeyURI = a})

-- | Optional. The name of the on-cluster Kerberos realm. If not specified,
-- the uppercased domain of hostnames will be the realm.
kcRealm :: Lens' KerberosConfig (Maybe Text)
kcRealm = lens _kcRealm (\ s a -> s{_kcRealm = a})

-- | Optional. The lifetime of the ticket granting ticket, in hours. If not
-- specified, or user specifies 0, then default value 10 will be used.
kcTgtLifetimeHours :: Lens' KerberosConfig (Maybe Int32)
kcTgtLifetimeHours
  = lens _kcTgtLifetimeHours
      (\ s a -> s{_kcTgtLifetimeHours = a})
      . mapping _Coerce

-- | Optional. The Cloud Storage URI of a KMS encrypted file containing the
-- password to the user provided truststore. For the self-signed
-- certificate, this password is generated by Dataproc.
kcTruststorePasswordURI :: Lens' KerberosConfig (Maybe Text)
kcTruststorePasswordURI
  = lens _kcTruststorePasswordURI
      (\ s a -> s{_kcTruststorePasswordURI = a})

-- | Optional. The Cloud Storage URI of the truststore file used for SSL
-- encryption. If not provided, Dataproc will provide a self-signed
-- certificate.
kcTruststoreURI :: Lens' KerberosConfig (Maybe Text)
kcTruststoreURI
  = lens _kcTruststoreURI
      (\ s a -> s{_kcTruststoreURI = a})

-- | Optional. The Cloud Storage URI of a KMS encrypted file containing the
-- shared password between the on-cluster Kerberos realm and the remote
-- trusted realm, in a cross realm trust relationship.
kcCrossRealmTrustSharedPasswordURI :: Lens' KerberosConfig (Maybe Text)
kcCrossRealmTrustSharedPasswordURI
  = lens _kcCrossRealmTrustSharedPasswordURI
      (\ s a -> s{_kcCrossRealmTrustSharedPasswordURI = a})

-- | Optional. The Cloud Storage URI of a KMS encrypted file containing the
-- root principal password.
kcRootPrincipalPasswordURI :: Lens' KerberosConfig (Maybe Text)
kcRootPrincipalPasswordURI
  = lens _kcRootPrincipalPasswordURI
      (\ s a -> s{_kcRootPrincipalPasswordURI = a})

-- | Optional. The Cloud Storage URI of a KMS encrypted file containing the
-- master key of the KDC database.
kcKdcDBKeyURI :: Lens' KerberosConfig (Maybe Text)
kcKdcDBKeyURI
  = lens _kcKdcDBKeyURI
      (\ s a -> s{_kcKdcDBKeyURI = a})

-- | Optional. The Cloud Storage URI of the keystore file used for SSL
-- encryption. If not provided, Dataproc will provide a self-signed
-- certificate.
kcKeystoreURI :: Lens' KerberosConfig (Maybe Text)
kcKeystoreURI
  = lens _kcKeystoreURI
      (\ s a -> s{_kcKeystoreURI = a})

-- | Optional. The KDC (IP or hostname) for the remote trusted realm in a
-- cross realm trust relationship.
kcCrossRealmTrustKdc :: Lens' KerberosConfig (Maybe Text)
kcCrossRealmTrustKdc
  = lens _kcCrossRealmTrustKdc
      (\ s a -> s{_kcCrossRealmTrustKdc = a})

instance FromJSON KerberosConfig where
        parseJSON
          = withObject "KerberosConfig"
              (\ o ->
                 KerberosConfig' <$>
                   (o .:? "enableKerberos") <*>
                     (o .:? "crossRealmTrustAdminServer")
                     <*> (o .:? "crossRealmTrustRealm")
                     <*> (o .:? "keyPasswordUri")
                     <*> (o .:? "keystorePasswordUri")
                     <*> (o .:? "kmsKeyUri")
                     <*> (o .:? "realm")
                     <*> (o .:? "tgtLifetimeHours")
                     <*> (o .:? "truststorePasswordUri")
                     <*> (o .:? "truststoreUri")
                     <*> (o .:? "crossRealmTrustSharedPasswordUri")
                     <*> (o .:? "rootPrincipalPasswordUri")
                     <*> (o .:? "kdcDbKeyUri")
                     <*> (o .:? "keystoreUri")
                     <*> (o .:? "crossRealmTrustKdc"))

instance ToJSON KerberosConfig where
        toJSON KerberosConfig'{..}
          = object
              (catMaybes
                 [("enableKerberos" .=) <$> _kcEnableKerberos,
                  ("crossRealmTrustAdminServer" .=) <$>
                    _kcCrossRealmTrustAdminServer,
                  ("crossRealmTrustRealm" .=) <$>
                    _kcCrossRealmTrustRealm,
                  ("keyPasswordUri" .=) <$> _kcKeyPasswordURI,
                  ("keystorePasswordUri" .=) <$>
                    _kcKeystorePasswordURI,
                  ("kmsKeyUri" .=) <$> _kcKmsKeyURI,
                  ("realm" .=) <$> _kcRealm,
                  ("tgtLifetimeHours" .=) <$> _kcTgtLifetimeHours,
                  ("truststorePasswordUri" .=) <$>
                    _kcTruststorePasswordURI,
                  ("truststoreUri" .=) <$> _kcTruststoreURI,
                  ("crossRealmTrustSharedPasswordUri" .=) <$>
                    _kcCrossRealmTrustSharedPasswordURI,
                  ("rootPrincipalPasswordUri" .=) <$>
                    _kcRootPrincipalPasswordURI,
                  ("kdcDbKeyUri" .=) <$> _kcKdcDBKeyURI,
                  ("keystoreUri" .=) <$> _kcKeystoreURI,
                  ("crossRealmTrustKdc" .=) <$> _kcCrossRealmTrustKdc])

-- | Job scheduling options.
--
-- /See:/ 'jobScheduling' smart constructor.
data JobScheduling =
  JobScheduling'
    { _jsMaxFailuresTotal :: !(Maybe (Textual Int32))
    , _jsMaxFailuresPerHour :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'JobScheduling' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jsMaxFailuresTotal'
--
-- * 'jsMaxFailuresPerHour'
jobScheduling
    :: JobScheduling
jobScheduling =
  JobScheduling'
    {_jsMaxFailuresTotal = Nothing, _jsMaxFailuresPerHour = Nothing}


-- | Optional. Maximum number of times in total a driver may be restarted as
-- a result of driver exiting with non-zero code before job is reported
-- failed. Maximum value is 240.
jsMaxFailuresTotal :: Lens' JobScheduling (Maybe Int32)
jsMaxFailuresTotal
  = lens _jsMaxFailuresTotal
      (\ s a -> s{_jsMaxFailuresTotal = a})
      . mapping _Coerce

-- | Optional. Maximum number of times per hour a driver may be restarted as
-- a result of driver exiting with non-zero code before job is reported
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
                 JobScheduling' <$>
                   (o .:? "maxFailuresTotal") <*>
                     (o .:? "maxFailuresPerHour"))

instance ToJSON JobScheduling where
        toJSON JobScheduling'{..}
          = object
              (catMaybes
                 [("maxFailuresTotal" .=) <$> _jsMaxFailuresTotal,
                  ("maxFailuresPerHour" .=) <$> _jsMaxFailuresPerHour])

-- | Specifies the config of disk options for a group of VM instances.
--
-- /See:/ 'diskConfig' smart constructor.
data DiskConfig =
  DiskConfig'
    { _dcNumLocalSsds :: !(Maybe (Textual Int32))
    , _dcBootDiskType :: !(Maybe Text)
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
-- values: \"pd-balanced\" (Persistent Disk Balanced Solid State Drive),
-- \"pd-ssd\" (Persistent Disk Solid State Drive), or \"pd-standard\"
-- (Persistent Disk Hard Disk Drive). See Disk types
-- (https:\/\/cloud.google.com\/compute\/docs\/disks#disk-types).
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

-- | Represents a textual expression in the Common Expression Language (CEL)
-- syntax. CEL is a C-like expression language. The syntax and semantics of
-- CEL are documented at https:\/\/github.com\/google\/cel-spec.Example
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
-- /See:/ 'expr' smart constructor.
data Expr =
  Expr'
    { _eLocation :: !(Maybe Text)
    , _eExpression :: !(Maybe Text)
    , _eTitle :: !(Maybe Text)
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


-- | Optional. String indicating the location of the expression for error
-- reporting, e.g. a file name and a position in the file.
eLocation :: Lens' Expr (Maybe Text)
eLocation
  = lens _eLocation (\ s a -> s{_eLocation = a})

-- | Textual representation of an expression in Common Expression Language
-- syntax.
eExpression :: Lens' Expr (Maybe Text)
eExpression
  = lens _eExpression (\ s a -> s{_eExpression = a})

-- | Optional. Title for the expression, i.e. a short string describing its
-- purpose. This can be used e.g. in UIs which allow to enter the
-- expression.
eTitle :: Lens' Expr (Maybe Text)
eTitle = lens _eTitle (\ s a -> s{_eTitle = a})

-- | Optional. Description of the expression. This is a longer text which
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
    , _lorOperations :: !(Maybe [Operation])
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
newtype GetIAMPolicyRequest =
  GetIAMPolicyRequest'
    { _giprOptions :: Maybe GetPolicyOptions
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GetIAMPolicyRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giprOptions'
getIAMPolicyRequest
    :: GetIAMPolicyRequest
getIAMPolicyRequest = GetIAMPolicyRequest' {_giprOptions = Nothing}


-- | OPTIONAL: A GetPolicyOptions object for specifying options to
-- GetIamPolicy.
giprOptions :: Lens' GetIAMPolicyRequest (Maybe GetPolicyOptions)
giprOptions
  = lens _giprOptions (\ s a -> s{_giprOptions = a})

instance FromJSON GetIAMPolicyRequest where
        parseJSON
          = withObject "GetIAMPolicyRequest"
              (\ o -> GetIAMPolicyRequest' <$> (o .:? "options"))

instance ToJSON GetIAMPolicyRequest where
        toJSON GetIAMPolicyRequest'{..}
          = object
              (catMaybes [("options" .=) <$> _giprOptions])

-- | Specifies workflow execution target.Either managed_cluster or
-- cluster_selector is required.
--
-- /See:/ 'workflowTemplatePlacement' smart constructor.
data WorkflowTemplatePlacement =
  WorkflowTemplatePlacement'
    { _wtpClusterSelector :: !(Maybe ClusterSelector)
    , _wtpManagedCluster :: !(Maybe ManagedCluster)
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

-- | A cluster that is managed by the workflow.
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
    { _cStatus :: !(Maybe ClusterStatus)
    , _cMetrics :: !(Maybe ClusterMetrics)
    , _cClusterUuid :: !(Maybe Text)
    , _cConfig :: !(Maybe ClusterConfig)
    , _cClusterName :: !(Maybe Text)
    , _cLabels :: !(Maybe ClusterLabels)
    , _cProjectId :: !(Maybe Text)
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

-- | Output only. Contains cluster daemon metrics such as HDFS and YARN
-- stats.Beta Feature: This report is available for testing purposes only.
-- It may be changed before final release.
cMetrics :: Lens' Cluster (Maybe ClusterMetrics)
cMetrics = lens _cMetrics (\ s a -> s{_cMetrics = a})

-- | Output only. A cluster UUID (Unique Universal Identifier). Dataproc
-- generates this value when it creates the cluster.
cClusterUuid :: Lens' Cluster (Maybe Text)
cClusterUuid
  = lens _cClusterUuid (\ s a -> s{_cClusterUuid = a})

-- | Required. The cluster config. Note that Dataproc may set default values,
-- and values may change when clusters are updated.
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
    { _pvRegex :: !(Maybe RegexValidation)
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

-- | A reference to a Compute Engine instance.
--
-- /See:/ 'instanceReference' smart constructor.
data InstanceReference =
  InstanceReference'
    { _irInstanceId :: !(Maybe Text)
    , _irPublicEciesKey :: !(Maybe Text)
    , _irPublicKey :: !(Maybe Text)
    , _irInstanceName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstanceReference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irInstanceId'
--
-- * 'irPublicEciesKey'
--
-- * 'irPublicKey'
--
-- * 'irInstanceName'
instanceReference
    :: InstanceReference
instanceReference =
  InstanceReference'
    { _irInstanceId = Nothing
    , _irPublicEciesKey = Nothing
    , _irPublicKey = Nothing
    , _irInstanceName = Nothing
    }


-- | The unique identifier of the Compute Engine instance.
irInstanceId :: Lens' InstanceReference (Maybe Text)
irInstanceId
  = lens _irInstanceId (\ s a -> s{_irInstanceId = a})

-- | The public ECIES key used for sharing data with this instance.
irPublicEciesKey :: Lens' InstanceReference (Maybe Text)
irPublicEciesKey
  = lens _irPublicEciesKey
      (\ s a -> s{_irPublicEciesKey = a})

-- | The public RSA key used for sharing data with this instance.
irPublicKey :: Lens' InstanceReference (Maybe Text)
irPublicKey
  = lens _irPublicKey (\ s a -> s{_irPublicKey = a})

-- | The user-friendly name of the Compute Engine instance.
irInstanceName :: Lens' InstanceReference (Maybe Text)
irInstanceName
  = lens _irInstanceName
      (\ s a -> s{_irInstanceName = a})

instance FromJSON InstanceReference where
        parseJSON
          = withObject "InstanceReference"
              (\ o ->
                 InstanceReference' <$>
                   (o .:? "instanceId") <*> (o .:? "publicEciesKey") <*>
                     (o .:? "publicKey")
                     <*> (o .:? "instanceName"))

instance ToJSON InstanceReference where
        toJSON InstanceReference'{..}
          = object
              (catMaybes
                 [("instanceId" .=) <$> _irInstanceId,
                  ("publicEciesKey" .=) <$> _irPublicEciesKey,
                  ("publicKey" .=) <$> _irPublicKey,
                  ("instanceName" .=) <$> _irInstanceName])

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
    , _sjrJob :: !(Maybe Job)
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
-- receives two SubmitJobRequest
-- (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rpc\/google.cloud.dataproc.v1#google.cloud.dataproc.v1.SubmitJobRequest)s
-- with the same id, then the second request will be ignored and the first
-- Job created and stored in the backend is returned.It is recommended to
-- always set this value to a UUID
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

-- | Reservation Affinity for consuming Zonal reservation.
--
-- /See:/ 'reservationAffinity' smart constructor.
data ReservationAffinity =
  ReservationAffinity'
    { _raConsumeReservationType :: !(Maybe ReservationAffinityConsumeReservationType)
    , _raValues :: !(Maybe [Text])
    , _raKey :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReservationAffinity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'raConsumeReservationType'
--
-- * 'raValues'
--
-- * 'raKey'
reservationAffinity
    :: ReservationAffinity
reservationAffinity =
  ReservationAffinity'
    {_raConsumeReservationType = Nothing, _raValues = Nothing, _raKey = Nothing}


-- | Optional. Type of reservation to consume
raConsumeReservationType :: Lens' ReservationAffinity (Maybe ReservationAffinityConsumeReservationType)
raConsumeReservationType
  = lens _raConsumeReservationType
      (\ s a -> s{_raConsumeReservationType = a})

-- | Optional. Corresponds to the label values of reservation resource.
raValues :: Lens' ReservationAffinity [Text]
raValues
  = lens _raValues (\ s a -> s{_raValues = a}) .
      _Default
      . _Coerce

-- | Optional. Corresponds to the label key of reservation resource.
raKey :: Lens' ReservationAffinity (Maybe Text)
raKey = lens _raKey (\ s a -> s{_raKey = a})

instance FromJSON ReservationAffinity where
        parseJSON
          = withObject "ReservationAffinity"
              (\ o ->
                 ReservationAffinity' <$>
                   (o .:? "consumeReservationType") <*>
                     (o .:? "values" .!= mempty)
                     <*> (o .:? "key"))

instance ToJSON ReservationAffinity where
        toJSON ReservationAffinity'{..}
          = object
              (catMaybes
                 [("consumeReservationType" .=) <$>
                    _raConsumeReservationType,
                  ("values" .=) <$> _raValues, ("key" .=) <$> _raKey])

-- | Job Operation metadata.
--
-- /See:/ 'jobMetadata' smart constructor.
data JobMetadata =
  JobMetadata'
    { _jmStatus :: !(Maybe JobStatus)
    , _jmJobId :: !(Maybe Text)
    , _jmStartTime :: !(Maybe DateTime')
    , _jmOperationType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'JobMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jmStatus'
--
-- * 'jmJobId'
--
-- * 'jmStartTime'
--
-- * 'jmOperationType'
jobMetadata
    :: JobMetadata
jobMetadata =
  JobMetadata'
    { _jmStatus = Nothing
    , _jmJobId = Nothing
    , _jmStartTime = Nothing
    , _jmOperationType = Nothing
    }


-- | Output only. Most recent job status.
jmStatus :: Lens' JobMetadata (Maybe JobStatus)
jmStatus = lens _jmStatus (\ s a -> s{_jmStatus = a})

-- | Output only. The job id.
jmJobId :: Lens' JobMetadata (Maybe Text)
jmJobId = lens _jmJobId (\ s a -> s{_jmJobId = a})

-- | Output only. Job submission time.
jmStartTime :: Lens' JobMetadata (Maybe UTCTime)
jmStartTime
  = lens _jmStartTime (\ s a -> s{_jmStartTime = a}) .
      mapping _DateTime

-- | Output only. Operation type.
jmOperationType :: Lens' JobMetadata (Maybe Text)
jmOperationType
  = lens _jmOperationType
      (\ s a -> s{_jmOperationType = a})

instance FromJSON JobMetadata where
        parseJSON
          = withObject "JobMetadata"
              (\ o ->
                 JobMetadata' <$>
                   (o .:? "status") <*> (o .:? "jobId") <*>
                     (o .:? "startTime")
                     <*> (o .:? "operationType"))

instance ToJSON JobMetadata where
        toJSON JobMetadata'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _jmStatus,
                  ("jobId" .=) <$> _jmJobId,
                  ("startTime" .=) <$> _jmStartTime,
                  ("operationType" .=) <$> _jmOperationType])

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

-- | Node Group Affinity for clusters using sole-tenant node groups.
--
-- /See:/ 'nodeGroupAffinity' smart constructor.
newtype NodeGroupAffinity =
  NodeGroupAffinity'
    { _ngaNodeGroupURI :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NodeGroupAffinity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ngaNodeGroupURI'
nodeGroupAffinity
    :: NodeGroupAffinity
nodeGroupAffinity = NodeGroupAffinity' {_ngaNodeGroupURI = Nothing}


-- | Required. The URI of a sole-tenant node group resource
-- (https:\/\/cloud.google.com\/compute\/docs\/reference\/rest\/v1\/nodeGroups)
-- that the cluster will be created on.A full URL, partial URI, or node
-- group name are valid. Examples:
-- https:\/\/www.googleapis.com\/compute\/v1\/projects\/[project_id]\/zones\/us-central1-a\/nodeGroups\/node-group-1
-- projects\/[project_id]\/zones\/us-central1-a\/nodeGroups\/node-group-1
-- node-group-1
ngaNodeGroupURI :: Lens' NodeGroupAffinity (Maybe Text)
ngaNodeGroupURI
  = lens _ngaNodeGroupURI
      (\ s a -> s{_ngaNodeGroupURI = a})

instance FromJSON NodeGroupAffinity where
        parseJSON
          = withObject "NodeGroupAffinity"
              (\ o ->
                 NodeGroupAffinity' <$> (o .:? "nodeGroupUri"))

instance ToJSON NodeGroupAffinity where
        toJSON NodeGroupAffinity'{..}
          = object
              (catMaybes
                 [("nodeGroupUri" .=) <$> _ngaNodeGroupURI])

-- | This resource represents a long-running operation that is the result of
-- a network API call.
--
-- /See:/ 'operation' smart constructor.
data Operation =
  Operation'
    { _oDone :: !(Maybe Bool)
    , _oError :: !(Maybe Status)
    , _oResponse :: !(Maybe OperationResponse)
    , _oName :: !(Maybe Text)
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
-- name should be a resource name ending with operations\/{unique_id}.
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

-- | A Dataproc job for running Apache Hive (https:\/\/hive.apache.org\/)
-- queries on YARN.
--
-- /See:/ 'hiveJob' smart constructor.
data HiveJob =
  HiveJob'
    { _hjQueryFileURI :: !(Maybe Text)
    , _hjJarFileURIs :: !(Maybe [Text])
    , _hjScriptVariables :: !(Maybe HiveJobScriptVariables)
    , _hjQueryList :: !(Maybe QueryList)
    , _hjContinueOnFailure :: !(Maybe Bool)
    , _hjProperties :: !(Maybe HiveJobProperties)
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
-- Hive. Properties that conflict with values set by the Dataproc API may
-- be overwritten. Can include properties set in
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

-- | A response to a request to list autoscaling policies in a project.
--
-- /See:/ 'listAutoscalingPoliciesResponse' smart constructor.
data ListAutoscalingPoliciesResponse =
  ListAutoscalingPoliciesResponse'
    { _laprNextPageToken :: !(Maybe Text)
    , _laprPolicies :: !(Maybe [AutoscalingPolicy])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListAutoscalingPoliciesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'laprNextPageToken'
--
-- * 'laprPolicies'
listAutoscalingPoliciesResponse
    :: ListAutoscalingPoliciesResponse
listAutoscalingPoliciesResponse =
  ListAutoscalingPoliciesResponse'
    {_laprNextPageToken = Nothing, _laprPolicies = Nothing}


-- | Output only. This token is included in the response if there are more
-- results to fetch.
laprNextPageToken :: Lens' ListAutoscalingPoliciesResponse (Maybe Text)
laprNextPageToken
  = lens _laprNextPageToken
      (\ s a -> s{_laprNextPageToken = a})

-- | Output only. Autoscaling policies list.
laprPolicies :: Lens' ListAutoscalingPoliciesResponse [AutoscalingPolicy]
laprPolicies
  = lens _laprPolicies (\ s a -> s{_laprPolicies = a})
      . _Default
      . _Coerce

instance FromJSON ListAutoscalingPoliciesResponse
         where
        parseJSON
          = withObject "ListAutoscalingPoliciesResponse"
              (\ o ->
                 ListAutoscalingPoliciesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "policies" .!= mempty))

instance ToJSON ListAutoscalingPoliciesResponse where
        toJSON ListAutoscalingPoliciesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _laprNextPageToken,
                  ("policies" .=) <$> _laprPolicies])

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

-- | Autoscaling Policy config associated with the cluster.
--
-- /See:/ 'autoscalingConfig' smart constructor.
newtype AutoscalingConfig =
  AutoscalingConfig'
    { _acPolicyURI :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AutoscalingConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acPolicyURI'
autoscalingConfig
    :: AutoscalingConfig
autoscalingConfig = AutoscalingConfig' {_acPolicyURI = Nothing}


-- | Optional. The autoscaling policy used by the cluster.Only resource names
-- including projectid and location (region) are valid. Examples:
-- https:\/\/www.googleapis.com\/compute\/v1\/projects\/[project_id]\/locations\/[dataproc_region]\/autoscalingPolicies\/[policy_id]
-- projects\/[project_id]\/locations\/[dataproc_region]\/autoscalingPolicies\/[policy_id]Note
-- that the policy must be in the same project and Dataproc region.
acPolicyURI :: Lens' AutoscalingConfig (Maybe Text)
acPolicyURI
  = lens _acPolicyURI (\ s a -> s{_acPolicyURI = a})

instance FromJSON AutoscalingConfig where
        parseJSON
          = withObject "AutoscalingConfig"
              (\ o -> AutoscalingConfig' <$> (o .:? "policyUri"))

instance ToJSON AutoscalingConfig where
        toJSON AutoscalingConfig'{..}
          = object
              (catMaybes [("policyUri" .=) <$> _acPolicyURI])

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
-- Properties that conflict with values set by the Dataproc API may be
-- overwritten. Can include properties set in
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

-- | A Dataproc job for running Presto (https:\/\/prestosql.io\/) queries.
-- IMPORTANT: The Dataproc Presto Optional Component
-- (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/components\/presto)
-- must be enabled when the cluster is created to submit a Presto job to
-- the cluster.
--
-- /See:/ 'prestoJob' smart constructor.
data PrestoJob =
  PrestoJob'
    { _pjQueryFileURI :: !(Maybe Text)
    , _pjClientTags :: !(Maybe [Text])
    , _pjOutputFormat :: !(Maybe Text)
    , _pjQueryList :: !(Maybe QueryList)
    , _pjContinueOnFailure :: !(Maybe Bool)
    , _pjLoggingConfig :: !(Maybe LoggingConfig)
    , _pjProperties :: !(Maybe PrestoJobProperties)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PrestoJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pjQueryFileURI'
--
-- * 'pjClientTags'
--
-- * 'pjOutputFormat'
--
-- * 'pjQueryList'
--
-- * 'pjContinueOnFailure'
--
-- * 'pjLoggingConfig'
--
-- * 'pjProperties'
prestoJob
    :: PrestoJob
prestoJob =
  PrestoJob'
    { _pjQueryFileURI = Nothing
    , _pjClientTags = Nothing
    , _pjOutputFormat = Nothing
    , _pjQueryList = Nothing
    , _pjContinueOnFailure = Nothing
    , _pjLoggingConfig = Nothing
    , _pjProperties = Nothing
    }


-- | The HCFS URI of the script that contains SQL queries.
pjQueryFileURI :: Lens' PrestoJob (Maybe Text)
pjQueryFileURI
  = lens _pjQueryFileURI
      (\ s a -> s{_pjQueryFileURI = a})

-- | Optional. Presto client tags to attach to this query
pjClientTags :: Lens' PrestoJob [Text]
pjClientTags
  = lens _pjClientTags (\ s a -> s{_pjClientTags = a})
      . _Default
      . _Coerce

-- | Optional. The format in which query output will be displayed. See the
-- Presto documentation for supported output formats
pjOutputFormat :: Lens' PrestoJob (Maybe Text)
pjOutputFormat
  = lens _pjOutputFormat
      (\ s a -> s{_pjOutputFormat = a})

-- | A list of queries.
pjQueryList :: Lens' PrestoJob (Maybe QueryList)
pjQueryList
  = lens _pjQueryList (\ s a -> s{_pjQueryList = a})

-- | Optional. Whether to continue executing queries if a query fails. The
-- default value is false. Setting to true can be useful when executing
-- independent parallel queries.
pjContinueOnFailure :: Lens' PrestoJob (Maybe Bool)
pjContinueOnFailure
  = lens _pjContinueOnFailure
      (\ s a -> s{_pjContinueOnFailure = a})

-- | Optional. The runtime log config for job execution.
pjLoggingConfig :: Lens' PrestoJob (Maybe LoggingConfig)
pjLoggingConfig
  = lens _pjLoggingConfig
      (\ s a -> s{_pjLoggingConfig = a})

-- | Optional. A mapping of property names to values. Used to set Presto
-- session properties
-- (https:\/\/prestodb.io\/docs\/current\/sql\/set-session.html) Equivalent
-- to using the --session flag in the Presto CLI
pjProperties :: Lens' PrestoJob (Maybe PrestoJobProperties)
pjProperties
  = lens _pjProperties (\ s a -> s{_pjProperties = a})

instance FromJSON PrestoJob where
        parseJSON
          = withObject "PrestoJob"
              (\ o ->
                 PrestoJob' <$>
                   (o .:? "queryFileUri") <*>
                     (o .:? "clientTags" .!= mempty)
                     <*> (o .:? "outputFormat")
                     <*> (o .:? "queryList")
                     <*> (o .:? "continueOnFailure")
                     <*> (o .:? "loggingConfig")
                     <*> (o .:? "properties"))

instance ToJSON PrestoJob where
        toJSON PrestoJob'{..}
          = object
              (catMaybes
                 [("queryFileUri" .=) <$> _pjQueryFileURI,
                  ("clientTags" .=) <$> _pjClientTags,
                  ("outputFormat" .=) <$> _pjOutputFormat,
                  ("queryList" .=) <$> _pjQueryList,
                  ("continueOnFailure" .=) <$> _pjContinueOnFailure,
                  ("loggingConfig" .=) <$> _pjLoggingConfig,
                  ("properties" .=) <$> _pjProperties])

-- | The cluster config.
--
-- /See:/ 'clusterConfig' smart constructor.
data ClusterConfig =
  ClusterConfig'
    { _ccSecurityConfig :: !(Maybe SecurityConfig)
    , _ccWorkerConfig :: !(Maybe InstanceGroupConfig)
    , _ccTempBucket :: !(Maybe Text)
    , _ccInitializationActions :: !(Maybe [NodeInitializationAction])
    , _ccAutoscalingConfig :: !(Maybe AutoscalingConfig)
    , _ccMasterConfig :: !(Maybe InstanceGroupConfig)
    , _ccGceClusterConfig :: !(Maybe GceClusterConfig)
    , _ccLifecycleConfig :: !(Maybe LifecycleConfig)
    , _ccConfigBucket :: !(Maybe Text)
    , _ccEncryptionConfig :: !(Maybe EncryptionConfig)
    , _ccSoftwareConfig :: !(Maybe SoftwareConfig)
    , _ccMetastoreConfig :: !(Maybe MetastoreConfig)
    , _ccSecondaryWorkerConfig :: !(Maybe InstanceGroupConfig)
    , _ccGkeClusterConfig :: !(Maybe GkeClusterConfig)
    , _ccEndpointConfig :: !(Maybe EndpointConfig)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ClusterConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccSecurityConfig'
--
-- * 'ccWorkerConfig'
--
-- * 'ccTempBucket'
--
-- * 'ccInitializationActions'
--
-- * 'ccAutoscalingConfig'
--
-- * 'ccMasterConfig'
--
-- * 'ccGceClusterConfig'
--
-- * 'ccLifecycleConfig'
--
-- * 'ccConfigBucket'
--
-- * 'ccEncryptionConfig'
--
-- * 'ccSoftwareConfig'
--
-- * 'ccMetastoreConfig'
--
-- * 'ccSecondaryWorkerConfig'
--
-- * 'ccGkeClusterConfig'
--
-- * 'ccEndpointConfig'
clusterConfig
    :: ClusterConfig
clusterConfig =
  ClusterConfig'
    { _ccSecurityConfig = Nothing
    , _ccWorkerConfig = Nothing
    , _ccTempBucket = Nothing
    , _ccInitializationActions = Nothing
    , _ccAutoscalingConfig = Nothing
    , _ccMasterConfig = Nothing
    , _ccGceClusterConfig = Nothing
    , _ccLifecycleConfig = Nothing
    , _ccConfigBucket = Nothing
    , _ccEncryptionConfig = Nothing
    , _ccSoftwareConfig = Nothing
    , _ccMetastoreConfig = Nothing
    , _ccSecondaryWorkerConfig = Nothing
    , _ccGkeClusterConfig = Nothing
    , _ccEndpointConfig = Nothing
    }


-- | Optional. Security settings for the cluster.
ccSecurityConfig :: Lens' ClusterConfig (Maybe SecurityConfig)
ccSecurityConfig
  = lens _ccSecurityConfig
      (\ s a -> s{_ccSecurityConfig = a})

-- | Optional. The Compute Engine config settings for worker instances in a
-- cluster.
ccWorkerConfig :: Lens' ClusterConfig (Maybe InstanceGroupConfig)
ccWorkerConfig
  = lens _ccWorkerConfig
      (\ s a -> s{_ccWorkerConfig = a})

-- | Optional. A Cloud Storage bucket used to store ephemeral cluster and
-- jobs data, such as Spark and MapReduce history files. If you do not
-- specify a temp bucket, Dataproc will determine a Cloud Storage location
-- (US, ASIA, or EU) for your cluster\'s temp bucket according to the
-- Compute Engine zone where your cluster is deployed, and then create and
-- manage this project-level, per-location bucket. The default bucket has a
-- TTL of 90 days, but you can use any TTL (or none) if you specify a
-- bucket. This field requires a Cloud Storage bucket name, not a URI to a
-- Cloud Storage bucket.
ccTempBucket :: Lens' ClusterConfig (Maybe Text)
ccTempBucket
  = lens _ccTempBucket (\ s a -> s{_ccTempBucket = a})

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

-- | Optional. Autoscaling config for the policy associated with the cluster.
-- Cluster does not autoscale if this field is unset.
ccAutoscalingConfig :: Lens' ClusterConfig (Maybe AutoscalingConfig)
ccAutoscalingConfig
  = lens _ccAutoscalingConfig
      (\ s a -> s{_ccAutoscalingConfig = a})

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

-- | Optional. Lifecycle setting for the cluster.
ccLifecycleConfig :: Lens' ClusterConfig (Maybe LifecycleConfig)
ccLifecycleConfig
  = lens _ccLifecycleConfig
      (\ s a -> s{_ccLifecycleConfig = a})

-- | Optional. A Cloud Storage bucket used to stage job dependencies, config
-- files, and job driver console output. If you do not specify a staging
-- bucket, Cloud Dataproc will determine a Cloud Storage location (US,
-- ASIA, or EU) for your cluster\'s staging bucket according to the Compute
-- Engine zone where your cluster is deployed, and then create and manage
-- this project-level, per-location bucket (see Dataproc staging bucket
-- (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/configuring-clusters\/staging-bucket)).
-- This field requires a Cloud Storage bucket name, not a URI to a Cloud
-- Storage bucket.
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

-- | Optional. Metastore configuration.
ccMetastoreConfig :: Lens' ClusterConfig (Maybe MetastoreConfig)
ccMetastoreConfig
  = lens _ccMetastoreConfig
      (\ s a -> s{_ccMetastoreConfig = a})

-- | Optional. The Compute Engine config settings for additional worker
-- instances in a cluster.
ccSecondaryWorkerConfig :: Lens' ClusterConfig (Maybe InstanceGroupConfig)
ccSecondaryWorkerConfig
  = lens _ccSecondaryWorkerConfig
      (\ s a -> s{_ccSecondaryWorkerConfig = a})

-- | Optional. BETA. The Kubernetes Engine config for Dataproc clusters
-- deployed to Kubernetes. Setting this is considered mutually exclusive
-- with Compute Engine-based options such as gce_cluster_config,
-- master_config, worker_config, secondary_worker_config, and
-- autoscaling_config.
ccGkeClusterConfig :: Lens' ClusterConfig (Maybe GkeClusterConfig)
ccGkeClusterConfig
  = lens _ccGkeClusterConfig
      (\ s a -> s{_ccGkeClusterConfig = a})

-- | Optional. Port\/endpoint configuration for this cluster
ccEndpointConfig :: Lens' ClusterConfig (Maybe EndpointConfig)
ccEndpointConfig
  = lens _ccEndpointConfig
      (\ s a -> s{_ccEndpointConfig = a})

instance FromJSON ClusterConfig where
        parseJSON
          = withObject "ClusterConfig"
              (\ o ->
                 ClusterConfig' <$>
                   (o .:? "securityConfig") <*> (o .:? "workerConfig")
                     <*> (o .:? "tempBucket")
                     <*> (o .:? "initializationActions" .!= mempty)
                     <*> (o .:? "autoscalingConfig")
                     <*> (o .:? "masterConfig")
                     <*> (o .:? "gceClusterConfig")
                     <*> (o .:? "lifecycleConfig")
                     <*> (o .:? "configBucket")
                     <*> (o .:? "encryptionConfig")
                     <*> (o .:? "softwareConfig")
                     <*> (o .:? "metastoreConfig")
                     <*> (o .:? "secondaryWorkerConfig")
                     <*> (o .:? "gkeClusterConfig")
                     <*> (o .:? "endpointConfig"))

instance ToJSON ClusterConfig where
        toJSON ClusterConfig'{..}
          = object
              (catMaybes
                 [("securityConfig" .=) <$> _ccSecurityConfig,
                  ("workerConfig" .=) <$> _ccWorkerConfig,
                  ("tempBucket" .=) <$> _ccTempBucket,
                  ("initializationActions" .=) <$>
                    _ccInitializationActions,
                  ("autoscalingConfig" .=) <$> _ccAutoscalingConfig,
                  ("masterConfig" .=) <$> _ccMasterConfig,
                  ("gceClusterConfig" .=) <$> _ccGceClusterConfig,
                  ("lifecycleConfig" .=) <$> _ccLifecycleConfig,
                  ("configBucket" .=) <$> _ccConfigBucket,
                  ("encryptionConfig" .=) <$> _ccEncryptionConfig,
                  ("softwareConfig" .=) <$> _ccSoftwareConfig,
                  ("metastoreConfig" .=) <$> _ccMetastoreConfig,
                  ("secondaryWorkerConfig" .=) <$>
                    _ccSecondaryWorkerConfig,
                  ("gkeClusterConfig" .=) <$> _ccGkeClusterConfig,
                  ("endpointConfig" .=) <$> _ccEndpointConfig])

-- | A request to instantiate a workflow template.
--
-- /See:/ 'instantiateWorkflowTemplateRequest' smart constructor.
data InstantiateWorkflowTemplateRequest =
  InstantiateWorkflowTemplateRequest'
    { _iwtrRequestId :: !(Maybe Text)
    , _iwtrVersion :: !(Maybe (Textual Int32))
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
-- those parameters. Values may not exceed 1000 characters.
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
-- Hadoop. Properties that conflict with values set by the Dataproc API may
-- be overwritten. Can include properties set in
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

-- | A request to stop a cluster.
--
-- /See:/ 'stopClusterRequest' smart constructor.
data StopClusterRequest =
  StopClusterRequest'
    { _scrRequestId :: !(Maybe Text)
    , _scrClusterUuid :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StopClusterRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scrRequestId'
--
-- * 'scrClusterUuid'
stopClusterRequest
    :: StopClusterRequest
stopClusterRequest =
  StopClusterRequest' {_scrRequestId = Nothing, _scrClusterUuid = Nothing}


-- | Optional. A unique ID used to identify the request. If the server
-- receives two StopClusterRequest
-- (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rpc\/google.cloud.dataproc.v1#google.cloud.dataproc.v1.StopClusterRequest)s
-- with the same id, then the second request will be ignored and the first
-- google.longrunning.Operation created and stored in the backend is
-- returned.Recommendation: Set this value to a UUID
-- (https:\/\/en.wikipedia.org\/wiki\/Universally_unique_identifier).The ID
-- must contain only letters (a-z, A-Z), numbers (0-9), underscores (_),
-- and hyphens (-). The maximum length is 40 characters.
scrRequestId :: Lens' StopClusterRequest (Maybe Text)
scrRequestId
  = lens _scrRequestId (\ s a -> s{_scrRequestId = a})

-- | Optional. Specifying the cluster_uuid means the RPC will fail (with
-- error NOT_FOUND) if a cluster with the specified UUID does not exist.
scrClusterUuid :: Lens' StopClusterRequest (Maybe Text)
scrClusterUuid
  = lens _scrClusterUuid
      (\ s a -> s{_scrClusterUuid = a})

instance FromJSON StopClusterRequest where
        parseJSON
          = withObject "StopClusterRequest"
              (\ o ->
                 StopClusterRequest' <$>
                   (o .:? "requestId") <*> (o .:? "clusterUuid"))

instance ToJSON StopClusterRequest where
        toJSON StopClusterRequest'{..}
          = object
              (catMaybes
                 [("requestId" .=) <$> _scrRequestId,
                  ("clusterUuid" .=) <$> _scrClusterUuid])

-- | Output only. The map of port descriptions to URLs. Will only be
-- populated if enable_http_port_access is true.
--
-- /See:/ 'endpointConfigHTTPPorts' smart constructor.
newtype EndpointConfigHTTPPorts =
  EndpointConfigHTTPPorts'
    { _echttppAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EndpointConfigHTTPPorts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'echttppAddtional'
endpointConfigHTTPPorts
    :: HashMap Text Text -- ^ 'echttppAddtional'
    -> EndpointConfigHTTPPorts
endpointConfigHTTPPorts pEchttppAddtional_ =
  EndpointConfigHTTPPorts' {_echttppAddtional = _Coerce # pEchttppAddtional_}


echttppAddtional :: Lens' EndpointConfigHTTPPorts (HashMap Text Text)
echttppAddtional
  = lens _echttppAddtional
      (\ s a -> s{_echttppAddtional = a})
      . _Coerce

instance FromJSON EndpointConfigHTTPPorts where
        parseJSON
          = withObject "EndpointConfigHTTPPorts"
              (\ o ->
                 EndpointConfigHTTPPorts' <$> (parseJSONObject o))

instance ToJSON EndpointConfigHTTPPorts where
        toJSON = toJSON . _echttppAddtional

-- | A Dataproc workflow template resource.
--
-- /See:/ 'workflowTemplate' smart constructor.
data WorkflowTemplate =
  WorkflowTemplate'
    { _wtJobs :: !(Maybe [OrderedJob])
    , _wtUpdateTime :: !(Maybe DateTime')
    , _wtName :: !(Maybe Text)
    , _wtVersion :: !(Maybe (Textual Int32))
    , _wtParameters :: !(Maybe [TemplateParameter])
    , _wtId :: !(Maybe Text)
    , _wtLabels :: !(Maybe WorkflowTemplateLabels)
    , _wtCreateTime :: !(Maybe DateTime')
    , _wtDagTimeout :: !(Maybe GDuration)
    , _wtPlacement :: !(Maybe WorkflowTemplatePlacement)
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
-- * 'wtDagTimeout'
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
    , _wtDagTimeout = Nothing
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

-- | Output only. The resource name of the workflow template, as described in
-- https:\/\/cloud.google.com\/apis\/design\/resource_names. For
-- projects.regions.workflowTemplates, the resource name of the template
-- has the following format:
-- projects\/{project_id}\/regions\/{region}\/workflowTemplates\/{template_id}
-- For projects.locations.workflowTemplates, the resource name of the
-- template has the following format:
-- projects\/{project_id}\/locations\/{location}\/workflowTemplates\/{template_id}
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

-- | Optional. Timeout duration for the DAG of jobs, expressed in seconds
-- (see JSON representation of duration
-- (https:\/\/developers.google.com\/protocol-buffers\/docs\/proto3#json)).
-- The timeout duration must be from 10 minutes (\"600s\") to 24 hours
-- (\"86400s\"). The timer begins when the first job is submitted. If the
-- workflow is running at the end of the timeout period, any remaining jobs
-- are cancelled, the workflow is ended, and if the workflow was running on
-- a managed cluster, the cluster is deleted.
wtDagTimeout :: Lens' WorkflowTemplate (Maybe Scientific)
wtDagTimeout
  = lens _wtDagTimeout (\ s a -> s{_wtDagTimeout = a})
      . mapping _GDuration

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
                     <*> (o .:? "dagTimeout")
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
                  ("dagTimeout" .=) <$> _wtDagTimeout,
                  ("placement" .=) <$> _wtPlacement])

-- | The status of the operation.
--
-- /See:/ 'clusterOperationStatus' smart constructor.
data ClusterOperationStatus =
  ClusterOperationStatus'
    { _cosState :: !(Maybe ClusterOperationStatusState)
    , _cosInnerState :: !(Maybe Text)
    , _cosStateStartTime :: !(Maybe DateTime')
    , _cosDetails :: !(Maybe Text)
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
-- SQL\'s SparkConf. Properties that conflict with values set by the
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
    , _niaExecutableFile :: !(Maybe Text)
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
-- minutes (see JSON representation of Duration
-- (https:\/\/developers.google.com\/protocol-buffers\/docs\/proto3#json)).Cluster
-- creation fails with an explanatory error message (the name of the
-- executable that caused the error and the exceeded timeout period) if the
-- executable is not completed at end of the timeout period.
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

-- | Encapsulates settings provided to GetIamPolicy.
--
-- /See:/ 'getPolicyOptions' smart constructor.
newtype GetPolicyOptions =
  GetPolicyOptions'
    { _gpoRequestedPolicyVersion :: Maybe (Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GetPolicyOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpoRequestedPolicyVersion'
getPolicyOptions
    :: GetPolicyOptions
getPolicyOptions = GetPolicyOptions' {_gpoRequestedPolicyVersion = Nothing}


-- | Optional. The policy format version to be returned.Valid values are 0,
-- 1, and 3. Requests specifying an invalid value will be rejected.Requests
-- for policies with any conditional bindings must specify version 3.
-- Policies without any conditional bindings may specify any valid value or
-- leave the field unset.To learn which resources support conditions in
-- their IAM policies, see the IAM documentation
-- (https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
gpoRequestedPolicyVersion :: Lens' GetPolicyOptions (Maybe Int32)
gpoRequestedPolicyVersion
  = lens _gpoRequestedPolicyVersion
      (\ s a -> s{_gpoRequestedPolicyVersion = a})
      . mapping _Coerce

instance FromJSON GetPolicyOptions where
        parseJSON
          = withObject "GetPolicyOptions"
              (\ o ->
                 GetPolicyOptions' <$>
                   (o .:? "requestedPolicyVersion"))

instance ToJSON GetPolicyOptions where
        toJSON GetPolicyOptions'{..}
          = object
              (catMaybes
                 [("requestedPolicyVersion" .=) <$>
                    _gpoRequestedPolicyVersion])

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

-- | Dataproc job config.
--
-- /See:/ 'jobPlacement' smart constructor.
data JobPlacement =
  JobPlacement'
    { _jpClusterUuid :: !(Maybe Text)
    , _jpClusterLabels :: !(Maybe JobPlacementClusterLabels)
    , _jpClusterName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'JobPlacement' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jpClusterUuid'
--
-- * 'jpClusterLabels'
--
-- * 'jpClusterName'
jobPlacement
    :: JobPlacement
jobPlacement =
  JobPlacement'
    { _jpClusterUuid = Nothing
    , _jpClusterLabels = Nothing
    , _jpClusterName = Nothing
    }


-- | Output only. A cluster UUID generated by the Dataproc service when the
-- job is submitted.
jpClusterUuid :: Lens' JobPlacement (Maybe Text)
jpClusterUuid
  = lens _jpClusterUuid
      (\ s a -> s{_jpClusterUuid = a})

-- | Optional. Cluster labels to identify a cluster where the job will be
-- submitted.
jpClusterLabels :: Lens' JobPlacement (Maybe JobPlacementClusterLabels)
jpClusterLabels
  = lens _jpClusterLabels
      (\ s a -> s{_jpClusterLabels = a})

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
                   (o .:? "clusterUuid") <*> (o .:? "clusterLabels") <*>
                     (o .:? "clusterName"))

instance ToJSON JobPlacement where
        toJSON JobPlacement'{..}
          = object
              (catMaybes
                 [("clusterUuid" .=) <$> _jpClusterUuid,
                  ("clusterLabels" .=) <$> _jpClusterLabels,
                  ("clusterName" .=) <$> _jpClusterName])

-- | A full, namespace-isolated deployment target for an existing GKE
-- cluster.
--
-- /See:/ 'namespacedGkeDeploymentTarget' smart constructor.
data NamespacedGkeDeploymentTarget =
  NamespacedGkeDeploymentTarget'
    { _ngdtTargetGkeCluster :: !(Maybe Text)
    , _ngdtClusterNamespace :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NamespacedGkeDeploymentTarget' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ngdtTargetGkeCluster'
--
-- * 'ngdtClusterNamespace'
namespacedGkeDeploymentTarget
    :: NamespacedGkeDeploymentTarget
namespacedGkeDeploymentTarget =
  NamespacedGkeDeploymentTarget'
    {_ngdtTargetGkeCluster = Nothing, _ngdtClusterNamespace = Nothing}


-- | Optional. The target GKE cluster to deploy to. Format:
-- \'projects\/{project}\/locations\/{location}\/clusters\/{cluster_id}\'
ngdtTargetGkeCluster :: Lens' NamespacedGkeDeploymentTarget (Maybe Text)
ngdtTargetGkeCluster
  = lens _ngdtTargetGkeCluster
      (\ s a -> s{_ngdtTargetGkeCluster = a})

-- | Optional. A namespace within the GKE cluster to deploy into.
ngdtClusterNamespace :: Lens' NamespacedGkeDeploymentTarget (Maybe Text)
ngdtClusterNamespace
  = lens _ngdtClusterNamespace
      (\ s a -> s{_ngdtClusterNamespace = a})

instance FromJSON NamespacedGkeDeploymentTarget where
        parseJSON
          = withObject "NamespacedGkeDeploymentTarget"
              (\ o ->
                 NamespacedGkeDeploymentTarget' <$>
                   (o .:? "targetGkeCluster") <*>
                     (o .:? "clusterNamespace"))

instance ToJSON NamespacedGkeDeploymentTarget where
        toJSON NamespacedGkeDeploymentTarget'{..}
          = object
              (catMaybes
                 [("targetGkeCluster" .=) <$> _ngdtTargetGkeCluster,
                  ("clusterNamespace" .=) <$> _ngdtClusterNamespace])

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

-- | Configuration for the size bounds of an instance group, including its
-- proportional size to other groups.
--
-- /See:/ 'instanceGroupAutoscalingPolicyConfig' smart constructor.
data InstanceGroupAutoscalingPolicyConfig =
  InstanceGroupAutoscalingPolicyConfig'
    { _igapcWeight :: !(Maybe (Textual Int32))
    , _igapcMinInstances :: !(Maybe (Textual Int32))
    , _igapcMaxInstances :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstanceGroupAutoscalingPolicyConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igapcWeight'
--
-- * 'igapcMinInstances'
--
-- * 'igapcMaxInstances'
instanceGroupAutoscalingPolicyConfig
    :: InstanceGroupAutoscalingPolicyConfig
instanceGroupAutoscalingPolicyConfig =
  InstanceGroupAutoscalingPolicyConfig'
    { _igapcWeight = Nothing
    , _igapcMinInstances = Nothing
    , _igapcMaxInstances = Nothing
    }


-- | Optional. Weight for the instance group, which is used to determine the
-- fraction of total workers in the cluster from this instance group. For
-- example, if primary workers have weight 2, and secondary workers have
-- weight 1, the cluster will have approximately 2 primary workers for each
-- secondary worker.The cluster may not reach the specified balance if
-- constrained by min\/max bounds or other autoscaling settings. For
-- example, if max_instances for secondary workers is 0, then only primary
-- workers will be added. The cluster can also be out of balance when
-- created.If weight is not set on any instance group, the cluster will
-- default to equal weight for all groups: the cluster will attempt to
-- maintain an equal number of workers in each group within the configured
-- size bounds for each group. If weight is set for one group only, the
-- cluster will default to zero weight on the unset group. For example if
-- weight is set only on primary workers, the cluster will use primary
-- workers only and no secondary workers.
igapcWeight :: Lens' InstanceGroupAutoscalingPolicyConfig (Maybe Int32)
igapcWeight
  = lens _igapcWeight (\ s a -> s{_igapcWeight = a}) .
      mapping _Coerce

-- | Optional. Minimum number of instances for this group.Primary workers -
-- Bounds: 2, max_instances. Default: 2. Secondary workers - Bounds: 0,
-- max_instances. Default: 0.
igapcMinInstances :: Lens' InstanceGroupAutoscalingPolicyConfig (Maybe Int32)
igapcMinInstances
  = lens _igapcMinInstances
      (\ s a -> s{_igapcMinInstances = a})
      . mapping _Coerce

-- | Required. Maximum number of instances for this group. Required for
-- primary workers. Note that by default, clusters will not use secondary
-- workers. Required for secondary workers if the minimum secondary
-- instances is set.Primary workers - Bounds: [min_instances, ). Secondary
-- workers - Bounds: [min_instances, ). Default: 0.
igapcMaxInstances :: Lens' InstanceGroupAutoscalingPolicyConfig (Maybe Int32)
igapcMaxInstances
  = lens _igapcMaxInstances
      (\ s a -> s{_igapcMaxInstances = a})
      . mapping _Coerce

instance FromJSON
           InstanceGroupAutoscalingPolicyConfig
         where
        parseJSON
          = withObject "InstanceGroupAutoscalingPolicyConfig"
              (\ o ->
                 InstanceGroupAutoscalingPolicyConfig' <$>
                   (o .:? "weight") <*> (o .:? "minInstances") <*>
                     (o .:? "maxInstances"))

instance ToJSON InstanceGroupAutoscalingPolicyConfig
         where
        toJSON InstanceGroupAutoscalingPolicyConfig'{..}
          = object
              (catMaybes
                 [("weight" .=) <$> _igapcWeight,
                  ("minInstances" .=) <$> _igapcMinInstances,
                  ("maxInstances" .=) <$> _igapcMaxInstances])

-- | Confidential Instance Config for clusters using Confidential VMs
-- (https:\/\/cloud.google.com\/compute\/confidential-vm\/docs)
--
-- /See:/ 'confidentialInstanceConfig' smart constructor.
newtype ConfidentialInstanceConfig =
  ConfidentialInstanceConfig'
    { _cicEnableConfidentialCompute :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConfidentialInstanceConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cicEnableConfidentialCompute'
confidentialInstanceConfig
    :: ConfidentialInstanceConfig
confidentialInstanceConfig =
  ConfidentialInstanceConfig' {_cicEnableConfidentialCompute = Nothing}


-- | Optional. Defines whether the instance should have confidential compute
-- enabled.
cicEnableConfidentialCompute :: Lens' ConfidentialInstanceConfig (Maybe Bool)
cicEnableConfidentialCompute
  = lens _cicEnableConfidentialCompute
      (\ s a -> s{_cicEnableConfidentialCompute = a})

instance FromJSON ConfidentialInstanceConfig where
        parseJSON
          = withObject "ConfidentialInstanceConfig"
              (\ o ->
                 ConfidentialInstanceConfig' <$>
                   (o .:? "enableConfidentialCompute"))

instance ToJSON ConfidentialInstanceConfig where
        toJSON ConfidentialInstanceConfig'{..}
          = object
              (catMaybes
                 [("enableConfidentialCompute" .=) <$>
                    _cicEnableConfidentialCompute])

-- | A configurable parameter that replaces one or more fields in the
-- template. Parameterizable fields: - Labels - File uris - Job properties
-- - Job arguments - Script variables - Main class (in HadoopJob and
-- SparkJob) - Zone (in ClusterSelector)
--
-- /See:/ 'templateParameter' smart constructor.
data TemplateParameter =
  TemplateParameter'
    { _tpName :: !(Maybe Text)
    , _tpValidation :: !(Maybe ParameterValidation)
    , _tpDescription :: !(Maybe Text)
    , _tpFields :: !(Maybe [Text])
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
    { _gccSubnetworkURI :: !(Maybe Text)
    , _gccReservationAffinity :: !(Maybe ReservationAffinity)
    , _gccInternalIPOnly :: !(Maybe Bool)
    , _gccNodeGroupAffinity :: !(Maybe NodeGroupAffinity)
    , _gccNetworkURI :: !(Maybe Text)
    , _gccZoneURI :: !(Maybe Text)
    , _gccConfidentialInstanceConfig :: !(Maybe ConfidentialInstanceConfig)
    , _gccServiceAccount :: !(Maybe Text)
    , _gccMetadata :: !(Maybe GceClusterConfigMetadata)
    , _gccServiceAccountScopes :: !(Maybe [Text])
    , _gccShieldedInstanceConfig :: !(Maybe ShieldedInstanceConfig)
    , _gccTags :: !(Maybe [Text])
    , _gccPrivateIPv6GoogleAccess :: !(Maybe GceClusterConfigPrivateIPv6GoogleAccess)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GceClusterConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gccSubnetworkURI'
--
-- * 'gccReservationAffinity'
--
-- * 'gccInternalIPOnly'
--
-- * 'gccNodeGroupAffinity'
--
-- * 'gccNetworkURI'
--
-- * 'gccZoneURI'
--
-- * 'gccConfidentialInstanceConfig'
--
-- * 'gccServiceAccount'
--
-- * 'gccMetadata'
--
-- * 'gccServiceAccountScopes'
--
-- * 'gccShieldedInstanceConfig'
--
-- * 'gccTags'
--
-- * 'gccPrivateIPv6GoogleAccess'
gceClusterConfig
    :: GceClusterConfig
gceClusterConfig =
  GceClusterConfig'
    { _gccSubnetworkURI = Nothing
    , _gccReservationAffinity = Nothing
    , _gccInternalIPOnly = Nothing
    , _gccNodeGroupAffinity = Nothing
    , _gccNetworkURI = Nothing
    , _gccZoneURI = Nothing
    , _gccConfidentialInstanceConfig = Nothing
    , _gccServiceAccount = Nothing
    , _gccMetadata = Nothing
    , _gccServiceAccountScopes = Nothing
    , _gccShieldedInstanceConfig = Nothing
    , _gccTags = Nothing
    , _gccPrivateIPv6GoogleAccess = Nothing
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

-- | Optional. Reservation Affinity for consuming Zonal reservation.
gccReservationAffinity :: Lens' GceClusterConfig (Maybe ReservationAffinity)
gccReservationAffinity
  = lens _gccReservationAffinity
      (\ s a -> s{_gccReservationAffinity = a})

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

-- | Optional. Node Group Affinity for sole-tenant clusters.
gccNodeGroupAffinity :: Lens' GceClusterConfig (Maybe NodeGroupAffinity)
gccNodeGroupAffinity
  = lens _gccNodeGroupAffinity
      (\ s a -> s{_gccNodeGroupAffinity = a})

-- | Optional. The Compute Engine network to be used for machine
-- communications. Cannot be specified with subnetwork_uri. If neither
-- network_uri nor subnetwork_uri is specified, the \"default\" network of
-- the project is used, if it exists. Cannot be a \"Custom Subnet Network\"
-- (see Using Subnetworks
-- (https:\/\/cloud.google.com\/compute\/docs\/subnetworks) for more
-- information).A full URL, partial URI, or short name are valid. Examples:
-- https:\/\/www.googleapis.com\/compute\/v1\/projects\/[project_id]\/regions\/global\/default
-- projects\/[project_id]\/regions\/global\/default default
gccNetworkURI :: Lens' GceClusterConfig (Maybe Text)
gccNetworkURI
  = lens _gccNetworkURI
      (\ s a -> s{_gccNetworkURI = a})

-- | Optional. The zone where the Compute Engine cluster will be located. On
-- a create request, it is required in the \"global\" region. If omitted in
-- a non-global Dataproc region, the service will pick a zone in the
-- corresponding Compute Engine region. On a get request, zone will always
-- be present.A full URL, partial URI, or short name are valid. Examples:
-- https:\/\/www.googleapis.com\/compute\/v1\/projects\/[project_id]\/zones\/[zone]
-- projects\/[project_id]\/zones\/[zone] us-central1-f
gccZoneURI :: Lens' GceClusterConfig (Maybe Text)
gccZoneURI
  = lens _gccZoneURI (\ s a -> s{_gccZoneURI = a})

-- | Optional. Confidential Instance Config for clusters using Confidential
-- VMs (https:\/\/cloud.google.com\/compute\/confidential-vm\/docs).
gccConfidentialInstanceConfig :: Lens' GceClusterConfig (Maybe ConfidentialInstanceConfig)
gccConfidentialInstanceConfig
  = lens _gccConfidentialInstanceConfig
      (\ s a -> s{_gccConfidentialInstanceConfig = a})

-- | Optional. The Dataproc service account
-- (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/configuring-clusters\/service-accounts#service_accounts_in_dataproc)
-- (also see VM Data Plane identity
-- (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/iam\/dataproc-principals#vm_service_account_data_plane_identity))
-- used by Dataproc cluster VM instances to access Google Cloud Platform
-- services.If not specified, the Compute Engine default service account
-- (https:\/\/cloud.google.com\/compute\/docs\/access\/service-accounts#default_service_account)
-- is used.
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

-- | Optional. Shielded Instance Config for clusters using Compute Engine
-- Shielded VMs
-- (https:\/\/cloud.google.com\/security\/shielded-cloud\/shielded-vm).
gccShieldedInstanceConfig :: Lens' GceClusterConfig (Maybe ShieldedInstanceConfig)
gccShieldedInstanceConfig
  = lens _gccShieldedInstanceConfig
      (\ s a -> s{_gccShieldedInstanceConfig = a})

-- | The Compute Engine tags to add to all instances (see Tagging instances
-- (https:\/\/cloud.google.com\/compute\/docs\/label-or-tag-resources#tags)).
gccTags :: Lens' GceClusterConfig [Text]
gccTags
  = lens _gccTags (\ s a -> s{_gccTags = a}) . _Default
      . _Coerce

-- | Optional. The type of IPv6 access for a cluster.
gccPrivateIPv6GoogleAccess :: Lens' GceClusterConfig (Maybe GceClusterConfigPrivateIPv6GoogleAccess)
gccPrivateIPv6GoogleAccess
  = lens _gccPrivateIPv6GoogleAccess
      (\ s a -> s{_gccPrivateIPv6GoogleAccess = a})

instance FromJSON GceClusterConfig where
        parseJSON
          = withObject "GceClusterConfig"
              (\ o ->
                 GceClusterConfig' <$>
                   (o .:? "subnetworkUri") <*>
                     (o .:? "reservationAffinity")
                     <*> (o .:? "internalIpOnly")
                     <*> (o .:? "nodeGroupAffinity")
                     <*> (o .:? "networkUri")
                     <*> (o .:? "zoneUri")
                     <*> (o .:? "confidentialInstanceConfig")
                     <*> (o .:? "serviceAccount")
                     <*> (o .:? "metadata")
                     <*> (o .:? "serviceAccountScopes" .!= mempty)
                     <*> (o .:? "shieldedInstanceConfig")
                     <*> (o .:? "tags" .!= mempty)
                     <*> (o .:? "privateIpv6GoogleAccess"))

instance ToJSON GceClusterConfig where
        toJSON GceClusterConfig'{..}
          = object
              (catMaybes
                 [("subnetworkUri" .=) <$> _gccSubnetworkURI,
                  ("reservationAffinity" .=) <$>
                    _gccReservationAffinity,
                  ("internalIpOnly" .=) <$> _gccInternalIPOnly,
                  ("nodeGroupAffinity" .=) <$> _gccNodeGroupAffinity,
                  ("networkUri" .=) <$> _gccNetworkURI,
                  ("zoneUri" .=) <$> _gccZoneURI,
                  ("confidentialInstanceConfig" .=) <$>
                    _gccConfidentialInstanceConfig,
                  ("serviceAccount" .=) <$> _gccServiceAccount,
                  ("metadata" .=) <$> _gccMetadata,
                  ("serviceAccountScopes" .=) <$>
                    _gccServiceAccountScopes,
                  ("shieldedInstanceConfig" .=) <$>
                    _gccShieldedInstanceConfig,
                  ("tags" .=) <$> _gccTags,
                  ("privateIpv6GoogleAccess" .=) <$>
                    _gccPrivateIPv6GoogleAccess])

-- | Optional. Cluster labels to identify a cluster where the job will be
-- submitted.
--
-- /See:/ 'jobPlacementClusterLabels' smart constructor.
newtype JobPlacementClusterLabels =
  JobPlacementClusterLabels'
    { _jpclAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'JobPlacementClusterLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jpclAddtional'
jobPlacementClusterLabels
    :: HashMap Text Text -- ^ 'jpclAddtional'
    -> JobPlacementClusterLabels
jobPlacementClusterLabels pJpclAddtional_ =
  JobPlacementClusterLabels' {_jpclAddtional = _Coerce # pJpclAddtional_}


jpclAddtional :: Lens' JobPlacementClusterLabels (HashMap Text Text)
jpclAddtional
  = lens _jpclAddtional
      (\ s a -> s{_jpclAddtional = a})
      . _Coerce

instance FromJSON JobPlacementClusterLabels where
        parseJSON
          = withObject "JobPlacementClusterLabels"
              (\ o ->
                 JobPlacementClusterLabels' <$> (parseJSONObject o))

instance ToJSON JobPlacementClusterLabels where
        toJSON = toJSON . _jpclAddtional

-- | Labels associated with the operation.
--
-- /See:/ 'batchOperationMetadataLabels' smart constructor.
newtype BatchOperationMetadataLabels =
  BatchOperationMetadataLabels'
    { _bomlAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchOperationMetadataLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bomlAddtional'
batchOperationMetadataLabels
    :: HashMap Text Text -- ^ 'bomlAddtional'
    -> BatchOperationMetadataLabels
batchOperationMetadataLabels pBomlAddtional_ =
  BatchOperationMetadataLabels' {_bomlAddtional = _Coerce # pBomlAddtional_}


bomlAddtional :: Lens' BatchOperationMetadataLabels (HashMap Text Text)
bomlAddtional
  = lens _bomlAddtional
      (\ s a -> s{_bomlAddtional = a})
      . _Coerce

instance FromJSON BatchOperationMetadataLabels where
        parseJSON
          = withObject "BatchOperationMetadataLabels"
              (\ o ->
                 BatchOperationMetadataLabels' <$>
                   (parseJSONObject o))

instance ToJSON BatchOperationMetadataLabels where
        toJSON = toJSON . _bomlAddtional

-- | A response to a request to list workflow templates in a project.
--
-- /See:/ 'listWorkflowTemplatesResponse' smart constructor.
data ListWorkflowTemplatesResponse =
  ListWorkflowTemplatesResponse'
    { _lwtrNextPageToken :: !(Maybe Text)
    , _lwtrTemplates :: !(Maybe [WorkflowTemplate])
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
-- page_token in a subsequent ListWorkflowTemplatesRequest.
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
-- Hive. Properties that conflict with values set by the Dataproc API may
-- be overwritten. Can include properties set in
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

-- | Metadata describing the Batch operation.
--
-- /See:/ 'batchOperationMetadata' smart constructor.
data BatchOperationMetadata =
  BatchOperationMetadata'
    { _bomBatch :: !(Maybe Text)
    , _bomDoneTime :: !(Maybe DateTime')
    , _bomWarnings :: !(Maybe [Text])
    , _bomBatchUuid :: !(Maybe Text)
    , _bomLabels :: !(Maybe BatchOperationMetadataLabels)
    , _bomOperationType :: !(Maybe BatchOperationMetadataOperationType)
    , _bomDescription :: !(Maybe Text)
    , _bomCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchOperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bomBatch'
--
-- * 'bomDoneTime'
--
-- * 'bomWarnings'
--
-- * 'bomBatchUuid'
--
-- * 'bomLabels'
--
-- * 'bomOperationType'
--
-- * 'bomDescription'
--
-- * 'bomCreateTime'
batchOperationMetadata
    :: BatchOperationMetadata
batchOperationMetadata =
  BatchOperationMetadata'
    { _bomBatch = Nothing
    , _bomDoneTime = Nothing
    , _bomWarnings = Nothing
    , _bomBatchUuid = Nothing
    , _bomLabels = Nothing
    , _bomOperationType = Nothing
    , _bomDescription = Nothing
    , _bomCreateTime = Nothing
    }


-- | Name of the batch for the operation.
bomBatch :: Lens' BatchOperationMetadata (Maybe Text)
bomBatch = lens _bomBatch (\ s a -> s{_bomBatch = a})

-- | The time when the operation finished.
bomDoneTime :: Lens' BatchOperationMetadata (Maybe UTCTime)
bomDoneTime
  = lens _bomDoneTime (\ s a -> s{_bomDoneTime = a}) .
      mapping _DateTime

-- | Warnings encountered during operation execution.
bomWarnings :: Lens' BatchOperationMetadata [Text]
bomWarnings
  = lens _bomWarnings (\ s a -> s{_bomWarnings = a}) .
      _Default
      . _Coerce

-- | Batch UUID for the operation.
bomBatchUuid :: Lens' BatchOperationMetadata (Maybe Text)
bomBatchUuid
  = lens _bomBatchUuid (\ s a -> s{_bomBatchUuid = a})

-- | Labels associated with the operation.
bomLabels :: Lens' BatchOperationMetadata (Maybe BatchOperationMetadataLabels)
bomLabels
  = lens _bomLabels (\ s a -> s{_bomLabels = a})

-- | The operation type.
bomOperationType :: Lens' BatchOperationMetadata (Maybe BatchOperationMetadataOperationType)
bomOperationType
  = lens _bomOperationType
      (\ s a -> s{_bomOperationType = a})

-- | Short description of the operation.
bomDescription :: Lens' BatchOperationMetadata (Maybe Text)
bomDescription
  = lens _bomDescription
      (\ s a -> s{_bomDescription = a})

-- | The time when the operation was created.
bomCreateTime :: Lens' BatchOperationMetadata (Maybe UTCTime)
bomCreateTime
  = lens _bomCreateTime
      (\ s a -> s{_bomCreateTime = a})
      . mapping _DateTime

instance FromJSON BatchOperationMetadata where
        parseJSON
          = withObject "BatchOperationMetadata"
              (\ o ->
                 BatchOperationMetadata' <$>
                   (o .:? "batch") <*> (o .:? "doneTime") <*>
                     (o .:? "warnings" .!= mempty)
                     <*> (o .:? "batchUuid")
                     <*> (o .:? "labels")
                     <*> (o .:? "operationType")
                     <*> (o .:? "description")
                     <*> (o .:? "createTime"))

instance ToJSON BatchOperationMetadata where
        toJSON BatchOperationMetadata'{..}
          = object
              (catMaybes
                 [("batch" .=) <$> _bomBatch,
                  ("doneTime" .=) <$> _bomDoneTime,
                  ("warnings" .=) <$> _bomWarnings,
                  ("batchUuid" .=) <$> _bomBatchUuid,
                  ("labels" .=) <$> _bomLabels,
                  ("operationType" .=) <$> _bomOperationType,
                  ("description" .=) <$> _bomDescription,
                  ("createTime" .=) <$> _bomCreateTime])

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

-- | Specifies the cluster auto-delete schedule configuration.
--
-- /See:/ 'lifecycleConfig' smart constructor.
data LifecycleConfig =
  LifecycleConfig'
    { _lcIdleStartTime :: !(Maybe DateTime')
    , _lcIdleDeleteTtl :: !(Maybe GDuration)
    , _lcAutoDeleteTtl :: !(Maybe GDuration)
    , _lcAutoDeleteTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LifecycleConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcIdleStartTime'
--
-- * 'lcIdleDeleteTtl'
--
-- * 'lcAutoDeleteTtl'
--
-- * 'lcAutoDeleteTime'
lifecycleConfig
    :: LifecycleConfig
lifecycleConfig =
  LifecycleConfig'
    { _lcIdleStartTime = Nothing
    , _lcIdleDeleteTtl = Nothing
    , _lcAutoDeleteTtl = Nothing
    , _lcAutoDeleteTime = Nothing
    }


-- | Output only. The time when cluster became idle (most recent job
-- finished) and became eligible for deletion due to idleness (see JSON
-- representation of Timestamp
-- (https:\/\/developers.google.com\/protocol-buffers\/docs\/proto3#json)).
lcIdleStartTime :: Lens' LifecycleConfig (Maybe UTCTime)
lcIdleStartTime
  = lens _lcIdleStartTime
      (\ s a -> s{_lcIdleStartTime = a})
      . mapping _DateTime

-- | Optional. The duration to keep the cluster alive while idling (when no
-- jobs are running). Passing this threshold will cause the cluster to be
-- deleted. Minimum value is 5 minutes; maximum value is 14 days (see JSON
-- representation of Duration
-- (https:\/\/developers.google.com\/protocol-buffers\/docs\/proto3#json)).
lcIdleDeleteTtl :: Lens' LifecycleConfig (Maybe Scientific)
lcIdleDeleteTtl
  = lens _lcIdleDeleteTtl
      (\ s a -> s{_lcIdleDeleteTtl = a})
      . mapping _GDuration

-- | Optional. The lifetime duration of cluster. The cluster will be
-- auto-deleted at the end of this period. Minimum value is 10 minutes;
-- maximum value is 14 days (see JSON representation of Duration
-- (https:\/\/developers.google.com\/protocol-buffers\/docs\/proto3#json)).
lcAutoDeleteTtl :: Lens' LifecycleConfig (Maybe Scientific)
lcAutoDeleteTtl
  = lens _lcAutoDeleteTtl
      (\ s a -> s{_lcAutoDeleteTtl = a})
      . mapping _GDuration

-- | Optional. The time when cluster will be auto-deleted (see JSON
-- representation of Timestamp
-- (https:\/\/developers.google.com\/protocol-buffers\/docs\/proto3#json)).
lcAutoDeleteTime :: Lens' LifecycleConfig (Maybe UTCTime)
lcAutoDeleteTime
  = lens _lcAutoDeleteTime
      (\ s a -> s{_lcAutoDeleteTime = a})
      . mapping _DateTime

instance FromJSON LifecycleConfig where
        parseJSON
          = withObject "LifecycleConfig"
              (\ o ->
                 LifecycleConfig' <$>
                   (o .:? "idleStartTime") <*> (o .:? "idleDeleteTtl")
                     <*> (o .:? "autoDeleteTtl")
                     <*> (o .:? "autoDeleteTime"))

instance ToJSON LifecycleConfig where
        toJSON LifecycleConfig'{..}
          = object
              (catMaybes
                 [("idleStartTime" .=) <$> _lcIdleStartTime,
                  ("idleDeleteTtl" .=) <$> _lcIdleDeleteTtl,
                  ("autoDeleteTtl" .=) <$> _lcAutoDeleteTtl,
                  ("autoDeleteTime" .=) <$> _lcAutoDeleteTime])

-- | Cluster that is managed by the workflow.
--
-- /See:/ 'managedCluster' smart constructor.
data ManagedCluster =
  ManagedCluster'
    { _mcConfig :: !(Maybe ClusterConfig)
    , _mcClusterName :: !(Maybe Text)
    , _mcLabels :: !(Maybe ManagedClusterLabels)
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

-- | Basic algorithm for autoscaling.
--
-- /See:/ 'basicAutoscalingAlgorithm' smart constructor.
data BasicAutoscalingAlgorithm =
  BasicAutoscalingAlgorithm'
    { _baaCooldownPeriod :: !(Maybe GDuration)
    , _baaYarnConfig :: !(Maybe BasicYarnAutoscalingConfig)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BasicAutoscalingAlgorithm' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'baaCooldownPeriod'
--
-- * 'baaYarnConfig'
basicAutoscalingAlgorithm
    :: BasicAutoscalingAlgorithm
basicAutoscalingAlgorithm =
  BasicAutoscalingAlgorithm'
    {_baaCooldownPeriod = Nothing, _baaYarnConfig = Nothing}


-- | Optional. Duration between scaling events. A scaling period starts after
-- the update operation from the previous event has completed.Bounds: 2m,
-- 1d. Default: 2m.
baaCooldownPeriod :: Lens' BasicAutoscalingAlgorithm (Maybe Scientific)
baaCooldownPeriod
  = lens _baaCooldownPeriod
      (\ s a -> s{_baaCooldownPeriod = a})
      . mapping _GDuration

-- | Optional. YARN autoscaling configuration.
baaYarnConfig :: Lens' BasicAutoscalingAlgorithm (Maybe BasicYarnAutoscalingConfig)
baaYarnConfig
  = lens _baaYarnConfig
      (\ s a -> s{_baaYarnConfig = a})

instance FromJSON BasicAutoscalingAlgorithm where
        parseJSON
          = withObject "BasicAutoscalingAlgorithm"
              (\ o ->
                 BasicAutoscalingAlgorithm' <$>
                   (o .:? "cooldownPeriod") <*> (o .:? "yarnConfig"))

instance ToJSON BasicAutoscalingAlgorithm where
        toJSON BasicAutoscalingAlgorithm'{..}
          = object
              (catMaybes
                 [("cooldownPeriod" .=) <$> _baaCooldownPeriod,
                  ("yarnConfig" .=) <$> _baaYarnConfig])

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

-- | A Dataproc job resource.
--
-- /See:/ 'job' smart constructor.
data Job =
  Job'
    { _jSparkJob :: !(Maybe SparkJob)
    , _jStatus :: !(Maybe JobStatus)
    , _jDriverControlFilesURI :: !(Maybe Text)
    , _jHiveJob :: !(Maybe HiveJob)
    , _jDone :: !(Maybe Bool)
    , _jPrestoJob :: !(Maybe PrestoJob)
    , _jReference :: !(Maybe JobReference)
    , _jSparkSQLJob :: !(Maybe SparkSQLJob)
    , _jHadoopJob :: !(Maybe HadoopJob)
    , _jJobUuid :: !(Maybe Text)
    , _jYarnApplications :: !(Maybe [YarnApplication])
    , _jLabels :: !(Maybe JobLabels)
    , _jPysparkJob :: !(Maybe PySparkJob)
    , _jDriverOutputResourceURI :: !(Maybe Text)
    , _jScheduling :: !(Maybe JobScheduling)
    , _jSparkRJob :: !(Maybe SparkRJob)
    , _jStatusHistory :: !(Maybe [JobStatus])
    , _jPlacement :: !(Maybe JobPlacement)
    , _jPigJob :: !(Maybe PigJob)
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
-- * 'jDone'
--
-- * 'jPrestoJob'
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
-- * 'jSparkRJob'
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
    , _jDone = Nothing
    , _jPrestoJob = Nothing
    , _jReference = Nothing
    , _jSparkSQLJob = Nothing
    , _jHadoopJob = Nothing
    , _jJobUuid = Nothing
    , _jYarnApplications = Nothing
    , _jLabels = Nothing
    , _jPysparkJob = Nothing
    , _jDriverOutputResourceURI = Nothing
    , _jScheduling = Nothing
    , _jSparkRJob = Nothing
    , _jStatusHistory = Nothing
    , _jPlacement = Nothing
    , _jPigJob = Nothing
    }


-- | Optional. Job is a Spark job.
jSparkJob :: Lens' Job (Maybe SparkJob)
jSparkJob
  = lens _jSparkJob (\ s a -> s{_jSparkJob = a})

-- | Output only. The job status. Additional application-specific status
-- information may be contained in the type_job and yarn_applications
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

-- | Optional. Job is a Hive job.
jHiveJob :: Lens' Job (Maybe HiveJob)
jHiveJob = lens _jHiveJob (\ s a -> s{_jHiveJob = a})

-- | Output only. Indicates whether the job is completed. If the value is
-- false, the job is still in progress. If true, the job is completed, and
-- status.state field will indicate if it was successful, failed, or
-- cancelled.
jDone :: Lens' Job (Maybe Bool)
jDone = lens _jDone (\ s a -> s{_jDone = a})

-- | Optional. Job is a Presto job.
jPrestoJob :: Lens' Job (Maybe PrestoJob)
jPrestoJob
  = lens _jPrestoJob (\ s a -> s{_jPrestoJob = a})

-- | Optional. The fully qualified reference to the job, which can be used to
-- obtain the equivalent REST path of the job resource. If this property is
-- not specified when a job is created, the server generates a job_id.
jReference :: Lens' Job (Maybe JobReference)
jReference
  = lens _jReference (\ s a -> s{_jReference = a})

-- | Optional. Job is a SparkSql job.
jSparkSQLJob :: Lens' Job (Maybe SparkSQLJob)
jSparkSQLJob
  = lens _jSparkSQLJob (\ s a -> s{_jSparkSQLJob = a})

-- | Optional. Job is a Hadoop job.
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

-- | Optional. Job is a PySpark job.
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

-- | Optional. Job is a SparkR job.
jSparkRJob :: Lens' Job (Maybe SparkRJob)
jSparkRJob
  = lens _jSparkRJob (\ s a -> s{_jSparkRJob = a})

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

-- | Optional. Job is a Pig job.
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
                     <*> (o .:? "done")
                     <*> (o .:? "prestoJob")
                     <*> (o .:? "reference")
                     <*> (o .:? "sparkSqlJob")
                     <*> (o .:? "hadoopJob")
                     <*> (o .:? "jobUuid")
                     <*> (o .:? "yarnApplications" .!= mempty)
                     <*> (o .:? "labels")
                     <*> (o .:? "pysparkJob")
                     <*> (o .:? "driverOutputResourceUri")
                     <*> (o .:? "scheduling")
                     <*> (o .:? "sparkRJob")
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
                  ("hiveJob" .=) <$> _jHiveJob, ("done" .=) <$> _jDone,
                  ("prestoJob" .=) <$> _jPrestoJob,
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
                  ("sparkRJob" .=) <$> _jSparkRJob,
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

-- | Optional. A mapping of property names to values, used to configure
-- SparkR. Properties that conflict with values set by the Dataproc API may
-- be overwritten. Can include properties set in
-- \/etc\/spark\/conf\/spark-defaults.conf and classes in user code.
--
-- /See:/ 'sparkRJobProperties' smart constructor.
newtype SparkRJobProperties =
  SparkRJobProperties'
    { _srjpAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SparkRJobProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srjpAddtional'
sparkRJobProperties
    :: HashMap Text Text -- ^ 'srjpAddtional'
    -> SparkRJobProperties
sparkRJobProperties pSrjpAddtional_ =
  SparkRJobProperties' {_srjpAddtional = _Coerce # pSrjpAddtional_}


srjpAddtional :: Lens' SparkRJobProperties (HashMap Text Text)
srjpAddtional
  = lens _srjpAddtional
      (\ s a -> s{_srjpAddtional = a})
      . _Coerce

instance FromJSON SparkRJobProperties where
        parseJSON
          = withObject "SparkRJobProperties"
              (\ o -> SparkRJobProperties' <$> (parseJSONObject o))

instance ToJSON SparkRJobProperties where
        toJSON = toJSON . _srjpAddtional

-- | A Dataproc job for running Apache Hadoop MapReduce
-- (https:\/\/hadoop.apache.org\/docs\/current\/hadoop-mapreduce-client\/hadoop-mapreduce-client-core\/MapReduceTutorial.html)
-- jobs on Apache Hadoop YARN
-- (https:\/\/hadoop.apache.org\/docs\/r2.7.1\/hadoop-yarn\/hadoop-yarn-site\/YARN.html).
--
-- /See:/ 'hadoopJob' smart constructor.
data HadoopJob =
  HadoopJob'
    { _hArgs :: !(Maybe [Text])
    , _hMainJarFileURI :: !(Maybe Text)
    , _hJarFileURIs :: !(Maybe [Text])
    , _hFileURIs :: !(Maybe [Text])
    , _hArchiveURIs :: !(Maybe [Text])
    , _hMainClass :: !(Maybe Text)
    , _hLoggingConfig :: !(Maybe LoggingConfig)
    , _hProperties :: !(Maybe HadoopJobProperties)
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
-- Hadoop. Properties that conflict with values set by the Dataproc API may
-- be overwritten. Can include properties set in
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
-- those parameters. Values may not exceed 1000 characters.
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
    { _comStatus :: !(Maybe ClusterOperationStatus)
    , _comClusterUuid :: !(Maybe Text)
    , _comWarnings :: !(Maybe [Text])
    , _comClusterName :: !(Maybe Text)
    , _comLabels :: !(Maybe ClusterOperationMetadataLabels)
    , _comOperationType :: !(Maybe Text)
    , _comStatusHistory :: !(Maybe [ClusterOperationStatus])
    , _comDescription :: !(Maybe Text)
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

-- | Describes an autoscaling policy for Dataproc cluster autoscaler.
--
-- /See:/ 'autoscalingPolicy' smart constructor.
data AutoscalingPolicy =
  AutoscalingPolicy'
    { _apWorkerConfig :: !(Maybe InstanceGroupAutoscalingPolicyConfig)
    , _apName :: !(Maybe Text)
    , _apBasicAlgorithm :: !(Maybe BasicAutoscalingAlgorithm)
    , _apId :: !(Maybe Text)
    , _apSecondaryWorkerConfig :: !(Maybe InstanceGroupAutoscalingPolicyConfig)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AutoscalingPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apWorkerConfig'
--
-- * 'apName'
--
-- * 'apBasicAlgorithm'
--
-- * 'apId'
--
-- * 'apSecondaryWorkerConfig'
autoscalingPolicy
    :: AutoscalingPolicy
autoscalingPolicy =
  AutoscalingPolicy'
    { _apWorkerConfig = Nothing
    , _apName = Nothing
    , _apBasicAlgorithm = Nothing
    , _apId = Nothing
    , _apSecondaryWorkerConfig = Nothing
    }


-- | Required. Describes how the autoscaler will operate for primary workers.
apWorkerConfig :: Lens' AutoscalingPolicy (Maybe InstanceGroupAutoscalingPolicyConfig)
apWorkerConfig
  = lens _apWorkerConfig
      (\ s a -> s{_apWorkerConfig = a})

-- | Output only. The \"resource name\" of the autoscaling policy, as
-- described in https:\/\/cloud.google.com\/apis\/design\/resource_names.
-- For projects.regions.autoscalingPolicies, the resource name of the
-- policy has the following format:
-- projects\/{project_id}\/regions\/{region}\/autoscalingPolicies\/{policy_id}
-- For projects.locations.autoscalingPolicies, the resource name of the
-- policy has the following format:
-- projects\/{project_id}\/locations\/{location}\/autoscalingPolicies\/{policy_id}
apName :: Lens' AutoscalingPolicy (Maybe Text)
apName = lens _apName (\ s a -> s{_apName = a})

apBasicAlgorithm :: Lens' AutoscalingPolicy (Maybe BasicAutoscalingAlgorithm)
apBasicAlgorithm
  = lens _apBasicAlgorithm
      (\ s a -> s{_apBasicAlgorithm = a})

-- | Required. The policy id.The id must contain only letters (a-z, A-Z),
-- numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end
-- with underscore or hyphen. Must consist of between 3 and 50 characters.
apId :: Lens' AutoscalingPolicy (Maybe Text)
apId = lens _apId (\ s a -> s{_apId = a})

-- | Optional. Describes how the autoscaler will operate for secondary
-- workers.
apSecondaryWorkerConfig :: Lens' AutoscalingPolicy (Maybe InstanceGroupAutoscalingPolicyConfig)
apSecondaryWorkerConfig
  = lens _apSecondaryWorkerConfig
      (\ s a -> s{_apSecondaryWorkerConfig = a})

instance FromJSON AutoscalingPolicy where
        parseJSON
          = withObject "AutoscalingPolicy"
              (\ o ->
                 AutoscalingPolicy' <$>
                   (o .:? "workerConfig") <*> (o .:? "name") <*>
                     (o .:? "basicAlgorithm")
                     <*> (o .:? "id")
                     <*> (o .:? "secondaryWorkerConfig"))

instance ToJSON AutoscalingPolicy where
        toJSON AutoscalingPolicy'{..}
          = object
              (catMaybes
                 [("workerConfig" .=) <$> _apWorkerConfig,
                  ("name" .=) <$> _apName,
                  ("basicAlgorithm" .=) <$> _apBasicAlgorithm,
                  ("id" .=) <$> _apId,
                  ("secondaryWorkerConfig" .=) <$>
                    _apSecondaryWorkerConfig])

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

-- | A Dataproc job for running Apache Spark SQL
-- (http:\/\/spark.apache.org\/sql\/) queries.
--
-- /See:/ 'sparkSQLJob' smart constructor.
data SparkSQLJob =
  SparkSQLJob'
    { _ssqljQueryFileURI :: !(Maybe Text)
    , _ssqljJarFileURIs :: !(Maybe [Text])
    , _ssqljScriptVariables :: !(Maybe SparkSQLJobScriptVariables)
    , _ssqljQueryList :: !(Maybe QueryList)
    , _ssqljLoggingConfig :: !(Maybe LoggingConfig)
    , _ssqljProperties :: !(Maybe SparkSQLJobProperties)
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
-- SQL\'s SparkConf. Properties that conflict with values set by the
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
    { _scOptionalComponents :: !(Maybe [SoftwareConfigOptionalComponentsItem])
    , _scImageVersion :: !(Maybe Text)
    , _scProperties :: !(Maybe SoftwareConfigProperties)
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


-- | Optional. The set of components to activate on the cluster.
scOptionalComponents :: Lens' SoftwareConfig [SoftwareConfigOptionalComponentsItem]
scOptionalComponents
  = lens _scOptionalComponents
      (\ s a -> s{_scOptionalComponents = a})
      . _Default
      . _Coerce

-- | Optional. The version of software inside the cluster. It must be one of
-- the supported Dataproc Versions
-- (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/versioning\/dataproc-versions#supported_dataproc_versions),
-- such as \"1.2\" (including a subminor version, such as \"1.2.29\"), or
-- the \"preview\" version
-- (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/versioning\/dataproc-versions#other_versions).
-- If unspecified, it defaults to the latest Debian version.
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
-- yarn-site.xmlFor more information, see Cluster properties
-- (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/cluster-properties).
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
    , _ljrJobs :: !(Maybe [Job])
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
-- page_token in a subsequent ListJobsRequest.
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

-- | Required. Map of user to service account.
--
-- /See:/ 'identityConfigUserServiceAccountMApping' smart constructor.
newtype IdentityConfigUserServiceAccountMApping =
  IdentityConfigUserServiceAccountMApping'
    { _icusamaAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'IdentityConfigUserServiceAccountMApping' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icusamaAddtional'
identityConfigUserServiceAccountMApping
    :: HashMap Text Text -- ^ 'icusamaAddtional'
    -> IdentityConfigUserServiceAccountMApping
identityConfigUserServiceAccountMApping pIcusamaAddtional_ =
  IdentityConfigUserServiceAccountMApping'
    {_icusamaAddtional = _Coerce # pIcusamaAddtional_}


icusamaAddtional :: Lens' IdentityConfigUserServiceAccountMApping (HashMap Text Text)
icusamaAddtional
  = lens _icusamaAddtional
      (\ s a -> s{_icusamaAddtional = a})
      . _Coerce

instance FromJSON
           IdentityConfigUserServiceAccountMApping
         where
        parseJSON
          = withObject
              "IdentityConfigUserServiceAccountMApping"
              (\ o ->
                 IdentityConfigUserServiceAccountMApping' <$>
                   (parseJSONObject o))

instance ToJSON
           IdentityConfigUserServiceAccountMApping
         where
        toJSON = toJSON . _icusamaAddtional

-- | Shielded Instance Config for clusters using Compute Engine Shielded VMs
-- (https:\/\/cloud.google.com\/security\/shielded-cloud\/shielded-vm).
--
-- /See:/ 'shieldedInstanceConfig' smart constructor.
data ShieldedInstanceConfig =
  ShieldedInstanceConfig'
    { _sicEnableVtpm :: !(Maybe Bool)
    , _sicEnableIntegrityMonitoring :: !(Maybe Bool)
    , _sicEnableSecureBoot :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ShieldedInstanceConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sicEnableVtpm'
--
-- * 'sicEnableIntegrityMonitoring'
--
-- * 'sicEnableSecureBoot'
shieldedInstanceConfig
    :: ShieldedInstanceConfig
shieldedInstanceConfig =
  ShieldedInstanceConfig'
    { _sicEnableVtpm = Nothing
    , _sicEnableIntegrityMonitoring = Nothing
    , _sicEnableSecureBoot = Nothing
    }


-- | Optional. Defines whether instances have the vTPM enabled.
sicEnableVtpm :: Lens' ShieldedInstanceConfig (Maybe Bool)
sicEnableVtpm
  = lens _sicEnableVtpm
      (\ s a -> s{_sicEnableVtpm = a})

-- | Optional. Defines whether instances have integrity monitoring enabled.
sicEnableIntegrityMonitoring :: Lens' ShieldedInstanceConfig (Maybe Bool)
sicEnableIntegrityMonitoring
  = lens _sicEnableIntegrityMonitoring
      (\ s a -> s{_sicEnableIntegrityMonitoring = a})

-- | Optional. Defines whether instances have Secure Boot enabled.
sicEnableSecureBoot :: Lens' ShieldedInstanceConfig (Maybe Bool)
sicEnableSecureBoot
  = lens _sicEnableSecureBoot
      (\ s a -> s{_sicEnableSecureBoot = a})

instance FromJSON ShieldedInstanceConfig where
        parseJSON
          = withObject "ShieldedInstanceConfig"
              (\ o ->
                 ShieldedInstanceConfig' <$>
                   (o .:? "enableVtpm") <*>
                     (o .:? "enableIntegrityMonitoring")
                     <*> (o .:? "enableSecureBoot"))

instance ToJSON ShieldedInstanceConfig where
        toJSON ShieldedInstanceConfig'{..}
          = object
              (catMaybes
                 [("enableVtpm" .=) <$> _sicEnableVtpm,
                  ("enableIntegrityMonitoring" .=) <$>
                    _sicEnableIntegrityMonitoring,
                  ("enableSecureBoot" .=) <$> _sicEnableSecureBoot])

-- | Specifies the type and number of accelerator cards attached to the
-- instances of an instance. See GPUs on Compute Engine
-- (https:\/\/cloud.google.com\/compute\/docs\/gpus\/).
--
-- /See:/ 'acceleratorConfig' smart constructor.
data AcceleratorConfig =
  AcceleratorConfig'
    { _acAcceleratorCount :: !(Maybe (Textual Int32))
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
-- expose to this instance. See Compute Engine AcceleratorTypes
-- (https:\/\/cloud.google.com\/compute\/docs\/reference\/beta\/acceleratorTypes).Examples:
-- https:\/\/www.googleapis.com\/compute\/beta\/projects\/[project_id]\/zones\/us-east1-a\/acceleratorTypes\/nvidia-tesla-k80
-- projects\/[project_id]\/zones\/us-east1-a\/acceleratorTypes\/nvidia-tesla-k80
-- nvidia-tesla-k80Auto Zone Exception: If you are using the Dataproc Auto
-- Zone Placement
-- (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/configuring-clusters\/auto-zone#using_auto_zone_placement)
-- feature, you must use the short name of the accelerator type resource,
-- for example, nvidia-tesla-k80.
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
-- Spark. Properties that conflict with values set by the Dataproc API may
-- be overwritten. Can include properties set in
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

-- | A Dataproc job for running Apache PySpark
-- (https:\/\/spark.apache.org\/docs\/0.9.0\/python-programming-guide.html)
-- applications on YARN.
--
-- /See:/ 'pySparkJob' smart constructor.
data PySparkJob =
  PySparkJob'
    { _psjPythonFileURIs :: !(Maybe [Text])
    , _psjMainPythonFileURI :: !(Maybe Text)
    , _psjArgs :: !(Maybe [Text])
    , _psjJarFileURIs :: !(Maybe [Text])
    , _psjFileURIs :: !(Maybe [Text])
    , _psjArchiveURIs :: !(Maybe [Text])
    , _psjLoggingConfig :: !(Maybe LoggingConfig)
    , _psjProperties :: !(Maybe PySparkJobProperties)
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

-- | Optional. HCFS URIs of files to be placed in the working directory of
-- each executor. Useful for naively parallel tasks.
psjFileURIs :: Lens' PySparkJob [Text]
psjFileURIs
  = lens _psjFileURIs (\ s a -> s{_psjFileURIs = a}) .
      _Default
      . _Coerce

-- | Optional. HCFS URIs of archives to be extracted into the working
-- directory of each executor. Supported file types: .jar, .tar, .tar.gz,
-- .tgz, and .zip.
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
-- PySpark. Properties that conflict with values set by the Dataproc API
-- may be overwritten. Can include properties set in
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

-- | Specifies a Metastore configuration.
--
-- /See:/ 'metastoreConfig' smart constructor.
newtype MetastoreConfig =
  MetastoreConfig'
    { _mcDataprocMetastoreService :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MetastoreConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcDataprocMetastoreService'
metastoreConfig
    :: MetastoreConfig
metastoreConfig = MetastoreConfig' {_mcDataprocMetastoreService = Nothing}


-- | Required. Resource name of an existing Dataproc Metastore
-- service.Example:
-- projects\/[project_id]\/locations\/[dataproc_region]\/services\/[service-name]
mcDataprocMetastoreService :: Lens' MetastoreConfig (Maybe Text)
mcDataprocMetastoreService
  = lens _mcDataprocMetastoreService
      (\ s a -> s{_mcDataprocMetastoreService = a})

instance FromJSON MetastoreConfig where
        parseJSON
          = withObject "MetastoreConfig"
              (\ o ->
                 MetastoreConfig' <$>
                   (o .:? "dataprocMetastoreService"))

instance ToJSON MetastoreConfig where
        toJSON MetastoreConfig'{..}
          = object
              (catMaybes
                 [("dataprocMetastoreService" .=) <$>
                    _mcDataprocMetastoreService])

-- | Specifies the resources used to actively manage an instance group.
--
-- /See:/ 'managedGroupConfig' smart constructor.
data ManagedGroupConfig =
  ManagedGroupConfig'
    { _mgcInstanceTemplateName :: !(Maybe Text)
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
    , _lcrClusters :: !(Maybe [Cluster])
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

-- | An Identity and Access Management (IAM) policy, which specifies access
-- controls for Google Cloud resources.A Policy is a collection of
-- bindings. A binding binds one or more members to a single role. Members
-- can be user accounts, service accounts, Google groups, and domains (such
-- as G Suite). A role is a named list of permissions; each role can be an
-- IAM predefined role or a user-created custom role.For some types of
-- Google Cloud resources, a binding can also specify a condition, which is
-- a logical expression that allows access to a resource only if the
-- expression evaluates to true. A condition can add constraints based on
-- attributes of the request, the resource, or both. To learn which
-- resources support conditions in their IAM policies, see the IAM
-- documentation
-- (https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).JSON
-- example: { \"bindings\": [ { \"role\":
-- \"roles\/resourcemanager.organizationAdmin\", \"members\": [
-- \"user:mike\'example.com\", \"group:admins\'example.com\",
-- \"domain:google.com\",
-- \"serviceAccount:my-project-id\'appspot.gserviceaccount.com\" ] }, {
-- \"role\": \"roles\/resourcemanager.organizationViewer\", \"members\": [
-- \"user:eve\'example.com\" ], \"condition\": { \"title\": \"expirable
-- access\", \"description\": \"Does not grant access after Sep 2020\",
-- \"expression\": \"request.time \<
-- timestamp(\'2020-10-01T00:00:00.000Z\')\", } } ], \"etag\":
-- \"BwWWja0YfJA=\", \"version\": 3 } YAML example: bindings: - members: -
-- user:mike\'example.com - group:admins\'example.com - domain:google.com -
-- serviceAccount:my-project-id\'appspot.gserviceaccount.com role:
-- roles\/resourcemanager.organizationAdmin - members: -
-- user:eve\'example.com role: roles\/resourcemanager.organizationViewer
-- condition: title: expirable access description: Does not grant access
-- after Sep 2020 expression: request.time \<
-- timestamp(\'2020-10-01T00:00:00.000Z\') - etag: BwWWja0YfJA= - version:
-- 3 For a description of IAM and its features, see the IAM documentation
-- (https:\/\/cloud.google.com\/iam\/docs\/).
--
-- /See:/ 'policy' smart constructor.
data Policy =
  Policy'
    { _pEtag :: !(Maybe Bytes)
    , _pVersion :: !(Maybe (Textual Int32))
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
-- policy.Important: If you use IAM Conditions, you must include the etag
-- field whenever you call setIamPolicy. If you omit this field, then IAM
-- allows you to overwrite a version 3 policy with a version 1 policy, and
-- all of the conditions in the version 3 policy are lost.
pEtag :: Lens' Policy (Maybe ByteString)
pEtag
  = lens _pEtag (\ s a -> s{_pEtag = a}) .
      mapping _Bytes

-- | Specifies the format of the policy.Valid values are 0, 1, and 3.
-- Requests that specify an invalid value are rejected.Any operation that
-- affects conditional role bindings must specify version 3. This
-- requirement applies to the following operations: Getting a policy that
-- includes a conditional role binding Adding a conditional role binding to
-- a policy Changing a conditional role binding in a policy Removing any
-- role binding, with or without a condition, from a policy that includes
-- conditionsImportant: If you use IAM Conditions, you must include the
-- etag field whenever you call setIamPolicy. If you omit this field, then
-- IAM allows you to overwrite a version 3 policy with a version 1 policy,
-- and all of the conditions in the version 3 policy are lost.If a policy
-- does not include any conditions, operations on that policy may specify
-- any valid version or leave the field unset.To learn which resources
-- support conditions in their IAM policies, see the IAM documentation
-- (https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
pVersion :: Lens' Policy (Maybe Int32)
pVersion
  = lens _pVersion (\ s a -> s{_pVersion = a}) .
      mapping _Coerce

-- | Associates a list of members to a role. Optionally, may specify a
-- condition that determines how and when the bindings are applied. Each of
-- the bindings must contain at least one member.
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
    { _ojSparkJob :: !(Maybe SparkJob)
    , _ojStepId :: !(Maybe Text)
    , _ojPrerequisiteStepIds :: !(Maybe [Text])
    , _ojHiveJob :: !(Maybe HiveJob)
    , _ojPrestoJob :: !(Maybe PrestoJob)
    , _ojSparkSQLJob :: !(Maybe SparkSQLJob)
    , _ojHadoopJob :: !(Maybe HadoopJob)
    , _ojLabels :: !(Maybe OrderedJobLabels)
    , _ojPysparkJob :: !(Maybe PySparkJob)
    , _ojScheduling :: !(Maybe JobScheduling)
    , _ojSparkRJob :: !(Maybe SparkRJob)
    , _ojPigJob :: !(Maybe PigJob)
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
-- * 'ojPrestoJob'
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
-- * 'ojSparkRJob'
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
    , _ojPrestoJob = Nothing
    , _ojSparkSQLJob = Nothing
    , _ojHadoopJob = Nothing
    , _ojLabels = Nothing
    , _ojPysparkJob = Nothing
    , _ojScheduling = Nothing
    , _ojSparkRJob = Nothing
    , _ojPigJob = Nothing
    }


-- | Optional. Job is a Spark job.
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

-- | Optional. Job is a Hive job.
ojHiveJob :: Lens' OrderedJob (Maybe HiveJob)
ojHiveJob
  = lens _ojHiveJob (\ s a -> s{_ojHiveJob = a})

-- | Optional. Job is a Presto job.
ojPrestoJob :: Lens' OrderedJob (Maybe PrestoJob)
ojPrestoJob
  = lens _ojPrestoJob (\ s a -> s{_ojPrestoJob = a})

-- | Optional. Job is a SparkSql job.
ojSparkSQLJob :: Lens' OrderedJob (Maybe SparkSQLJob)
ojSparkSQLJob
  = lens _ojSparkSQLJob
      (\ s a -> s{_ojSparkSQLJob = a})

-- | Optional. Job is a Hadoop job.
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

-- | Optional. Job is a PySpark job.
ojPysparkJob :: Lens' OrderedJob (Maybe PySparkJob)
ojPysparkJob
  = lens _ojPysparkJob (\ s a -> s{_ojPysparkJob = a})

-- | Optional. Job scheduling configuration.
ojScheduling :: Lens' OrderedJob (Maybe JobScheduling)
ojScheduling
  = lens _ojScheduling (\ s a -> s{_ojScheduling = a})

-- | Optional. Job is a SparkR job.
ojSparkRJob :: Lens' OrderedJob (Maybe SparkRJob)
ojSparkRJob
  = lens _ojSparkRJob (\ s a -> s{_ojSparkRJob = a})

-- | Optional. Job is a Pig job.
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
                     <*> (o .:? "prestoJob")
                     <*> (o .:? "sparkSqlJob")
                     <*> (o .:? "hadoopJob")
                     <*> (o .:? "labels")
                     <*> (o .:? "pysparkJob")
                     <*> (o .:? "scheduling")
                     <*> (o .:? "sparkRJob")
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
                  ("prestoJob" .=) <$> _ojPrestoJob,
                  ("sparkSqlJob" .=) <$> _ojSparkSQLJob,
                  ("hadoopJob" .=) <$> _ojHadoopJob,
                  ("labels" .=) <$> _ojLabels,
                  ("pysparkJob" .=) <$> _ojPysparkJob,
                  ("scheduling" .=) <$> _ojScheduling,
                  ("sparkRJob" .=) <$> _ojSparkRJob,
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


-- | Required. The queries to execute. You do not need to end a query
-- expression with a semicolon. Multiple queries can be specified in one
-- string by separating each with a semicolon. Here is an example of a
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

-- | Dataproc job status.
--
-- /See:/ 'jobStatus' smart constructor.
data JobStatus =
  JobStatus'
    { _jsState :: !(Maybe JobStatusState)
    , _jsSubState :: !(Maybe JobStatusSubState)
    , _jsStateStartTime :: !(Maybe DateTime')
    , _jsDetails :: !(Maybe Text)
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

-- | Optional. Output only. Job state details, such as an error description
-- if the state is ERROR.
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

-- | A request to start a cluster.
--
-- /See:/ 'startClusterRequest' smart constructor.
data StartClusterRequest =
  StartClusterRequest'
    { _sRequestId :: !(Maybe Text)
    , _sClusterUuid :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StartClusterRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sRequestId'
--
-- * 'sClusterUuid'
startClusterRequest
    :: StartClusterRequest
startClusterRequest =
  StartClusterRequest' {_sRequestId = Nothing, _sClusterUuid = Nothing}


-- | Optional. A unique ID used to identify the request. If the server
-- receives two StartClusterRequest
-- (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rpc\/google.cloud.dataproc.v1#google.cloud.dataproc.v1.StartClusterRequest)s
-- with the same id, then the second request will be ignored and the first
-- google.longrunning.Operation created and stored in the backend is
-- returned.Recommendation: Set this value to a UUID
-- (https:\/\/en.wikipedia.org\/wiki\/Universally_unique_identifier).The ID
-- must contain only letters (a-z, A-Z), numbers (0-9), underscores (_),
-- and hyphens (-). The maximum length is 40 characters.
sRequestId :: Lens' StartClusterRequest (Maybe Text)
sRequestId
  = lens _sRequestId (\ s a -> s{_sRequestId = a})

-- | Optional. Specifying the cluster_uuid means the RPC will fail (with
-- error NOT_FOUND) if a cluster with the specified UUID does not exist.
sClusterUuid :: Lens' StartClusterRequest (Maybe Text)
sClusterUuid
  = lens _sClusterUuid (\ s a -> s{_sClusterUuid = a})

instance FromJSON StartClusterRequest where
        parseJSON
          = withObject "StartClusterRequest"
              (\ o ->
                 StartClusterRequest' <$>
                   (o .:? "requestId") <*> (o .:? "clusterUuid"))

instance ToJSON StartClusterRequest where
        toJSON StartClusterRequest'{..}
          = object
              (catMaybes
                 [("requestId" .=) <$> _sRequestId,
                  ("clusterUuid" .=) <$> _sClusterUuid])

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
    { _wnState :: !(Maybe WorkflowNodeState)
    , _wnStepId :: !(Maybe Text)
    , _wnJobId :: !(Maybe Text)
    , _wnPrerequisiteStepIds :: !(Maybe [Text])
    , _wnError :: !(Maybe Text)
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

-- | A request to repair a cluster.
--
-- /See:/ 'repairClusterRequest' smart constructor.
data RepairClusterRequest =
  RepairClusterRequest'
    { _rcrRequestId :: !(Maybe Text)
    , _rcrClusterUuid :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RepairClusterRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcrRequestId'
--
-- * 'rcrClusterUuid'
repairClusterRequest
    :: RepairClusterRequest
repairClusterRequest =
  RepairClusterRequest' {_rcrRequestId = Nothing, _rcrClusterUuid = Nothing}


-- | Optional. A unique ID used to identify the request. If the server
-- receives two RepairClusterRequests with the same ID, the second request
-- is ignored, and the first google.longrunning.Operation created and
-- stored in the backend is returned.Recommendation: Set this value to a
-- UUID
-- (https:\/\/en.wikipedia.org\/wiki\/Universally_unique_identifier).The ID
-- must contain only letters (a-z, A-Z), numbers (0-9), underscores (_),
-- and hyphens (-). The maximum length is 40 characters.
rcrRequestId :: Lens' RepairClusterRequest (Maybe Text)
rcrRequestId
  = lens _rcrRequestId (\ s a -> s{_rcrRequestId = a})

-- | Optional. Specifying the cluster_uuid means the RPC will fail (with
-- error NOT_FOUND) if a cluster with the specified UUID does not exist.
rcrClusterUuid :: Lens' RepairClusterRequest (Maybe Text)
rcrClusterUuid
  = lens _rcrClusterUuid
      (\ s a -> s{_rcrClusterUuid = a})

instance FromJSON RepairClusterRequest where
        parseJSON
          = withObject "RepairClusterRequest"
              (\ o ->
                 RepairClusterRequest' <$>
                   (o .:? "requestId") <*> (o .:? "clusterUuid"))

instance ToJSON RepairClusterRequest where
        toJSON RepairClusterRequest'{..}
          = object
              (catMaybes
                 [("requestId" .=) <$> _rcrRequestId,
                  ("clusterUuid" .=) <$> _rcrClusterUuid])

-- | A Dataproc workflow template resource.
--
-- /See:/ 'workflowMetadata' smart constructor.
data WorkflowMetadata =
  WorkflowMetadata'
    { _wmGraph :: !(Maybe WorkflowGraph)
    , _wmState :: !(Maybe WorkflowMetadataState)
    , _wmDagStartTime :: !(Maybe DateTime')
    , _wmClusterUuid :: !(Maybe Text)
    , _wmStartTime :: !(Maybe DateTime')
    , _wmDeleteCluster :: !(Maybe ClusterOperation)
    , _wmCreateCluster :: !(Maybe ClusterOperation)
    , _wmVersion :: !(Maybe (Textual Int32))
    , _wmEndTime :: !(Maybe DateTime')
    , _wmParameters :: !(Maybe WorkflowMetadataParameters)
    , _wmClusterName :: !(Maybe Text)
    , _wmDagEndTime :: !(Maybe DateTime')
    , _wmTemplate :: !(Maybe Text)
    , _wmDagTimeout :: !(Maybe GDuration)
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
-- * 'wmDagStartTime'
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
-- * 'wmDagEndTime'
--
-- * 'wmTemplate'
--
-- * 'wmDagTimeout'
workflowMetadata
    :: WorkflowMetadata
workflowMetadata =
  WorkflowMetadata'
    { _wmGraph = Nothing
    , _wmState = Nothing
    , _wmDagStartTime = Nothing
    , _wmClusterUuid = Nothing
    , _wmStartTime = Nothing
    , _wmDeleteCluster = Nothing
    , _wmCreateCluster = Nothing
    , _wmVersion = Nothing
    , _wmEndTime = Nothing
    , _wmParameters = Nothing
    , _wmClusterName = Nothing
    , _wmDagEndTime = Nothing
    , _wmTemplate = Nothing
    , _wmDagTimeout = Nothing
    }


-- | Output only. The workflow graph.
wmGraph :: Lens' WorkflowMetadata (Maybe WorkflowGraph)
wmGraph = lens _wmGraph (\ s a -> s{_wmGraph = a})

-- | Output only. The workflow state.
wmState :: Lens' WorkflowMetadata (Maybe WorkflowMetadataState)
wmState = lens _wmState (\ s a -> s{_wmState = a})

-- | Output only. DAG start time, only set for workflows with dag_timeout
-- when DAG begins.
wmDagStartTime :: Lens' WorkflowMetadata (Maybe UTCTime)
wmDagStartTime
  = lens _wmDagStartTime
      (\ s a -> s{_wmDagStartTime = a})
      . mapping _DateTime

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

-- | Output only. DAG end time, only set for workflows with dag_timeout when
-- DAG ends.
wmDagEndTime :: Lens' WorkflowMetadata (Maybe UTCTime)
wmDagEndTime
  = lens _wmDagEndTime (\ s a -> s{_wmDagEndTime = a})
      . mapping _DateTime

-- | Output only. The resource name of the workflow template as described in
-- https:\/\/cloud.google.com\/apis\/design\/resource_names. For
-- projects.regions.workflowTemplates, the resource name of the template
-- has the following format:
-- projects\/{project_id}\/regions\/{region}\/workflowTemplates\/{template_id}
-- For projects.locations.workflowTemplates, the resource name of the
-- template has the following format:
-- projects\/{project_id}\/locations\/{location}\/workflowTemplates\/{template_id}
wmTemplate :: Lens' WorkflowMetadata (Maybe Text)
wmTemplate
  = lens _wmTemplate (\ s a -> s{_wmTemplate = a})

-- | Output only. The timeout duration for the DAG of jobs, expressed in
-- seconds (see JSON representation of duration
-- (https:\/\/developers.google.com\/protocol-buffers\/docs\/proto3#json)).
wmDagTimeout :: Lens' WorkflowMetadata (Maybe Scientific)
wmDagTimeout
  = lens _wmDagTimeout (\ s a -> s{_wmDagTimeout = a})
      . mapping _GDuration

instance FromJSON WorkflowMetadata where
        parseJSON
          = withObject "WorkflowMetadata"
              (\ o ->
                 WorkflowMetadata' <$>
                   (o .:? "graph") <*> (o .:? "state") <*>
                     (o .:? "dagStartTime")
                     <*> (o .:? "clusterUuid")
                     <*> (o .:? "startTime")
                     <*> (o .:? "deleteCluster")
                     <*> (o .:? "createCluster")
                     <*> (o .:? "version")
                     <*> (o .:? "endTime")
                     <*> (o .:? "parameters")
                     <*> (o .:? "clusterName")
                     <*> (o .:? "dagEndTime")
                     <*> (o .:? "template")
                     <*> (o .:? "dagTimeout"))

instance ToJSON WorkflowMetadata where
        toJSON WorkflowMetadata'{..}
          = object
              (catMaybes
                 [("graph" .=) <$> _wmGraph,
                  ("state" .=) <$> _wmState,
                  ("dagStartTime" .=) <$> _wmDagStartTime,
                  ("clusterUuid" .=) <$> _wmClusterUuid,
                  ("startTime" .=) <$> _wmStartTime,
                  ("deleteCluster" .=) <$> _wmDeleteCluster,
                  ("createCluster" .=) <$> _wmCreateCluster,
                  ("version" .=) <$> _wmVersion,
                  ("endTime" .=) <$> _wmEndTime,
                  ("parameters" .=) <$> _wmParameters,
                  ("clusterName" .=) <$> _wmClusterName,
                  ("dagEndTime" .=) <$> _wmDagEndTime,
                  ("template" .=) <$> _wmTemplate,
                  ("dagTimeout" .=) <$> _wmDagTimeout])

-- | A request to inject credentials into a cluster.
--
-- /See:/ 'injectCredentialsRequest' smart constructor.
data InjectCredentialsRequest =
  InjectCredentialsRequest'
    { _icrClusterUuid :: !(Maybe Text)
    , _icrCredentialsCiphertext :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InjectCredentialsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icrClusterUuid'
--
-- * 'icrCredentialsCiphertext'
injectCredentialsRequest
    :: InjectCredentialsRequest
injectCredentialsRequest =
  InjectCredentialsRequest'
    {_icrClusterUuid = Nothing, _icrCredentialsCiphertext = Nothing}


-- | Required. The cluster UUID.
icrClusterUuid :: Lens' InjectCredentialsRequest (Maybe Text)
icrClusterUuid
  = lens _icrClusterUuid
      (\ s a -> s{_icrClusterUuid = a})

-- | Required. The encrypted credentials being injected in to the cluster.The
-- client is responsible for encrypting the credentials in a way that is
-- supported by the cluster.A wrapped value is used here so that the actual
-- contents of the encrypted credentials are not written to audit logs.
icrCredentialsCiphertext :: Lens' InjectCredentialsRequest (Maybe Text)
icrCredentialsCiphertext
  = lens _icrCredentialsCiphertext
      (\ s a -> s{_icrCredentialsCiphertext = a})

instance FromJSON InjectCredentialsRequest where
        parseJSON
          = withObject "InjectCredentialsRequest"
              (\ o ->
                 InjectCredentialsRequest' <$>
                   (o .:? "clusterUuid") <*>
                     (o .:? "credentialsCiphertext"))

instance ToJSON InjectCredentialsRequest where
        toJSON InjectCredentialsRequest'{..}
          = object
              (catMaybes
                 [("clusterUuid" .=) <$> _icrClusterUuid,
                  ("credentialsCiphertext" .=) <$>
                    _icrCredentialsCiphertext])

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
    { _lcdllAddtional :: HashMap Text LoggingConfigDriverLogLevelsAdditional
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LoggingConfigDriverLogLevels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcdllAddtional'
loggingConfigDriverLogLevels
    :: HashMap Text LoggingConfigDriverLogLevelsAdditional -- ^ 'lcdllAddtional'
    -> LoggingConfigDriverLogLevels
loggingConfigDriverLogLevels pLcdllAddtional_ =
  LoggingConfigDriverLogLevels' {_lcdllAddtional = _Coerce # pLcdllAddtional_}


lcdllAddtional :: Lens' LoggingConfigDriverLogLevels (HashMap Text LoggingConfigDriverLogLevelsAdditional)
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

-- | Basic autoscaling configurations for YARN.
--
-- /See:/ 'basicYarnAutoscalingConfig' smart constructor.
data BasicYarnAutoscalingConfig =
  BasicYarnAutoscalingConfig'
    { _byacScaleDownFactor :: !(Maybe (Textual Double))
    , _byacScaleUpFactor :: !(Maybe (Textual Double))
    , _byacScaleUpMinWorkerFraction :: !(Maybe (Textual Double))
    , _byacScaleDownMinWorkerFraction :: !(Maybe (Textual Double))
    , _byacGracefulDecommissionTimeout :: !(Maybe GDuration)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BasicYarnAutoscalingConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'byacScaleDownFactor'
--
-- * 'byacScaleUpFactor'
--
-- * 'byacScaleUpMinWorkerFraction'
--
-- * 'byacScaleDownMinWorkerFraction'
--
-- * 'byacGracefulDecommissionTimeout'
basicYarnAutoscalingConfig
    :: BasicYarnAutoscalingConfig
basicYarnAutoscalingConfig =
  BasicYarnAutoscalingConfig'
    { _byacScaleDownFactor = Nothing
    , _byacScaleUpFactor = Nothing
    , _byacScaleUpMinWorkerFraction = Nothing
    , _byacScaleDownMinWorkerFraction = Nothing
    , _byacGracefulDecommissionTimeout = Nothing
    }


-- | Required. Fraction of average YARN pending memory in the last cooldown
-- period for which to remove workers. A scale-down factor of 1 will result
-- in scaling down so that there is no available memory remaining after the
-- update (more aggressive scaling). A scale-down factor of 0 disables
-- removing workers, which can be beneficial for autoscaling a single job.
-- See How autoscaling works
-- (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/configuring-clusters\/autoscaling#how_autoscaling_works)
-- for more information.Bounds: 0.0, 1.0.
byacScaleDownFactor :: Lens' BasicYarnAutoscalingConfig (Maybe Double)
byacScaleDownFactor
  = lens _byacScaleDownFactor
      (\ s a -> s{_byacScaleDownFactor = a})
      . mapping _Coerce

-- | Required. Fraction of average YARN pending memory in the last cooldown
-- period for which to add workers. A scale-up factor of 1.0 will result in
-- scaling up so that there is no pending memory remaining after the update
-- (more aggressive scaling). A scale-up factor closer to 0 will result in
-- a smaller magnitude of scaling up (less aggressive scaling). See How
-- autoscaling works
-- (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/configuring-clusters\/autoscaling#how_autoscaling_works)
-- for more information.Bounds: 0.0, 1.0.
byacScaleUpFactor :: Lens' BasicYarnAutoscalingConfig (Maybe Double)
byacScaleUpFactor
  = lens _byacScaleUpFactor
      (\ s a -> s{_byacScaleUpFactor = a})
      . mapping _Coerce

-- | Optional. Minimum scale-up threshold as a fraction of total cluster size
-- before scaling occurs. For example, in a 20-worker cluster, a threshold
-- of 0.1 means the autoscaler must recommend at least a 2-worker scale-up
-- for the cluster to scale. A threshold of 0 means the autoscaler will
-- scale up on any recommended change.Bounds: 0.0, 1.0. Default: 0.0.
byacScaleUpMinWorkerFraction :: Lens' BasicYarnAutoscalingConfig (Maybe Double)
byacScaleUpMinWorkerFraction
  = lens _byacScaleUpMinWorkerFraction
      (\ s a -> s{_byacScaleUpMinWorkerFraction = a})
      . mapping _Coerce

-- | Optional. Minimum scale-down threshold as a fraction of total cluster
-- size before scaling occurs. For example, in a 20-worker cluster, a
-- threshold of 0.1 means the autoscaler must recommend at least a 2 worker
-- scale-down for the cluster to scale. A threshold of 0 means the
-- autoscaler will scale down on any recommended change.Bounds: 0.0, 1.0.
-- Default: 0.0.
byacScaleDownMinWorkerFraction :: Lens' BasicYarnAutoscalingConfig (Maybe Double)
byacScaleDownMinWorkerFraction
  = lens _byacScaleDownMinWorkerFraction
      (\ s a -> s{_byacScaleDownMinWorkerFraction = a})
      . mapping _Coerce

-- | Required. Timeout for YARN graceful decommissioning of Node Managers.
-- Specifies the duration to wait for jobs to complete before forcefully
-- removing workers (and potentially interrupting jobs). Only applicable to
-- downscaling operations.Bounds: 0s, 1d.
byacGracefulDecommissionTimeout :: Lens' BasicYarnAutoscalingConfig (Maybe Scientific)
byacGracefulDecommissionTimeout
  = lens _byacGracefulDecommissionTimeout
      (\ s a -> s{_byacGracefulDecommissionTimeout = a})
      . mapping _GDuration

instance FromJSON BasicYarnAutoscalingConfig where
        parseJSON
          = withObject "BasicYarnAutoscalingConfig"
              (\ o ->
                 BasicYarnAutoscalingConfig' <$>
                   (o .:? "scaleDownFactor") <*> (o .:? "scaleUpFactor")
                     <*> (o .:? "scaleUpMinWorkerFraction")
                     <*> (o .:? "scaleDownMinWorkerFraction")
                     <*> (o .:? "gracefulDecommissionTimeout"))

instance ToJSON BasicYarnAutoscalingConfig where
        toJSON BasicYarnAutoscalingConfig'{..}
          = object
              (catMaybes
                 [("scaleDownFactor" .=) <$> _byacScaleDownFactor,
                  ("scaleUpFactor" .=) <$> _byacScaleUpFactor,
                  ("scaleUpMinWorkerFraction" .=) <$>
                    _byacScaleUpMinWorkerFraction,
                  ("scaleDownMinWorkerFraction" .=) <$>
                    _byacScaleDownMinWorkerFraction,
                  ("gracefulDecommissionTimeout" .=) <$>
                    _byacGracefulDecommissionTimeout])

-- | The status of a cluster and its instances.
--
-- /See:/ 'clusterStatus' smart constructor.
data ClusterStatus =
  ClusterStatus'
    { _csState :: !(Maybe ClusterStatusState)
    , _csSubState :: !(Maybe ClusterStatusSubState)
    , _csStateStartTime :: !(Maybe DateTime')
    , _csDetail :: !(Maybe Text)
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

-- | Output only. Time when this state was entered (see JSON representation
-- of Timestamp
-- (https:\/\/developers.google.com\/protocol-buffers\/docs\/proto3#json)).
csStateStartTime :: Lens' ClusterStatus (Maybe UTCTime)
csStateStartTime
  = lens _csStateStartTime
      (\ s a -> s{_csStateStartTime = a})
      . mapping _DateTime

-- | Optional. Output only. Details of cluster\'s state.
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
-- of org.apache.hadoop.yarn.proto.YarnProtos.ApplicationReportProto.Beta
-- Feature: This report is available for testing purposes only. It may be
-- changed before final release.
--
-- /See:/ 'yarnApplication' smart constructor.
data YarnApplication =
  YarnApplication'
    { _yaTrackingURL :: !(Maybe Text)
    , _yaState :: !(Maybe YarnApplicationState)
    , _yaProgress :: !(Maybe (Textual Double))
    , _yaName :: !(Maybe Text)
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

-- | A Dataproc job for running Apache SparkR
-- (https:\/\/spark.apache.org\/docs\/latest\/sparkr.html) applications on
-- YARN.
--
-- /See:/ 'sparkRJob' smart constructor.
data SparkRJob =
  SparkRJob'
    { _srjArgs :: !(Maybe [Text])
    , _srjFileURIs :: !(Maybe [Text])
    , _srjMainRFileURI :: !(Maybe Text)
    , _srjArchiveURIs :: !(Maybe [Text])
    , _srjLoggingConfig :: !(Maybe LoggingConfig)
    , _srjProperties :: !(Maybe SparkRJobProperties)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SparkRJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srjArgs'
--
-- * 'srjFileURIs'
--
-- * 'srjMainRFileURI'
--
-- * 'srjArchiveURIs'
--
-- * 'srjLoggingConfig'
--
-- * 'srjProperties'
sparkRJob
    :: SparkRJob
sparkRJob =
  SparkRJob'
    { _srjArgs = Nothing
    , _srjFileURIs = Nothing
    , _srjMainRFileURI = Nothing
    , _srjArchiveURIs = Nothing
    , _srjLoggingConfig = Nothing
    , _srjProperties = Nothing
    }


-- | Optional. The arguments to pass to the driver. Do not include arguments,
-- such as --conf, that can be set as job properties, since a collision may
-- occur that causes an incorrect job submission.
srjArgs :: Lens' SparkRJob [Text]
srjArgs
  = lens _srjArgs (\ s a -> s{_srjArgs = a}) . _Default
      . _Coerce

-- | Optional. HCFS URIs of files to be placed in the working directory of
-- each executor. Useful for naively parallel tasks.
srjFileURIs :: Lens' SparkRJob [Text]
srjFileURIs
  = lens _srjFileURIs (\ s a -> s{_srjFileURIs = a}) .
      _Default
      . _Coerce

-- | Required. The HCFS URI of the main R file to use as the driver. Must be
-- a .R file.
srjMainRFileURI :: Lens' SparkRJob (Maybe Text)
srjMainRFileURI
  = lens _srjMainRFileURI
      (\ s a -> s{_srjMainRFileURI = a})

-- | Optional. HCFS URIs of archives to be extracted into the working
-- directory of each executor. Supported file types: .jar, .tar, .tar.gz,
-- .tgz, and .zip.
srjArchiveURIs :: Lens' SparkRJob [Text]
srjArchiveURIs
  = lens _srjArchiveURIs
      (\ s a -> s{_srjArchiveURIs = a})
      . _Default
      . _Coerce

-- | Optional. The runtime log config for job execution.
srjLoggingConfig :: Lens' SparkRJob (Maybe LoggingConfig)
srjLoggingConfig
  = lens _srjLoggingConfig
      (\ s a -> s{_srjLoggingConfig = a})

-- | Optional. A mapping of property names to values, used to configure
-- SparkR. Properties that conflict with values set by the Dataproc API may
-- be overwritten. Can include properties set in
-- \/etc\/spark\/conf\/spark-defaults.conf and classes in user code.
srjProperties :: Lens' SparkRJob (Maybe SparkRJobProperties)
srjProperties
  = lens _srjProperties
      (\ s a -> s{_srjProperties = a})

instance FromJSON SparkRJob where
        parseJSON
          = withObject "SparkRJob"
              (\ o ->
                 SparkRJob' <$>
                   (o .:? "args" .!= mempty) <*>
                     (o .:? "fileUris" .!= mempty)
                     <*> (o .:? "mainRFileUri")
                     <*> (o .:? "archiveUris" .!= mempty)
                     <*> (o .:? "loggingConfig")
                     <*> (o .:? "properties"))

instance ToJSON SparkRJob where
        toJSON SparkRJob'{..}
          = object
              (catMaybes
                 [("args" .=) <$> _srjArgs,
                  ("fileUris" .=) <$> _srjFileURIs,
                  ("mainRFileUri" .=) <$> _srjMainRFileURI,
                  ("archiveUris" .=) <$> _srjArchiveURIs,
                  ("loggingConfig" .=) <$> _srjLoggingConfig,
                  ("properties" .=) <$> _srjProperties])

-- | Endpoint config for this cluster
--
-- /See:/ 'endpointConfig' smart constructor.
data EndpointConfig =
  EndpointConfig'
    { _ecEnableHTTPPortAccess :: !(Maybe Bool)
    , _ecHTTPPorts :: !(Maybe EndpointConfigHTTPPorts)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EndpointConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ecEnableHTTPPortAccess'
--
-- * 'ecHTTPPorts'
endpointConfig
    :: EndpointConfig
endpointConfig =
  EndpointConfig' {_ecEnableHTTPPortAccess = Nothing, _ecHTTPPorts = Nothing}


-- | Optional. If true, enable http access to specific ports on the cluster
-- from external sources. Defaults to false.
ecEnableHTTPPortAccess :: Lens' EndpointConfig (Maybe Bool)
ecEnableHTTPPortAccess
  = lens _ecEnableHTTPPortAccess
      (\ s a -> s{_ecEnableHTTPPortAccess = a})

-- | Output only. The map of port descriptions to URLs. Will only be
-- populated if enable_http_port_access is true.
ecHTTPPorts :: Lens' EndpointConfig (Maybe EndpointConfigHTTPPorts)
ecHTTPPorts
  = lens _ecHTTPPorts (\ s a -> s{_ecHTTPPorts = a})

instance FromJSON EndpointConfig where
        parseJSON
          = withObject "EndpointConfig"
              (\ o ->
                 EndpointConfig' <$>
                   (o .:? "enableHttpPortAccess") <*>
                     (o .:? "httpPorts"))

instance ToJSON EndpointConfig where
        toJSON EndpointConfig'{..}
          = object
              (catMaybes
                 [("enableHttpPortAccess" .=) <$>
                    _ecEnableHTTPPortAccess,
                  ("httpPorts" .=) <$> _ecHTTPPorts])

-- | A Dataproc job for running Apache Pig (https:\/\/pig.apache.org\/)
-- queries on YARN.
--
-- /See:/ 'pigJob' smart constructor.
data PigJob =
  PigJob'
    { _pQueryFileURI :: !(Maybe Text)
    , _pJarFileURIs :: !(Maybe [Text])
    , _pScriptVariables :: !(Maybe PigJobScriptVariables)
    , _pQueryList :: !(Maybe QueryList)
    , _pContinueOnFailure :: !(Maybe Bool)
    , _pLoggingConfig :: !(Maybe LoggingConfig)
    , _pProperties :: !(Maybe PigJobProperties)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PigJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pQueryFileURI'
--
-- * 'pJarFileURIs'
--
-- * 'pScriptVariables'
--
-- * 'pQueryList'
--
-- * 'pContinueOnFailure'
--
-- * 'pLoggingConfig'
--
-- * 'pProperties'
pigJob
    :: PigJob
pigJob =
  PigJob'
    { _pQueryFileURI = Nothing
    , _pJarFileURIs = Nothing
    , _pScriptVariables = Nothing
    , _pQueryList = Nothing
    , _pContinueOnFailure = Nothing
    , _pLoggingConfig = Nothing
    , _pProperties = Nothing
    }


-- | The HCFS URI of the script that contains the Pig queries.
pQueryFileURI :: Lens' PigJob (Maybe Text)
pQueryFileURI
  = lens _pQueryFileURI
      (\ s a -> s{_pQueryFileURI = a})

-- | Optional. HCFS URIs of jar files to add to the CLASSPATH of the Pig
-- Client and Hadoop MapReduce (MR) tasks. Can contain Pig UDFs.
pJarFileURIs :: Lens' PigJob [Text]
pJarFileURIs
  = lens _pJarFileURIs (\ s a -> s{_pJarFileURIs = a})
      . _Default
      . _Coerce

-- | Optional. Mapping of query variable names to values (equivalent to the
-- Pig command: name=[value]).
pScriptVariables :: Lens' PigJob (Maybe PigJobScriptVariables)
pScriptVariables
  = lens _pScriptVariables
      (\ s a -> s{_pScriptVariables = a})

-- | A list of queries.
pQueryList :: Lens' PigJob (Maybe QueryList)
pQueryList
  = lens _pQueryList (\ s a -> s{_pQueryList = a})

-- | Optional. Whether to continue executing queries if a query fails. The
-- default value is false. Setting to true can be useful when executing
-- independent parallel queries.
pContinueOnFailure :: Lens' PigJob (Maybe Bool)
pContinueOnFailure
  = lens _pContinueOnFailure
      (\ s a -> s{_pContinueOnFailure = a})

-- | Optional. The runtime log config for job execution.
pLoggingConfig :: Lens' PigJob (Maybe LoggingConfig)
pLoggingConfig
  = lens _pLoggingConfig
      (\ s a -> s{_pLoggingConfig = a})

-- | Optional. A mapping of property names to values, used to configure Pig.
-- Properties that conflict with values set by the Dataproc API may be
-- overwritten. Can include properties set in
-- \/etc\/hadoop\/conf\/*-site.xml, \/etc\/pig\/conf\/pig.properties, and
-- classes in user code.
pProperties :: Lens' PigJob (Maybe PigJobProperties)
pProperties
  = lens _pProperties (\ s a -> s{_pProperties = a})

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
                 [("queryFileUri" .=) <$> _pQueryFileURI,
                  ("jarFileUris" .=) <$> _pJarFileURIs,
                  ("scriptVariables" .=) <$> _pScriptVariables,
                  ("queryList" .=) <$> _pQueryList,
                  ("continueOnFailure" .=) <$> _pContinueOnFailure,
                  ("loggingConfig" .=) <$> _pLoggingConfig,
                  ("properties" .=) <$> _pProperties])

-- | Optional. A mapping of property names to values. Used to set Presto
-- session properties
-- (https:\/\/prestodb.io\/docs\/current\/sql\/set-session.html) Equivalent
-- to using the --session flag in the Presto CLI
--
-- /See:/ 'prestoJobProperties' smart constructor.
newtype PrestoJobProperties =
  PrestoJobProperties'
    { _pAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PrestoJobProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pAddtional'
prestoJobProperties
    :: HashMap Text Text -- ^ 'pAddtional'
    -> PrestoJobProperties
prestoJobProperties pPAddtional_ =
  PrestoJobProperties' {_pAddtional = _Coerce # pPAddtional_}


pAddtional :: Lens' PrestoJobProperties (HashMap Text Text)
pAddtional
  = lens _pAddtional (\ s a -> s{_pAddtional = a}) .
      _Coerce

instance FromJSON PrestoJobProperties where
        parseJSON
          = withObject "PrestoJobProperties"
              (\ o -> PrestoJobProperties' <$> (parseJSONObject o))

instance ToJSON PrestoJobProperties where
        toJSON = toJSON . _pAddtional

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
    { _bMembers :: !(Maybe [Text])
    , _bRole :: !(Maybe Text)
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
-- specific Google account. For example, alice\'example.com .
-- serviceAccount:{emailid}: An email address that represents a service
-- account. For example, my-other-app\'appspot.gserviceaccount.com.
-- group:{emailid}: An email address that represents a Google group. For
-- example, admins\'example.com. deleted:user:{emailid}?uid={uniqueid}: An
-- email address (plus unique identifier) representing a user that has been
-- recently deleted. For example,
-- alice\'example.com?uid=123456789012345678901. If the user is recovered,
-- this value reverts to user:{emailid} and the recovered user retains the
-- role in the binding. deleted:serviceAccount:{emailid}?uid={uniqueid}: An
-- email address (plus unique identifier) representing a service account
-- that has been recently deleted. For example,
-- my-other-app\'appspot.gserviceaccount.com?uid=123456789012345678901. If
-- the service account is undeleted, this value reverts to
-- serviceAccount:{emailid} and the undeleted service account retains the
-- role in the binding. deleted:group:{emailid}?uid={uniqueid}: An email
-- address (plus unique identifier) representing a Google group that has
-- been recently deleted. For example,
-- admins\'example.com?uid=123456789012345678901. If the group is
-- recovered, this value reverts to group:{emailid} and the recovered group
-- retains the role in the binding. domain:{domain}: The G Suite domain
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

-- | The condition that is associated with this binding.If the condition
-- evaluates to true, then this binding applies to the current request.If
-- the condition evaluates to false, then this binding does not apply to
-- the current request. However, a different role binding might grant the
-- same role to one or more of the members in this binding.To learn which
-- resources support conditions in their IAM policies, see the IAM
-- documentation
-- (https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
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

-- | The GKE config for this cluster.
--
-- /See:/ 'gkeClusterConfig' smart constructor.
newtype GkeClusterConfig =
  GkeClusterConfig'
    { _gccNamespacedGkeDeploymentTarget :: Maybe NamespacedGkeDeploymentTarget
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GkeClusterConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gccNamespacedGkeDeploymentTarget'
gkeClusterConfig
    :: GkeClusterConfig
gkeClusterConfig =
  GkeClusterConfig' {_gccNamespacedGkeDeploymentTarget = Nothing}


-- | Optional. A target for the deployment.
gccNamespacedGkeDeploymentTarget :: Lens' GkeClusterConfig (Maybe NamespacedGkeDeploymentTarget)
gccNamespacedGkeDeploymentTarget
  = lens _gccNamespacedGkeDeploymentTarget
      (\ s a -> s{_gccNamespacedGkeDeploymentTarget = a})

instance FromJSON GkeClusterConfig where
        parseJSON
          = withObject "GkeClusterConfig"
              (\ o ->
                 GkeClusterConfig' <$>
                   (o .:? "namespacedGkeDeploymentTarget"))

instance ToJSON GkeClusterConfig where
        toJSON GkeClusterConfig'{..}
          = object
              (catMaybes
                 [("namespacedGkeDeploymentTarget" .=) <$>
                    _gccNamespacedGkeDeploymentTarget])
