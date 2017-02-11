{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AppEngine.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AppEngine.Types.Product where

import           Network.Google.AppEngine.Types.Sum
import           Network.Google.Prelude

-- | Metadata for the given google.longrunning.Operation.
--
-- /See:/ 'operationMetadataExperimental' smart constructor.
data OperationMetadataExperimental = OperationMetadataExperimental'
    { _omeInsertTime :: !(Maybe Text)
    , _omeUser       :: !(Maybe Text)
    , _omeMethod     :: !(Maybe Text)
    , _omeEndTime    :: !(Maybe Text)
    , _omeTarget     :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationMetadataExperimental' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'omeInsertTime'
--
-- * 'omeUser'
--
-- * 'omeMethod'
--
-- * 'omeEndTime'
--
-- * 'omeTarget'
operationMetadataExperimental
    :: OperationMetadataExperimental
operationMetadataExperimental =
    OperationMetadataExperimental'
    { _omeInsertTime = Nothing
    , _omeUser = Nothing
    , _omeMethod = Nothing
    , _omeEndTime = Nothing
    , _omeTarget = Nothing
    }

-- | Time that this operation was created.\'OutputOnly
omeInsertTime :: Lens' OperationMetadataExperimental (Maybe Text)
omeInsertTime
  = lens _omeInsertTime
      (\ s a -> s{_omeInsertTime = a})

-- | User who requested this operation.\'OutputOnly
omeUser :: Lens' OperationMetadataExperimental (Maybe Text)
omeUser = lens _omeUser (\ s a -> s{_omeUser = a})

-- | API method that initiated this operation. Example:
-- google.appengine.experimental.CustomDomains.CreateCustomDomain.\'OutputOnly
omeMethod :: Lens' OperationMetadataExperimental (Maybe Text)
omeMethod
  = lens _omeMethod (\ s a -> s{_omeMethod = a})

-- | Time that this operation completed.\'OutputOnly
omeEndTime :: Lens' OperationMetadataExperimental (Maybe Text)
omeEndTime
  = lens _omeEndTime (\ s a -> s{_omeEndTime = a})

-- | Name of the resource that this operation is acting on. Example:
-- apps\/myapp\/customDomains\/example.com.\'OutputOnly
omeTarget :: Lens' OperationMetadataExperimental (Maybe Text)
omeTarget
  = lens _omeTarget (\ s a -> s{_omeTarget = a})

instance FromJSON OperationMetadataExperimental where
        parseJSON
          = withObject "OperationMetadataExperimental"
              (\ o ->
                 OperationMetadataExperimental' <$>
                   (o .:? "insertTime") <*> (o .:? "user") <*>
                     (o .:? "method")
                     <*> (o .:? "endTime")
                     <*> (o .:? "target"))

instance ToJSON OperationMetadataExperimental where
        toJSON OperationMetadataExperimental'{..}
          = object
              (catMaybes
                 [("insertTime" .=) <$> _omeInsertTime,
                  ("user" .=) <$> _omeUser,
                  ("method" .=) <$> _omeMethod,
                  ("endTime" .=) <$> _omeEndTime,
                  ("target" .=) <$> _omeTarget])

-- | Target scaling by network usage. Only applicable for VM runtimes.
--
-- /See:/ 'networkUtilization' smart constructor.
data NetworkUtilization = NetworkUtilization'
    { _nuTargetReceivedBytesPerSecond   :: !(Maybe (Textual Int32))
    , _nuTargetSentPacketsPerSecond     :: !(Maybe (Textual Int32))
    , _nuTargetReceivedPacketsPerSecond :: !(Maybe (Textual Int32))
    , _nuTargetSentBytesPerSecond       :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'NetworkUtilization' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nuTargetReceivedBytesPerSecond'
--
-- * 'nuTargetSentPacketsPerSecond'
--
-- * 'nuTargetReceivedPacketsPerSecond'
--
-- * 'nuTargetSentBytesPerSecond'
networkUtilization
    :: NetworkUtilization
networkUtilization =
    NetworkUtilization'
    { _nuTargetReceivedBytesPerSecond = Nothing
    , _nuTargetSentPacketsPerSecond = Nothing
    , _nuTargetReceivedPacketsPerSecond = Nothing
    , _nuTargetSentBytesPerSecond = Nothing
    }

-- | Target bytes received per second.
nuTargetReceivedBytesPerSecond :: Lens' NetworkUtilization (Maybe Int32)
nuTargetReceivedBytesPerSecond
  = lens _nuTargetReceivedBytesPerSecond
      (\ s a -> s{_nuTargetReceivedBytesPerSecond = a})
      . mapping _Coerce

-- | Target packets sent per second.
nuTargetSentPacketsPerSecond :: Lens' NetworkUtilization (Maybe Int32)
nuTargetSentPacketsPerSecond
  = lens _nuTargetSentPacketsPerSecond
      (\ s a -> s{_nuTargetSentPacketsPerSecond = a})
      . mapping _Coerce

-- | Target packets received per second.
nuTargetReceivedPacketsPerSecond :: Lens' NetworkUtilization (Maybe Int32)
nuTargetReceivedPacketsPerSecond
  = lens _nuTargetReceivedPacketsPerSecond
      (\ s a -> s{_nuTargetReceivedPacketsPerSecond = a})
      . mapping _Coerce

-- | Target bytes sent per second.
nuTargetSentBytesPerSecond :: Lens' NetworkUtilization (Maybe Int32)
nuTargetSentBytesPerSecond
  = lens _nuTargetSentBytesPerSecond
      (\ s a -> s{_nuTargetSentBytesPerSecond = a})
      . mapping _Coerce

instance FromJSON NetworkUtilization where
        parseJSON
          = withObject "NetworkUtilization"
              (\ o ->
                 NetworkUtilization' <$>
                   (o .:? "targetReceivedBytesPerSecond") <*>
                     (o .:? "targetSentPacketsPerSecond")
                     <*> (o .:? "targetReceivedPacketsPerSecond")
                     <*> (o .:? "targetSentBytesPerSecond"))

instance ToJSON NetworkUtilization where
        toJSON NetworkUtilization'{..}
          = object
              (catMaybes
                 [("targetReceivedBytesPerSecond" .=) <$>
                    _nuTargetReceivedBytesPerSecond,
                  ("targetSentPacketsPerSecond" .=) <$>
                    _nuTargetSentPacketsPerSecond,
                  ("targetReceivedPacketsPerSecond" .=) <$>
                    _nuTargetReceivedPacketsPerSecond,
                  ("targetSentBytesPerSecond" .=) <$>
                    _nuTargetSentBytesPerSecond])

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
-- package google.rpc which can be used for common error
-- conditions.Language mappingThe Status message is the logical
-- representation of the error model, but it is not necessarily the actual
-- wire format. When the Status message is exposed in different client
-- libraries and different wire protocols, it can be mapped differently.
-- For example, it will likely be mapped to some exceptions in Java, but
-- more likely mapped to some error codes in C.Other usesThe error model
-- and the Status message can be used in a variety of environments, either
-- with or without APIs, to provide a consistent developer experience
-- across different environments.Example uses of this error model include:
-- Partial errors. If a service needs to return partial errors to the
-- client, it may embed the Status in the normal response to indicate the
-- partial errors. Workflow errors. A typical workflow has multiple steps.
-- Each step may have a Status message for error reporting purpose. Batch
-- operations. If a client uses batch request and batch response, the
-- Status message should be used directly inside batch response, one for
-- each error sub-response. Asynchronous operations. If an API call embeds
-- asynchronous operation results in its response, the status of those
-- operations should be represented directly using the Status message.
-- Logging. If some API errors are stored in logs, the message Status could
-- be used directly after any stripping needed for security\/privacy
-- reasons.
--
-- /See:/ 'status' smart constructor.
data Status = Status'
    { _sDetails :: !(Maybe [StatusDetailsItem])
    , _sCode    :: !(Maybe (Textual Int32))
    , _sMessage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    Status'
    { _sDetails = Nothing
    , _sCode = Nothing
    , _sMessage = Nothing
    }

-- | A list of messages that carry the error details. There will be a common
-- set of message types for APIs to use.
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

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
--
-- /See:/ 'operationSchema' smart constructor.
newtype OperationSchema = OperationSchema'
    { _osAddtional :: HashMap Text JSONValue
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationSchema' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osAddtional'
operationSchema
    :: HashMap Text JSONValue -- ^ 'osAddtional'
    -> OperationSchema
operationSchema pOsAddtional_ =
    OperationSchema'
    { _osAddtional = _Coerce # pOsAddtional_
    }

-- | Properties of the object. Contains field \'type with type URL.
osAddtional :: Lens' OperationSchema (HashMap Text JSONValue)
osAddtional
  = lens _osAddtional (\ s a -> s{_osAddtional = a}) .
      _Coerce

instance FromJSON OperationSchema where
        parseJSON
          = withObject "OperationSchema"
              (\ o -> OperationSchema' <$> (parseJSONObject o))

instance ToJSON OperationSchema where
        toJSON = toJSON . _osAddtional

-- | Service-specific metadata. For example the available capacity at the
-- given location.
--
-- /See:/ 'locationSchema' smart constructor.
newtype LocationSchema = LocationSchema'
    { _lsAddtional :: HashMap Text JSONValue
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LocationSchema' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsAddtional'
locationSchema
    :: HashMap Text JSONValue -- ^ 'lsAddtional'
    -> LocationSchema
locationSchema pLsAddtional_ =
    LocationSchema'
    { _lsAddtional = _Coerce # pLsAddtional_
    }

-- | Properties of the object. Contains field \'type with type URL.
lsAddtional :: Lens' LocationSchema (HashMap Text JSONValue)
lsAddtional
  = lens _lsAddtional (\ s a -> s{_lsAddtional = a}) .
      _Coerce

instance FromJSON LocationSchema where
        parseJSON
          = withObject "LocationSchema"
              (\ o -> LocationSchema' <$> (parseJSONObject o))

instance ToJSON LocationSchema where
        toJSON = toJSON . _lsAddtional

-- | Traffic routing configuration for versions within a single service.
-- Traffic splits define how traffic directed to the service is assigned to
-- versions.
--
-- /See:/ 'trafficSplit' smart constructor.
data TrafficSplit = TrafficSplit'
    { _tsShardBy     :: !(Maybe Text)
    , _tsAllocations :: !(Maybe TrafficSplitAllocations)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    TrafficSplit'
    { _tsShardBy = Nothing
    , _tsAllocations = Nothing
    }

-- | Mechanism used to determine which version a request is sent to. The
-- traffic selection algorithm will be stable for either type until
-- allocations are changed.
tsShardBy :: Lens' TrafficSplit (Maybe Text)
tsShardBy
  = lens _tsShardBy (\ s a -> s{_tsShardBy = a})

-- | Mapping from version IDs within the service to fractional (0.000, 1]
-- allocations of traffic for that version. Each version can be specified
-- only once, but some versions in the service may not have any traffic
-- allocation. Services that have traffic allocated cannot be deleted until
-- either the service is deleted or their traffic allocation is removed.
-- Allocations must sum to 1. Up to two decimal place precision is
-- supported for IP-based splits and up to three decimal places is
-- supported for cookie-based splits.
tsAllocations :: Lens' TrafficSplit (Maybe TrafficSplitAllocations)
tsAllocations
  = lens _tsAllocations
      (\ s a -> s{_tsAllocations = a})

instance FromJSON TrafficSplit where
        parseJSON
          = withObject "TrafficSplit"
              (\ o ->
                 TrafficSplit' <$>
                   (o .:? "shardBy") <*> (o .:? "allocations"))

instance ToJSON TrafficSplit where
        toJSON TrafficSplit'{..}
          = object
              (catMaybes
                 [("shardBy" .=) <$> _tsShardBy,
                  ("allocations" .=) <$> _tsAllocations])

-- | Executes a script to handle the request that matches the URL pattern.
--
-- /See:/ 'scriptHandler' smart constructor.
newtype ScriptHandler = ScriptHandler'
    { _shScriptPath :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ScriptHandler' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'shScriptPath'
scriptHandler
    :: ScriptHandler
scriptHandler =
    ScriptHandler'
    { _shScriptPath = Nothing
    }

-- | Path to the script from the application root directory.
shScriptPath :: Lens' ScriptHandler (Maybe Text)
shScriptPath
  = lens _shScriptPath (\ s a -> s{_shScriptPath = a})

instance FromJSON ScriptHandler where
        parseJSON
          = withObject "ScriptHandler"
              (\ o -> ScriptHandler' <$> (o .:? "scriptPath"))

instance ToJSON ScriptHandler where
        toJSON ScriptHandler'{..}
          = object
              (catMaybes [("scriptPath" .=) <$> _shScriptPath])

-- | Response message for Services.ListServices.
--
-- /See:/ 'listServicesResponse' smart constructor.
data ListServicesResponse = ListServicesResponse'
    { _lsrNextPageToken :: !(Maybe Text)
    , _lsrServices      :: !(Maybe [Service])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListServicesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsrNextPageToken'
--
-- * 'lsrServices'
listServicesResponse
    :: ListServicesResponse
listServicesResponse =
    ListServicesResponse'
    { _lsrNextPageToken = Nothing
    , _lsrServices = Nothing
    }

-- | Continuation token for fetching the next page of results.
lsrNextPageToken :: Lens' ListServicesResponse (Maybe Text)
lsrNextPageToken
  = lens _lsrNextPageToken
      (\ s a -> s{_lsrNextPageToken = a})

-- | The services belonging to the requested application.
lsrServices :: Lens' ListServicesResponse [Service]
lsrServices
  = lens _lsrServices (\ s a -> s{_lsrServices = a}) .
      _Default
      . _Coerce

instance FromJSON ListServicesResponse where
        parseJSON
          = withObject "ListServicesResponse"
              (\ o ->
                 ListServicesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "services" .!= mempty))

instance ToJSON ListServicesResponse where
        toJSON ListServicesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lsrNextPageToken,
                  ("services" .=) <$> _lsrServices])

-- | URL pattern and description of how the URL should be handled. App Engine
-- can handle URLs by executing application code or by serving static files
-- uploaded with the version, such as images, CSS, or JavaScript.
--
-- /See:/ 'urlMap' smart constructor.
data URLMap = URLMap'
    { _umScript                   :: !(Maybe ScriptHandler)
    , _umSecurityLevel            :: !(Maybe Text)
    , _umAPIEndpoint              :: !(Maybe APIEndpointHandler)
    , _umURLRegex                 :: !(Maybe Text)
    , _umRedirectHTTPResponseCode :: !(Maybe Text)
    , _umAuthFailAction           :: !(Maybe Text)
    , _umStaticFiles              :: !(Maybe StaticFilesHandler)
    , _umLogin                    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLMap' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umScript'
--
-- * 'umSecurityLevel'
--
-- * 'umAPIEndpoint'
--
-- * 'umURLRegex'
--
-- * 'umRedirectHTTPResponseCode'
--
-- * 'umAuthFailAction'
--
-- * 'umStaticFiles'
--
-- * 'umLogin'
urlMap
    :: URLMap
urlMap =
    URLMap'
    { _umScript = Nothing
    , _umSecurityLevel = Nothing
    , _umAPIEndpoint = Nothing
    , _umURLRegex = Nothing
    , _umRedirectHTTPResponseCode = Nothing
    , _umAuthFailAction = Nothing
    , _umStaticFiles = Nothing
    , _umLogin = Nothing
    }

-- | Executes a script to handle the request that matches this URL pattern.
umScript :: Lens' URLMap (Maybe ScriptHandler)
umScript = lens _umScript (\ s a -> s{_umScript = a})

-- | Security (HTTPS) enforcement for this URL.
umSecurityLevel :: Lens' URLMap (Maybe Text)
umSecurityLevel
  = lens _umSecurityLevel
      (\ s a -> s{_umSecurityLevel = a})

-- | Uses API Endpoints to handle requests.
umAPIEndpoint :: Lens' URLMap (Maybe APIEndpointHandler)
umAPIEndpoint
  = lens _umAPIEndpoint
      (\ s a -> s{_umAPIEndpoint = a})

-- | URL prefix. Uses regular expression syntax, which means regexp special
-- characters must be escaped, but should not contain groupings. All URLs
-- that begin with this prefix are handled by this handler, using the
-- portion of the URL after the prefix as part of the file path.
umURLRegex :: Lens' URLMap (Maybe Text)
umURLRegex
  = lens _umURLRegex (\ s a -> s{_umURLRegex = a})

-- | 30x code to use when performing redirects for the secure field. Defaults
-- to 302.
umRedirectHTTPResponseCode :: Lens' URLMap (Maybe Text)
umRedirectHTTPResponseCode
  = lens _umRedirectHTTPResponseCode
      (\ s a -> s{_umRedirectHTTPResponseCode = a})

-- | Action to take when users access resources that require authentication.
-- Defaults to redirect.
umAuthFailAction :: Lens' URLMap (Maybe Text)
umAuthFailAction
  = lens _umAuthFailAction
      (\ s a -> s{_umAuthFailAction = a})

-- | Returns the contents of a file, such as an image, as the response.
umStaticFiles :: Lens' URLMap (Maybe StaticFilesHandler)
umStaticFiles
  = lens _umStaticFiles
      (\ s a -> s{_umStaticFiles = a})

-- | Level of login required to access this resource.
umLogin :: Lens' URLMap (Maybe Text)
umLogin = lens _umLogin (\ s a -> s{_umLogin = a})

instance FromJSON URLMap where
        parseJSON
          = withObject "URLMap"
              (\ o ->
                 URLMap' <$>
                   (o .:? "script") <*> (o .:? "securityLevel") <*>
                     (o .:? "apiEndpoint")
                     <*> (o .:? "urlRegex")
                     <*> (o .:? "redirectHttpResponseCode")
                     <*> (o .:? "authFailAction")
                     <*> (o .:? "staticFiles")
                     <*> (o .:? "login"))

instance ToJSON URLMap where
        toJSON URLMap'{..}
          = object
              (catMaybes
                 [("script" .=) <$> _umScript,
                  ("securityLevel" .=) <$> _umSecurityLevel,
                  ("apiEndpoint" .=) <$> _umAPIEndpoint,
                  ("urlRegex" .=) <$> _umURLRegex,
                  ("redirectHttpResponseCode" .=) <$>
                    _umRedirectHTTPResponseCode,
                  ("authFailAction" .=) <$> _umAuthFailAction,
                  ("staticFiles" .=) <$> _umStaticFiles,
                  ("login" .=) <$> _umLogin])

-- | Third-party Python runtime library that is required by the application.
--
-- /See:/ 'library' smart constructor.
data Library = Library'
    { _lName    :: !(Maybe Text)
    , _lVersion :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    Library'
    { _lName = Nothing
    , _lVersion = Nothing
    }

-- | Name of the library. Example: \"django\".
lName :: Lens' Library (Maybe Text)
lName = lens _lName (\ s a -> s{_lName = a})

-- | Version of the library to select, or \"latest\".
lVersion :: Lens' Library (Maybe Text)
lVersion = lens _lVersion (\ s a -> s{_lVersion = a})

instance FromJSON Library where
        parseJSON
          = withObject "Library"
              (\ o ->
                 Library' <$> (o .:? "name") <*> (o .:? "version"))

instance ToJSON Library where
        toJSON Library'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _lName,
                  ("version" .=) <$> _lVersion])

-- | The response message for LocationService.ListLocations.
--
-- /See:/ 'listLocationsResponse' smart constructor.
data ListLocationsResponse = ListLocationsResponse'
    { _llrNextPageToken :: !(Maybe Text)
    , _llrLocations     :: !(Maybe [Location])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListLocationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llrNextPageToken'
--
-- * 'llrLocations'
listLocationsResponse
    :: ListLocationsResponse
listLocationsResponse =
    ListLocationsResponse'
    { _llrNextPageToken = Nothing
    , _llrLocations = Nothing
    }

-- | The standard List next-page token.
llrNextPageToken :: Lens' ListLocationsResponse (Maybe Text)
llrNextPageToken
  = lens _llrNextPageToken
      (\ s a -> s{_llrNextPageToken = a})

-- | A list of locations that matches the specified filter in the request.
llrLocations :: Lens' ListLocationsResponse [Location]
llrLocations
  = lens _llrLocations (\ s a -> s{_llrLocations = a})
      . _Default
      . _Coerce

instance FromJSON ListLocationsResponse where
        parseJSON
          = withObject "ListLocationsResponse"
              (\ o ->
                 ListLocationsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "locations" .!= mempty))

instance ToJSON ListLocationsResponse where
        toJSON ListLocationsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _llrNextPageToken,
                  ("locations" .=) <$> _llrLocations])

-- | Target scaling by disk usage. Only applicable for VM runtimes.
--
-- /See:/ 'diskUtilization' smart constructor.
data DiskUtilization = DiskUtilization'
    { _duTargetReadBytesPerSecond  :: !(Maybe (Textual Int32))
    , _duTargetReadOpsPerSecond    :: !(Maybe (Textual Int32))
    , _duTargetWriteOpsPerSecond   :: !(Maybe (Textual Int32))
    , _duTargetWriteBytesPerSecond :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DiskUtilization' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'duTargetReadBytesPerSecond'
--
-- * 'duTargetReadOpsPerSecond'
--
-- * 'duTargetWriteOpsPerSecond'
--
-- * 'duTargetWriteBytesPerSecond'
diskUtilization
    :: DiskUtilization
diskUtilization =
    DiskUtilization'
    { _duTargetReadBytesPerSecond = Nothing
    , _duTargetReadOpsPerSecond = Nothing
    , _duTargetWriteOpsPerSecond = Nothing
    , _duTargetWriteBytesPerSecond = Nothing
    }

-- | Target bytes read per second.
duTargetReadBytesPerSecond :: Lens' DiskUtilization (Maybe Int32)
duTargetReadBytesPerSecond
  = lens _duTargetReadBytesPerSecond
      (\ s a -> s{_duTargetReadBytesPerSecond = a})
      . mapping _Coerce

-- | Target ops read per seconds.
duTargetReadOpsPerSecond :: Lens' DiskUtilization (Maybe Int32)
duTargetReadOpsPerSecond
  = lens _duTargetReadOpsPerSecond
      (\ s a -> s{_duTargetReadOpsPerSecond = a})
      . mapping _Coerce

-- | Target ops written per second.
duTargetWriteOpsPerSecond :: Lens' DiskUtilization (Maybe Int32)
duTargetWriteOpsPerSecond
  = lens _duTargetWriteOpsPerSecond
      (\ s a -> s{_duTargetWriteOpsPerSecond = a})
      . mapping _Coerce

-- | Target bytes written per second.
duTargetWriteBytesPerSecond :: Lens' DiskUtilization (Maybe Int32)
duTargetWriteBytesPerSecond
  = lens _duTargetWriteBytesPerSecond
      (\ s a -> s{_duTargetWriteBytesPerSecond = a})
      . mapping _Coerce

instance FromJSON DiskUtilization where
        parseJSON
          = withObject "DiskUtilization"
              (\ o ->
                 DiskUtilization' <$>
                   (o .:? "targetReadBytesPerSecond") <*>
                     (o .:? "targetReadOpsPerSecond")
                     <*> (o .:? "targetWriteOpsPerSecond")
                     <*> (o .:? "targetWriteBytesPerSecond"))

instance ToJSON DiskUtilization where
        toJSON DiskUtilization'{..}
          = object
              (catMaybes
                 [("targetReadBytesPerSecond" .=) <$>
                    _duTargetReadBytesPerSecond,
                  ("targetReadOpsPerSecond" .=) <$>
                    _duTargetReadOpsPerSecond,
                  ("targetWriteOpsPerSecond" .=) <$>
                    _duTargetWriteOpsPerSecond,
                  ("targetWriteBytesPerSecond" .=) <$>
                    _duTargetWriteBytesPerSecond])

-- | The response message for Operations.ListOperations.
--
-- /See:/ 'listOperationsResponse' smart constructor.
data ListOperationsResponse = ListOperationsResponse'
    { _lorNextPageToken :: !(Maybe Text)
    , _lorOperations    :: !(Maybe [Operation])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    { _lorNextPageToken = Nothing
    , _lorOperations = Nothing
    }

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

-- | Health checking configuration for VM instances. Unhealthy instances are
-- killed and replaced with new instances. Only applicable for instances in
-- App Engine flexible environment.
--
-- /See:/ 'healthCheck' smart constructor.
data HealthCheck = HealthCheck'
    { _hcHealthyThreshold   :: !(Maybe (Textual Word32))
    , _hcDisableHealthCheck :: !(Maybe Bool)
    , _hcCheckInterval      :: !(Maybe Text)
    , _hcRestartThreshold   :: !(Maybe (Textual Word32))
    , _hcHost               :: !(Maybe Text)
    , _hcTimeout            :: !(Maybe Text)
    , _hcUnhealthyThreshold :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    HealthCheck'
    { _hcHealthyThreshold = Nothing
    , _hcDisableHealthCheck = Nothing
    , _hcCheckInterval = Nothing
    , _hcRestartThreshold = Nothing
    , _hcHost = Nothing
    , _hcTimeout = Nothing
    , _hcUnhealthyThreshold = Nothing
    }

-- | Number of consecutive successful health checks required before receiving
-- traffic.
hcHealthyThreshold :: Lens' HealthCheck (Maybe Word32)
hcHealthyThreshold
  = lens _hcHealthyThreshold
      (\ s a -> s{_hcHealthyThreshold = a})
      . mapping _Coerce

-- | Whether to explicitly disable health checks for this instance.
hcDisableHealthCheck :: Lens' HealthCheck (Maybe Bool)
hcDisableHealthCheck
  = lens _hcDisableHealthCheck
      (\ s a -> s{_hcDisableHealthCheck = a})

-- | Interval between health checks.
hcCheckInterval :: Lens' HealthCheck (Maybe Text)
hcCheckInterval
  = lens _hcCheckInterval
      (\ s a -> s{_hcCheckInterval = a})

-- | Number of consecutive failed health checks required before an instance
-- is restarted.
hcRestartThreshold :: Lens' HealthCheck (Maybe Word32)
hcRestartThreshold
  = lens _hcRestartThreshold
      (\ s a -> s{_hcRestartThreshold = a})
      . mapping _Coerce

-- | Host header to send when performing an HTTP health check. Example:
-- \"myapp.appspot.com\"
hcHost :: Lens' HealthCheck (Maybe Text)
hcHost = lens _hcHost (\ s a -> s{_hcHost = a})

-- | Time before the health check is considered failed.
hcTimeout :: Lens' HealthCheck (Maybe Text)
hcTimeout
  = lens _hcTimeout (\ s a -> s{_hcTimeout = a})

-- | Number of consecutive failed health checks required before removing
-- traffic.
hcUnhealthyThreshold :: Lens' HealthCheck (Maybe Word32)
hcUnhealthyThreshold
  = lens _hcUnhealthyThreshold
      (\ s a -> s{_hcUnhealthyThreshold = a})
      . mapping _Coerce

instance FromJSON HealthCheck where
        parseJSON
          = withObject "HealthCheck"
              (\ o ->
                 HealthCheck' <$>
                   (o .:? "healthyThreshold") <*>
                     (o .:? "disableHealthCheck")
                     <*> (o .:? "checkInterval")
                     <*> (o .:? "restartThreshold")
                     <*> (o .:? "host")
                     <*> (o .:? "timeout")
                     <*> (o .:? "unhealthyThreshold"))

instance ToJSON HealthCheck where
        toJSON HealthCheck'{..}
          = object
              (catMaybes
                 [("healthyThreshold" .=) <$> _hcHealthyThreshold,
                  ("disableHealthCheck" .=) <$> _hcDisableHealthCheck,
                  ("checkInterval" .=) <$> _hcCheckInterval,
                  ("restartThreshold" .=) <$> _hcRestartThreshold,
                  ("host" .=) <$> _hcHost,
                  ("timeout" .=) <$> _hcTimeout,
                  ("unhealthyThreshold" .=) <$> _hcUnhealthyThreshold])

-- | Google Cloud Endpoints
-- (https:\/\/cloud.google.com\/appengine\/docs\/python\/endpoints\/)
-- configuration for API handlers.
--
-- /See:/ 'apiConfigHandler' smart constructor.
data APIConfigHandler = APIConfigHandler'
    { _achScript         :: !(Maybe Text)
    , _achSecurityLevel  :: !(Maybe Text)
    , _achURL            :: !(Maybe Text)
    , _achAuthFailAction :: !(Maybe Text)
    , _achLogin          :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'APIConfigHandler' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'achScript'
--
-- * 'achSecurityLevel'
--
-- * 'achURL'
--
-- * 'achAuthFailAction'
--
-- * 'achLogin'
apiConfigHandler
    :: APIConfigHandler
apiConfigHandler =
    APIConfigHandler'
    { _achScript = Nothing
    , _achSecurityLevel = Nothing
    , _achURL = Nothing
    , _achAuthFailAction = Nothing
    , _achLogin = Nothing
    }

-- | Path to the script from the application root directory.
achScript :: Lens' APIConfigHandler (Maybe Text)
achScript
  = lens _achScript (\ s a -> s{_achScript = a})

-- | Security (HTTPS) enforcement for this URL.
achSecurityLevel :: Lens' APIConfigHandler (Maybe Text)
achSecurityLevel
  = lens _achSecurityLevel
      (\ s a -> s{_achSecurityLevel = a})

-- | URL to serve the endpoint at.
achURL :: Lens' APIConfigHandler (Maybe Text)
achURL = lens _achURL (\ s a -> s{_achURL = a})

-- | Action to take when users access resources that require authentication.
-- Defaults to redirect.
achAuthFailAction :: Lens' APIConfigHandler (Maybe Text)
achAuthFailAction
  = lens _achAuthFailAction
      (\ s a -> s{_achAuthFailAction = a})

-- | Level of login required to access this resource. Defaults to optional.
achLogin :: Lens' APIConfigHandler (Maybe Text)
achLogin = lens _achLogin (\ s a -> s{_achLogin = a})

instance FromJSON APIConfigHandler where
        parseJSON
          = withObject "APIConfigHandler"
              (\ o ->
                 APIConfigHandler' <$>
                   (o .:? "script") <*> (o .:? "securityLevel") <*>
                     (o .:? "url")
                     <*> (o .:? "authFailAction")
                     <*> (o .:? "login"))

instance ToJSON APIConfigHandler where
        toJSON APIConfigHandler'{..}
          = object
              (catMaybes
                 [("script" .=) <$> _achScript,
                  ("securityLevel" .=) <$> _achSecurityLevel,
                  ("url" .=) <$> _achURL,
                  ("authFailAction" .=) <$> _achAuthFailAction,
                  ("login" .=) <$> _achLogin])

-- | Environment variables available to the application.Only returned in GET
-- requests if view=FULL is set.
--
-- /See:/ 'versionEnvVariables' smart constructor.
newtype VersionEnvVariables = VersionEnvVariables'
    { _vevAddtional :: HashMap Text Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VersionEnvVariables' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vevAddtional'
versionEnvVariables
    :: HashMap Text Text -- ^ 'vevAddtional'
    -> VersionEnvVariables
versionEnvVariables pVevAddtional_ =
    VersionEnvVariables'
    { _vevAddtional = _Coerce # pVevAddtional_
    }

vevAddtional :: Lens' VersionEnvVariables (HashMap Text Text)
vevAddtional
  = lens _vevAddtional (\ s a -> s{_vevAddtional = a})
      . _Coerce

instance FromJSON VersionEnvVariables where
        parseJSON
          = withObject "VersionEnvVariables"
              (\ o -> VersionEnvVariables' <$> (parseJSONObject o))

instance ToJSON VersionEnvVariables where
        toJSON = toJSON . _vevAddtional

-- | An Application resource contains the top-level configuration of an App
-- Engine application.
--
-- /See:/ 'application' smart constructor.
data Application = Application'
    { _aDefaultHostname         :: !(Maybe Text)
    , _aDefaultCookieExpiration :: !(Maybe Text)
    , _aAuthDomain              :: !(Maybe Text)
    , _aCodeBucket              :: !(Maybe Text)
    , _aName                    :: !(Maybe Text)
    , _aDispatchRules           :: !(Maybe [URLDispatchRule])
    , _aDefaultBucket           :: !(Maybe Text)
    , _aId                      :: !(Maybe Text)
    , _aLocationId              :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Application' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aDefaultHostname'
--
-- * 'aDefaultCookieExpiration'
--
-- * 'aAuthDomain'
--
-- * 'aCodeBucket'
--
-- * 'aName'
--
-- * 'aDispatchRules'
--
-- * 'aDefaultBucket'
--
-- * 'aId'
--
-- * 'aLocationId'
application
    :: Application
application =
    Application'
    { _aDefaultHostname = Nothing
    , _aDefaultCookieExpiration = Nothing
    , _aAuthDomain = Nothing
    , _aCodeBucket = Nothing
    , _aName = Nothing
    , _aDispatchRules = Nothing
    , _aDefaultBucket = Nothing
    , _aId = Nothing
    , _aLocationId = Nothing
    }

-- | Hostname used to reach this application, as resolved by App
-- Engine.\'OutputOnly
aDefaultHostname :: Lens' Application (Maybe Text)
aDefaultHostname
  = lens _aDefaultHostname
      (\ s a -> s{_aDefaultHostname = a})

-- | Cookie expiration policy for this application.
aDefaultCookieExpiration :: Lens' Application (Maybe Text)
aDefaultCookieExpiration
  = lens _aDefaultCookieExpiration
      (\ s a -> s{_aDefaultCookieExpiration = a})

-- | Google Apps authentication domain that controls which users can access
-- this application.Defaults to open access for any Google Account.
aAuthDomain :: Lens' Application (Maybe Text)
aAuthDomain
  = lens _aAuthDomain (\ s a -> s{_aAuthDomain = a})

-- | Google Cloud Storage bucket that can be used for storing files
-- associated with this application. This bucket is associated with the
-- application and can be used by the gcloud deployment
-- commands.\'OutputOnly
aCodeBucket :: Lens' Application (Maybe Text)
aCodeBucket
  = lens _aCodeBucket (\ s a -> s{_aCodeBucket = a})

-- | Full path to the Application resource in the API. Example:
-- apps\/myapp.\'OutputOnly
aName :: Lens' Application (Maybe Text)
aName = lens _aName (\ s a -> s{_aName = a})

-- | HTTP path dispatch rules for requests to the application that do not
-- explicitly target a service or version. Rules are
-- order-dependent.\'OutputOnly
aDispatchRules :: Lens' Application [URLDispatchRule]
aDispatchRules
  = lens _aDispatchRules
      (\ s a -> s{_aDispatchRules = a})
      . _Default
      . _Coerce

-- | Google Cloud Storage bucket that can be used by this application to
-- store content.\'OutputOnly
aDefaultBucket :: Lens' Application (Maybe Text)
aDefaultBucket
  = lens _aDefaultBucket
      (\ s a -> s{_aDefaultBucket = a})

-- | Identifier of the Application resource. This identifier is equivalent to
-- the project ID of the Google Cloud Platform project where you want to
-- deploy your application. Example: myapp.
aId :: Lens' Application (Maybe Text)
aId = lens _aId (\ s a -> s{_aId = a})

-- | Location from which this application will be run. Application instances
-- will run out of data centers in the chosen location, which is also where
-- all of the application\'s end user content is stored.Defaults to
-- us-central.Options are:us-central - Central USeurope-west - Western
-- Europeus-east1 - Eastern US
aLocationId :: Lens' Application (Maybe Text)
aLocationId
  = lens _aLocationId (\ s a -> s{_aLocationId = a})

instance FromJSON Application where
        parseJSON
          = withObject "Application"
              (\ o ->
                 Application' <$>
                   (o .:? "defaultHostname") <*>
                     (o .:? "defaultCookieExpiration")
                     <*> (o .:? "authDomain")
                     <*> (o .:? "codeBucket")
                     <*> (o .:? "name")
                     <*> (o .:? "dispatchRules" .!= mempty)
                     <*> (o .:? "defaultBucket")
                     <*> (o .:? "id")
                     <*> (o .:? "locationId"))

instance ToJSON Application where
        toJSON Application'{..}
          = object
              (catMaybes
                 [("defaultHostname" .=) <$> _aDefaultHostname,
                  ("defaultCookieExpiration" .=) <$>
                    _aDefaultCookieExpiration,
                  ("authDomain" .=) <$> _aAuthDomain,
                  ("codeBucket" .=) <$> _aCodeBucket,
                  ("name" .=) <$> _aName,
                  ("dispatchRules" .=) <$> _aDispatchRules,
                  ("defaultBucket" .=) <$> _aDefaultBucket,
                  ("id" .=) <$> _aId,
                  ("locationId" .=) <$> _aLocationId])

-- | Metadata settings that are supplied to this version to enable beta
-- runtime features.
--
-- /See:/ 'versionBetaSettings' smart constructor.
newtype VersionBetaSettings = VersionBetaSettings'
    { _vbsAddtional :: HashMap Text Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VersionBetaSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vbsAddtional'
versionBetaSettings
    :: HashMap Text Text -- ^ 'vbsAddtional'
    -> VersionBetaSettings
versionBetaSettings pVbsAddtional_ =
    VersionBetaSettings'
    { _vbsAddtional = _Coerce # pVbsAddtional_
    }

vbsAddtional :: Lens' VersionBetaSettings (HashMap Text Text)
vbsAddtional
  = lens _vbsAddtional (\ s a -> s{_vbsAddtional = a})
      . _Coerce

instance FromJSON VersionBetaSettings where
        parseJSON
          = withObject "VersionBetaSettings"
              (\ o -> VersionBetaSettings' <$> (parseJSONObject o))

instance ToJSON VersionBetaSettings where
        toJSON = toJSON . _vbsAddtional

-- | A Service resource is a logical component of an application that can
-- share state and communicate in a secure fashion with other services. For
-- example, an application that handles customer requests might include
-- separate services to handle tasks such as backend data analysis or API
-- requests from mobile devices. Each service has a collection of versions
-- that define a specific set of code used to implement the functionality
-- of that service.
--
-- /See:/ 'service' smart constructor.
data Service = Service'
    { _sSplit :: !(Maybe TrafficSplit)
    , _sName  :: !(Maybe Text)
    , _sId    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Service' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sSplit'
--
-- * 'sName'
--
-- * 'sId'
service
    :: Service
service =
    Service'
    { _sSplit = Nothing
    , _sName = Nothing
    , _sId = Nothing
    }

-- | Mapping that defines fractional HTTP traffic diversion to different
-- versions within the service.
sSplit :: Lens' Service (Maybe TrafficSplit)
sSplit = lens _sSplit (\ s a -> s{_sSplit = a})

-- | Full path to the Service resource in the API. Example:
-- apps\/myapp\/services\/default.\'OutputOnly
sName :: Lens' Service (Maybe Text)
sName = lens _sName (\ s a -> s{_sName = a})

-- | Relative name of the service within the application. Example:
-- default.\'OutputOnly
sId :: Lens' Service (Maybe Text)
sId = lens _sId (\ s a -> s{_sId = a})

instance FromJSON Service where
        parseJSON
          = withObject "Service"
              (\ o ->
                 Service' <$>
                   (o .:? "split") <*> (o .:? "name") <*> (o .:? "id"))

instance ToJSON Service where
        toJSON Service'{..}
          = object
              (catMaybes
                 [("split" .=) <$> _sSplit, ("name" .=) <$> _sName,
                  ("id" .=) <$> _sId])

-- | Cloud Endpoints (https:\/\/cloud.google.com\/endpoints) configuration.
-- The Endpoints API Service provides tooling for serving Open API and gRPC
-- endpoints via an NGINX proxy.The fields here refer to the name and
-- configuration id of a \"service\" resource in the Service Management API
-- (https:\/\/cloud.google.com\/service-management\/overview).
--
-- /See:/ 'endpointsAPIService' smart constructor.
data EndpointsAPIService = EndpointsAPIService'
    { _easName     :: !(Maybe Text)
    , _easConfigId :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EndpointsAPIService' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'easName'
--
-- * 'easConfigId'
endpointsAPIService
    :: EndpointsAPIService
endpointsAPIService =
    EndpointsAPIService'
    { _easName = Nothing
    , _easConfigId = Nothing
    }

-- | Endpoints service name which is the name of the \"service\" resource in
-- the Service Management API. For example
-- \"myapi.endpoints.myproject.cloud.goog\"
easName :: Lens' EndpointsAPIService (Maybe Text)
easName = lens _easName (\ s a -> s{_easName = a})

-- | Endpoints service configuration id as specified by the Service
-- Management API. For example \"2016-09-19r1\"
easConfigId :: Lens' EndpointsAPIService (Maybe Text)
easConfigId
  = lens _easConfigId (\ s a -> s{_easConfigId = a})

instance FromJSON EndpointsAPIService where
        parseJSON
          = withObject "EndpointsAPIService"
              (\ o ->
                 EndpointsAPIService' <$>
                   (o .:? "name") <*> (o .:? "configId"))

instance ToJSON EndpointsAPIService where
        toJSON EndpointsAPIService'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _easName,
                  ("configId" .=) <$> _easConfigId])

-- | A resource that represents Google Cloud Platform location.
--
-- /See:/ 'location' smart constructor.
data Location = Location'
    { _locName       :: !(Maybe Text)
    , _locMetadata   :: !(Maybe LocationSchema)
    , _locLabels     :: !(Maybe LocationLabels)
    , _locLocationId :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Location' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'locName'
--
-- * 'locMetadata'
--
-- * 'locLabels'
--
-- * 'locLocationId'
location
    :: Location
location =
    Location'
    { _locName = Nothing
    , _locMetadata = Nothing
    , _locLabels = Nothing
    , _locLocationId = Nothing
    }

-- | Resource name for the location, which may vary between implementations.
-- For example: \"projects\/example-project\/locations\/us-east1\"
locName :: Lens' Location (Maybe Text)
locName = lens _locName (\ s a -> s{_locName = a})

-- | Service-specific metadata. For example the available capacity at the
-- given location.
locMetadata :: Lens' Location (Maybe LocationSchema)
locMetadata
  = lens _locMetadata (\ s a -> s{_locMetadata = a})

-- | Cross-service attributes for the location. For example
-- {\"cloud.googleapis.com\/region\": \"us-east1\"}
locLabels :: Lens' Location (Maybe LocationLabels)
locLabels
  = lens _locLabels (\ s a -> s{_locLabels = a})

-- | The canonical id for this location. For example: \"us-east1\".
locLocationId :: Lens' Location (Maybe Text)
locLocationId
  = lens _locLocationId
      (\ s a -> s{_locLocationId = a})

instance FromJSON Location where
        parseJSON
          = withObject "Location"
              (\ o ->
                 Location' <$>
                   (o .:? "name") <*> (o .:? "metadata") <*>
                     (o .:? "labels")
                     <*> (o .:? "locationId"))

instance ToJSON Location where
        toJSON Location'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _locName,
                  ("metadata" .=) <$> _locMetadata,
                  ("labels" .=) <$> _locLabels,
                  ("locationId" .=) <$> _locLocationId])

-- | This resource represents a long-running operation that is the result of
-- a network API call.
--
-- /See:/ 'operation' smart constructor.
data Operation = Operation'
    { _oDone     :: !(Maybe Bool)
    , _oError    :: !(Maybe Status)
    , _oResponse :: !(Maybe OperationResponse)
    , _oName     :: !(Maybe Text)
    , _oMetadata :: !(Maybe OperationSchema)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
oMetadata :: Lens' Operation (Maybe OperationSchema)
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

-- | The zip file information for a zip deployment.
--
-- /See:/ 'zipInfo' smart constructor.
data ZipInfo = ZipInfo'
    { _ziFilesCount :: !(Maybe (Textual Int32))
    , _ziSourceURL  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ZipInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ziFilesCount'
--
-- * 'ziSourceURL'
zipInfo
    :: ZipInfo
zipInfo =
    ZipInfo'
    { _ziFilesCount = Nothing
    , _ziSourceURL = Nothing
    }

-- | An estimate of the number of files in a zip for a zip deployment. If
-- set, must be greater than or equal to the actual number of files. Used
-- for optimizing performance; if not provided, deployment may be slow.
ziFilesCount :: Lens' ZipInfo (Maybe Int32)
ziFilesCount
  = lens _ziFilesCount (\ s a -> s{_ziFilesCount = a})
      . mapping _Coerce

-- | URL of the zip file to deploy from. Must be a URL to a resource in
-- Google Cloud Storage in the form
-- \'http(s):\/\/storage.googleapis.com\/\/\'.
ziSourceURL :: Lens' ZipInfo (Maybe Text)
ziSourceURL
  = lens _ziSourceURL (\ s a -> s{_ziSourceURL = a})

instance FromJSON ZipInfo where
        parseJSON
          = withObject "ZipInfo"
              (\ o ->
                 ZipInfo' <$>
                   (o .:? "filesCount") <*> (o .:? "sourceUrl"))

instance ToJSON ZipInfo where
        toJSON ZipInfo'{..}
          = object
              (catMaybes
                 [("filesCount" .=) <$> _ziFilesCount,
                  ("sourceUrl" .=) <$> _ziSourceURL])

-- | Rules to match an HTTP request and dispatch that request to a service.
--
-- /See:/ 'urlDispatchRule' smart constructor.
data URLDispatchRule = URLDispatchRule'
    { _udrPath    :: !(Maybe Text)
    , _udrService :: !(Maybe Text)
    , _udrDomain  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLDispatchRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udrPath'
--
-- * 'udrService'
--
-- * 'udrDomain'
urlDispatchRule
    :: URLDispatchRule
urlDispatchRule =
    URLDispatchRule'
    { _udrPath = Nothing
    , _udrService = Nothing
    , _udrDomain = Nothing
    }

-- | Pathname within the host. Must start with a \"\/\". A single \"*\" can
-- be included at the end of the path. The sum of the lengths of the domain
-- and path may not exceed 100 characters.
udrPath :: Lens' URLDispatchRule (Maybe Text)
udrPath = lens _udrPath (\ s a -> s{_udrPath = a})

-- | Resource ID of a service in this application that should serve the
-- matched request. The service must already exist. Example: default.
udrService :: Lens' URLDispatchRule (Maybe Text)
udrService
  = lens _udrService (\ s a -> s{_udrService = a})

-- | Domain name to match against. The wildcard \"*\" is supported if
-- specified before a period: \"*.\".Defaults to matching all domains:
-- \"*\".
udrDomain :: Lens' URLDispatchRule (Maybe Text)
udrDomain
  = lens _udrDomain (\ s a -> s{_udrDomain = a})

instance FromJSON URLDispatchRule where
        parseJSON
          = withObject "URLDispatchRule"
              (\ o ->
                 URLDispatchRule' <$>
                   (o .:? "path") <*> (o .:? "service") <*>
                     (o .:? "domain"))

instance ToJSON URLDispatchRule where
        toJSON URLDispatchRule'{..}
          = object
              (catMaybes
                 [("path" .=) <$> _udrPath,
                  ("service" .=) <$> _udrService,
                  ("domain" .=) <$> _udrDomain])

-- | Response message for Versions.ListVersions.
--
-- /See:/ 'listVersionsResponse' smart constructor.
data ListVersionsResponse = ListVersionsResponse'
    { _lvrNextPageToken :: !(Maybe Text)
    , _lvrVersions      :: !(Maybe [Version])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    ListVersionsResponse'
    { _lvrNextPageToken = Nothing
    , _lvrVersions = Nothing
    }

-- | Continuation token for fetching the next page of results.
lvrNextPageToken :: Lens' ListVersionsResponse (Maybe Text)
lvrNextPageToken
  = lens _lvrNextPageToken
      (\ s a -> s{_lvrNextPageToken = a})

-- | The versions belonging to the requested service.
lvrVersions :: Lens' ListVersionsResponse [Version]
lvrVersions
  = lens _lvrVersions (\ s a -> s{_lvrVersions = a}) .
      _Default
      . _Coerce

instance FromJSON ListVersionsResponse where
        parseJSON
          = withObject "ListVersionsResponse"
              (\ o ->
                 ListVersionsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "versions" .!= mempty))

instance ToJSON ListVersionsResponse where
        toJSON ListVersionsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lvrNextPageToken,
                  ("versions" .=) <$> _lvrVersions])

-- | Single source file that is part of the version to be deployed. Each
-- source file that is deployed must be specified separately.
--
-- /See:/ 'fileInfo' smart constructor.
data FileInfo = FileInfo'
    { _fiSha1Sum   :: !(Maybe Text)
    , _fiMimeType  :: !(Maybe Text)
    , _fiSourceURL :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FileInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fiSha1Sum'
--
-- * 'fiMimeType'
--
-- * 'fiSourceURL'
fileInfo
    :: FileInfo
fileInfo =
    FileInfo'
    { _fiSha1Sum = Nothing
    , _fiMimeType = Nothing
    , _fiSourceURL = Nothing
    }

-- | The SHA1 hash of the file, in hex.
fiSha1Sum :: Lens' FileInfo (Maybe Text)
fiSha1Sum
  = lens _fiSha1Sum (\ s a -> s{_fiSha1Sum = a})

-- | The MIME type of the file.Defaults to the value from Google Cloud
-- Storage.
fiMimeType :: Lens' FileInfo (Maybe Text)
fiMimeType
  = lens _fiMimeType (\ s a -> s{_fiMimeType = a})

-- | URL source to use to fetch this file. Must be a URL to a resource in
-- Google Cloud Storage in the form
-- \'http(s):\/\/storage.googleapis.com\/\/\'.
fiSourceURL :: Lens' FileInfo (Maybe Text)
fiSourceURL
  = lens _fiSourceURL (\ s a -> s{_fiSourceURL = a})

instance FromJSON FileInfo where
        parseJSON
          = withObject "FileInfo"
              (\ o ->
                 FileInfo' <$>
                   (o .:? "sha1Sum") <*> (o .:? "mimeType") <*>
                     (o .:? "sourceUrl"))

instance ToJSON FileInfo where
        toJSON FileInfo'{..}
          = object
              (catMaybes
                 [("sha1Sum" .=) <$> _fiSha1Sum,
                  ("mimeType" .=) <$> _fiMimeType,
                  ("sourceUrl" .=) <$> _fiSourceURL])

-- | Automatic scaling is based on request rate, response latencies, and
-- other application metrics.
--
-- /See:/ 'automaticScaling' smart constructor.
data AutomaticScaling = AutomaticScaling'
    { _asNetworkUtilization    :: !(Maybe NetworkUtilization)
    , _asMaxTotalInstances     :: !(Maybe (Textual Int32))
    , _asMinIdleInstances      :: !(Maybe (Textual Int32))
    , _asDiskUtilization       :: !(Maybe DiskUtilization)
    , _asMinPendingLatency     :: !(Maybe Text)
    , _asCPUUtilization        :: !(Maybe CPUUtilization)
    , _asMaxIdleInstances      :: !(Maybe (Textual Int32))
    , _asMinTotalInstances     :: !(Maybe (Textual Int32))
    , _asMaxConcurrentRequests :: !(Maybe (Textual Int32))
    , _asCoolDownPeriod        :: !(Maybe Text)
    , _asRequestUtilization    :: !(Maybe RequestUtilization)
    , _asMaxPendingLatency     :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutomaticScaling' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asNetworkUtilization'
--
-- * 'asMaxTotalInstances'
--
-- * 'asMinIdleInstances'
--
-- * 'asDiskUtilization'
--
-- * 'asMinPendingLatency'
--
-- * 'asCPUUtilization'
--
-- * 'asMaxIdleInstances'
--
-- * 'asMinTotalInstances'
--
-- * 'asMaxConcurrentRequests'
--
-- * 'asCoolDownPeriod'
--
-- * 'asRequestUtilization'
--
-- * 'asMaxPendingLatency'
automaticScaling
    :: AutomaticScaling
automaticScaling =
    AutomaticScaling'
    { _asNetworkUtilization = Nothing
    , _asMaxTotalInstances = Nothing
    , _asMinIdleInstances = Nothing
    , _asDiskUtilization = Nothing
    , _asMinPendingLatency = Nothing
    , _asCPUUtilization = Nothing
    , _asMaxIdleInstances = Nothing
    , _asMinTotalInstances = Nothing
    , _asMaxConcurrentRequests = Nothing
    , _asCoolDownPeriod = Nothing
    , _asRequestUtilization = Nothing
    , _asMaxPendingLatency = Nothing
    }

-- | Target scaling by network usage.
asNetworkUtilization :: Lens' AutomaticScaling (Maybe NetworkUtilization)
asNetworkUtilization
  = lens _asNetworkUtilization
      (\ s a -> s{_asNetworkUtilization = a})

-- | Maximum number of instances that should be started to handle requests.
asMaxTotalInstances :: Lens' AutomaticScaling (Maybe Int32)
asMaxTotalInstances
  = lens _asMaxTotalInstances
      (\ s a -> s{_asMaxTotalInstances = a})
      . mapping _Coerce

-- | Minimum number of idle instances that should be maintained for this
-- version. Only applicable for the default version of a service.
asMinIdleInstances :: Lens' AutomaticScaling (Maybe Int32)
asMinIdleInstances
  = lens _asMinIdleInstances
      (\ s a -> s{_asMinIdleInstances = a})
      . mapping _Coerce

-- | Target scaling by disk usage.
asDiskUtilization :: Lens' AutomaticScaling (Maybe DiskUtilization)
asDiskUtilization
  = lens _asDiskUtilization
      (\ s a -> s{_asDiskUtilization = a})

-- | Minimum amount of time a request should wait in the pending queue before
-- starting a new instance to handle it.
asMinPendingLatency :: Lens' AutomaticScaling (Maybe Text)
asMinPendingLatency
  = lens _asMinPendingLatency
      (\ s a -> s{_asMinPendingLatency = a})

-- | Target scaling by CPU usage.
asCPUUtilization :: Lens' AutomaticScaling (Maybe CPUUtilization)
asCPUUtilization
  = lens _asCPUUtilization
      (\ s a -> s{_asCPUUtilization = a})

-- | Maximum number of idle instances that should be maintained for this
-- version.
asMaxIdleInstances :: Lens' AutomaticScaling (Maybe Int32)
asMaxIdleInstances
  = lens _asMaxIdleInstances
      (\ s a -> s{_asMaxIdleInstances = a})
      . mapping _Coerce

-- | Minimum number of instances that should be maintained for this version.
asMinTotalInstances :: Lens' AutomaticScaling (Maybe Int32)
asMinTotalInstances
  = lens _asMinTotalInstances
      (\ s a -> s{_asMinTotalInstances = a})
      . mapping _Coerce

-- | Number of concurrent requests an automatic scaling instance can accept
-- before the scheduler spawns a new instance.Defaults to a
-- runtime-specific value.
asMaxConcurrentRequests :: Lens' AutomaticScaling (Maybe Int32)
asMaxConcurrentRequests
  = lens _asMaxConcurrentRequests
      (\ s a -> s{_asMaxConcurrentRequests = a})
      . mapping _Coerce

-- | Amount of time that the Autoscaler
-- (https:\/\/cloud.google.com\/compute\/docs\/autoscaler\/) should wait
-- between changes to the number of virtual machines. Only applicable for
-- VM runtimes.
asCoolDownPeriod :: Lens' AutomaticScaling (Maybe Text)
asCoolDownPeriod
  = lens _asCoolDownPeriod
      (\ s a -> s{_asCoolDownPeriod = a})

-- | Target scaling by request utilization.
asRequestUtilization :: Lens' AutomaticScaling (Maybe RequestUtilization)
asRequestUtilization
  = lens _asRequestUtilization
      (\ s a -> s{_asRequestUtilization = a})

-- | Maximum amount of time that a request should wait in the pending queue
-- before starting a new instance to handle it.
asMaxPendingLatency :: Lens' AutomaticScaling (Maybe Text)
asMaxPendingLatency
  = lens _asMaxPendingLatency
      (\ s a -> s{_asMaxPendingLatency = a})

instance FromJSON AutomaticScaling where
        parseJSON
          = withObject "AutomaticScaling"
              (\ o ->
                 AutomaticScaling' <$>
                   (o .:? "networkUtilization") <*>
                     (o .:? "maxTotalInstances")
                     <*> (o .:? "minIdleInstances")
                     <*> (o .:? "diskUtilization")
                     <*> (o .:? "minPendingLatency")
                     <*> (o .:? "cpuUtilization")
                     <*> (o .:? "maxIdleInstances")
                     <*> (o .:? "minTotalInstances")
                     <*> (o .:? "maxConcurrentRequests")
                     <*> (o .:? "coolDownPeriod")
                     <*> (o .:? "requestUtilization")
                     <*> (o .:? "maxPendingLatency"))

instance ToJSON AutomaticScaling where
        toJSON AutomaticScaling'{..}
          = object
              (catMaybes
                 [("networkUtilization" .=) <$> _asNetworkUtilization,
                  ("maxTotalInstances" .=) <$> _asMaxTotalInstances,
                  ("minIdleInstances" .=) <$> _asMinIdleInstances,
                  ("diskUtilization" .=) <$> _asDiskUtilization,
                  ("minPendingLatency" .=) <$> _asMinPendingLatency,
                  ("cpuUtilization" .=) <$> _asCPUUtilization,
                  ("maxIdleInstances" .=) <$> _asMaxIdleInstances,
                  ("minTotalInstances" .=) <$> _asMinTotalInstances,
                  ("maxConcurrentRequests" .=) <$>
                    _asMaxConcurrentRequests,
                  ("coolDownPeriod" .=) <$> _asCoolDownPeriod,
                  ("requestUtilization" .=) <$> _asRequestUtilization,
                  ("maxPendingLatency" .=) <$> _asMaxPendingLatency])

-- | Metadata for the given google.longrunning.Operation.
--
-- /See:/ 'operationMetadataV1Beta5' smart constructor.
data OperationMetadataV1Beta5 = OperationMetadataV1Beta5'
    { _omvbInsertTime :: !(Maybe Text)
    , _omvbUser       :: !(Maybe Text)
    , _omvbMethod     :: !(Maybe Text)
    , _omvbEndTime    :: !(Maybe Text)
    , _omvbTarget     :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationMetadataV1Beta5' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'omvbInsertTime'
--
-- * 'omvbUser'
--
-- * 'omvbMethod'
--
-- * 'omvbEndTime'
--
-- * 'omvbTarget'
operationMetadataV1Beta5
    :: OperationMetadataV1Beta5
operationMetadataV1Beta5 =
    OperationMetadataV1Beta5'
    { _omvbInsertTime = Nothing
    , _omvbUser = Nothing
    , _omvbMethod = Nothing
    , _omvbEndTime = Nothing
    , _omvbTarget = Nothing
    }

-- | Timestamp that this operation was created.\'OutputOnly
omvbInsertTime :: Lens' OperationMetadataV1Beta5 (Maybe Text)
omvbInsertTime
  = lens _omvbInsertTime
      (\ s a -> s{_omvbInsertTime = a})

-- | User who requested this operation.\'OutputOnly
omvbUser :: Lens' OperationMetadataV1Beta5 (Maybe Text)
omvbUser = lens _omvbUser (\ s a -> s{_omvbUser = a})

-- | API method name that initiated this operation. Example:
-- google.appengine.v1beta5.Version.CreateVersion.\'OutputOnly
omvbMethod :: Lens' OperationMetadataV1Beta5 (Maybe Text)
omvbMethod
  = lens _omvbMethod (\ s a -> s{_omvbMethod = a})

-- | Timestamp that this operation completed.\'OutputOnly
omvbEndTime :: Lens' OperationMetadataV1Beta5 (Maybe Text)
omvbEndTime
  = lens _omvbEndTime (\ s a -> s{_omvbEndTime = a})

-- | Name of the resource that this operation is acting on. Example:
-- apps\/myapp\/services\/default.\'OutputOnly
omvbTarget :: Lens' OperationMetadataV1Beta5 (Maybe Text)
omvbTarget
  = lens _omvbTarget (\ s a -> s{_omvbTarget = a})

instance FromJSON OperationMetadataV1Beta5 where
        parseJSON
          = withObject "OperationMetadataV1Beta5"
              (\ o ->
                 OperationMetadataV1Beta5' <$>
                   (o .:? "insertTime") <*> (o .:? "user") <*>
                     (o .:? "method")
                     <*> (o .:? "endTime")
                     <*> (o .:? "target"))

instance ToJSON OperationMetadataV1Beta5 where
        toJSON OperationMetadataV1Beta5'{..}
          = object
              (catMaybes
                 [("insertTime" .=) <$> _omvbInsertTime,
                  ("user" .=) <$> _omvbUser,
                  ("method" .=) <$> _omvbMethod,
                  ("endTime" .=) <$> _omvbEndTime,
                  ("target" .=) <$> _omvbTarget])

-- | Volumes mounted within the app container. Only applicable for VM
-- runtimes.
--
-- /See:/ 'volume' smart constructor.
data Volume = Volume'
    { _vSizeGb     :: !(Maybe (Textual Double))
    , _vName       :: !(Maybe Text)
    , _vVolumeType :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Volume' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vSizeGb'
--
-- * 'vName'
--
-- * 'vVolumeType'
volume
    :: Volume
volume =
    Volume'
    { _vSizeGb = Nothing
    , _vName = Nothing
    , _vVolumeType = Nothing
    }

-- | Volume size in gigabytes.
vSizeGb :: Lens' Volume (Maybe Double)
vSizeGb
  = lens _vSizeGb (\ s a -> s{_vSizeGb = a}) .
      mapping _Coerce

-- | Unique name for the volume.
vName :: Lens' Volume (Maybe Text)
vName = lens _vName (\ s a -> s{_vName = a})

-- | Underlying volume type, e.g. \'tmpfs\'.
vVolumeType :: Lens' Volume (Maybe Text)
vVolumeType
  = lens _vVolumeType (\ s a -> s{_vVolumeType = a})

instance FromJSON Volume where
        parseJSON
          = withObject "Volume"
              (\ o ->
                 Volume' <$>
                   (o .:? "sizeGb") <*> (o .:? "name") <*>
                     (o .:? "volumeType"))

instance ToJSON Volume where
        toJSON Volume'{..}
          = object
              (catMaybes
                 [("sizeGb" .=) <$> _vSizeGb, ("name" .=) <$> _vName,
                  ("volumeType" .=) <$> _vVolumeType])

-- | Uses Google Cloud Endpoints to handle requests.
--
-- /See:/ 'apiEndpointHandler' smart constructor.
newtype APIEndpointHandler = APIEndpointHandler'
    { _aehScriptPath :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'APIEndpointHandler' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aehScriptPath'
apiEndpointHandler
    :: APIEndpointHandler
apiEndpointHandler =
    APIEndpointHandler'
    { _aehScriptPath = Nothing
    }

-- | Path to the script from the application root directory.
aehScriptPath :: Lens' APIEndpointHandler (Maybe Text)
aehScriptPath
  = lens _aehScriptPath
      (\ s a -> s{_aehScriptPath = a})

instance FromJSON APIEndpointHandler where
        parseJSON
          = withObject "APIEndpointHandler"
              (\ o -> APIEndpointHandler' <$> (o .:? "scriptPath"))

instance ToJSON APIEndpointHandler where
        toJSON APIEndpointHandler'{..}
          = object
              (catMaybes [("scriptPath" .=) <$> _aehScriptPath])

--
-- /See:/ 'statusDetailsItem' smart constructor.
newtype StatusDetailsItem = StatusDetailsItem'
    { _sdiAddtional :: HashMap Text JSONValue
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'StatusDetailsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdiAddtional'
statusDetailsItem
    :: HashMap Text JSONValue -- ^ 'sdiAddtional'
    -> StatusDetailsItem
statusDetailsItem pSdiAddtional_ =
    StatusDetailsItem'
    { _sdiAddtional = _Coerce # pSdiAddtional_
    }

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

-- | Extra network settings. Only applicable for VM runtimes.
--
-- /See:/ 'network' smart constructor.
data Network = Network'
    { _nSubnetworkName :: !(Maybe Text)
    , _nForwardedPorts :: !(Maybe [Text])
    , _nInstanceTag    :: !(Maybe Text)
    , _nName           :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Network' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nSubnetworkName'
--
-- * 'nForwardedPorts'
--
-- * 'nInstanceTag'
--
-- * 'nName'
network
    :: Network
network =
    Network'
    { _nSubnetworkName = Nothing
    , _nForwardedPorts = Nothing
    , _nInstanceTag = Nothing
    , _nName = Nothing
    }

-- | Google Cloud Platform sub-network where the virtual machines are
-- created. Specify the short name, not the resource path.If a subnetwork
-- name is specified, a network name will also be required unless it is for
-- the default network. If the network the VM instance is being created in
-- is a Legacy network, then the IP address is allocated from the
-- IPv4Range. If the network the VM instance is being created in is an auto
-- Subnet Mode Network, then only network name should be specified (not the
-- subnetwork_name) and the IP address is created from the IPCidrRange of
-- the subnetwork that exists in that zone for that network. If the network
-- the VM instance is being created in is a custom Subnet Mode Network,
-- then the subnetwork_name must be specified and the IP address is created
-- from the IPCidrRange of the subnetwork.If specified, the subnetwork must
-- exist in the same region as the Flex app.
nSubnetworkName :: Lens' Network (Maybe Text)
nSubnetworkName
  = lens _nSubnetworkName
      (\ s a -> s{_nSubnetworkName = a})

-- | List of ports, or port pairs, to forward from the virtual machine to the
-- application container.
nForwardedPorts :: Lens' Network [Text]
nForwardedPorts
  = lens _nForwardedPorts
      (\ s a -> s{_nForwardedPorts = a})
      . _Default
      . _Coerce

-- | Tag to apply to the VM instance during creation.
nInstanceTag :: Lens' Network (Maybe Text)
nInstanceTag
  = lens _nInstanceTag (\ s a -> s{_nInstanceTag = a})

-- | Google Cloud Platform network where the virtual machines are created.
-- Specify the short name, not the resource path.Defaults to default.
nName :: Lens' Network (Maybe Text)
nName = lens _nName (\ s a -> s{_nName = a})

instance FromJSON Network where
        parseJSON
          = withObject "Network"
              (\ o ->
                 Network' <$>
                   (o .:? "subnetworkName") <*>
                     (o .:? "forwardedPorts" .!= mempty)
                     <*> (o .:? "instanceTag")
                     <*> (o .:? "name"))

instance ToJSON Network where
        toJSON Network'{..}
          = object
              (catMaybes
                 [("subnetworkName" .=) <$> _nSubnetworkName,
                  ("forwardedPorts" .=) <$> _nForwardedPorts,
                  ("instanceTag" .=) <$> _nInstanceTag,
                  ("name" .=) <$> _nName])

-- | Request message for Instances.DebugInstance.
--
-- /See:/ 'debugInstanceRequest' smart constructor.
newtype DebugInstanceRequest = DebugInstanceRequest'
    { _dirSSHKey :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DebugInstanceRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dirSSHKey'
debugInstanceRequest
    :: DebugInstanceRequest
debugInstanceRequest =
    DebugInstanceRequest'
    { _dirSSHKey = Nothing
    }

-- | Public SSH key to add to the instance. Examples: [USERNAME]:ssh-rsa
-- [KEY_VALUE] [USERNAME] [USERNAME]:ssh-rsa [KEY_VALUE] google-ssh
-- {\"userName\":\"[USERNAME]\",\"expireOn\":\"[EXPIRE_TIME]\"}For more
-- information, see Adding and Removing SSH Keys
-- (https:\/\/cloud.google.com\/compute\/docs\/instances\/adding-removing-ssh-keys).
dirSSHKey :: Lens' DebugInstanceRequest (Maybe Text)
dirSSHKey
  = lens _dirSSHKey (\ s a -> s{_dirSSHKey = a})

instance FromJSON DebugInstanceRequest where
        parseJSON
          = withObject "DebugInstanceRequest"
              (\ o -> DebugInstanceRequest' <$> (o .:? "sshKey"))

instance ToJSON DebugInstanceRequest where
        toJSON DebugInstanceRequest'{..}
          = object (catMaybes [("sshKey" .=) <$> _dirSSHKey])

-- | HTTP headers to use for all responses from these URLs.
--
-- /See:/ 'staticFilesHandlerHTTPHeaders' smart constructor.
newtype StaticFilesHandlerHTTPHeaders = StaticFilesHandlerHTTPHeaders'
    { _sfhhttphAddtional :: HashMap Text Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'StaticFilesHandlerHTTPHeaders' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sfhhttphAddtional'
staticFilesHandlerHTTPHeaders
    :: HashMap Text Text -- ^ 'sfhhttphAddtional'
    -> StaticFilesHandlerHTTPHeaders
staticFilesHandlerHTTPHeaders pSfhhttphAddtional_ =
    StaticFilesHandlerHTTPHeaders'
    { _sfhhttphAddtional = _Coerce # pSfhhttphAddtional_
    }

sfhhttphAddtional :: Lens' StaticFilesHandlerHTTPHeaders (HashMap Text Text)
sfhhttphAddtional
  = lens _sfhhttphAddtional
      (\ s a -> s{_sfhhttphAddtional = a})
      . _Coerce

instance FromJSON StaticFilesHandlerHTTPHeaders where
        parseJSON
          = withObject "StaticFilesHandlerHTTPHeaders"
              (\ o ->
                 StaticFilesHandlerHTTPHeaders' <$>
                   (parseJSONObject o))

instance ToJSON StaticFilesHandlerHTTPHeaders where
        toJSON = toJSON . _sfhhttphAddtional

-- | Machine resources for a version.
--
-- /See:/ 'resources' smart constructor.
data Resources = Resources'
    { _rMemoryGb :: !(Maybe (Textual Double))
    , _rDiskGb   :: !(Maybe (Textual Double))
    , _rVolumes  :: !(Maybe [Volume])
    , _rCPU      :: !(Maybe (Textual Double))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Resources' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rMemoryGb'
--
-- * 'rDiskGb'
--
-- * 'rVolumes'
--
-- * 'rCPU'
resources
    :: Resources
resources =
    Resources'
    { _rMemoryGb = Nothing
    , _rDiskGb = Nothing
    , _rVolumes = Nothing
    , _rCPU = Nothing
    }

-- | Memory (GB) needed.
rMemoryGb :: Lens' Resources (Maybe Double)
rMemoryGb
  = lens _rMemoryGb (\ s a -> s{_rMemoryGb = a}) .
      mapping _Coerce

-- | Disk size (GB) needed.
rDiskGb :: Lens' Resources (Maybe Double)
rDiskGb
  = lens _rDiskGb (\ s a -> s{_rDiskGb = a}) .
      mapping _Coerce

-- | User specified volumes.
rVolumes :: Lens' Resources [Volume]
rVolumes
  = lens _rVolumes (\ s a -> s{_rVolumes = a}) .
      _Default
      . _Coerce

-- | Number of CPU cores needed.
rCPU :: Lens' Resources (Maybe Double)
rCPU
  = lens _rCPU (\ s a -> s{_rCPU = a}) .
      mapping _Coerce

instance FromJSON Resources where
        parseJSON
          = withObject "Resources"
              (\ o ->
                 Resources' <$>
                   (o .:? "memoryGb") <*> (o .:? "diskGb") <*>
                     (o .:? "volumes" .!= mempty)
                     <*> (o .:? "cpu"))

instance ToJSON Resources where
        toJSON Resources'{..}
          = object
              (catMaybes
                 [("memoryGb" .=) <$> _rMemoryGb,
                  ("diskGb" .=) <$> _rDiskGb,
                  ("volumes" .=) <$> _rVolumes, ("cpu" .=) <$> _rCPU])

-- | Manifest of the files stored in Google Cloud Storage that are included
-- as part of this version. All files must be readable using the
-- credentials supplied with this call.
--
-- /See:/ 'deploymentFiles' smart constructor.
newtype DeploymentFiles = DeploymentFiles'
    { _dfAddtional :: HashMap Text FileInfo
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeploymentFiles' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfAddtional'
deploymentFiles
    :: HashMap Text FileInfo -- ^ 'dfAddtional'
    -> DeploymentFiles
deploymentFiles pDfAddtional_ =
    DeploymentFiles'
    { _dfAddtional = _Coerce # pDfAddtional_
    }

dfAddtional :: Lens' DeploymentFiles (HashMap Text FileInfo)
dfAddtional
  = lens _dfAddtional (\ s a -> s{_dfAddtional = a}) .
      _Coerce

instance FromJSON DeploymentFiles where
        parseJSON
          = withObject "DeploymentFiles"
              (\ o -> DeploymentFiles' <$> (parseJSONObject o))

instance ToJSON DeploymentFiles where
        toJSON = toJSON . _dfAddtional

-- | Target scaling by CPU usage.
--
-- /See:/ 'cpuUtilization' smart constructor.
data CPUUtilization = CPUUtilization'
    { _cuAggregationWindowLength :: !(Maybe Text)
    , _cuTargetUtilization       :: !(Maybe (Textual Double))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CPUUtilization' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuAggregationWindowLength'
--
-- * 'cuTargetUtilization'
cpuUtilization
    :: CPUUtilization
cpuUtilization =
    CPUUtilization'
    { _cuAggregationWindowLength = Nothing
    , _cuTargetUtilization = Nothing
    }

-- | Period of time over which CPU utilization is calculated.
cuAggregationWindowLength :: Lens' CPUUtilization (Maybe Text)
cuAggregationWindowLength
  = lens _cuAggregationWindowLength
      (\ s a -> s{_cuAggregationWindowLength = a})

-- | Target CPU utilization ratio to maintain when scaling. Must be between 0
-- and 1.
cuTargetUtilization :: Lens' CPUUtilization (Maybe Double)
cuTargetUtilization
  = lens _cuTargetUtilization
      (\ s a -> s{_cuTargetUtilization = a})
      . mapping _Coerce

instance FromJSON CPUUtilization where
        parseJSON
          = withObject "CPUUtilization"
              (\ o ->
                 CPUUtilization' <$>
                   (o .:? "aggregationWindowLength") <*>
                     (o .:? "targetUtilization"))

instance ToJSON CPUUtilization where
        toJSON CPUUtilization'{..}
          = object
              (catMaybes
                 [("aggregationWindowLength" .=) <$>
                    _cuAggregationWindowLength,
                  ("targetUtilization" .=) <$> _cuTargetUtilization])

-- | Mapping from version IDs within the service to fractional (0.000, 1]
-- allocations of traffic for that version. Each version can be specified
-- only once, but some versions in the service may not have any traffic
-- allocation. Services that have traffic allocated cannot be deleted until
-- either the service is deleted or their traffic allocation is removed.
-- Allocations must sum to 1. Up to two decimal place precision is
-- supported for IP-based splits and up to three decimal places is
-- supported for cookie-based splits.
--
-- /See:/ 'trafficSplitAllocations' smart constructor.
newtype TrafficSplitAllocations = TrafficSplitAllocations'
    { _tsaAddtional :: HashMap Text (Textual Double)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TrafficSplitAllocations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsaAddtional'
trafficSplitAllocations
    :: HashMap Text Double -- ^ 'tsaAddtional'
    -> TrafficSplitAllocations
trafficSplitAllocations pTsaAddtional_ =
    TrafficSplitAllocations'
    { _tsaAddtional = _Coerce # pTsaAddtional_
    }

tsaAddtional :: Lens' TrafficSplitAllocations (HashMap Text Double)
tsaAddtional
  = lens _tsaAddtional (\ s a -> s{_tsaAddtional = a})
      . _Coerce

instance FromJSON TrafficSplitAllocations where
        parseJSON
          = withObject "TrafficSplitAllocations"
              (\ o ->
                 TrafficSplitAllocations' <$> (parseJSONObject o))

instance ToJSON TrafficSplitAllocations where
        toJSON = toJSON . _tsaAddtional

-- | A service with manual scaling runs continuously, allowing you to perform
-- complex initialization and rely on the state of its memory over time.
--
-- /See:/ 'manualScaling' smart constructor.
newtype ManualScaling = ManualScaling'
    { _msInstances :: Maybe (Textual Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManualScaling' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'msInstances'
manualScaling
    :: ManualScaling
manualScaling =
    ManualScaling'
    { _msInstances = Nothing
    }

-- | Number of instances to assign to the service at the start. This number
-- can later be altered by using the Modules API
-- (https:\/\/cloud.google.com\/appengine\/docs\/python\/modules\/functions)
-- set_num_instances() function.
msInstances :: Lens' ManualScaling (Maybe Int32)
msInstances
  = lens _msInstances (\ s a -> s{_msInstances = a}) .
      mapping _Coerce

instance FromJSON ManualScaling where
        parseJSON
          = withObject "ManualScaling"
              (\ o -> ManualScaling' <$> (o .:? "instances"))

instance ToJSON ManualScaling where
        toJSON ManualScaling'{..}
          = object
              (catMaybes [("instances" .=) <$> _msInstances])

-- | A service with basic scaling will create an instance when the
-- application receives a request. The instance will be turned down when
-- the app becomes idle. Basic scaling is ideal for work that is
-- intermittent or driven by user activity.
--
-- /See:/ 'basicScaling' smart constructor.
data BasicScaling = BasicScaling'
    { _bsMaxInstances :: !(Maybe (Textual Int32))
    , _bsIdleTimeout  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    BasicScaling'
    { _bsMaxInstances = Nothing
    , _bsIdleTimeout = Nothing
    }

-- | Maximum number of instances to create for this version.
bsMaxInstances :: Lens' BasicScaling (Maybe Int32)
bsMaxInstances
  = lens _bsMaxInstances
      (\ s a -> s{_bsMaxInstances = a})
      . mapping _Coerce

-- | Duration of time after the last request that an instance must wait
-- before the instance is shut down.
bsIdleTimeout :: Lens' BasicScaling (Maybe Text)
bsIdleTimeout
  = lens _bsIdleTimeout
      (\ s a -> s{_bsIdleTimeout = a})

instance FromJSON BasicScaling where
        parseJSON
          = withObject "BasicScaling"
              (\ o ->
                 BasicScaling' <$>
                   (o .:? "maxInstances") <*> (o .:? "idleTimeout"))

instance ToJSON BasicScaling where
        toJSON BasicScaling'{..}
          = object
              (catMaybes
                 [("maxInstances" .=) <$> _bsMaxInstances,
                  ("idleTimeout" .=) <$> _bsIdleTimeout])

-- | Metadata for the given google.longrunning.Operation.
--
-- /See:/ 'operationMetadataV1' smart constructor.
data OperationMetadataV1 = OperationMetadataV1'
    { _omvEphemeralMessage :: !(Maybe Text)
    , _omvInsertTime       :: !(Maybe Text)
    , _omvUser             :: !(Maybe Text)
    , _omvMethod           :: !(Maybe Text)
    , _omvEndTime          :: !(Maybe Text)
    , _omvWarning          :: !(Maybe [Text])
    , _omvTarget           :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationMetadataV1' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'omvEphemeralMessage'
--
-- * 'omvInsertTime'
--
-- * 'omvUser'
--
-- * 'omvMethod'
--
-- * 'omvEndTime'
--
-- * 'omvWarning'
--
-- * 'omvTarget'
operationMetadataV1
    :: OperationMetadataV1
operationMetadataV1 =
    OperationMetadataV1'
    { _omvEphemeralMessage = Nothing
    , _omvInsertTime = Nothing
    , _omvUser = Nothing
    , _omvMethod = Nothing
    , _omvEndTime = Nothing
    , _omvWarning = Nothing
    , _omvTarget = Nothing
    }

-- | Ephemeral message that may change every time the operation is polled.
-- \'OutputOnly
omvEphemeralMessage :: Lens' OperationMetadataV1 (Maybe Text)
omvEphemeralMessage
  = lens _omvEphemeralMessage
      (\ s a -> s{_omvEphemeralMessage = a})

-- | Time that this operation was created.\'OutputOnly
omvInsertTime :: Lens' OperationMetadataV1 (Maybe Text)
omvInsertTime
  = lens _omvInsertTime
      (\ s a -> s{_omvInsertTime = a})

-- | User who requested this operation.\'OutputOnly
omvUser :: Lens' OperationMetadataV1 (Maybe Text)
omvUser = lens _omvUser (\ s a -> s{_omvUser = a})

-- | API method that initiated this operation. Example:
-- google.appengine.v1.Versions.CreateVersion.\'OutputOnly
omvMethod :: Lens' OperationMetadataV1 (Maybe Text)
omvMethod
  = lens _omvMethod (\ s a -> s{_omvMethod = a})

-- | Time that this operation completed.\'OutputOnly
omvEndTime :: Lens' OperationMetadataV1 (Maybe Text)
omvEndTime
  = lens _omvEndTime (\ s a -> s{_omvEndTime = a})

-- | Durable messages that persist on every operation poll. \'OutputOnly
omvWarning :: Lens' OperationMetadataV1 [Text]
omvWarning
  = lens _omvWarning (\ s a -> s{_omvWarning = a}) .
      _Default
      . _Coerce

-- | Name of the resource that this operation is acting on. Example:
-- apps\/myapp\/services\/default.\'OutputOnly
omvTarget :: Lens' OperationMetadataV1 (Maybe Text)
omvTarget
  = lens _omvTarget (\ s a -> s{_omvTarget = a})

instance FromJSON OperationMetadataV1 where
        parseJSON
          = withObject "OperationMetadataV1"
              (\ o ->
                 OperationMetadataV1' <$>
                   (o .:? "ephemeralMessage") <*> (o .:? "insertTime")
                     <*> (o .:? "user")
                     <*> (o .:? "method")
                     <*> (o .:? "endTime")
                     <*> (o .:? "warning" .!= mempty)
                     <*> (o .:? "target"))

instance ToJSON OperationMetadataV1 where
        toJSON OperationMetadataV1'{..}
          = object
              (catMaybes
                 [("ephemeralMessage" .=) <$> _omvEphemeralMessage,
                  ("insertTime" .=) <$> _omvInsertTime,
                  ("user" .=) <$> _omvUser,
                  ("method" .=) <$> _omvMethod,
                  ("endTime" .=) <$> _omvEndTime,
                  ("warning" .=) <$> _omvWarning,
                  ("target" .=) <$> _omvTarget])

-- | A Version resource is a specific set of source code and configuration
-- files that are deployed into a service.
--
-- /See:/ 'version' smart constructor.
data Version = Version'
    { _verRuntime             :: !(Maybe Text)
    , _verNobuildFilesRegex   :: !(Maybe Text)
    , _verInstanceClass       :: !(Maybe Text)
    , _verHealthCheck         :: !(Maybe HealthCheck)
    , _verEndpointsAPIService :: !(Maybe EndpointsAPIService)
    , _verEnv                 :: !(Maybe Text)
    , _verDefaultExpiration   :: !(Maybe Text)
    , _verAutomaticScaling    :: !(Maybe AutomaticScaling)
    , _verErrorHandlers       :: !(Maybe [ErrorHandler])
    , _verCreatedBy           :: !(Maybe Text)
    , _verVM                  :: !(Maybe Bool)
    , _verHandlers            :: !(Maybe [URLMap])
    , _verInboundServices     :: !(Maybe [Text])
    , _verNetwork             :: !(Maybe Network)
    , _verResources           :: !(Maybe Resources)
    , _verName                :: !(Maybe Text)
    , _verThreadsafe          :: !(Maybe Bool)
    , _verBetaSettings        :: !(Maybe VersionBetaSettings)
    , _verBasicScaling        :: !(Maybe BasicScaling)
    , _verManualScaling       :: !(Maybe ManualScaling)
    , _verAPIConfig           :: !(Maybe APIConfigHandler)
    , _verId                  :: !(Maybe Text)
    , _verEnvVariables        :: !(Maybe VersionEnvVariables)
    , _verServingStatus       :: !(Maybe Text)
    , _verDiskUsageBytes      :: !(Maybe (Textual Int64))
    , _verCreateTime          :: !(Maybe Text)
    , _verLibraries           :: !(Maybe [Library])
    , _verVersionURL          :: !(Maybe Text)
    , _verDeployment          :: !(Maybe Deployment)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Version' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'verRuntime'
--
-- * 'verNobuildFilesRegex'
--
-- * 'verInstanceClass'
--
-- * 'verHealthCheck'
--
-- * 'verEndpointsAPIService'
--
-- * 'verEnv'
--
-- * 'verDefaultExpiration'
--
-- * 'verAutomaticScaling'
--
-- * 'verErrorHandlers'
--
-- * 'verCreatedBy'
--
-- * 'verVM'
--
-- * 'verHandlers'
--
-- * 'verInboundServices'
--
-- * 'verNetwork'
--
-- * 'verResources'
--
-- * 'verName'
--
-- * 'verThreadsafe'
--
-- * 'verBetaSettings'
--
-- * 'verBasicScaling'
--
-- * 'verManualScaling'
--
-- * 'verAPIConfig'
--
-- * 'verId'
--
-- * 'verEnvVariables'
--
-- * 'verServingStatus'
--
-- * 'verDiskUsageBytes'
--
-- * 'verCreateTime'
--
-- * 'verLibraries'
--
-- * 'verVersionURL'
--
-- * 'verDeployment'
version
    :: Version
version =
    Version'
    { _verRuntime = Nothing
    , _verNobuildFilesRegex = Nothing
    , _verInstanceClass = Nothing
    , _verHealthCheck = Nothing
    , _verEndpointsAPIService = Nothing
    , _verEnv = Nothing
    , _verDefaultExpiration = Nothing
    , _verAutomaticScaling = Nothing
    , _verErrorHandlers = Nothing
    , _verCreatedBy = Nothing
    , _verVM = Nothing
    , _verHandlers = Nothing
    , _verInboundServices = Nothing
    , _verNetwork = Nothing
    , _verResources = Nothing
    , _verName = Nothing
    , _verThreadsafe = Nothing
    , _verBetaSettings = Nothing
    , _verBasicScaling = Nothing
    , _verManualScaling = Nothing
    , _verAPIConfig = Nothing
    , _verId = Nothing
    , _verEnvVariables = Nothing
    , _verServingStatus = Nothing
    , _verDiskUsageBytes = Nothing
    , _verCreateTime = Nothing
    , _verLibraries = Nothing
    , _verVersionURL = Nothing
    , _verDeployment = Nothing
    }

-- | Desired runtime. Example: python27.
verRuntime :: Lens' Version (Maybe Text)
verRuntime
  = lens _verRuntime (\ s a -> s{_verRuntime = a})

-- | Files that match this pattern will not be built into this version. Only
-- applicable for Go runtimes.Only returned in GET requests if view=FULL is
-- set.
verNobuildFilesRegex :: Lens' Version (Maybe Text)
verNobuildFilesRegex
  = lens _verNobuildFilesRegex
      (\ s a -> s{_verNobuildFilesRegex = a})

-- | Instance class that is used to run this version. Valid values are:
-- AutomaticScaling: F1, F2, F4, F4_1G ManualScaling or BasicScaling: B1,
-- B2, B4, B8, B4_1GDefaults to F1 for AutomaticScaling and B1 for
-- ManualScaling or BasicScaling.
verInstanceClass :: Lens' Version (Maybe Text)
verInstanceClass
  = lens _verInstanceClass
      (\ s a -> s{_verInstanceClass = a})

-- | Configures health checking for VM instances. Unhealthy instances are
-- stopped and replaced with new instances. Only applicable for VM
-- runtimes.Only returned in GET requests if view=FULL is set.
verHealthCheck :: Lens' Version (Maybe HealthCheck)
verHealthCheck
  = lens _verHealthCheck
      (\ s a -> s{_verHealthCheck = a})

-- | Cloud Endpoints configuration.If endpoints_api_service is set, the Cloud
-- Endpoints Extensible Service Proxy will be provided to serve the API
-- implemented by the app.
verEndpointsAPIService :: Lens' Version (Maybe EndpointsAPIService)
verEndpointsAPIService
  = lens _verEndpointsAPIService
      (\ s a -> s{_verEndpointsAPIService = a})

-- | App Engine execution environment for this version.Defaults to standard.
verEnv :: Lens' Version (Maybe Text)
verEnv = lens _verEnv (\ s a -> s{_verEnv = a})

-- | Duration that static files should be cached by web proxies and browsers.
-- Only applicable if the corresponding StaticFilesHandler
-- (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#staticfileshandler)
-- does not specify its own expiration time.Only returned in GET requests
-- if view=FULL is set.
verDefaultExpiration :: Lens' Version (Maybe Text)
verDefaultExpiration
  = lens _verDefaultExpiration
      (\ s a -> s{_verDefaultExpiration = a})

-- | Automatic scaling is based on request rate, response latencies, and
-- other application metrics.
verAutomaticScaling :: Lens' Version (Maybe AutomaticScaling)
verAutomaticScaling
  = lens _verAutomaticScaling
      (\ s a -> s{_verAutomaticScaling = a})

-- | Custom static error pages. Limited to 10KB per page.Only returned in GET
-- requests if view=FULL is set.
verErrorHandlers :: Lens' Version [ErrorHandler]
verErrorHandlers
  = lens _verErrorHandlers
      (\ s a -> s{_verErrorHandlers = a})
      . _Default
      . _Coerce

-- | Email address of the user who created this version.\'OutputOnly
verCreatedBy :: Lens' Version (Maybe Text)
verCreatedBy
  = lens _verCreatedBy (\ s a -> s{_verCreatedBy = a})

-- | Whether to deploy this version in a container on a virtual machine.
verVM :: Lens' Version (Maybe Bool)
verVM = lens _verVM (\ s a -> s{_verVM = a})

-- | An ordered list of URL-matching patterns that should be applied to
-- incoming requests. The first matching URL handles the request and other
-- request handlers are not attempted.Only returned in GET requests if
-- view=FULL is set.
verHandlers :: Lens' Version [URLMap]
verHandlers
  = lens _verHandlers (\ s a -> s{_verHandlers = a}) .
      _Default
      . _Coerce

-- | Before an application can receive email or XMPP messages, the
-- application must be configured to enable the service.
verInboundServices :: Lens' Version [Text]
verInboundServices
  = lens _verInboundServices
      (\ s a -> s{_verInboundServices = a})
      . _Default
      . _Coerce

-- | Extra network settings. Only applicable for VM runtimes.
verNetwork :: Lens' Version (Maybe Network)
verNetwork
  = lens _verNetwork (\ s a -> s{_verNetwork = a})

-- | Machine resources for this version. Only applicable for VM runtimes.
verResources :: Lens' Version (Maybe Resources)
verResources
  = lens _verResources (\ s a -> s{_verResources = a})

-- | Full path to the Version resource in the API. Example:
-- apps\/myapp\/services\/default\/versions\/v1.\'OutputOnly
verName :: Lens' Version (Maybe Text)
verName = lens _verName (\ s a -> s{_verName = a})

-- | Whether multiple requests can be dispatched to this version at once.
verThreadsafe :: Lens' Version (Maybe Bool)
verThreadsafe
  = lens _verThreadsafe
      (\ s a -> s{_verThreadsafe = a})

-- | Metadata settings that are supplied to this version to enable beta
-- runtime features.
verBetaSettings :: Lens' Version (Maybe VersionBetaSettings)
verBetaSettings
  = lens _verBetaSettings
      (\ s a -> s{_verBetaSettings = a})

-- | A service with basic scaling will create an instance when the
-- application receives a request. The instance will be turned down when
-- the app becomes idle. Basic scaling is ideal for work that is
-- intermittent or driven by user activity.
verBasicScaling :: Lens' Version (Maybe BasicScaling)
verBasicScaling
  = lens _verBasicScaling
      (\ s a -> s{_verBasicScaling = a})

-- | A service with manual scaling runs continuously, allowing you to perform
-- complex initialization and rely on the state of its memory over time.
verManualScaling :: Lens' Version (Maybe ManualScaling)
verManualScaling
  = lens _verManualScaling
      (\ s a -> s{_verManualScaling = a})

-- | Serving configuration for Google Cloud Endpoints
-- (https:\/\/cloud.google.com\/appengine\/docs\/python\/endpoints\/).Only
-- returned in GET requests if view=FULL is set.
verAPIConfig :: Lens' Version (Maybe APIConfigHandler)
verAPIConfig
  = lens _verAPIConfig (\ s a -> s{_verAPIConfig = a})

-- | Relative name of the version within the service. Example: v1. Version
-- names can contain only lowercase letters, numbers, or hyphens. Reserved
-- names: \"default\", \"latest\", and any name with the prefix \"ah-\".
verId :: Lens' Version (Maybe Text)
verId = lens _verId (\ s a -> s{_verId = a})

-- | Environment variables available to the application.Only returned in GET
-- requests if view=FULL is set.
verEnvVariables :: Lens' Version (Maybe VersionEnvVariables)
verEnvVariables
  = lens _verEnvVariables
      (\ s a -> s{_verEnvVariables = a})

-- | Current serving status of this version. Only the versions with a SERVING
-- status create instances and can be billed.SERVING_STATUS_UNSPECIFIED is
-- an invalid value. Defaults to SERVING.
verServingStatus :: Lens' Version (Maybe Text)
verServingStatus
  = lens _verServingStatus
      (\ s a -> s{_verServingStatus = a})

-- | Total size in bytes of all the files that are included in this version
-- and curerntly hosted on the App Engine disk.\'OutputOnly
verDiskUsageBytes :: Lens' Version (Maybe Int64)
verDiskUsageBytes
  = lens _verDiskUsageBytes
      (\ s a -> s{_verDiskUsageBytes = a})
      . mapping _Coerce

-- | Time that this version was created.\'OutputOnly
verCreateTime :: Lens' Version (Maybe Text)
verCreateTime
  = lens _verCreateTime
      (\ s a -> s{_verCreateTime = a})

-- | Configuration for third-party Python runtime libraries that are required
-- by the application.Only returned in GET requests if view=FULL is set.
verLibraries :: Lens' Version [Library]
verLibraries
  = lens _verLibraries (\ s a -> s{_verLibraries = a})
      . _Default
      . _Coerce

-- | Serving URL for this version. Example:
-- \"https:\/\/myversion-dot-myservice-dot-myapp.appspot.com\"\'OutputOnly
verVersionURL :: Lens' Version (Maybe Text)
verVersionURL
  = lens _verVersionURL
      (\ s a -> s{_verVersionURL = a})

-- | Code and application artifacts that make up this version.Only returned
-- in GET requests if view=FULL is set.
verDeployment :: Lens' Version (Maybe Deployment)
verDeployment
  = lens _verDeployment
      (\ s a -> s{_verDeployment = a})

instance FromJSON Version where
        parseJSON
          = withObject "Version"
              (\ o ->
                 Version' <$>
                   (o .:? "runtime") <*> (o .:? "nobuildFilesRegex") <*>
                     (o .:? "instanceClass")
                     <*> (o .:? "healthCheck")
                     <*> (o .:? "endpointsApiService")
                     <*> (o .:? "env")
                     <*> (o .:? "defaultExpiration")
                     <*> (o .:? "automaticScaling")
                     <*> (o .:? "errorHandlers" .!= mempty)
                     <*> (o .:? "createdBy")
                     <*> (o .:? "vm")
                     <*> (o .:? "handlers" .!= mempty)
                     <*> (o .:? "inboundServices" .!= mempty)
                     <*> (o .:? "network")
                     <*> (o .:? "resources")
                     <*> (o .:? "name")
                     <*> (o .:? "threadsafe")
                     <*> (o .:? "betaSettings")
                     <*> (o .:? "basicScaling")
                     <*> (o .:? "manualScaling")
                     <*> (o .:? "apiConfig")
                     <*> (o .:? "id")
                     <*> (o .:? "envVariables")
                     <*> (o .:? "servingStatus")
                     <*> (o .:? "diskUsageBytes")
                     <*> (o .:? "createTime")
                     <*> (o .:? "libraries" .!= mempty)
                     <*> (o .:? "versionUrl")
                     <*> (o .:? "deployment"))

instance ToJSON Version where
        toJSON Version'{..}
          = object
              (catMaybes
                 [("runtime" .=) <$> _verRuntime,
                  ("nobuildFilesRegex" .=) <$> _verNobuildFilesRegex,
                  ("instanceClass" .=) <$> _verInstanceClass,
                  ("healthCheck" .=) <$> _verHealthCheck,
                  ("endpointsApiService" .=) <$>
                    _verEndpointsAPIService,
                  ("env" .=) <$> _verEnv,
                  ("defaultExpiration" .=) <$> _verDefaultExpiration,
                  ("automaticScaling" .=) <$> _verAutomaticScaling,
                  ("errorHandlers" .=) <$> _verErrorHandlers,
                  ("createdBy" .=) <$> _verCreatedBy,
                  ("vm" .=) <$> _verVM,
                  ("handlers" .=) <$> _verHandlers,
                  ("inboundServices" .=) <$> _verInboundServices,
                  ("network" .=) <$> _verNetwork,
                  ("resources" .=) <$> _verResources,
                  ("name" .=) <$> _verName,
                  ("threadsafe" .=) <$> _verThreadsafe,
                  ("betaSettings" .=) <$> _verBetaSettings,
                  ("basicScaling" .=) <$> _verBasicScaling,
                  ("manualScaling" .=) <$> _verManualScaling,
                  ("apiConfig" .=) <$> _verAPIConfig,
                  ("id" .=) <$> _verId,
                  ("envVariables" .=) <$> _verEnvVariables,
                  ("servingStatus" .=) <$> _verServingStatus,
                  ("diskUsageBytes" .=) <$> _verDiskUsageBytes,
                  ("createTime" .=) <$> _verCreateTime,
                  ("libraries" .=) <$> _verLibraries,
                  ("versionUrl" .=) <$> _verVersionURL,
                  ("deployment" .=) <$> _verDeployment])

-- | Files served directly to the user for a given URL, such as images, CSS
-- stylesheets, or JavaScript source files. Static file handlers describe
-- which files in the application directory are static files, and which
-- URLs serve them.
--
-- /See:/ 'staticFilesHandler' smart constructor.
data StaticFilesHandler = StaticFilesHandler'
    { _sfhHTTPHeaders         :: !(Maybe StaticFilesHandlerHTTPHeaders)
    , _sfhPath                :: !(Maybe Text)
    , _sfhRequireMatchingFile :: !(Maybe Bool)
    , _sfhExpiration          :: !(Maybe Text)
    , _sfhMimeType            :: !(Maybe Text)
    , _sfhApplicationReadable :: !(Maybe Bool)
    , _sfhUploadPathRegex     :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'StaticFilesHandler' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sfhHTTPHeaders'
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
    StaticFilesHandler'
    { _sfhHTTPHeaders = Nothing
    , _sfhPath = Nothing
    , _sfhRequireMatchingFile = Nothing
    , _sfhExpiration = Nothing
    , _sfhMimeType = Nothing
    , _sfhApplicationReadable = Nothing
    , _sfhUploadPathRegex = Nothing
    }

-- | HTTP headers to use for all responses from these URLs.
sfhHTTPHeaders :: Lens' StaticFilesHandler (Maybe StaticFilesHandlerHTTPHeaders)
sfhHTTPHeaders
  = lens _sfhHTTPHeaders
      (\ s a -> s{_sfhHTTPHeaders = a})

-- | Path to the static files matched by the URL pattern, from the
-- application root directory. The path can refer to text matched in
-- groupings in the URL pattern.
sfhPath :: Lens' StaticFilesHandler (Maybe Text)
sfhPath = lens _sfhPath (\ s a -> s{_sfhPath = a})

-- | Whether this handler should match the request if the file referenced by
-- the handler does not exist.
sfhRequireMatchingFile :: Lens' StaticFilesHandler (Maybe Bool)
sfhRequireMatchingFile
  = lens _sfhRequireMatchingFile
      (\ s a -> s{_sfhRequireMatchingFile = a})

-- | Time a static file served by this handler should be cached by web
-- proxies and browsers.
sfhExpiration :: Lens' StaticFilesHandler (Maybe Text)
sfhExpiration
  = lens _sfhExpiration
      (\ s a -> s{_sfhExpiration = a})

-- | MIME type used to serve all files served by this handler.Defaults to
-- file-specific MIME types, which are derived from each file\'s filename
-- extension.
sfhMimeType :: Lens' StaticFilesHandler (Maybe Text)
sfhMimeType
  = lens _sfhMimeType (\ s a -> s{_sfhMimeType = a})

-- | Whether files should also be uploaded as code data. By default, files
-- declared in static file handlers are uploaded as static data and are
-- only served to end users; they cannot be read by the application. If
-- enabled, uploads are charged against both your code and static data
-- storage resource quotas.
sfhApplicationReadable :: Lens' StaticFilesHandler (Maybe Bool)
sfhApplicationReadable
  = lens _sfhApplicationReadable
      (\ s a -> s{_sfhApplicationReadable = a})

-- | Regular expression that matches the file paths for all files that should
-- be referenced by this handler.
sfhUploadPathRegex :: Lens' StaticFilesHandler (Maybe Text)
sfhUploadPathRegex
  = lens _sfhUploadPathRegex
      (\ s a -> s{_sfhUploadPathRegex = a})

instance FromJSON StaticFilesHandler where
        parseJSON
          = withObject "StaticFilesHandler"
              (\ o ->
                 StaticFilesHandler' <$>
                   (o .:? "httpHeaders") <*> (o .:? "path") <*>
                     (o .:? "requireMatchingFile")
                     <*> (o .:? "expiration")
                     <*> (o .:? "mimeType")
                     <*> (o .:? "applicationReadable")
                     <*> (o .:? "uploadPathRegex"))

instance ToJSON StaticFilesHandler where
        toJSON StaticFilesHandler'{..}
          = object
              (catMaybes
                 [("httpHeaders" .=) <$> _sfhHTTPHeaders,
                  ("path" .=) <$> _sfhPath,
                  ("requireMatchingFile" .=) <$>
                    _sfhRequireMatchingFile,
                  ("expiration" .=) <$> _sfhExpiration,
                  ("mimeType" .=) <$> _sfhMimeType,
                  ("applicationReadable" .=) <$>
                    _sfhApplicationReadable,
                  ("uploadPathRegex" .=) <$> _sfhUploadPathRegex])

-- | Custom static error page to be served when an error occurs.
--
-- /See:/ 'errorHandler' smart constructor.
data ErrorHandler = ErrorHandler'
    { _ehMimeType   :: !(Maybe Text)
    , _ehErrorCode  :: !(Maybe Text)
    , _ehStaticFile :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    ErrorHandler'
    { _ehMimeType = Nothing
    , _ehErrorCode = Nothing
    , _ehStaticFile = Nothing
    }

-- | MIME type of file. Defaults to text\/html.
ehMimeType :: Lens' ErrorHandler (Maybe Text)
ehMimeType
  = lens _ehMimeType (\ s a -> s{_ehMimeType = a})

-- | Error condition this handler applies to.
ehErrorCode :: Lens' ErrorHandler (Maybe Text)
ehErrorCode
  = lens _ehErrorCode (\ s a -> s{_ehErrorCode = a})

-- | Static file content to be served for this error.
ehStaticFile :: Lens' ErrorHandler (Maybe Text)
ehStaticFile
  = lens _ehStaticFile (\ s a -> s{_ehStaticFile = a})

instance FromJSON ErrorHandler where
        parseJSON
          = withObject "ErrorHandler"
              (\ o ->
                 ErrorHandler' <$>
                   (o .:? "mimeType") <*> (o .:? "errorCode") <*>
                     (o .:? "staticFile"))

instance ToJSON ErrorHandler where
        toJSON ErrorHandler'{..}
          = object
              (catMaybes
                 [("mimeType" .=) <$> _ehMimeType,
                  ("errorCode" .=) <$> _ehErrorCode,
                  ("staticFile" .=) <$> _ehStaticFile])

-- | Cross-service attributes for the location. For example
-- {\"cloud.googleapis.com\/region\": \"us-east1\"}
--
-- /See:/ 'locationLabels' smart constructor.
newtype LocationLabels = LocationLabels'
    { _llAddtional :: HashMap Text Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LocationLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llAddtional'
locationLabels
    :: HashMap Text Text -- ^ 'llAddtional'
    -> LocationLabels
locationLabels pLlAddtional_ =
    LocationLabels'
    { _llAddtional = _Coerce # pLlAddtional_
    }

llAddtional :: Lens' LocationLabels (HashMap Text Text)
llAddtional
  = lens _llAddtional (\ s a -> s{_llAddtional = a}) .
      _Coerce

instance FromJSON LocationLabels where
        parseJSON
          = withObject "LocationLabels"
              (\ o -> LocationLabels' <$> (parseJSONObject o))

instance ToJSON LocationLabels where
        toJSON = toJSON . _llAddtional

-- | Metadata for the given google.cloud.location.Location.
--
-- /See:/ 'locationMetadata' smart constructor.
data LocationMetadata = LocationMetadata'
    { _lmStandardEnvironmentAvailable :: !(Maybe Bool)
    , _lmFlexibleEnvironmentAvailable :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LocationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmStandardEnvironmentAvailable'
--
-- * 'lmFlexibleEnvironmentAvailable'
locationMetadata
    :: LocationMetadata
locationMetadata =
    LocationMetadata'
    { _lmStandardEnvironmentAvailable = Nothing
    , _lmFlexibleEnvironmentAvailable = Nothing
    }

-- | App Engine Standard Environment is available in the given
-- location.\'OutputOnly
lmStandardEnvironmentAvailable :: Lens' LocationMetadata (Maybe Bool)
lmStandardEnvironmentAvailable
  = lens _lmStandardEnvironmentAvailable
      (\ s a -> s{_lmStandardEnvironmentAvailable = a})

-- | App Engine Flexible Environment is available in the given
-- location.\'OutputOnly
lmFlexibleEnvironmentAvailable :: Lens' LocationMetadata (Maybe Bool)
lmFlexibleEnvironmentAvailable
  = lens _lmFlexibleEnvironmentAvailable
      (\ s a -> s{_lmFlexibleEnvironmentAvailable = a})

instance FromJSON LocationMetadata where
        parseJSON
          = withObject "LocationMetadata"
              (\ o ->
                 LocationMetadata' <$>
                   (o .:? "standardEnvironmentAvailable") <*>
                     (o .:? "flexibleEnvironmentAvailable"))

instance ToJSON LocationMetadata where
        toJSON LocationMetadata'{..}
          = object
              (catMaybes
                 [("standardEnvironmentAvailable" .=) <$>
                    _lmStandardEnvironmentAvailable,
                  ("flexibleEnvironmentAvailable" .=) <$>
                    _lmFlexibleEnvironmentAvailable])

-- | Metadata for the given google.longrunning.Operation.
--
-- /See:/ 'operationMetadata' smart constructor.
data OperationMetadata = OperationMetadata'
    { _omInsertTime    :: !(Maybe Text)
    , _omUser          :: !(Maybe Text)
    , _omMethod        :: !(Maybe Text)
    , _omEndTime       :: !(Maybe Text)
    , _omOperationType :: !(Maybe Text)
    , _omTarget        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'omInsertTime'
--
-- * 'omUser'
--
-- * 'omMethod'
--
-- * 'omEndTime'
--
-- * 'omOperationType'
--
-- * 'omTarget'
operationMetadata
    :: OperationMetadata
operationMetadata =
    OperationMetadata'
    { _omInsertTime = Nothing
    , _omUser = Nothing
    , _omMethod = Nothing
    , _omEndTime = Nothing
    , _omOperationType = Nothing
    , _omTarget = Nothing
    }

-- | Timestamp that this operation was created.\'OutputOnly
omInsertTime :: Lens' OperationMetadata (Maybe Text)
omInsertTime
  = lens _omInsertTime (\ s a -> s{_omInsertTime = a})

-- | User who requested this operation.\'OutputOnly
omUser :: Lens' OperationMetadata (Maybe Text)
omUser = lens _omUser (\ s a -> s{_omUser = a})

-- | API method that initiated this operation. Example:
-- google.appengine.v1beta4.Version.CreateVersion.\'OutputOnly
omMethod :: Lens' OperationMetadata (Maybe Text)
omMethod = lens _omMethod (\ s a -> s{_omMethod = a})

-- | Timestamp that this operation completed.\'OutputOnly
omEndTime :: Lens' OperationMetadata (Maybe Text)
omEndTime
  = lens _omEndTime (\ s a -> s{_omEndTime = a})

-- | Type of this operation. Deprecated, use method field instead. Example:
-- \"create_version\".\'OutputOnly
omOperationType :: Lens' OperationMetadata (Maybe Text)
omOperationType
  = lens _omOperationType
      (\ s a -> s{_omOperationType = a})

-- | Name of the resource that this operation is acting on. Example:
-- apps\/myapp\/modules\/default.\'OutputOnly
omTarget :: Lens' OperationMetadata (Maybe Text)
omTarget = lens _omTarget (\ s a -> s{_omTarget = a})

instance FromJSON OperationMetadata where
        parseJSON
          = withObject "OperationMetadata"
              (\ o ->
                 OperationMetadata' <$>
                   (o .:? "insertTime") <*> (o .:? "user") <*>
                     (o .:? "method")
                     <*> (o .:? "endTime")
                     <*> (o .:? "operationType")
                     <*> (o .:? "target"))

instance ToJSON OperationMetadata where
        toJSON OperationMetadata'{..}
          = object
              (catMaybes
                 [("insertTime" .=) <$> _omInsertTime,
                  ("user" .=) <$> _omUser, ("method" .=) <$> _omMethod,
                  ("endTime" .=) <$> _omEndTime,
                  ("operationType" .=) <$> _omOperationType,
                  ("target" .=) <$> _omTarget])

-- | Response message for Instances.ListInstances.
--
-- /See:/ 'listInstancesResponse' smart constructor.
data ListInstancesResponse = ListInstancesResponse'
    { _lirNextPageToken :: !(Maybe Text)
    , _lirInstances     :: !(Maybe [Instance])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListInstancesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lirNextPageToken'
--
-- * 'lirInstances'
listInstancesResponse
    :: ListInstancesResponse
listInstancesResponse =
    ListInstancesResponse'
    { _lirNextPageToken = Nothing
    , _lirInstances = Nothing
    }

-- | Continuation token for fetching the next page of results.
lirNextPageToken :: Lens' ListInstancesResponse (Maybe Text)
lirNextPageToken
  = lens _lirNextPageToken
      (\ s a -> s{_lirNextPageToken = a})

-- | The instances belonging to the requested version.
lirInstances :: Lens' ListInstancesResponse [Instance]
lirInstances
  = lens _lirInstances (\ s a -> s{_lirInstances = a})
      . _Default
      . _Coerce

instance FromJSON ListInstancesResponse where
        parseJSON
          = withObject "ListInstancesResponse"
              (\ o ->
                 ListInstancesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "instances" .!= mempty))

instance ToJSON ListInstancesResponse where
        toJSON ListInstancesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lirNextPageToken,
                  ("instances" .=) <$> _lirInstances])

-- | Target scaling by request utilization. Only applicable for VM runtimes.
--
-- /See:/ 'requestUtilization' smart constructor.
data RequestUtilization = RequestUtilization'
    { _ruTargetConcurrentRequests    :: !(Maybe (Textual Int32))
    , _ruTargetRequestCountPerSecond :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RequestUtilization' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ruTargetConcurrentRequests'
--
-- * 'ruTargetRequestCountPerSecond'
requestUtilization
    :: RequestUtilization
requestUtilization =
    RequestUtilization'
    { _ruTargetConcurrentRequests = Nothing
    , _ruTargetRequestCountPerSecond = Nothing
    }

-- | Target number of concurrent requests.
ruTargetConcurrentRequests :: Lens' RequestUtilization (Maybe Int32)
ruTargetConcurrentRequests
  = lens _ruTargetConcurrentRequests
      (\ s a -> s{_ruTargetConcurrentRequests = a})
      . mapping _Coerce

-- | Target requests per second.
ruTargetRequestCountPerSecond :: Lens' RequestUtilization (Maybe Int32)
ruTargetRequestCountPerSecond
  = lens _ruTargetRequestCountPerSecond
      (\ s a -> s{_ruTargetRequestCountPerSecond = a})
      . mapping _Coerce

instance FromJSON RequestUtilization where
        parseJSON
          = withObject "RequestUtilization"
              (\ o ->
                 RequestUtilization' <$>
                   (o .:? "targetConcurrentRequests") <*>
                     (o .:? "targetRequestCountPerSecond"))

instance ToJSON RequestUtilization where
        toJSON RequestUtilization'{..}
          = object
              (catMaybes
                 [("targetConcurrentRequests" .=) <$>
                    _ruTargetConcurrentRequests,
                  ("targetRequestCountPerSecond" .=) <$>
                    _ruTargetRequestCountPerSecond])

-- | Request message for \'Applications.RepairApplication\'.
--
-- /See:/ 'repairApplicationRequest' smart constructor.
data RepairApplicationRequest =
    RepairApplicationRequest'
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RepairApplicationRequest' with the minimum fields required to make a request.
--
repairApplicationRequest
    :: RepairApplicationRequest
repairApplicationRequest = RepairApplicationRequest'

instance FromJSON RepairApplicationRequest where
        parseJSON
          = withObject "RepairApplicationRequest"
              (\ o -> pure RepairApplicationRequest')

instance ToJSON RepairApplicationRequest where
        toJSON = const emptyObject

-- | The normal response of the operation in case of success. If the original
-- method returns no data on success, such as Delete, the response is
-- google.protobuf.Empty. If the original method is standard
-- Get\/Create\/Update, the response should be the resource. For other
-- methods, the response should have the type XxxResponse, where Xxx is the
-- original method name. For example, if the original method name is
-- TakeSnapshot(), the inferred response type is TakeSnapshotResponse.
--
-- /See:/ 'operationResponse' smart constructor.
newtype OperationResponse = OperationResponse'
    { _orAddtional :: HashMap Text JSONValue
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orAddtional'
operationResponse
    :: HashMap Text JSONValue -- ^ 'orAddtional'
    -> OperationResponse
operationResponse pOrAddtional_ =
    OperationResponse'
    { _orAddtional = _Coerce # pOrAddtional_
    }

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

-- | Docker image that is used to start a VM container for the version you
-- deploy.
--
-- /See:/ 'containerInfo' smart constructor.
newtype ContainerInfo = ContainerInfo'
    { _ciImage :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ContainerInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciImage'
containerInfo
    :: ContainerInfo
containerInfo =
    ContainerInfo'
    { _ciImage = Nothing
    }

-- | URI to the hosted container image in a Docker repository. The URI must
-- be fully qualified and include a tag or digest. Examples:
-- \"gcr.io\/my-project\/image:tag\" or
-- \"gcr.io\/my-project\/image\'digest\"
ciImage :: Lens' ContainerInfo (Maybe Text)
ciImage = lens _ciImage (\ s a -> s{_ciImage = a})

instance FromJSON ContainerInfo where
        parseJSON
          = withObject "ContainerInfo"
              (\ o -> ContainerInfo' <$> (o .:? "image"))

instance ToJSON ContainerInfo where
        toJSON ContainerInfo'{..}
          = object (catMaybes [("image" .=) <$> _ciImage])

-- | An Instance resource is the computing unit that App Engine uses to
-- automatically scale an application.
--
-- /See:/ 'instance'' smart constructor.
data Instance = Instance'
    { _iMemoryUsage      :: !(Maybe (Textual Int64))
    , _iVMStatus         :: !(Maybe Text)
    , _iVMZoneName       :: !(Maybe Text)
    , _iVMIP             :: !(Maybe Text)
    , _iStartTime        :: !(Maybe Text)
    , _iVMId             :: !(Maybe Text)
    , _iAvailability     :: !(Maybe Text)
    , _iVMName           :: !(Maybe Text)
    , _iName             :: !(Maybe Text)
    , _iVMDebugEnabled   :: !(Maybe Bool)
    , _iRequests         :: !(Maybe (Textual Int32))
    , _iQps              :: !(Maybe (Textual Double))
    , _iId               :: !(Maybe Text)
    , _iErrors           :: !(Maybe (Textual Int32))
    , _iAverageLatency   :: !(Maybe (Textual Int32))
    , _iAppEngineRelease :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Instance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iMemoryUsage'
--
-- * 'iVMStatus'
--
-- * 'iVMZoneName'
--
-- * 'iVMIP'
--
-- * 'iStartTime'
--
-- * 'iVMId'
--
-- * 'iAvailability'
--
-- * 'iVMName'
--
-- * 'iName'
--
-- * 'iVMDebugEnabled'
--
-- * 'iRequests'
--
-- * 'iQps'
--
-- * 'iId'
--
-- * 'iErrors'
--
-- * 'iAverageLatency'
--
-- * 'iAppEngineRelease'
instance'
    :: Instance
instance' =
    Instance'
    { _iMemoryUsage = Nothing
    , _iVMStatus = Nothing
    , _iVMZoneName = Nothing
    , _iVMIP = Nothing
    , _iStartTime = Nothing
    , _iVMId = Nothing
    , _iAvailability = Nothing
    , _iVMName = Nothing
    , _iName = Nothing
    , _iVMDebugEnabled = Nothing
    , _iRequests = Nothing
    , _iQps = Nothing
    , _iId = Nothing
    , _iErrors = Nothing
    , _iAverageLatency = Nothing
    , _iAppEngineRelease = Nothing
    }

-- | Total memory in use (bytes).\'OutputOnly
iMemoryUsage :: Lens' Instance (Maybe Int64)
iMemoryUsage
  = lens _iMemoryUsage (\ s a -> s{_iMemoryUsage = a})
      . mapping _Coerce

-- | Status of the virtual machine where this instance lives. Only applicable
-- for instances in App Engine flexible environment.\'OutputOnly
iVMStatus :: Lens' Instance (Maybe Text)
iVMStatus
  = lens _iVMStatus (\ s a -> s{_iVMStatus = a})

-- | Zone where the virtual machine is located. Only applicable for instances
-- in App Engine flexible environment.\'OutputOnly
iVMZoneName :: Lens' Instance (Maybe Text)
iVMZoneName
  = lens _iVMZoneName (\ s a -> s{_iVMZoneName = a})

-- | The IP address of this instance. Only applicable for instances in App
-- Engine flexible environment.\'OutputOnly
iVMIP :: Lens' Instance (Maybe Text)
iVMIP = lens _iVMIP (\ s a -> s{_iVMIP = a})

-- | Time that this instance was started.\'OutputOnly
iStartTime :: Lens' Instance (Maybe Text)
iStartTime
  = lens _iStartTime (\ s a -> s{_iStartTime = a})

-- | Virtual machine ID of this instance. Only applicable for instances in
-- App Engine flexible environment.\'OutputOnly
iVMId :: Lens' Instance (Maybe Text)
iVMId = lens _iVMId (\ s a -> s{_iVMId = a})

-- | Availability of the instance.\'OutputOnly
iAvailability :: Lens' Instance (Maybe Text)
iAvailability
  = lens _iAvailability
      (\ s a -> s{_iAvailability = a})

-- | Name of the virtual machine where this instance lives. Only applicable
-- for instances in App Engine flexible environment.\'OutputOnly
iVMName :: Lens' Instance (Maybe Text)
iVMName = lens _iVMName (\ s a -> s{_iVMName = a})

-- | Full path to the Instance resource in the API. Example:
-- apps\/myapp\/services\/default\/versions\/v1\/instances\/instance-1.\'OutputOnly
iName :: Lens' Instance (Maybe Text)
iName = lens _iName (\ s a -> s{_iName = a})

-- | Whether this instance is in debug mode. Only applicable for instances in
-- App Engine flexible environment.\'OutputOnly
iVMDebugEnabled :: Lens' Instance (Maybe Bool)
iVMDebugEnabled
  = lens _iVMDebugEnabled
      (\ s a -> s{_iVMDebugEnabled = a})

-- | Number of requests since this instance was started.\'OutputOnly
iRequests :: Lens' Instance (Maybe Int32)
iRequests
  = lens _iRequests (\ s a -> s{_iRequests = a}) .
      mapping _Coerce

-- | Average queries per second (QPS) over the last minute.\'OutputOnly
iQps :: Lens' Instance (Maybe Double)
iQps
  = lens _iQps (\ s a -> s{_iQps = a}) .
      mapping _Coerce

-- | Relative name of the instance within the version. Example:
-- instance-1.\'OutputOnly
iId :: Lens' Instance (Maybe Text)
iId = lens _iId (\ s a -> s{_iId = a})

-- | Number of errors since this instance was started.\'OutputOnly
iErrors :: Lens' Instance (Maybe Int32)
iErrors
  = lens _iErrors (\ s a -> s{_iErrors = a}) .
      mapping _Coerce

-- | Average latency (ms) over the last minute.\'OutputOnly
iAverageLatency :: Lens' Instance (Maybe Int32)
iAverageLatency
  = lens _iAverageLatency
      (\ s a -> s{_iAverageLatency = a})
      . mapping _Coerce

-- | App Engine release this instance is running on.\'OutputOnly
iAppEngineRelease :: Lens' Instance (Maybe Text)
iAppEngineRelease
  = lens _iAppEngineRelease
      (\ s a -> s{_iAppEngineRelease = a})

instance FromJSON Instance where
        parseJSON
          = withObject "Instance"
              (\ o ->
                 Instance' <$>
                   (o .:? "memoryUsage") <*> (o .:? "vmStatus") <*>
                     (o .:? "vmZoneName")
                     <*> (o .:? "vmIp")
                     <*> (o .:? "startTime")
                     <*> (o .:? "vmId")
                     <*> (o .:? "availability")
                     <*> (o .:? "vmName")
                     <*> (o .:? "name")
                     <*> (o .:? "vmDebugEnabled")
                     <*> (o .:? "requests")
                     <*> (o .:? "qps")
                     <*> (o .:? "id")
                     <*> (o .:? "errors")
                     <*> (o .:? "averageLatency")
                     <*> (o .:? "appEngineRelease"))

instance ToJSON Instance where
        toJSON Instance'{..}
          = object
              (catMaybes
                 [("memoryUsage" .=) <$> _iMemoryUsage,
                  ("vmStatus" .=) <$> _iVMStatus,
                  ("vmZoneName" .=) <$> _iVMZoneName,
                  ("vmIp" .=) <$> _iVMIP,
                  ("startTime" .=) <$> _iStartTime,
                  ("vmId" .=) <$> _iVMId,
                  ("availability" .=) <$> _iAvailability,
                  ("vmName" .=) <$> _iVMName, ("name" .=) <$> _iName,
                  ("vmDebugEnabled" .=) <$> _iVMDebugEnabled,
                  ("requests" .=) <$> _iRequests, ("qps" .=) <$> _iQps,
                  ("id" .=) <$> _iId, ("errors" .=) <$> _iErrors,
                  ("averageLatency" .=) <$> _iAverageLatency,
                  ("appEngineRelease" .=) <$> _iAppEngineRelease])

-- | Code and application artifacts used to deploy a version to App Engine.
--
-- /See:/ 'deployment' smart constructor.
data Deployment = Deployment'
    { _dZip       :: !(Maybe ZipInfo)
    , _dContainer :: !(Maybe ContainerInfo)
    , _dFiles     :: !(Maybe DeploymentFiles)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Deployment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dZip'
--
-- * 'dContainer'
--
-- * 'dFiles'
deployment
    :: Deployment
deployment =
    Deployment'
    { _dZip = Nothing
    , _dContainer = Nothing
    , _dFiles = Nothing
    }

-- | The zip file for this deployment, if this is a zip deployment.
dZip :: Lens' Deployment (Maybe ZipInfo)
dZip = lens _dZip (\ s a -> s{_dZip = a})

-- | A Docker image that App Engine uses to run the version. Only applicable
-- for instances in App Engine flexible environment.
dContainer :: Lens' Deployment (Maybe ContainerInfo)
dContainer
  = lens _dContainer (\ s a -> s{_dContainer = a})

-- | Manifest of the files stored in Google Cloud Storage that are included
-- as part of this version. All files must be readable using the
-- credentials supplied with this call.
dFiles :: Lens' Deployment (Maybe DeploymentFiles)
dFiles = lens _dFiles (\ s a -> s{_dFiles = a})

instance FromJSON Deployment where
        parseJSON
          = withObject "Deployment"
              (\ o ->
                 Deployment' <$>
                   (o .:? "zip") <*> (o .:? "container") <*>
                     (o .:? "files"))

instance ToJSON Deployment where
        toJSON Deployment'{..}
          = object
              (catMaybes
                 [("zip" .=) <$> _dZip,
                  ("container" .=) <$> _dContainer,
                  ("files" .=) <$> _dFiles])
