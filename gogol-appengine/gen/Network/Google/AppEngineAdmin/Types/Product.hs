{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

-- |
-- Module      : Network.Google.AppEngineAdmin.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AppEngineAdmin.Types.Product where

import           Network.Google.AppEngineAdmin.Types.Sum
import           Network.Google.Prelude

-- | API Serving configuration for Cloud Endpoints.
--
-- /See:/ 'apiConfigHandler' smart constructor.
data ApiConfigHandler = ApiConfigHandler
    { _achScript         :: !(Maybe Text)
    , _achSecurityLevel  :: !(Maybe Text)
    , _achUrl            :: !(Maybe Text)
    , _achAuthFailAction :: !(Maybe Text)
    , _achLogin          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ApiConfigHandler' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'achScript'
--
-- * 'achSecurityLevel'
--
-- * 'achUrl'
--
-- * 'achAuthFailAction'
--
-- * 'achLogin'
apiConfigHandler
    :: ApiConfigHandler
apiConfigHandler =
    ApiConfigHandler
    { _achScript = Nothing
    , _achSecurityLevel = Nothing
    , _achUrl = Nothing
    , _achAuthFailAction = Nothing
    , _achLogin = Nothing
    }

-- | Specifies the path to the script from the application root directory.
achScript :: Lens' ApiConfigHandler (Maybe Text)
achScript
  = lens _achScript (\ s a -> s{_achScript = a})

-- | Configures whether security (HTTPS) should be enforced for this URL.
achSecurityLevel :: Lens' ApiConfigHandler (Maybe Text)
achSecurityLevel
  = lens _achSecurityLevel
      (\ s a -> s{_achSecurityLevel = a})

-- | URL to serve the endpoint at.
achUrl :: Lens' ApiConfigHandler (Maybe Text)
achUrl = lens _achUrl (\ s a -> s{_achUrl = a})

-- | For users not logged in, how to handle access to resources with required
-- login. Defaults to \"redirect\".
achAuthFailAction :: Lens' ApiConfigHandler (Maybe Text)
achAuthFailAction
  = lens _achAuthFailAction
      (\ s a -> s{_achAuthFailAction = a})

-- | What level of login is required to access this resource. Default is
-- \"optional\".
achLogin :: Lens' ApiConfigHandler (Maybe Text)
achLogin = lens _achLogin (\ s a -> s{_achLogin = a})

-- | Use Google Cloud Endpoints to handle requests.
--
-- /See:/ 'apiEndpointHandler' smart constructor.
newtype ApiEndpointHandler = ApiEndpointHandler
    { _aehScriptPath :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ApiEndpointHandler' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aehScriptPath'
apiEndpointHandler
    :: ApiEndpointHandler
apiEndpointHandler =
    ApiEndpointHandler
    { _aehScriptPath = Nothing
    }

-- | Specifies the path to the script from the application root directory.
aehScriptPath :: Lens' ApiEndpointHandler (Maybe Text)
aehScriptPath
  = lens _aehScriptPath
      (\ s a -> s{_aehScriptPath = a})

-- | An Application contains the top-level configuration of an App Engine
-- application.
--
-- /See:/ 'application' smart constructor.
data Application = Application
    { _aLocation      :: !(Maybe Text)
    , _aCodeBucket    :: !(Maybe Text)
    , _aName          :: !(Maybe Text)
    , _aDispatchRules :: !(Maybe [Maybe UrlDispatchRule])
    , _aId            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Application' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aLocation'
--
-- * 'aCodeBucket'
--
-- * 'aName'
--
-- * 'aDispatchRules'
--
-- * 'aId'
application
    :: Application
application =
    Application
    { _aLocation = Nothing
    , _aCodeBucket = Nothing
    , _aName = Nothing
    , _aDispatchRules = Nothing
    , _aId = Nothing
    }

-- | The location from which the application will be run. Choices are
-- \"us-central\" for United States and \"europe-west\" for European Union.
-- Application instances will run out of data centers in the chosen
-- location and all of the application\'s End User Content will be stored
-- at rest in the chosen location. The default is \"us-central\".
aLocation :: Lens' Application (Maybe Text)
aLocation
  = lens _aLocation (\ s a -> s{_aLocation = a})

-- | A Google Cloud Storage bucket which can be used for storing files
-- associated with an application. This bucket is associated with the
-- application and can be used by the gcloud deployment commands.
-- \'OutputOnly
aCodeBucket :: Lens' Application (Maybe Text)
aCodeBucket
  = lens _aCodeBucket (\ s a -> s{_aCodeBucket = a})

-- | The full path to the application in the API. Example: \"apps\/myapp\".
-- \'OutputOnly
aName :: Lens' Application (Maybe Text)
aName = lens _aName (\ s a -> s{_aName = a})

-- | HTTP path dispatch rules for requests to the app that do not explicitly
-- target a module or version. The rules are order-dependent.
aDispatchRules :: Lens' Application [Maybe UrlDispatchRule]
aDispatchRules
  = lens _aDispatchRules
      (\ s a -> s{_aDispatchRules = a})
      . _Default
      . _Coerce

-- | The relative name\/path of the application. Example: \"myapp\".
-- \'OutputOnly
aId :: Lens' Application (Maybe Text)
aId = lens _aId (\ s a -> s{_aId = a})

-- | Automatic scaling is the scaling policy that App Engine has used since
-- its inception. It is based on request rate, response latencies, and
-- other application metrics.
--
-- /See:/ 'automaticScaling' smart constructor.
data AutomaticScaling = AutomaticScaling
    { _asMaxTotalInstances     :: !(Maybe Int32)
    , _asMinIdleInstances      :: !(Maybe Int32)
    , _asMinPendingLatency     :: !(Maybe Text)
    , _asCpuUtilization        :: !(Maybe (Maybe CpuUtilization))
    , _asMaxIdleInstances      :: !(Maybe Int32)
    , _asMinTotalInstances     :: !(Maybe Int32)
    , _asMaxConcurrentRequests :: !(Maybe Int32)
    , _asCoolDownPeriod        :: !(Maybe Text)
    , _asMaxPendingLatency     :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutomaticScaling' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asMaxTotalInstances'
--
-- * 'asMinIdleInstances'
--
-- * 'asMinPendingLatency'
--
-- * 'asCpuUtilization'
--
-- * 'asMaxIdleInstances'
--
-- * 'asMinTotalInstances'
--
-- * 'asMaxConcurrentRequests'
--
-- * 'asCoolDownPeriod'
--
-- * 'asMaxPendingLatency'
automaticScaling
    :: AutomaticScaling
automaticScaling =
    AutomaticScaling
    { _asMaxTotalInstances = Nothing
    , _asMinIdleInstances = Nothing
    , _asMinPendingLatency = Nothing
    , _asCpuUtilization = Nothing
    , _asMaxIdleInstances = Nothing
    , _asMinTotalInstances = Nothing
    , _asMaxConcurrentRequests = Nothing
    , _asCoolDownPeriod = Nothing
    , _asMaxPendingLatency = Nothing
    }

-- | Max number of instances that App Engine should start to handle requests.
asMaxTotalInstances :: Lens' AutomaticScaling (Maybe Int32)
asMaxTotalInstances
  = lens _asMaxTotalInstances
      (\ s a -> s{_asMaxTotalInstances = a})

-- | The minimum number of idle instances that App Engine should maintain for
-- this version. Only applies to the default version of a module, since
-- other versions are not expected to receive significant traffic.
asMinIdleInstances :: Lens' AutomaticScaling (Maybe Int32)
asMinIdleInstances
  = lens _asMinIdleInstances
      (\ s a -> s{_asMinIdleInstances = a})

-- | The minimum amount of time that App Engine should allow a request to
-- wait in the pending queue before starting a new instance to handle it.
asMinPendingLatency :: Lens' AutomaticScaling (Maybe Text)
asMinPendingLatency
  = lens _asMinPendingLatency
      (\ s a -> s{_asMinPendingLatency = a})

-- | Target scaling by CPU usage.
asCpuUtilization :: Lens' AutomaticScaling (Maybe (Maybe CpuUtilization))
asCpuUtilization
  = lens _asCpuUtilization
      (\ s a -> s{_asCpuUtilization = a})

-- | The maximum number of idle instances that App Engine should maintain for
-- this version.
asMaxIdleInstances :: Lens' AutomaticScaling (Maybe Int32)
asMaxIdleInstances
  = lens _asMaxIdleInstances
      (\ s a -> s{_asMaxIdleInstances = a})

-- | Minimum number of instances that App Engine should maintain.
asMinTotalInstances :: Lens' AutomaticScaling (Maybe Int32)
asMinTotalInstances
  = lens _asMinTotalInstances
      (\ s a -> s{_asMinTotalInstances = a})

-- | The number of concurrent requests an automatic scaling instance can
-- accept before the scheduler spawns a new instance. Default value is
-- chosen based on the runtime.
asMaxConcurrentRequests :: Lens' AutomaticScaling (Maybe Int32)
asMaxConcurrentRequests
  = lens _asMaxConcurrentRequests
      (\ s a -> s{_asMaxConcurrentRequests = a})

-- | The amount of time that the
-- [Autoscaler](https:\/\/cloud.google.com\/compute\/docs\/autoscaler\/)
-- should wait between changes to the number of virtual machines. Applies
-- only to the VM runtime.
asCoolDownPeriod :: Lens' AutomaticScaling (Maybe Text)
asCoolDownPeriod
  = lens _asCoolDownPeriod
      (\ s a -> s{_asCoolDownPeriod = a})

-- | The maximum amount of time that App Engine should allow a request to
-- wait in the pending queue before starting a new instance to handle it.
asMaxPendingLatency :: Lens' AutomaticScaling (Maybe Text)
asMaxPendingLatency
  = lens _asMaxPendingLatency
      (\ s a -> s{_asMaxPendingLatency = a})

-- | A module with basic scaling will create an instance when the application
-- receives a request. The instance will be turned down when the app
-- becomes idle. Basic scaling is ideal for work that is intermittent or
-- driven by user activity.
--
-- /See:/ 'basicScaling' smart constructor.
data BasicScaling = BasicScaling
    { _bsMaxInstances :: !(Maybe Int32)
    , _bsIdleTimeout  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BasicScaling' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bsMaxInstances'
--
-- * 'bsIdleTimeout'
basicScaling
    :: BasicScaling
basicScaling =
    BasicScaling
    { _bsMaxInstances = Nothing
    , _bsIdleTimeout = Nothing
    }

-- | The maximum number of instances for App Engine to create for this
-- version.
bsMaxInstances :: Lens' BasicScaling (Maybe Int32)
bsMaxInstances
  = lens _bsMaxInstances
      (\ s a -> s{_bsMaxInstances = a})

-- | The instance will be shut down this amount of time after receiving its
-- last request.
bsIdleTimeout :: Lens' BasicScaling (Maybe Text)
bsIdleTimeout
  = lens _bsIdleTimeout
      (\ s a -> s{_bsIdleTimeout = a})

-- | A Docker (container) image which should be used to start the
-- application.
--
-- /See:/ 'containerInfo' smart constructor.
newtype ContainerInfo = ContainerInfo
    { _ciImage :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ContainerInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciImage'
containerInfo
    :: ContainerInfo
containerInfo =
    ContainerInfo
    { _ciImage = Nothing
    }

-- | Reference to a hosted container image. Must be a URI to a resource in a
-- Docker repository. Must be fully qualified, including tag or digest.
-- e.g. gcr.io\/my-project\/image:tag or gcr.io\/my-project\/image\'digest
ciImage :: Lens' ContainerInfo (Maybe Text)
ciImage = lens _ciImage (\ s a -> s{_ciImage = a})

-- | Target scaling by CPU usage.
--
-- /See:/ 'cpuUtilization' smart constructor.
data CpuUtilization = CpuUtilization
    { _cuAggregationWindowLength :: !(Maybe Text)
    , _cuTargetUtilization       :: !(Maybe Double)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CpuUtilization' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuAggregationWindowLength'
--
-- * 'cuTargetUtilization'
cpuUtilization
    :: CpuUtilization
cpuUtilization =
    CpuUtilization
    { _cuAggregationWindowLength = Nothing
    , _cuTargetUtilization = Nothing
    }

-- | The period of time over which CPU utilization is calculated.
cuAggregationWindowLength :: Lens' CpuUtilization (Maybe Text)
cuAggregationWindowLength
  = lens _cuAggregationWindowLength
      (\ s a -> s{_cuAggregationWindowLength = a})

-- | Target (0-1) CPU utilization ratio to maintain when scaling.
cuTargetUtilization :: Lens' CpuUtilization (Maybe Double)
cuTargetUtilization
  = lens _cuTargetUtilization
      (\ s a -> s{_cuTargetUtilization = a})

-- | Code and application artifacts used to deploy a version to App Engine.
--
-- /See:/ 'deployment' smart constructor.
data Deployment = Deployment
    { _dContainer        :: !(Maybe (Maybe ContainerInfo))
    , _dFiles            :: !(Maybe DeploymentFiles)
    , _dSourceReferences :: !(Maybe [Maybe SourceReference])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Deployment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dContainer'
--
-- * 'dFiles'
--
-- * 'dSourceReferences'
deployment
    :: Deployment
deployment =
    Deployment
    { _dContainer = Nothing
    , _dFiles = Nothing
    , _dSourceReferences = Nothing
    }

-- | If supplied, a docker (container) image which should be used to start
-- the application. Only applicable to the \'vm\' runtime.
dContainer :: Lens' Deployment (Maybe (Maybe ContainerInfo))
dContainer
  = lens _dContainer (\ s a -> s{_dContainer = a})

-- | A manifest of files stored in Google Cloud Storage which should be
-- included as part of this application. All files must be readable using
-- the credentials supplied with this call.
dFiles :: Lens' Deployment (Maybe DeploymentFiles)
dFiles = lens _dFiles (\ s a -> s{_dFiles = a})

-- | The origin of the source code for this deployment. There can be more
-- than one source reference per Version if source code is distributed
-- among multiple repositories.
dSourceReferences :: Lens' Deployment [Maybe SourceReference]
dSourceReferences
  = lens _dSourceReferences
      (\ s a -> s{_dSourceReferences = a})
      . _Default
      . _Coerce

-- | A manifest of files stored in Google Cloud Storage which should be
-- included as part of this application. All files must be readable using
-- the credentials supplied with this call.
--
-- /See:/ 'deploymentFiles' smart constructor.
data DeploymentFiles =
    DeploymentFiles
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeploymentFiles' with the minimum fields required to make a request.
--
deploymentFiles
    :: DeploymentFiles
deploymentFiles = DeploymentFiles

-- | A custom static error page to be served when an error occurs.
--
-- /See:/ 'errorHandler' smart constructor.
data ErrorHandler = ErrorHandler
    { _ehMimeType   :: !(Maybe Text)
    , _ehErrorCode  :: !(Maybe Text)
    , _ehStaticFile :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ErrorHandler' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ehMimeType'
--
-- * 'ehErrorCode'
--
-- * 'ehStaticFile'
errorHandler
    :: ErrorHandler
errorHandler =
    ErrorHandler
    { _ehMimeType = Nothing
    , _ehErrorCode = Nothing
    , _ehStaticFile = Nothing
    }

-- | MIME type of file. If unspecified, \"text\/html\" is assumed.
ehMimeType :: Lens' ErrorHandler (Maybe Text)
ehMimeType
  = lens _ehMimeType (\ s a -> s{_ehMimeType = a})

-- | The error condition this handler applies to.
ehErrorCode :: Lens' ErrorHandler (Maybe Text)
ehErrorCode
  = lens _ehErrorCode (\ s a -> s{_ehErrorCode = a})

-- | Static file content to be served for this error.
ehStaticFile :: Lens' ErrorHandler (Maybe Text)
ehStaticFile
  = lens _ehStaticFile (\ s a -> s{_ehStaticFile = a})

-- | A single source file which is part of the application to be deployed.
--
-- /See:/ 'fileInfo' smart constructor.
data FileInfo = FileInfo
    { _fiSha1Sum   :: !(Maybe Text)
    , _fiMimeType  :: !(Maybe Text)
    , _fiSourceUrl :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FileInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fiSha1Sum'
--
-- * 'fiMimeType'
--
-- * 'fiSourceUrl'
fileInfo
    :: FileInfo
fileInfo =
    FileInfo
    { _fiSha1Sum = Nothing
    , _fiMimeType = Nothing
    , _fiSourceUrl = Nothing
    }

-- | The SHA1 (160 bits) hash of the file in hex.
fiSha1Sum :: Lens' FileInfo (Maybe Text)
fiSha1Sum
  = lens _fiSha1Sum (\ s a -> s{_fiSha1Sum = a})

-- | The MIME type of the file; if unspecified, the value from Google Cloud
-- Storage will be used.
fiMimeType :: Lens' FileInfo (Maybe Text)
fiMimeType
  = lens _fiMimeType (\ s a -> s{_fiMimeType = a})

-- | The URL source to use to fetch this file. Must be a URL to a resource in
-- Google Cloud Storage.
fiSourceUrl :: Lens' FileInfo (Maybe Text)
fiSourceUrl
  = lens _fiSourceUrl (\ s a -> s{_fiSourceUrl = a})

-- | Configure health checking for the VM instances. Unhealthy VM instances
-- will be killed and replaced with new instances.
--
-- /See:/ 'healthCheck' smart constructor.
data HealthCheck = HealthCheck
    { _hcHealthyThreshold   :: !(Maybe Word32)
    , _hcDisableHealthCheck :: !(Maybe Bool)
    , _hcCheckInterval      :: !(Maybe Text)
    , _hcRestartThreshold   :: !(Maybe Word32)
    , _hcHost               :: !(Maybe Text)
    , _hcTimeout            :: !(Maybe Text)
    , _hcUnhealthyThreshold :: !(Maybe Word32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'HealthCheck' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hcHealthyThreshold'
--
-- * 'hcDisableHealthCheck'
--
-- * 'hcCheckInterval'
--
-- * 'hcRestartThreshold'
--
-- * 'hcHost'
--
-- * 'hcTimeout'
--
-- * 'hcUnhealthyThreshold'
healthCheck
    :: HealthCheck
healthCheck =
    HealthCheck
    { _hcHealthyThreshold = Nothing
    , _hcDisableHealthCheck = Nothing
    , _hcCheckInterval = Nothing
    , _hcRestartThreshold = Nothing
    , _hcHost = Nothing
    , _hcTimeout = Nothing
    , _hcUnhealthyThreshold = Nothing
    }

-- | The number of consecutive successful health checks before receiving
-- traffic.
hcHealthyThreshold :: Lens' HealthCheck (Maybe Word32)
hcHealthyThreshold
  = lens _hcHealthyThreshold
      (\ s a -> s{_hcHealthyThreshold = a})

-- | Whether to explicitly disable health checks for this instance.
hcDisableHealthCheck :: Lens' HealthCheck (Maybe Bool)
hcDisableHealthCheck
  = lens _hcDisableHealthCheck
      (\ s a -> s{_hcDisableHealthCheck = a})

-- | The interval between health checks.
hcCheckInterval :: Lens' HealthCheck (Maybe Text)
hcCheckInterval
  = lens _hcCheckInterval
      (\ s a -> s{_hcCheckInterval = a})

-- | The number of consecutive failed health checks before an instance is
-- restarted.
hcRestartThreshold :: Lens' HealthCheck (Maybe Word32)
hcRestartThreshold
  = lens _hcRestartThreshold
      (\ s a -> s{_hcRestartThreshold = a})

-- | The host header to send when performing an HTTP health check (e.g.
-- myapp.appspot.com)
hcHost :: Lens' HealthCheck (Maybe Text)
hcHost = lens _hcHost (\ s a -> s{_hcHost = a})

-- | The amount of time before the health check is considered failed.
hcTimeout :: Lens' HealthCheck (Maybe Text)
hcTimeout
  = lens _hcTimeout (\ s a -> s{_hcTimeout = a})

-- | The number of consecutive failed health checks before removing traffic.
hcUnhealthyThreshold :: Lens' HealthCheck (Maybe Word32)
hcUnhealthyThreshold
  = lens _hcUnhealthyThreshold
      (\ s a -> s{_hcUnhealthyThreshold = a})

-- | A Python runtime third-party library required by the application.
--
-- /See:/ 'library' smart constructor.
data Library = Library
    { _lName    :: !(Maybe Text)
    , _lVersion :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Library' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lName'
--
-- * 'lVersion'
library
    :: Library
library =
    Library
    { _lName = Nothing
    , _lVersion = Nothing
    }

-- | The name of the library, e.g. \"PIL\" or \"django\".
lName :: Lens' Library (Maybe Text)
lName = lens _lName (\ s a -> s{_lName = a})

-- | The version of the library to select, or \"latest\".
lVersion :: Lens' Library (Maybe Text)
lVersion = lens _lVersion (\ s a -> s{_lVersion = a})

-- | Response message for \`Modules.ListModules\`.
--
-- /See:/ 'listModulesResponse' smart constructor.
data ListModulesResponse = ListModulesResponse
    { _lmrNextPageToken :: !(Maybe Text)
    , _lmrModules       :: !(Maybe [Maybe Module])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListModulesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmrNextPageToken'
--
-- * 'lmrModules'
listModulesResponse
    :: ListModulesResponse
listModulesResponse =
    ListModulesResponse
    { _lmrNextPageToken = Nothing
    , _lmrModules = Nothing
    }

-- | Continuation token for fetching the next page of results.
lmrNextPageToken :: Lens' ListModulesResponse (Maybe Text)
lmrNextPageToken
  = lens _lmrNextPageToken
      (\ s a -> s{_lmrNextPageToken = a})

-- | The modules belonging to the requested application.
lmrModules :: Lens' ListModulesResponse [Maybe Module]
lmrModules
  = lens _lmrModules (\ s a -> s{_lmrModules = a}) .
      _Default
      . _Coerce

-- | The response message for
-- [Operations.ListOperations][google.longrunning.Operations.ListOperations].
--
-- /See:/ 'listOperationsResponse' smart constructor.
data ListOperationsResponse = ListOperationsResponse
    { _lorNextPageToken :: !(Maybe Text)
    , _lorOperations    :: !(Maybe [Maybe Operation])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    ListOperationsResponse
    { _lorNextPageToken = Nothing
    , _lorOperations = Nothing
    }

-- | The standard List next-page token.
lorNextPageToken :: Lens' ListOperationsResponse (Maybe Text)
lorNextPageToken
  = lens _lorNextPageToken
      (\ s a -> s{_lorNextPageToken = a})

-- | A list of operations that matches the specified filter in the request.
lorOperations :: Lens' ListOperationsResponse [Maybe Operation]
lorOperations
  = lens _lorOperations
      (\ s a -> s{_lorOperations = a})
      . _Default
      . _Coerce

-- | Response message for \`Versions.ListVersions\`.
--
-- /See:/ 'listVersionsResponse' smart constructor.
data ListVersionsResponse = ListVersionsResponse
    { _lvrNextPageToken :: !(Maybe Text)
    , _lvrVersions      :: !(Maybe [Maybe Version])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListVersionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lvrNextPageToken'
--
-- * 'lvrVersions'
listVersionsResponse
    :: ListVersionsResponse
listVersionsResponse =
    ListVersionsResponse
    { _lvrNextPageToken = Nothing
    , _lvrVersions = Nothing
    }

-- | Continuation token for fetching the next page of results.
lvrNextPageToken :: Lens' ListVersionsResponse (Maybe Text)
lvrNextPageToken
  = lens _lvrNextPageToken
      (\ s a -> s{_lvrNextPageToken = a})

-- | The versions belonging to the requested application module.
lvrVersions :: Lens' ListVersionsResponse [Maybe Version]
lvrVersions
  = lens _lvrVersions (\ s a -> s{_lvrVersions = a}) .
      _Default
      . _Coerce

-- | A module with manual scaling runs continuously, allowing you to perform
-- complex initialization and rely on the state of its memory over time.
--
-- /See:/ 'manualScaling' smart constructor.
newtype ManualScaling = ManualScaling
    { _msInstances :: Maybe Int32
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManualScaling' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'msInstances'
manualScaling
    :: ManualScaling
manualScaling =
    ManualScaling
    { _msInstances = Nothing
    }

-- | The number of instances to assign to the module at the start. This
-- number can later be altered by using the [Modules
-- API](https:\/\/cloud.google.com\/appengine\/docs\/python\/modules\/functions)
-- \`set_num_instances()\` function.
msInstances :: Lens' ManualScaling (Maybe Int32)
msInstances
  = lens _msInstances (\ s a -> s{_msInstances = a})

-- | A module is a component of an application that provides a single service
-- or configuration. A module has a collection of versions that define a
-- specific set of code used to implement the functionality of that module.
--
-- /See:/ 'module'' smart constructor.
data Module = Module
    { _mSplit :: !(Maybe (Maybe TrafficSplit))
    , _mName  :: !(Maybe Text)
    , _mId    :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Module' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mSplit'
--
-- * 'mName'
--
-- * 'mId'
module'
    :: Module
module' =
    Module
    { _mSplit = Nothing
    , _mName = Nothing
    , _mId = Nothing
    }

-- | A mapping that defines fractional HTTP traffic diversion to different
-- versions within the module.
mSplit :: Lens' Module (Maybe (Maybe TrafficSplit))
mSplit = lens _mSplit (\ s a -> s{_mSplit = a})

-- | The full path to the Module resource in the API. Example:
-- \"apps\/myapp\/modules\/default\" \'OutputOnly
mName :: Lens' Module (Maybe Text)
mName = lens _mName (\ s a -> s{_mName = a})

-- | The relative name\/path of the module within the application. Example:
-- \"default\" \'OutputOnly
mId :: Lens' Module (Maybe Text)
mId = lens _mId (\ s a -> s{_mId = a})

-- | Used to specify extra network settings (for VM runtimes only).
--
-- /See:/ 'network' smart constructor.
data Network = Network
    { _nForwardedPorts :: !(Maybe [Text])
    , _nInstanceTag    :: !(Maybe Text)
    , _nName           :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Network' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nForwardedPorts'
--
-- * 'nInstanceTag'
--
-- * 'nName'
network
    :: Network
network =
    Network
    { _nForwardedPorts = Nothing
    , _nInstanceTag = Nothing
    , _nName = Nothing
    }

-- | A list of ports (or port pairs) to forward from the VM into the app
-- container.
nForwardedPorts :: Lens' Network [Text]
nForwardedPorts
  = lens _nForwardedPorts
      (\ s a -> s{_nForwardedPorts = a})
      . _Default
      . _Coerce

-- | A tag to apply to the VM instance during creation.
nInstanceTag :: Lens' Network (Maybe Text)
nInstanceTag
  = lens _nInstanceTag (\ s a -> s{_nInstanceTag = a})

-- | The Google Compute Engine network where the VMs will be created. If not
-- specified, or empty, the network named \"default\" will be used. (The
-- short name should be specified, not the resource path.)
nName :: Lens' Network (Maybe Text)
nName = lens _nName (\ s a -> s{_nName = a})

-- | This resource represents a long-running operation that is the result of
-- a network API call.
--
-- /See:/ 'operation' smart constructor.
data Operation = Operation
    { _oDone     :: !(Maybe Bool)
    , _oError    :: !(Maybe (Maybe Status))
    , _oResponse :: !(Maybe OperationResponse)
    , _oName     :: !(Maybe Text)
    , _oMetadata :: !(Maybe OperationMetadata)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    Operation
    { _oDone = Nothing
    , _oError = Nothing
    , _oResponse = Nothing
    , _oName = Nothing
    , _oMetadata = Nothing
    }

-- | If the value is \`false\`, it means the operation is still in progress.
-- If true, the operation is completed, and either \`error\` or
-- \`response\` is available.
oDone :: Lens' Operation (Maybe Bool)
oDone = lens _oDone (\ s a -> s{_oDone = a})

-- | The error result of the operation in case of failure.
oError :: Lens' Operation (Maybe (Maybe Status))
oError = lens _oError (\ s a -> s{_oError = a})

-- | The normal response of the operation in case of success. If the original
-- method returns no data on success, such as \`Delete\`, the response is
-- \`google.protobuf.Empty\`. If the original method is standard
-- \`Get\`\/\`Create\`\/\`Update\`, the response should be the resource.
-- For other methods, the response should have the type \`XxxResponse\`,
-- where \`Xxx\` is the original method name. For example, if the original
-- method name is \`TakeSnapshot()\`, the inferred response type is
-- \`TakeSnapshotResponse\`.
oResponse :: Lens' Operation (Maybe OperationResponse)
oResponse
  = lens _oResponse (\ s a -> s{_oResponse = a})

-- | The server-assigned name, which is only unique within the same service
-- that originally returns it. If you use the default HTTP mapping above,
-- the \`name\` should have the format of
-- \`operations\/some\/unique\/name\`.
oName :: Lens' Operation (Maybe Text)
oName = lens _oName (\ s a -> s{_oName = a})

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
oMetadata :: Lens' Operation (Maybe OperationMetadata)
oMetadata
  = lens _oMetadata (\ s a -> s{_oMetadata = a})

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
--
-- /See:/ 'operationMetadata' smart constructor.
data OperationMetadata =
    OperationMetadata
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationMetadata' with the minimum fields required to make a request.
--
operationMetadata
    :: OperationMetadata
operationMetadata = OperationMetadata

-- | The normal response of the operation in case of success. If the original
-- method returns no data on success, such as \`Delete\`, the response is
-- \`google.protobuf.Empty\`. If the original method is standard
-- \`Get\`\/\`Create\`\/\`Update\`, the response should be the resource.
-- For other methods, the response should have the type \`XxxResponse\`,
-- where \`Xxx\` is the original method name. For example, if the original
-- method name is \`TakeSnapshot()\`, the inferred response type is
-- \`TakeSnapshotResponse\`.
--
-- /See:/ 'operationResponse' smart constructor.
data OperationResponse =
    OperationResponse
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationResponse' with the minimum fields required to make a request.
--
operationResponse
    :: OperationResponse
operationResponse = OperationResponse

-- | Used to specify how many machine resources an app version needs.
--
-- /See:/ 'resources' smart constructor.
data Resources = Resources
    { _rMemoryGb :: !(Maybe Double)
    , _rDiskGb   :: !(Maybe Double)
    , _rCpu      :: !(Maybe Double)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Resources' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rMemoryGb'
--
-- * 'rDiskGb'
--
-- * 'rCpu'
resources
    :: Resources
resources =
    Resources
    { _rMemoryGb = Nothing
    , _rDiskGb = Nothing
    , _rCpu = Nothing
    }

-- | How much memory, in GB, an app version needs.
rMemoryGb :: Lens' Resources (Maybe Double)
rMemoryGb
  = lens _rMemoryGb (\ s a -> s{_rMemoryGb = a})

-- | How much disk size, in GB, an app version needs.
rDiskGb :: Lens' Resources (Maybe Double)
rDiskGb = lens _rDiskGb (\ s a -> s{_rDiskGb = a})

-- | How many CPU cores an app version needs.
rCpu :: Lens' Resources (Maybe Double)
rCpu = lens _rCpu (\ s a -> s{_rCpu = a})

-- | Executes a script to handle the request that matches the URL pattern.
--
-- /See:/ 'scriptHandler' smart constructor.
newtype ScriptHandler = ScriptHandler
    { _shScriptPath :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ScriptHandler' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'shScriptPath'
scriptHandler
    :: ScriptHandler
scriptHandler =
    ScriptHandler
    { _shScriptPath = Nothing
    }

-- | Specifies the path to the script from the application root directory.
shScriptPath :: Lens' ScriptHandler (Maybe Text)
shScriptPath
  = lens _shScriptPath (\ s a -> s{_shScriptPath = a})

-- | A reference to a particular snapshot of the source tree used to build
-- and deploy the application.
--
-- /See:/ 'sourceReference' smart constructor.
data SourceReference = SourceReference
    { _srRepository :: !(Maybe Text)
    , _srRevisionId :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SourceReference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srRepository'
--
-- * 'srRevisionId'
sourceReference
    :: SourceReference
sourceReference =
    SourceReference
    { _srRepository = Nothing
    , _srRevisionId = Nothing
    }

-- | Optional. A URI string identifying the repository. Example:
-- \"https:\/\/source.developers.google.com\/p\/app-123\/r\/default\"
srRepository :: Lens' SourceReference (Maybe Text)
srRepository
  = lens _srRepository (\ s a -> s{_srRepository = a})

-- | The canonical (and persistent) identifier of the deployed revision, i.e.
-- any kind of aliases including tags or branch names are not allowed.
-- Example (git): \"2198322f89e0bb2e25021667c2ed489d1fd34e6b\"
srRevisionId :: Lens' SourceReference (Maybe Text)
srRevisionId
  = lens _srRevisionId (\ s a -> s{_srRevisionId = a})

-- | Files served directly to the user for a given URL, such as images, CSS
-- stylesheets, or JavaScript source files. Static directory handlers make
-- it easy to serve the entire contents of a directory as static files.
--
-- /See:/ 'staticDirectoryHandler' smart constructor.
data StaticDirectoryHandler = StaticDirectoryHandler
    { _sdhHttpHeaders         :: !(Maybe StaticDirectoryHandlerHttpHeaders)
    , _sdhRequireMatchingFile :: !(Maybe Bool)
    , _sdhExpiration          :: !(Maybe Text)
    , _sdhMimeType            :: !(Maybe Text)
    , _sdhApplicationReadable :: !(Maybe Bool)
    , _sdhDirectory           :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'StaticDirectoryHandler' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdhHttpHeaders'
--
-- * 'sdhRequireMatchingFile'
--
-- * 'sdhExpiration'
--
-- * 'sdhMimeType'
--
-- * 'sdhApplicationReadable'
--
-- * 'sdhDirectory'
staticDirectoryHandler
    :: StaticDirectoryHandler
staticDirectoryHandler =
    StaticDirectoryHandler
    { _sdhHttpHeaders = Nothing
    , _sdhRequireMatchingFile = Nothing
    , _sdhExpiration = Nothing
    , _sdhMimeType = Nothing
    , _sdhApplicationReadable = Nothing
    , _sdhDirectory = Nothing
    }

-- | HTTP headers to use for all responses from these URLs.
sdhHttpHeaders :: Lens' StaticDirectoryHandler (Maybe StaticDirectoryHandlerHttpHeaders)
sdhHttpHeaders
  = lens _sdhHttpHeaders
      (\ s a -> s{_sdhHttpHeaders = a})

-- | If true, this UrlMap entry does not match the request unless the file
-- referenced by the handler also exists. If no such file exists,
-- processing will continue with the next UrlMap that matches the requested
-- URL.
sdhRequireMatchingFile :: Lens' StaticDirectoryHandler (Maybe Bool)
sdhRequireMatchingFile
  = lens _sdhRequireMatchingFile
      (\ s a -> s{_sdhRequireMatchingFile = a})

-- | The length of time a static file served by this handler ought to be
-- cached by web proxies and browsers.
sdhExpiration :: Lens' StaticDirectoryHandler (Maybe Text)
sdhExpiration
  = lens _sdhExpiration
      (\ s a -> s{_sdhExpiration = a})

-- | If specified, all files served by this handler will be served using the
-- specified MIME type. If not specified, the MIME type for a file will be
-- derived from the file\'s filename extension.
sdhMimeType :: Lens' StaticDirectoryHandler (Maybe Text)
sdhMimeType
  = lens _sdhMimeType (\ s a -> s{_sdhMimeType = a})

-- | By default, files declared in static file handlers are uploaded as
-- static data and are only served to end users, they cannot be read by an
-- application. If this field is set to true, the files are also uploaded
-- as code data so your application can read them. Both uploads are charged
-- against your code and static data storage resource quotas.
sdhApplicationReadable :: Lens' StaticDirectoryHandler (Maybe Bool)
sdhApplicationReadable
  = lens _sdhApplicationReadable
      (\ s a -> s{_sdhApplicationReadable = a})

-- | The path to the directory containing the static files, from the
-- application root directory. Everything after the end of the matched url
-- pattern is appended to static_dir to form the full path to the requested
-- file.
sdhDirectory :: Lens' StaticDirectoryHandler (Maybe Text)
sdhDirectory
  = lens _sdhDirectory (\ s a -> s{_sdhDirectory = a})

-- | HTTP headers to use for all responses from these URLs.
--
-- /See:/ 'staticDirectoryHandlerHttpHeaders' smart constructor.
data StaticDirectoryHandlerHttpHeaders =
    StaticDirectoryHandlerHttpHeaders
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'StaticDirectoryHandlerHttpHeaders' with the minimum fields required to make a request.
--
staticDirectoryHandlerHttpHeaders
    :: StaticDirectoryHandlerHttpHeaders
staticDirectoryHandlerHttpHeaders = StaticDirectoryHandlerHttpHeaders

-- | Files served directly to the user for a given URL, such as images, CSS
-- stylesheets, or JavaScript source files. Static file handlers describe
-- which files in the application directory are static files, and which
-- URLs serve them.
--
-- /See:/ 'staticFilesHandler' smart constructor.
data StaticFilesHandler = StaticFilesHandler
    { _sfhHttpHeaders         :: !(Maybe StaticFilesHandlerHttpHeaders)
    , _sfhPath                :: !(Maybe Text)
    , _sfhRequireMatchingFile :: !(Maybe Bool)
    , _sfhExpiration          :: !(Maybe Text)
    , _sfhMimeType            :: !(Maybe Text)
    , _sfhApplicationReadable :: !(Maybe Bool)
    , _sfhUploadPathRegex     :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'StaticFilesHandler' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sfhHttpHeaders'
--
-- * 'sfhPath'
--
-- * 'sfhRequireMatchingFile'
--
-- * 'sfhExpiration'
--
-- * 'sfhMimeType'
--
-- * 'sfhApplicationReadable'
--
-- * 'sfhUploadPathRegex'
staticFilesHandler
    :: StaticFilesHandler
staticFilesHandler =
    StaticFilesHandler
    { _sfhHttpHeaders = Nothing
    , _sfhPath = Nothing
    , _sfhRequireMatchingFile = Nothing
    , _sfhExpiration = Nothing
    , _sfhMimeType = Nothing
    , _sfhApplicationReadable = Nothing
    , _sfhUploadPathRegex = Nothing
    }

-- | HTTP headers to use for all responses from these URLs.
sfhHttpHeaders :: Lens' StaticFilesHandler (Maybe StaticFilesHandlerHttpHeaders)
sfhHttpHeaders
  = lens _sfhHttpHeaders
      (\ s a -> s{_sfhHttpHeaders = a})

-- | The path to the static files matched by the URL pattern, from the
-- application root directory. The path can refer to text matched in
-- groupings in the URL pattern.
sfhPath :: Lens' StaticFilesHandler (Maybe Text)
sfhPath = lens _sfhPath (\ s a -> s{_sfhPath = a})

-- | If true, this [UrlMap][google.appengine.v1beta4.UrlMap] entry does not
-- match the request unless the file referenced by the handler also exists.
-- If no such file exists, processing will continue with the next
-- [UrlMap][google.appengine.v1beta4.UrlMap] that matches the requested
-- URL.
sfhRequireMatchingFile :: Lens' StaticFilesHandler (Maybe Bool)
sfhRequireMatchingFile
  = lens _sfhRequireMatchingFile
      (\ s a -> s{_sfhRequireMatchingFile = a})

-- | The length of time a static file served by this handler ought to be
-- cached by web proxies and browsers.
sfhExpiration :: Lens' StaticFilesHandler (Maybe Text)
sfhExpiration
  = lens _sfhExpiration
      (\ s a -> s{_sfhExpiration = a})

-- | If specified, all files served by this handler will be served using the
-- specified MIME type. If not specified, the MIME type for a file will be
-- derived from the file\'s filename extension.
sfhMimeType :: Lens' StaticFilesHandler (Maybe Text)
sfhMimeType
  = lens _sfhMimeType (\ s a -> s{_sfhMimeType = a})

-- | By default, files declared in static file handlers are uploaded as
-- static data and are only served to end users, they cannot be read by an
-- application. If this field is set to true, the files are also uploaded
-- as code data so your application can read them. Both uploads are charged
-- against your code and static data storage resource quotas.
sfhApplicationReadable :: Lens' StaticFilesHandler (Maybe Bool)
sfhApplicationReadable
  = lens _sfhApplicationReadable
      (\ s a -> s{_sfhApplicationReadable = a})

-- | A regular expression that matches the file paths for all files that will
-- be referenced by this handler.
sfhUploadPathRegex :: Lens' StaticFilesHandler (Maybe Text)
sfhUploadPathRegex
  = lens _sfhUploadPathRegex
      (\ s a -> s{_sfhUploadPathRegex = a})

-- | HTTP headers to use for all responses from these URLs.
--
-- /See:/ 'staticFilesHandlerHttpHeaders' smart constructor.
data StaticFilesHandlerHttpHeaders =
    StaticFilesHandlerHttpHeaders
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'StaticFilesHandlerHttpHeaders' with the minimum fields required to make a request.
--
staticFilesHandlerHttpHeaders
    :: StaticFilesHandlerHttpHeaders
staticFilesHandlerHttpHeaders = StaticFilesHandlerHttpHeaders

-- | The \`Status\` type defines a logical error model that is suitable for
-- different programming environments, including REST APIs and RPC APIs. It
-- is used by [gRPC](https:\/\/github.com\/grpc). The error model is
-- designed to be: - Simple to use and understand for most users - Flexible
-- enough to meet unexpected needs # Overview The \`Status\` message
-- contains three pieces of data: error code, error message, and error
-- details. The error code should be an enum value of
-- [google.rpc.Code][google.rpc.Code], but it may accept additional error
-- codes if needed. The error message should be a developer-facing English
-- message that helps developers *understand* and *resolve* the error. If a
-- localized user-facing error message is needed, put the localized message
-- in the error details or localize it in the client. The optional error
-- details may contain arbitrary information about the error. There is a
-- predefined set of error detail types in the package \`google.rpc\` which
-- can be used for common error conditions. # Language mapping The
-- \`Status\` message is the logical representation of the error model, but
-- it is not necessarily the actual wire format. When the \`Status\`
-- message is exposed in different client libraries and different wire
-- protocols, it can be mapped differently. For example, it will likely be
-- mapped to some exceptions in Java, but more likely mapped to some error
-- codes in C. # Other uses The error model and the \`Status\` message can
-- be used in a variety of environments, either with or without APIs, to
-- provide a consistent developer experience across different environments.
-- Example uses of this error model include: - Partial errors. If a service
-- needs to return partial errors to the client, it may embed the
-- \`Status\` in the normal response to indicate the partial errors. -
-- Workflow errors. A typical workflow has multiple steps. Each step may
-- have a \`Status\` message for error reporting purpose. - Batch
-- operations. If a client uses batch request and batch response, the
-- \`Status\` message should be used directly inside batch response, one
-- for each error sub-response. - Asynchronous operations. If an API call
-- embeds asynchronous operation results in its response, the status of
-- those operations should be represented directly using the \`Status\`
-- message. - Logging. If some API errors are stored in logs, the message
-- \`Status\` could be used directly after any stripping needed for
-- security\/privacy reasons.
--
-- /See:/ 'status' smart constructor.
data Status = Status
    { _sDetails :: !(Maybe [StatusItemDetails])
    , _sCode    :: !(Maybe Int32)
    , _sMessage :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
status =
    Status
    { _sDetails = Nothing
    , _sCode = Nothing
    , _sMessage = Nothing
    }

-- | A list of messages that carry the error details. There will be a common
-- set of message types for APIs to use.
sDetails :: Lens' Status [StatusItemDetails]
sDetails
  = lens _sDetails (\ s a -> s{_sDetails = a}) .
      _Default
      . _Coerce

-- | The status code, which should be an enum value of
-- [google.rpc.Code][google.rpc.Code].
sCode :: Lens' Status (Maybe Int32)
sCode = lens _sCode (\ s a -> s{_sCode = a})

-- | A developer-facing error message, which should be in English. Any
-- user-facing error message should be localized and sent in the
-- [google.rpc.Status.details][google.rpc.Status.details] field, or
-- localized by the client.
sMessage :: Lens' Status (Maybe Text)
sMessage = lens _sMessage (\ s a -> s{_sMessage = a})

--
-- /See:/ 'statusItemDetails' smart constructor.
data StatusItemDetails =
    StatusItemDetails
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'StatusItemDetails' with the minimum fields required to make a request.
--
statusItemDetails
    :: StatusItemDetails
statusItemDetails = StatusItemDetails

-- | Configuration for traffic splitting for versions within a single module.
-- Traffic splitting allows traffic directed to the module to be assigned
-- to one of several versions in a fractional way, enabling experiments and
-- canarying new builds, for example.
--
-- /See:/ 'trafficSplit' smart constructor.
data TrafficSplit = TrafficSplit
    { _tsShardBy     :: !(Maybe Text)
    , _tsAllocations :: !(Maybe TrafficSplitAllocations)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TrafficSplit' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsShardBy'
--
-- * 'tsAllocations'
trafficSplit
    :: TrafficSplit
trafficSplit =
    TrafficSplit
    { _tsShardBy = Nothing
    , _tsAllocations = Nothing
    }

-- | Which mechanism should be used as a selector when choosing a version to
-- send a request to. The traffic selection algorithm will be stable for
-- either type until allocations are changed.
tsShardBy :: Lens' TrafficSplit (Maybe Text)
tsShardBy
  = lens _tsShardBy (\ s a -> s{_tsShardBy = a})

-- | Mapping from module version IDs within the module to fractional (0.000,
-- 1] allocations of traffic for that version. Each version may only be
-- specified once, but some versions in the module may not have any traffic
-- allocation. Modules that have traffic allocated in this field may not be
-- deleted until the module is deleted, or their traffic allocation is
-- removed. Allocations must sum to 1. Supports precision up to two decimal
-- places for IP-based splits and up to three decimal places for
-- cookie-based splits.
tsAllocations :: Lens' TrafficSplit (Maybe TrafficSplitAllocations)
tsAllocations
  = lens _tsAllocations
      (\ s a -> s{_tsAllocations = a})

-- | Mapping from module version IDs within the module to fractional (0.000,
-- 1] allocations of traffic for that version. Each version may only be
-- specified once, but some versions in the module may not have any traffic
-- allocation. Modules that have traffic allocated in this field may not be
-- deleted until the module is deleted, or their traffic allocation is
-- removed. Allocations must sum to 1. Supports precision up to two decimal
-- places for IP-based splits and up to three decimal places for
-- cookie-based splits.
--
-- /See:/ 'trafficSplitAllocations' smart constructor.
data TrafficSplitAllocations =
    TrafficSplitAllocations
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TrafficSplitAllocations' with the minimum fields required to make a request.
--
trafficSplitAllocations
    :: TrafficSplitAllocations
trafficSplitAllocations = TrafficSplitAllocations

-- | Rules to match an HTTP request and dispatch that request to a module.
--
-- /See:/ 'urlDispatchRule' smart constructor.
data UrlDispatchRule = UrlDispatchRule
    { _udrPath   :: !(Maybe Text)
    , _udrDomain :: !(Maybe Text)
    , _udrModule :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UrlDispatchRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udrPath'
--
-- * 'udrDomain'
--
-- * 'udrModule'
urlDispatchRule
    :: UrlDispatchRule
urlDispatchRule =
    UrlDispatchRule
    { _udrPath = Nothing
    , _udrDomain = Nothing
    , _udrModule = Nothing
    }

-- | The pathname within the host. This must start with a \'\/\'. A single
-- \'*\' (glob) can be included at the end of the path. The sum of the
-- lengths of the domain and path may not exceed 100 characters.
udrPath :: Lens' UrlDispatchRule (Maybe Text)
udrPath = lens _udrPath (\ s a -> s{_udrPath = a})

-- | The domain name to match on. Supports \'*\' (glob) wildcarding on the
-- left-hand side of a \'.\'. If empty, all domains will be matched (the
-- same as \'*\').
udrDomain :: Lens' UrlDispatchRule (Maybe Text)
udrDomain
  = lens _udrDomain (\ s a -> s{_udrDomain = a})

-- | The resource id of a Module in this application that should service the
-- matched request. The Module must already exist. Example: \"default\".
udrModule :: Lens' UrlDispatchRule (Maybe Text)
udrModule
  = lens _udrModule (\ s a -> s{_udrModule = a})

-- | A URL pattern and description of how it should be handled. App Engine
-- can handle URLs by executing application code, or by serving static
-- files uploaded with the code, such as images, CSS or JavaScript.
--
-- /See:/ 'urlMap' smart constructor.
data UrlMap = UrlMap
    { _umScript                   :: !(Maybe (Maybe ScriptHandler))
    , _umSecurityLevel            :: !(Maybe Text)
    , _umApiEndpoint              :: !(Maybe (Maybe ApiEndpointHandler))
    , _umUrlRegex                 :: !(Maybe Text)
    , _umRedirectHttpResponseCode :: !(Maybe Text)
    , _umAuthFailAction           :: !(Maybe Text)
    , _umStaticFiles              :: !(Maybe (Maybe StaticFilesHandler))
    , _umLogin                    :: !(Maybe Text)
    , _umStaticDirectory          :: !(Maybe (Maybe StaticDirectoryHandler))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UrlMap' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umScript'
--
-- * 'umSecurityLevel'
--
-- * 'umApiEndpoint'
--
-- * 'umUrlRegex'
--
-- * 'umRedirectHttpResponseCode'
--
-- * 'umAuthFailAction'
--
-- * 'umStaticFiles'
--
-- * 'umLogin'
--
-- * 'umStaticDirectory'
urlMap
    :: UrlMap
urlMap =
    UrlMap
    { _umScript = Nothing
    , _umSecurityLevel = Nothing
    , _umApiEndpoint = Nothing
    , _umUrlRegex = Nothing
    , _umRedirectHttpResponseCode = Nothing
    , _umAuthFailAction = Nothing
    , _umStaticFiles = Nothing
    , _umLogin = Nothing
    , _umStaticDirectory = Nothing
    }

-- | Executes a script to handle the request that matches the URL pattern.
umScript :: Lens' UrlMap (Maybe (Maybe ScriptHandler))
umScript = lens _umScript (\ s a -> s{_umScript = a})

-- | Configures whether security (HTTPS) should be enforced for this URL.
umSecurityLevel :: Lens' UrlMap (Maybe Text)
umSecurityLevel
  = lens _umSecurityLevel
      (\ s a -> s{_umSecurityLevel = a})

-- | Use API Endpoints to handle requests.
umApiEndpoint :: Lens' UrlMap (Maybe (Maybe ApiEndpointHandler))
umApiEndpoint
  = lens _umApiEndpoint
      (\ s a -> s{_umApiEndpoint = a})

-- | A URL prefix. This value uses regular expression syntax (and so regexp
-- special characters must be escaped), but it should not contain
-- groupings. All URLs that begin with this prefix are handled by this
-- handler, using the portion of the URL after the prefix as part of the
-- file path. This is always required.
umUrlRegex :: Lens' UrlMap (Maybe Text)
umUrlRegex
  = lens _umUrlRegex (\ s a -> s{_umUrlRegex = a})

-- | \`30x\` code to use when performing redirects for the \`secure\` field.
-- A \`302\` is used by default.
umRedirectHttpResponseCode :: Lens' UrlMap (Maybe Text)
umRedirectHttpResponseCode
  = lens _umRedirectHttpResponseCode
      (\ s a -> s{_umRedirectHttpResponseCode = a})

-- | For users not logged in, how to handle access to resources with required
-- login. Defaults to \"redirect\".
umAuthFailAction :: Lens' UrlMap (Maybe Text)
umAuthFailAction
  = lens _umAuthFailAction
      (\ s a -> s{_umAuthFailAction = a})

-- | Returns the contents of a file, such as an image, as the response.
umStaticFiles :: Lens' UrlMap (Maybe (Maybe StaticFilesHandler))
umStaticFiles
  = lens _umStaticFiles
      (\ s a -> s{_umStaticFiles = a})

-- | What level of login is required to access this resource.
umLogin :: Lens' UrlMap (Maybe Text)
umLogin = lens _umLogin (\ s a -> s{_umLogin = a})

-- | Serves the entire contents of a directory as static files. This
-- attribute is deprecated. You can mimic the behavior of static
-- directories using static files.
umStaticDirectory :: Lens' UrlMap (Maybe (Maybe StaticDirectoryHandler))
umStaticDirectory
  = lens _umStaticDirectory
      (\ s a -> s{_umStaticDirectory = a})

-- | A Version is a specific set of source code and configuration files
-- deployed to a module.
--
-- /See:/ 'version' smart constructor.
data Version = Version
    { _vCreationTime      :: !(Maybe Text)
    , _vRuntime           :: !(Maybe Text)
    , _vDeployer          :: !(Maybe Text)
    , _vNobuildFilesRegex :: !(Maybe Text)
    , _vInstanceClass     :: !(Maybe Text)
    , _vHealthCheck       :: !(Maybe (Maybe HealthCheck))
    , _vEnv               :: !(Maybe Text)
    , _vDefaultExpiration :: !(Maybe Text)
    , _vAutomaticScaling  :: !(Maybe (Maybe AutomaticScaling))
    , _vErrorHandlers     :: !(Maybe [Maybe ErrorHandler])
    , _vVm                :: !(Maybe Bool)
    , _vHandlers          :: !(Maybe [Maybe UrlMap])
    , _vInboundServices   :: !(Maybe [Text])
    , _vNetwork           :: !(Maybe (Maybe Network))
    , _vResources         :: !(Maybe (Maybe Resources))
    , _vName              :: !(Maybe Text)
    , _vThreadsafe        :: !(Maybe Bool)
    , _vBetaSettings      :: !(Maybe VersionBetaSettings)
    , _vBasicScaling      :: !(Maybe (Maybe BasicScaling))
    , _vManualScaling     :: !(Maybe (Maybe ManualScaling))
    , _vApiConfig         :: !(Maybe (Maybe ApiConfigHandler))
    , _vId                :: !(Maybe Text)
    , _vEnvVariables      :: !(Maybe VersionEnvVariables)
    , _vServingStatus     :: !(Maybe Text)
    , _vLibraries         :: !(Maybe [Maybe Library])
    , _vDeployment        :: !(Maybe (Maybe Deployment))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Version' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vCreationTime'
--
-- * 'vRuntime'
--
-- * 'vDeployer'
--
-- * 'vNobuildFilesRegex'
--
-- * 'vInstanceClass'
--
-- * 'vHealthCheck'
--
-- * 'vEnv'
--
-- * 'vDefaultExpiration'
--
-- * 'vAutomaticScaling'
--
-- * 'vErrorHandlers'
--
-- * 'vVm'
--
-- * 'vHandlers'
--
-- * 'vInboundServices'
--
-- * 'vNetwork'
--
-- * 'vResources'
--
-- * 'vName'
--
-- * 'vThreadsafe'
--
-- * 'vBetaSettings'
--
-- * 'vBasicScaling'
--
-- * 'vManualScaling'
--
-- * 'vApiConfig'
--
-- * 'vId'
--
-- * 'vEnvVariables'
--
-- * 'vServingStatus'
--
-- * 'vLibraries'
--
-- * 'vDeployment'
version
    :: Version
version =
    Version
    { _vCreationTime = Nothing
    , _vRuntime = Nothing
    , _vDeployer = Nothing
    , _vNobuildFilesRegex = Nothing
    , _vInstanceClass = Nothing
    , _vHealthCheck = Nothing
    , _vEnv = Nothing
    , _vDefaultExpiration = Nothing
    , _vAutomaticScaling = Nothing
    , _vErrorHandlers = Nothing
    , _vVm = Nothing
    , _vHandlers = Nothing
    , _vInboundServices = Nothing
    , _vNetwork = Nothing
    , _vResources = Nothing
    , _vName = Nothing
    , _vThreadsafe = Nothing
    , _vBetaSettings = Nothing
    , _vBasicScaling = Nothing
    , _vManualScaling = Nothing
    , _vApiConfig = Nothing
    , _vId = Nothing
    , _vEnvVariables = Nothing
    , _vServingStatus = Nothing
    , _vLibraries = Nothing
    , _vDeployment = Nothing
    }

-- | Creation time of this version. This will be between the start and end
-- times of the operation that creates this version. \'OutputOnly
vCreationTime :: Lens' Version (Maybe Text)
vCreationTime
  = lens _vCreationTime
      (\ s a -> s{_vCreationTime = a})

-- | The desired runtime. Values can include python27, java7, go, etc.
vRuntime :: Lens' Version (Maybe Text)
vRuntime = lens _vRuntime (\ s a -> s{_vRuntime = a})

-- | The email address of the user who created this version. \'OutputOnly
vDeployer :: Lens' Version (Maybe Text)
vDeployer
  = lens _vDeployer (\ s a -> s{_vDeployer = a})

-- | Go only. Files that match this pattern will not be built into the app.
-- May only be set on create requests.
vNobuildFilesRegex :: Lens' Version (Maybe Text)
vNobuildFilesRegex
  = lens _vNobuildFilesRegex
      (\ s a -> s{_vNobuildFilesRegex = a})

-- | The frontend instance class to use to run this app. Valid values are
-- \`[F1, F2, F4, F4_1G]\`. Default: \"F1\"
vInstanceClass :: Lens' Version (Maybe Text)
vInstanceClass
  = lens _vInstanceClass
      (\ s a -> s{_vInstanceClass = a})

-- | Configure health checking for the VM instances. Unhealthy VM instances
-- will be stopped and replaced with new instances. Only returned in
-- \`GET\` requests if \`view=FULL\` is set. May only be set on create
-- requests; once created, is immutable.
vHealthCheck :: Lens' Version (Maybe (Maybe HealthCheck))
vHealthCheck
  = lens _vHealthCheck (\ s a -> s{_vHealthCheck = a})

-- | The App Engine execution environment to use for this version. Default:
-- \"1\"
vEnv :: Lens' Version (Maybe Text)
vEnv = lens _vEnv (\ s a -> s{_vEnv = a})

-- | The length of time a static file served by a static file handler ought
-- to be cached by web proxies and browsers, if the handler does not
-- specify its own expiration. Only returned in \`GET\` requests if
-- \`view=FULL\` is set. May only be set on create requests; once created,
-- is immutable.
vDefaultExpiration :: Lens' Version (Maybe Text)
vDefaultExpiration
  = lens _vDefaultExpiration
      (\ s a -> s{_vDefaultExpiration = a})

-- | Automatic scaling is the scaling policy that App Engine has used since
-- its inception. It is based on request rate, response latencies, and
-- other application metrics.
vAutomaticScaling :: Lens' Version (Maybe (Maybe AutomaticScaling))
vAutomaticScaling
  = lens _vAutomaticScaling
      (\ s a -> s{_vAutomaticScaling = a})

-- | Custom static error pages instead of these generic error pages, (limit
-- 10 KB\/page) Only returned in \`GET\` requests if \`view=FULL\` is set.
-- May only be set on create requests; once created, is immutable.
vErrorHandlers :: Lens' Version [Maybe ErrorHandler]
vErrorHandlers
  = lens _vErrorHandlers
      (\ s a -> s{_vErrorHandlers = a})
      . _Default
      . _Coerce

-- | Whether to deploy this app in a VM container (deprecated, use
-- \"env\":\"2\").
vVm :: Lens' Version (Maybe Bool)
vVm = lens _vVm (\ s a -> s{_vVm = a})

-- | An ordered list of URL Matching patterns that should be applied to
-- incoming requests. The first matching URL consumes the request, and
-- subsequent handlers are not attempted. Only returned in \`GET\` requests
-- if \`view=FULL\` is set. May only be set on create requests; once
-- created, is immutable.
vHandlers :: Lens' Version [Maybe UrlMap]
vHandlers
  = lens _vHandlers (\ s a -> s{_vHandlers = a}) .
      _Default
      . _Coerce

-- | Before an application can receive email or XMPP messages, the
-- application must be configured to enable the service.
vInboundServices :: Lens' Version [Text]
vInboundServices
  = lens _vInboundServices
      (\ s a -> s{_vInboundServices = a})
      . _Default
      . _Coerce

-- | Used to specify extra network settings (for VM runtimes only).
vNetwork :: Lens' Version (Maybe (Maybe Network))
vNetwork = lens _vNetwork (\ s a -> s{_vNetwork = a})

-- | Used to specify how many machine resources an app version needs (for VM
-- runtimes only).
vResources :: Lens' Version (Maybe (Maybe Resources))
vResources
  = lens _vResources (\ s a -> s{_vResources = a})

-- | The full path to the Version resource in the API. Example:
-- \"apps\/myapp\/modules\/default\/versions\/v1\". \'OutputOnly
vName :: Lens' Version (Maybe Text)
vName = lens _vName (\ s a -> s{_vName = a})

-- | If true, multiple requests can be dispatched to the app at once.
vThreadsafe :: Lens' Version (Maybe Bool)
vThreadsafe
  = lens _vThreadsafe (\ s a -> s{_vThreadsafe = a})

-- | Beta settings supplied to the application via metadata.
vBetaSettings :: Lens' Version (Maybe VersionBetaSettings)
vBetaSettings
  = lens _vBetaSettings
      (\ s a -> s{_vBetaSettings = a})

-- | A module with basic scaling will create an instance when the application
-- receives a request. The instance will be turned down when the app
-- becomes idle. Basic scaling is ideal for work that is intermittent or
-- driven by user activity.
vBasicScaling :: Lens' Version (Maybe (Maybe BasicScaling))
vBasicScaling
  = lens _vBasicScaling
      (\ s a -> s{_vBasicScaling = a})

-- | A module with manual scaling runs continuously, allowing you to perform
-- complex initialization and rely on the state of its memory over time.
vManualScaling :: Lens' Version (Maybe (Maybe ManualScaling))
vManualScaling
  = lens _vManualScaling
      (\ s a -> s{_vManualScaling = a})

-- | Serving configuration for Google Cloud Endpoints. Only returned in
-- \`GET\` requests if \`view=FULL\` is set. May only be set on create
-- requests; once created, is immutable.
vApiConfig :: Lens' Version (Maybe (Maybe ApiConfigHandler))
vApiConfig
  = lens _vApiConfig (\ s a -> s{_vApiConfig = a})

-- | The relative name\/path of the Version within the module. Example:
-- \"v1\". Version specifiers can contain lowercase letters, digits, and
-- hyphens. It cannot begin with the prefix \`ah-\` and the names
-- \`default\` and \`latest\` are reserved and cannot be used.
vId :: Lens' Version (Maybe Text)
vId = lens _vId (\ s a -> s{_vId = a})

-- | Environment variables made available to the application. Only returned
-- in \`GET\` requests if \`view=FULL\` is set. May only be set on create
-- requests; once created, is immutable.
vEnvVariables :: Lens' Version (Maybe VersionEnvVariables)
vEnvVariables
  = lens _vEnvVariables
      (\ s a -> s{_vEnvVariables = a})

-- | The current serving status of this version. Only \`SERVING\` versions
-- will have instances created or billed for. If this field is unset when a
-- version is created, \`SERVING\` status will be assumed. It is an error
-- to explicitly set this field to \`SERVING_STATUS_UNSPECIFIED\`.
vServingStatus :: Lens' Version (Maybe Text)
vServingStatus
  = lens _vServingStatus
      (\ s a -> s{_vServingStatus = a})

-- | Configuration for Python runtime third-party libraries required by the
-- application. Only returned in \`GET\` requests if \`view=FULL\` is set.
-- May only be set on create requests; once created, is immutable.
vLibraries :: Lens' Version [Maybe Library]
vLibraries
  = lens _vLibraries (\ s a -> s{_vLibraries = a}) .
      _Default
      . _Coerce

-- | Code and application artifacts that make up this version. Only returned
-- in \`GET\` requests if \`view=FULL\` is set. May only be set on create
-- requests; once created, is immutable.
vDeployment :: Lens' Version (Maybe (Maybe Deployment))
vDeployment
  = lens _vDeployment (\ s a -> s{_vDeployment = a})

-- | Beta settings supplied to the application via metadata.
--
-- /See:/ 'versionBetaSettings' smart constructor.
data VersionBetaSettings =
    VersionBetaSettings
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VersionBetaSettings' with the minimum fields required to make a request.
--
versionBetaSettings
    :: VersionBetaSettings
versionBetaSettings = VersionBetaSettings

-- | Environment variables made available to the application. Only returned
-- in \`GET\` requests if \`view=FULL\` is set. May only be set on create
-- requests; once created, is immutable.
--
-- /See:/ 'versionEnvVariables' smart constructor.
data VersionEnvVariables =
    VersionEnvVariables
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VersionEnvVariables' with the minimum fields required to make a request.
--
versionEnvVariables
    :: VersionEnvVariables
versionEnvVariables = VersionEnvVariables
