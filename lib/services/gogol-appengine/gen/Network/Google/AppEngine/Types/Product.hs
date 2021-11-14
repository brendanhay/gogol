{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AppEngine.Types.Product
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AppEngine.Types.Product where

import Network.Google.AppEngine.Types.Sum
import Network.Google.Prelude

-- | Target scaling by network usage. Only applicable in the App Engine
-- flexible environment.
--
-- /See:/ 'networkUtilization' smart constructor.
data NetworkUtilization =
  NetworkUtilization'
    { _nuTargetReceivedBytesPerSecond :: !(Maybe (Textual Int32))
    , _nuTargetSentPacketsPerSecond :: !(Maybe (Textual Int32))
    , _nuTargetReceivedPacketsPerSecond :: !(Maybe (Textual Int32))
    , _nuTargetSentBytesPerSecond :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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

-- | Service-specific metadata. For example the available capacity at the
-- given location.
--
-- /See:/ 'locationSchema' smart constructor.
newtype LocationSchema =
  LocationSchema'
    { _lsAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LocationSchema' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsAddtional'
locationSchema
    :: HashMap Text JSONValue -- ^ 'lsAddtional'
    -> LocationSchema
locationSchema pLsAddtional_ =
  LocationSchema' {_lsAddtional = _Coerce # pLsAddtional_}


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

-- | A domain that a user has been authorized to administer. To authorize use
-- of a domain, verify ownership via Webmaster Central
-- (https:\/\/www.google.com\/webmasters\/verification\/home).
--
-- /See:/ 'authorizedDomain' smart constructor.
data AuthorizedDomain =
  AuthorizedDomain'
    { _adName :: !(Maybe Text)
    , _adId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AuthorizedDomain' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adName'
--
-- * 'adId'
authorizedDomain
    :: AuthorizedDomain
authorizedDomain = AuthorizedDomain' {_adName = Nothing, _adId = Nothing}


-- | Full path to the AuthorizedDomain resource in the API. Example:
-- apps\/myapp\/authorizedDomains\/example.com.\'OutputOnly
adName :: Lens' AuthorizedDomain (Maybe Text)
adName = lens _adName (\ s a -> s{_adName = a})

-- | Fully qualified domain name of the domain authorized for use. Example:
-- example.com.
adId :: Lens' AuthorizedDomain (Maybe Text)
adId = lens _adId (\ s a -> s{_adId = a})

instance FromJSON AuthorizedDomain where
        parseJSON
          = withObject "AuthorizedDomain"
              (\ o ->
                 AuthorizedDomain' <$>
                   (o .:? "name") <*> (o .:? "id"))

instance ToJSON AuthorizedDomain where
        toJSON AuthorizedDomain'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _adName, ("id" .=) <$> _adId])

-- | Traffic routing configuration for versions within a single service.
-- Traffic splits define how traffic directed to the service is assigned to
-- versions.
--
-- /See:/ 'trafficSplit' smart constructor.
data TrafficSplit =
  TrafficSplit'
    { _tsShardBy :: !(Maybe TrafficSplitShardBy)
    , _tsAllocations :: !(Maybe TrafficSplitAllocations)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TrafficSplit' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsShardBy'
--
-- * 'tsAllocations'
trafficSplit
    :: TrafficSplit
trafficSplit = TrafficSplit' {_tsShardBy = Nothing, _tsAllocations = Nothing}


-- | Mechanism used to determine which version a request is sent to. The
-- traffic selection algorithm will be stable for either type until
-- allocations are changed.
tsShardBy :: Lens' TrafficSplit (Maybe TrafficSplitShardBy)
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
newtype ScriptHandler =
  ScriptHandler'
    { _shScriptPath :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ScriptHandler' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'shScriptPath'
scriptHandler
    :: ScriptHandler
scriptHandler = ScriptHandler' {_shScriptPath = Nothing}


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
data ListServicesResponse =
  ListServicesResponse'
    { _lsrNextPageToken :: !(Maybe Text)
    , _lsrServices :: !(Maybe [Service])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  ListServicesResponse' {_lsrNextPageToken = Nothing, _lsrServices = Nothing}


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
data URLMap =
  URLMap'
    { _umScript :: !(Maybe ScriptHandler)
    , _umSecurityLevel :: !(Maybe URLMapSecurityLevel)
    , _umAPIEndpoint :: !(Maybe APIEndpointHandler)
    , _umURLRegex :: !(Maybe Text)
    , _umRedirectHTTPResponseCode :: !(Maybe URLMapRedirectHTTPResponseCode)
    , _umAuthFailAction :: !(Maybe URLMapAuthFailAction)
    , _umStaticFiles :: !(Maybe StaticFilesHandler)
    , _umLogin :: !(Maybe URLMapLogin)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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


-- | Executes a script to handle the requests that match this URL pattern.
-- Only the auto value is supported for Node.js in the App Engine standard
-- environment, for example \"script\": \"auto\".
umScript :: Lens' URLMap (Maybe ScriptHandler)
umScript = lens _umScript (\ s a -> s{_umScript = a})

-- | Security (HTTPS) enforcement for this URL.
umSecurityLevel :: Lens' URLMap (Maybe URLMapSecurityLevel)
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
umRedirectHTTPResponseCode :: Lens' URLMap (Maybe URLMapRedirectHTTPResponseCode)
umRedirectHTTPResponseCode
  = lens _umRedirectHTTPResponseCode
      (\ s a -> s{_umRedirectHTTPResponseCode = a})

-- | Action to take when users access resources that require authentication.
-- Defaults to redirect.
umAuthFailAction :: Lens' URLMap (Maybe URLMapAuthFailAction)
umAuthFailAction
  = lens _umAuthFailAction
      (\ s a -> s{_umAuthFailAction = a})

-- | Returns the contents of a file, such as an image, as the response.
umStaticFiles :: Lens' URLMap (Maybe StaticFilesHandler)
umStaticFiles
  = lens _umStaticFiles
      (\ s a -> s{_umStaticFiles = a})

-- | Level of login required to access this resource. Not supported for
-- Node.js in the App Engine standard environment.
umLogin :: Lens' URLMap (Maybe URLMapLogin)
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
data Library =
  Library'
    { _lName :: !(Maybe Text)
    , _lVersion :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Library' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lName'
--
-- * 'lVersion'
library
    :: Library
library = Library' {_lName = Nothing, _lVersion = Nothing}


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

-- | A DNS resource record.
--
-- /See:/ 'resourceRecord' smart constructor.
data ResourceRecord =
  ResourceRecord'
    { _rrRrData :: !(Maybe Text)
    , _rrName :: !(Maybe Text)
    , _rrType :: !(Maybe ResourceRecordType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourceRecord' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrRrData'
--
-- * 'rrName'
--
-- * 'rrType'
resourceRecord
    :: ResourceRecord
resourceRecord =
  ResourceRecord' {_rrRrData = Nothing, _rrName = Nothing, _rrType = Nothing}


-- | Data for this record. Values vary by record type, as defined in RFC 1035
-- (section 5) and RFC 1034 (section 3.6.1).
rrRrData :: Lens' ResourceRecord (Maybe Text)
rrRrData = lens _rrRrData (\ s a -> s{_rrRrData = a})

-- | Relative name of the object affected by this record. Only applicable for
-- CNAME records. Example: \'www\'.
rrName :: Lens' ResourceRecord (Maybe Text)
rrName = lens _rrName (\ s a -> s{_rrName = a})

-- | Resource record type. Example: AAAA.
rrType :: Lens' ResourceRecord (Maybe ResourceRecordType)
rrType = lens _rrType (\ s a -> s{_rrType = a})

instance FromJSON ResourceRecord where
        parseJSON
          = withObject "ResourceRecord"
              (\ o ->
                 ResourceRecord' <$>
                   (o .:? "rrdata") <*> (o .:? "name") <*>
                     (o .:? "type"))

instance ToJSON ResourceRecord where
        toJSON ResourceRecord'{..}
          = object
              (catMaybes
                 [("rrdata" .=) <$> _rrRrData,
                  ("name" .=) <$> _rrName, ("type" .=) <$> _rrType])

-- | The response message for Locations.ListLocations.
--
-- /See:/ 'listLocationsResponse' smart constructor.
data ListLocationsResponse =
  ListLocationsResponse'
    { _llrNextPageToken :: !(Maybe Text)
    , _llrLocations :: !(Maybe [Location])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  ListLocationsResponse' {_llrNextPageToken = Nothing, _llrLocations = Nothing}


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

-- | Target scaling by disk usage. Only applicable in the App Engine flexible
-- environment.
--
-- /See:/ 'diskUtilization' smart constructor.
data DiskUtilization =
  DiskUtilization'
    { _duTargetReadBytesPerSecond :: !(Maybe (Textual Int32))
    , _duTargetReadOpsPerSecond :: !(Maybe (Textual Int32))
    , _duTargetWriteOpsPerSecond :: !(Maybe (Textual Int32))
    , _duTargetWriteBytesPerSecond :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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

-- | Health checking configuration for VM instances. Unhealthy instances are
-- killed and replaced with new instances. Only applicable for instances in
-- App Engine flexible environment.
--
-- /See:/ 'healthCheck' smart constructor.
data HealthCheck =
  HealthCheck'
    { _hcHealthyThreshold :: !(Maybe (Textual Word32))
    , _hcDisableHealthCheck :: !(Maybe Bool)
    , _hcCheckInterval :: !(Maybe GDuration)
    , _hcRestartThreshold :: !(Maybe (Textual Word32))
    , _hcHost :: !(Maybe Text)
    , _hcTimeout :: !(Maybe GDuration)
    , _hcUnhealthyThreshold :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
hcCheckInterval :: Lens' HealthCheck (Maybe Scientific)
hcCheckInterval
  = lens _hcCheckInterval
      (\ s a -> s{_hcCheckInterval = a})
      . mapping _GDuration

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
hcTimeout :: Lens' HealthCheck (Maybe Scientific)
hcTimeout
  = lens _hcTimeout (\ s a -> s{_hcTimeout = a}) .
      mapping _GDuration

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

-- | An SSL certificate that a user has been authorized to administer. A user
-- is authorized to administer any certificate that applies to one of their
-- authorized domains.
--
-- /See:/ 'authorizedCertificate' smart constructor.
data AuthorizedCertificate =
  AuthorizedCertificate'
    { _acManagedCertificate :: !(Maybe ManagedCertificate)
    , _acCertificateRawData :: !(Maybe CertificateRawData)
    , _acDomainNames :: !(Maybe [Text])
    , _acDomainMAppingsCount :: !(Maybe (Textual Int32))
    , _acName :: !(Maybe Text)
    , _acDisplayName :: !(Maybe Text)
    , _acId :: !(Maybe Text)
    , _acExpireTime :: !(Maybe DateTime')
    , _acVisibleDomainMAppings :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AuthorizedCertificate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acManagedCertificate'
--
-- * 'acCertificateRawData'
--
-- * 'acDomainNames'
--
-- * 'acDomainMAppingsCount'
--
-- * 'acName'
--
-- * 'acDisplayName'
--
-- * 'acId'
--
-- * 'acExpireTime'
--
-- * 'acVisibleDomainMAppings'
authorizedCertificate
    :: AuthorizedCertificate
authorizedCertificate =
  AuthorizedCertificate'
    { _acManagedCertificate = Nothing
    , _acCertificateRawData = Nothing
    , _acDomainNames = Nothing
    , _acDomainMAppingsCount = Nothing
    , _acName = Nothing
    , _acDisplayName = Nothing
    , _acId = Nothing
    , _acExpireTime = Nothing
    , _acVisibleDomainMAppings = Nothing
    }


-- | Only applicable if this certificate is managed by App Engine. Managed
-- certificates are tied to the lifecycle of a DomainMapping and cannot be
-- updated or deleted via the AuthorizedCertificates API. If this
-- certificate is manually administered by the user, this field will be
-- empty.\'OutputOnly
acManagedCertificate :: Lens' AuthorizedCertificate (Maybe ManagedCertificate)
acManagedCertificate
  = lens _acManagedCertificate
      (\ s a -> s{_acManagedCertificate = a})

-- | The SSL certificate serving the AuthorizedCertificate resource. This
-- must be obtained independently from a certificate authority.
acCertificateRawData :: Lens' AuthorizedCertificate (Maybe CertificateRawData)
acCertificateRawData
  = lens _acCertificateRawData
      (\ s a -> s{_acCertificateRawData = a})

-- | Topmost applicable domains of this certificate. This certificate applies
-- to these domains and their subdomains. Example: example.com.\'OutputOnly
acDomainNames :: Lens' AuthorizedCertificate [Text]
acDomainNames
  = lens _acDomainNames
      (\ s a -> s{_acDomainNames = a})
      . _Default
      . _Coerce

-- | Aggregate count of the domain mappings with this certificate mapped.
-- This count includes domain mappings on applications for which the user
-- does not have VIEWER permissions.Only returned by GET or LIST requests
-- when specifically requested by the view=FULL_CERTIFICATE
-- option.\'OutputOnly
acDomainMAppingsCount :: Lens' AuthorizedCertificate (Maybe Int32)
acDomainMAppingsCount
  = lens _acDomainMAppingsCount
      (\ s a -> s{_acDomainMAppingsCount = a})
      . mapping _Coerce

-- | Full path to the AuthorizedCertificate resource in the API. Example:
-- apps\/myapp\/authorizedCertificates\/12345.\'OutputOnly
acName :: Lens' AuthorizedCertificate (Maybe Text)
acName = lens _acName (\ s a -> s{_acName = a})

-- | The user-specified display name of the certificate. This is not
-- guaranteed to be unique. Example: My Certificate.
acDisplayName :: Lens' AuthorizedCertificate (Maybe Text)
acDisplayName
  = lens _acDisplayName
      (\ s a -> s{_acDisplayName = a})

-- | Relative name of the certificate. This is a unique value autogenerated
-- on AuthorizedCertificate resource creation. Example: 12345.\'OutputOnly
acId :: Lens' AuthorizedCertificate (Maybe Text)
acId = lens _acId (\ s a -> s{_acId = a})

-- | The time when this certificate expires. To update the renewal time on
-- this certificate, upload an SSL certificate with a different expiration
-- time using
-- AuthorizedCertificates.UpdateAuthorizedCertificate.\'OutputOnly
acExpireTime :: Lens' AuthorizedCertificate (Maybe UTCTime)
acExpireTime
  = lens _acExpireTime (\ s a -> s{_acExpireTime = a})
      . mapping _DateTime

-- | The full paths to user visible Domain Mapping resources that have this
-- certificate mapped. Example:
-- apps\/myapp\/domainMappings\/example.com.This may not represent the full
-- list of mapped domain mappings if the user does not have VIEWER
-- permissions on all of the applications that have this certificate
-- mapped. See domain_mappings_count for a complete count.Only returned by
-- GET or LIST requests when specifically requested by the
-- view=FULL_CERTIFICATE option.\'OutputOnly
acVisibleDomainMAppings :: Lens' AuthorizedCertificate [Text]
acVisibleDomainMAppings
  = lens _acVisibleDomainMAppings
      (\ s a -> s{_acVisibleDomainMAppings = a})
      . _Default
      . _Coerce

instance FromJSON AuthorizedCertificate where
        parseJSON
          = withObject "AuthorizedCertificate"
              (\ o ->
                 AuthorizedCertificate' <$>
                   (o .:? "managedCertificate") <*>
                     (o .:? "certificateRawData")
                     <*> (o .:? "domainNames" .!= mempty)
                     <*> (o .:? "domainMappingsCount")
                     <*> (o .:? "name")
                     <*> (o .:? "displayName")
                     <*> (o .:? "id")
                     <*> (o .:? "expireTime")
                     <*> (o .:? "visibleDomainMappings" .!= mempty))

instance ToJSON AuthorizedCertificate where
        toJSON AuthorizedCertificate'{..}
          = object
              (catMaybes
                 [("managedCertificate" .=) <$> _acManagedCertificate,
                  ("certificateRawData" .=) <$> _acCertificateRawData,
                  ("domainNames" .=) <$> _acDomainNames,
                  ("domainMappingsCount" .=) <$>
                    _acDomainMAppingsCount,
                  ("name" .=) <$> _acName,
                  ("displayName" .=) <$> _acDisplayName,
                  ("id" .=) <$> _acId,
                  ("expireTime" .=) <$> _acExpireTime,
                  ("visibleDomainMappings" .=) <$>
                    _acVisibleDomainMAppings])

-- | VPC access connector specification.
--
-- /See:/ 'vpcAccessConnector' smart constructor.
data VPCAccessConnector =
  VPCAccessConnector'
    { _vacName :: !(Maybe Text)
    , _vacEgressSetting :: !(Maybe VPCAccessConnectorEgressSetting)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VPCAccessConnector' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vacName'
--
-- * 'vacEgressSetting'
vpcAccessConnector
    :: VPCAccessConnector
vpcAccessConnector =
  VPCAccessConnector' {_vacName = Nothing, _vacEgressSetting = Nothing}


-- | Full Serverless VPC Access Connector name e.g.
-- \/projects\/my-project\/locations\/us-central1\/connectors\/c1.
vacName :: Lens' VPCAccessConnector (Maybe Text)
vacName = lens _vacName (\ s a -> s{_vacName = a})

-- | The egress setting for the connector, controlling what traffic is
-- diverted through it.
vacEgressSetting :: Lens' VPCAccessConnector (Maybe VPCAccessConnectorEgressSetting)
vacEgressSetting
  = lens _vacEgressSetting
      (\ s a -> s{_vacEgressSetting = a})

instance FromJSON VPCAccessConnector where
        parseJSON
          = withObject "VPCAccessConnector"
              (\ o ->
                 VPCAccessConnector' <$>
                   (o .:? "name") <*> (o .:? "egressSetting"))

instance ToJSON VPCAccessConnector where
        toJSON VPCAccessConnector'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _vacName,
                  ("egressSetting" .=) <$> _vacEgressSetting])

-- | Google Cloud Endpoints
-- (https:\/\/cloud.google.com\/appengine\/docs\/python\/endpoints\/)
-- configuration for API handlers.
--
-- /See:/ 'apiConfigHandler' smart constructor.
data APIConfigHandler =
  APIConfigHandler'
    { _achScript :: !(Maybe Text)
    , _achSecurityLevel :: !(Maybe APIConfigHandlerSecurityLevel)
    , _achURL :: !(Maybe Text)
    , _achAuthFailAction :: !(Maybe APIConfigHandlerAuthFailAction)
    , _achLogin :: !(Maybe APIConfigHandlerLogin)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
achSecurityLevel :: Lens' APIConfigHandler (Maybe APIConfigHandlerSecurityLevel)
achSecurityLevel
  = lens _achSecurityLevel
      (\ s a -> s{_achSecurityLevel = a})

-- | URL to serve the endpoint at.
achURL :: Lens' APIConfigHandler (Maybe Text)
achURL = lens _achURL (\ s a -> s{_achURL = a})

-- | Action to take when users access resources that require authentication.
-- Defaults to redirect.
achAuthFailAction :: Lens' APIConfigHandler (Maybe APIConfigHandlerAuthFailAction)
achAuthFailAction
  = lens _achAuthFailAction
      (\ s a -> s{_achAuthFailAction = a})

-- | Level of login required to access this resource. Defaults to optional.
achLogin :: Lens' APIConfigHandler (Maybe APIConfigHandlerLogin)
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
newtype VersionEnvVariables =
  VersionEnvVariables'
    { _vevAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VersionEnvVariables' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vevAddtional'
versionEnvVariables
    :: HashMap Text Text -- ^ 'vevAddtional'
    -> VersionEnvVariables
versionEnvVariables pVevAddtional_ =
  VersionEnvVariables' {_vevAddtional = _Coerce # pVevAddtional_}


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
data Application =
  Application'
    { _aDefaultHostname :: !(Maybe Text)
    , _aDefaultCookieExpiration :: !(Maybe GDuration)
    , _aIap :: !(Maybe IdentityAwareProxy)
    , _aAuthDomain :: !(Maybe Text)
    , _aCodeBucket :: !(Maybe Text)
    , _aGcrDomain :: !(Maybe Text)
    , _aFeatureSettings :: !(Maybe FeatureSettings)
    , _aName :: !(Maybe Text)
    , _aDatabaseType :: !(Maybe ApplicationDatabaseType)
    , _aDispatchRules :: !(Maybe [URLDispatchRule])
    , _aDefaultBucket :: !(Maybe Text)
    , _aId :: !(Maybe Text)
    , _aLocationId :: !(Maybe Text)
    , _aServingStatus :: !(Maybe ApplicationServingStatus)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Application' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aDefaultHostname'
--
-- * 'aDefaultCookieExpiration'
--
-- * 'aIap'
--
-- * 'aAuthDomain'
--
-- * 'aCodeBucket'
--
-- * 'aGcrDomain'
--
-- * 'aFeatureSettings'
--
-- * 'aName'
--
-- * 'aDatabaseType'
--
-- * 'aDispatchRules'
--
-- * 'aDefaultBucket'
--
-- * 'aId'
--
-- * 'aLocationId'
--
-- * 'aServingStatus'
application
    :: Application
application =
  Application'
    { _aDefaultHostname = Nothing
    , _aDefaultCookieExpiration = Nothing
    , _aIap = Nothing
    , _aAuthDomain = Nothing
    , _aCodeBucket = Nothing
    , _aGcrDomain = Nothing
    , _aFeatureSettings = Nothing
    , _aName = Nothing
    , _aDatabaseType = Nothing
    , _aDispatchRules = Nothing
    , _aDefaultBucket = Nothing
    , _aId = Nothing
    , _aLocationId = Nothing
    , _aServingStatus = Nothing
    }


-- | Hostname used to reach this application, as resolved by App
-- Engine.\'OutputOnly
aDefaultHostname :: Lens' Application (Maybe Text)
aDefaultHostname
  = lens _aDefaultHostname
      (\ s a -> s{_aDefaultHostname = a})

-- | Cookie expiration policy for this application.
aDefaultCookieExpiration :: Lens' Application (Maybe Scientific)
aDefaultCookieExpiration
  = lens _aDefaultCookieExpiration
      (\ s a -> s{_aDefaultCookieExpiration = a})
      . mapping _GDuration

aIap :: Lens' Application (Maybe IdentityAwareProxy)
aIap = lens _aIap (\ s a -> s{_aIap = a})

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

-- | The Google Container Registry domain used for storing managed build
-- docker images for this application.
aGcrDomain :: Lens' Application (Maybe Text)
aGcrDomain
  = lens _aGcrDomain (\ s a -> s{_aGcrDomain = a})

-- | The feature specific settings to be used in the application.
aFeatureSettings :: Lens' Application (Maybe FeatureSettings)
aFeatureSettings
  = lens _aFeatureSettings
      (\ s a -> s{_aFeatureSettings = a})

-- | Full path to the Application resource in the API. Example:
-- apps\/myapp.\'OutputOnly
aName :: Lens' Application (Maybe Text)
aName = lens _aName (\ s a -> s{_aName = a})

-- | The type of the Cloud Firestore or Cloud Datastore database associated
-- with this application.
aDatabaseType :: Lens' Application (Maybe ApplicationDatabaseType)
aDatabaseType
  = lens _aDatabaseType
      (\ s a -> s{_aDatabaseType = a})

-- | HTTP path dispatch rules for requests to the application that do not
-- explicitly target a service or version. Rules are order-dependent. Up to
-- 20 dispatch rules can be supported.
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

-- | Location from which this application runs. Application instances run out
-- of the data centers in the specified location, which is also where all
-- of the application\'s end user content is stored.Defaults to
-- us-central.View the list of supported locations
-- (https:\/\/cloud.google.com\/appengine\/docs\/locations).
aLocationId :: Lens' Application (Maybe Text)
aLocationId
  = lens _aLocationId (\ s a -> s{_aLocationId = a})

-- | Serving status of this application.
aServingStatus :: Lens' Application (Maybe ApplicationServingStatus)
aServingStatus
  = lens _aServingStatus
      (\ s a -> s{_aServingStatus = a})

instance FromJSON Application where
        parseJSON
          = withObject "Application"
              (\ o ->
                 Application' <$>
                   (o .:? "defaultHostname") <*>
                     (o .:? "defaultCookieExpiration")
                     <*> (o .:? "iap")
                     <*> (o .:? "authDomain")
                     <*> (o .:? "codeBucket")
                     <*> (o .:? "gcrDomain")
                     <*> (o .:? "featureSettings")
                     <*> (o .:? "name")
                     <*> (o .:? "databaseType")
                     <*> (o .:? "dispatchRules" .!= mempty)
                     <*> (o .:? "defaultBucket")
                     <*> (o .:? "id")
                     <*> (o .:? "locationId")
                     <*> (o .:? "servingStatus"))

instance ToJSON Application where
        toJSON Application'{..}
          = object
              (catMaybes
                 [("defaultHostname" .=) <$> _aDefaultHostname,
                  ("defaultCookieExpiration" .=) <$>
                    _aDefaultCookieExpiration,
                  ("iap" .=) <$> _aIap,
                  ("authDomain" .=) <$> _aAuthDomain,
                  ("codeBucket" .=) <$> _aCodeBucket,
                  ("gcrDomain" .=) <$> _aGcrDomain,
                  ("featureSettings" .=) <$> _aFeatureSettings,
                  ("name" .=) <$> _aName,
                  ("databaseType" .=) <$> _aDatabaseType,
                  ("dispatchRules" .=) <$> _aDispatchRules,
                  ("defaultBucket" .=) <$> _aDefaultBucket,
                  ("id" .=) <$> _aId,
                  ("locationId" .=) <$> _aLocationId,
                  ("servingStatus" .=) <$> _aServingStatus])

-- | Metadata settings that are supplied to this version to enable beta
-- runtime features.
--
-- /See:/ 'versionBetaSettings' smart constructor.
newtype VersionBetaSettings =
  VersionBetaSettings'
    { _vbsAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VersionBetaSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vbsAddtional'
versionBetaSettings
    :: HashMap Text Text -- ^ 'vbsAddtional'
    -> VersionBetaSettings
versionBetaSettings pVbsAddtional_ =
  VersionBetaSettings' {_vbsAddtional = _Coerce # pVbsAddtional_}


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
data Service =
  Service'
    { _sSplit :: !(Maybe TrafficSplit)
    , _sName :: !(Maybe Text)
    , _sId :: !(Maybe Text)
    , _sNetworkSettings :: !(Maybe NetworkSettings)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Service' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sSplit'
--
-- * 'sName'
--
-- * 'sId'
--
-- * 'sNetworkSettings'
service
    :: Service
service =
  Service'
    { _sSplit = Nothing
    , _sName = Nothing
    , _sId = Nothing
    , _sNetworkSettings = Nothing
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

-- | Ingress settings for this service. Will apply to all versions.
sNetworkSettings :: Lens' Service (Maybe NetworkSettings)
sNetworkSettings
  = lens _sNetworkSettings
      (\ s a -> s{_sNetworkSettings = a})

instance FromJSON Service where
        parseJSON
          = withObject "Service"
              (\ o ->
                 Service' <$>
                   (o .:? "split") <*> (o .:? "name") <*> (o .:? "id")
                     <*> (o .:? "networkSettings"))

instance ToJSON Service where
        toJSON Service'{..}
          = object
              (catMaybes
                 [("split" .=) <$> _sSplit, ("name" .=) <$> _sName,
                  ("id" .=) <$> _sId,
                  ("networkSettings" .=) <$> _sNetworkSettings])

-- | Cloud Endpoints (https:\/\/cloud.google.com\/endpoints) configuration.
-- The Endpoints API Service provides tooling for serving Open API and gRPC
-- endpoints via an NGINX proxy. Only valid for App Engine Flexible
-- environment deployments.The fields here refer to the name and
-- configuration ID of a \"service\" resource in the Service Management API
-- (https:\/\/cloud.google.com\/service-management\/overview).
--
-- /See:/ 'endpointsAPIService' smart constructor.
data EndpointsAPIService =
  EndpointsAPIService'
    { _easDisableTraceSampling :: !(Maybe Bool)
    , _easName :: !(Maybe Text)
    , _easConfigId :: !(Maybe Text)
    , _easRolloutStrategy :: !(Maybe EndpointsAPIServiceRolloutStrategy)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EndpointsAPIService' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'easDisableTraceSampling'
--
-- * 'easName'
--
-- * 'easConfigId'
--
-- * 'easRolloutStrategy'
endpointsAPIService
    :: EndpointsAPIService
endpointsAPIService =
  EndpointsAPIService'
    { _easDisableTraceSampling = Nothing
    , _easName = Nothing
    , _easConfigId = Nothing
    , _easRolloutStrategy = Nothing
    }


-- | Enable or disable trace sampling. By default, this is set to false for
-- enabled.
easDisableTraceSampling :: Lens' EndpointsAPIService (Maybe Bool)
easDisableTraceSampling
  = lens _easDisableTraceSampling
      (\ s a -> s{_easDisableTraceSampling = a})

-- | Endpoints service name which is the name of the \"service\" resource in
-- the Service Management API. For example
-- \"myapi.endpoints.myproject.cloud.goog\"
easName :: Lens' EndpointsAPIService (Maybe Text)
easName = lens _easName (\ s a -> s{_easName = a})

-- | Endpoints service configuration ID as specified by the Service
-- Management API. For example \"2016-09-19r1\".By default, the rollout
-- strategy for Endpoints is RolloutStrategy.FIXED. This means that
-- Endpoints starts up with a particular configuration ID. When a new
-- configuration is rolled out, Endpoints must be given the new
-- configuration ID. The config_id field is used to give the configuration
-- ID and is required in this case.Endpoints also has a rollout strategy
-- called RolloutStrategy.MANAGED. When using this, Endpoints fetches the
-- latest configuration and does not need the configuration ID. In this
-- case, config_id must be omitted.
easConfigId :: Lens' EndpointsAPIService (Maybe Text)
easConfigId
  = lens _easConfigId (\ s a -> s{_easConfigId = a})

-- | Endpoints rollout strategy. If FIXED, config_id must be specified. If
-- MANAGED, config_id must be omitted.
easRolloutStrategy :: Lens' EndpointsAPIService (Maybe EndpointsAPIServiceRolloutStrategy)
easRolloutStrategy
  = lens _easRolloutStrategy
      (\ s a -> s{_easRolloutStrategy = a})

instance FromJSON EndpointsAPIService where
        parseJSON
          = withObject "EndpointsAPIService"
              (\ o ->
                 EndpointsAPIService' <$>
                   (o .:? "disableTraceSampling") <*> (o .:? "name") <*>
                     (o .:? "configId")
                     <*> (o .:? "rolloutStrategy"))

instance ToJSON EndpointsAPIService where
        toJSON EndpointsAPIService'{..}
          = object
              (catMaybes
                 [("disableTraceSampling" .=) <$>
                    _easDisableTraceSampling,
                  ("name" .=) <$> _easName,
                  ("configId" .=) <$> _easConfigId,
                  ("rolloutStrategy" .=) <$> _easRolloutStrategy])

-- | A resource that represents Google Cloud Platform location.
--
-- /See:/ 'location' smart constructor.
data Location =
  Location'
    { _locName :: !(Maybe Text)
    , _locMetadata :: !(Maybe LocationSchema)
    , _locDisplayName :: !(Maybe Text)
    , _locLabels :: !(Maybe LocationLabels)
    , _locLocationId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Location' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'locName'
--
-- * 'locMetadata'
--
-- * 'locDisplayName'
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
    , _locDisplayName = Nothing
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

-- | The friendly name for this location, typically a nearby city name. For
-- example, \"Tokyo\".
locDisplayName :: Lens' Location (Maybe Text)
locDisplayName
  = lens _locDisplayName
      (\ s a -> s{_locDisplayName = a})

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
                     (o .:? "displayName")
                     <*> (o .:? "labels")
                     <*> (o .:? "locationId"))

instance ToJSON Location where
        toJSON Location'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _locName,
                  ("metadata" .=) <$> _locMetadata,
                  ("displayName" .=) <$> _locDisplayName,
                  ("labels" .=) <$> _locLabels,
                  ("locationId" .=) <$> _locLocationId])

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

-- | The zip file information for a zip deployment.
--
-- /See:/ 'zipInfo' smart constructor.
data ZipInfo =
  ZipInfo'
    { _ziFilesCount :: !(Maybe (Textual Int32))
    , _ziSourceURL :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ZipInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ziFilesCount'
--
-- * 'ziSourceURL'
zipInfo
    :: ZipInfo
zipInfo = ZipInfo' {_ziFilesCount = Nothing, _ziSourceURL = Nothing}


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

-- | Rules to match an HTTP request and dispatch that request to a service.
--
-- /See:/ 'urlDispatchRule' smart constructor.
data URLDispatchRule =
  URLDispatchRule'
    { _udrPath :: !(Maybe Text)
    , _udrService :: !(Maybe Text)
    , _udrDomain :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
    {_udrPath = Nothing, _udrService = Nothing, _udrDomain = Nothing}


-- | Pathname within the host. Must start with a \"\/\". A single \"*\" can
-- be included at the end of the path.The sum of the lengths of the domain
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

-- | Metadata for the given google.longrunning.Operation.
--
-- /See:/ 'operationMetadataV1Beta' smart constructor.
data OperationMetadataV1Beta =
  OperationMetadataV1Beta'
    { _omvbEphemeralMessage :: !(Maybe Text)
    , _omvbInsertTime :: !(Maybe DateTime')
    , _omvbUser :: !(Maybe Text)
    , _omvbMethod :: !(Maybe Text)
    , _omvbEndTime :: !(Maybe DateTime')
    , _omvbWarning :: !(Maybe [Text])
    , _omvbCreateVersionMetadata :: !(Maybe CreateVersionMetadataV1Beta)
    , _omvbTarget :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationMetadataV1Beta' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'omvbEphemeralMessage'
--
-- * 'omvbInsertTime'
--
-- * 'omvbUser'
--
-- * 'omvbMethod'
--
-- * 'omvbEndTime'
--
-- * 'omvbWarning'
--
-- * 'omvbCreateVersionMetadata'
--
-- * 'omvbTarget'
operationMetadataV1Beta
    :: OperationMetadataV1Beta
operationMetadataV1Beta =
  OperationMetadataV1Beta'
    { _omvbEphemeralMessage = Nothing
    , _omvbInsertTime = Nothing
    , _omvbUser = Nothing
    , _omvbMethod = Nothing
    , _omvbEndTime = Nothing
    , _omvbWarning = Nothing
    , _omvbCreateVersionMetadata = Nothing
    , _omvbTarget = Nothing
    }


-- | Ephemeral message that may change every time the operation is polled.
-- \'OutputOnly
omvbEphemeralMessage :: Lens' OperationMetadataV1Beta (Maybe Text)
omvbEphemeralMessage
  = lens _omvbEphemeralMessage
      (\ s a -> s{_omvbEphemeralMessage = a})

-- | Time that this operation was created.\'OutputOnly
omvbInsertTime :: Lens' OperationMetadataV1Beta (Maybe UTCTime)
omvbInsertTime
  = lens _omvbInsertTime
      (\ s a -> s{_omvbInsertTime = a})
      . mapping _DateTime

-- | User who requested this operation.\'OutputOnly
omvbUser :: Lens' OperationMetadataV1Beta (Maybe Text)
omvbUser = lens _omvbUser (\ s a -> s{_omvbUser = a})

-- | API method that initiated this operation. Example:
-- google.appengine.v1beta.Versions.CreateVersion.\'OutputOnly
omvbMethod :: Lens' OperationMetadataV1Beta (Maybe Text)
omvbMethod
  = lens _omvbMethod (\ s a -> s{_omvbMethod = a})

-- | Time that this operation completed.\'OutputOnly
omvbEndTime :: Lens' OperationMetadataV1Beta (Maybe UTCTime)
omvbEndTime
  = lens _omvbEndTime (\ s a -> s{_omvbEndTime = a}) .
      mapping _DateTime

-- | Durable messages that persist on every operation poll. \'OutputOnly
omvbWarning :: Lens' OperationMetadataV1Beta [Text]
omvbWarning
  = lens _omvbWarning (\ s a -> s{_omvbWarning = a}) .
      _Default
      . _Coerce

omvbCreateVersionMetadata :: Lens' OperationMetadataV1Beta (Maybe CreateVersionMetadataV1Beta)
omvbCreateVersionMetadata
  = lens _omvbCreateVersionMetadata
      (\ s a -> s{_omvbCreateVersionMetadata = a})

-- | Name of the resource that this operation is acting on. Example:
-- apps\/myapp\/services\/default.\'OutputOnly
omvbTarget :: Lens' OperationMetadataV1Beta (Maybe Text)
omvbTarget
  = lens _omvbTarget (\ s a -> s{_omvbTarget = a})

instance FromJSON OperationMetadataV1Beta where
        parseJSON
          = withObject "OperationMetadataV1Beta"
              (\ o ->
                 OperationMetadataV1Beta' <$>
                   (o .:? "ephemeralMessage") <*> (o .:? "insertTime")
                     <*> (o .:? "user")
                     <*> (o .:? "method")
                     <*> (o .:? "endTime")
                     <*> (o .:? "warning" .!= mempty)
                     <*> (o .:? "createVersionMetadata")
                     <*> (o .:? "target"))

instance ToJSON OperationMetadataV1Beta where
        toJSON OperationMetadataV1Beta'{..}
          = object
              (catMaybes
                 [("ephemeralMessage" .=) <$> _omvbEphemeralMessage,
                  ("insertTime" .=) <$> _omvbInsertTime,
                  ("user" .=) <$> _omvbUser,
                  ("method" .=) <$> _omvbMethod,
                  ("endTime" .=) <$> _omvbEndTime,
                  ("warning" .=) <$> _omvbWarning,
                  ("createVersionMetadata" .=) <$>
                    _omvbCreateVersionMetadata,
                  ("target" .=) <$> _omvbTarget])

-- | Response message for AuthorizedDomains.ListAuthorizedDomains.
--
-- /See:/ 'listAuthorizedDomainsResponse' smart constructor.
data ListAuthorizedDomainsResponse =
  ListAuthorizedDomainsResponse'
    { _ladrNextPageToken :: !(Maybe Text)
    , _ladrDomains :: !(Maybe [AuthorizedDomain])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListAuthorizedDomainsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ladrNextPageToken'
--
-- * 'ladrDomains'
listAuthorizedDomainsResponse
    :: ListAuthorizedDomainsResponse
listAuthorizedDomainsResponse =
  ListAuthorizedDomainsResponse'
    {_ladrNextPageToken = Nothing, _ladrDomains = Nothing}


-- | Continuation token for fetching the next page of results.
ladrNextPageToken :: Lens' ListAuthorizedDomainsResponse (Maybe Text)
ladrNextPageToken
  = lens _ladrNextPageToken
      (\ s a -> s{_ladrNextPageToken = a})

-- | The authorized domains belonging to the user.
ladrDomains :: Lens' ListAuthorizedDomainsResponse [AuthorizedDomain]
ladrDomains
  = lens _ladrDomains (\ s a -> s{_ladrDomains = a}) .
      _Default
      . _Coerce

instance FromJSON ListAuthorizedDomainsResponse where
        parseJSON
          = withObject "ListAuthorizedDomainsResponse"
              (\ o ->
                 ListAuthorizedDomainsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "domains" .!= mempty))

instance ToJSON ListAuthorizedDomainsResponse where
        toJSON ListAuthorizedDomainsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ladrNextPageToken,
                  ("domains" .=) <$> _ladrDomains])

-- | The entrypoint for the application.
--
-- /See:/ 'entrypoint' smart constructor.
newtype Entrypoint =
  Entrypoint'
    { _eShell :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Entrypoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eShell'
entrypoint
    :: Entrypoint
entrypoint = Entrypoint' {_eShell = Nothing}


-- | The format should be a shell command that can be fed to bash -c.
eShell :: Lens' Entrypoint (Maybe Text)
eShell = lens _eShell (\ s a -> s{_eShell = a})

instance FromJSON Entrypoint where
        parseJSON
          = withObject "Entrypoint"
              (\ o -> Entrypoint' <$> (o .:? "shell"))

instance ToJSON Entrypoint where
        toJSON Entrypoint'{..}
          = object (catMaybes [("shell" .=) <$> _eShell])

-- | Response message for Versions.ListVersions.
--
-- /See:/ 'listVersionsResponse' smart constructor.
data ListVersionsResponse =
  ListVersionsResponse'
    { _lvrNextPageToken :: !(Maybe Text)
    , _lvrVersions :: !(Maybe [Version])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  ListVersionsResponse' {_lvrNextPageToken = Nothing, _lvrVersions = Nothing}


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

-- | A certificate managed by App Engine.
--
-- /See:/ 'managedCertificate' smart constructor.
data ManagedCertificate =
  ManagedCertificate'
    { _mcStatus :: !(Maybe ManagedCertificateStatus)
    , _mcLastRenewalTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagedCertificate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcStatus'
--
-- * 'mcLastRenewalTime'
managedCertificate
    :: ManagedCertificate
managedCertificate =
  ManagedCertificate' {_mcStatus = Nothing, _mcLastRenewalTime = Nothing}


-- | Status of certificate management. Refers to the most recent certificate
-- acquisition or renewal attempt.\'OutputOnly
mcStatus :: Lens' ManagedCertificate (Maybe ManagedCertificateStatus)
mcStatus = lens _mcStatus (\ s a -> s{_mcStatus = a})

-- | Time at which the certificate was last renewed. The renewal process is
-- fully managed. Certificate renewal will automatically occur before the
-- certificate expires. Renewal errors can be tracked via
-- ManagementStatus.\'OutputOnly
mcLastRenewalTime :: Lens' ManagedCertificate (Maybe UTCTime)
mcLastRenewalTime
  = lens _mcLastRenewalTime
      (\ s a -> s{_mcLastRenewalTime = a})
      . mapping _DateTime

instance FromJSON ManagedCertificate where
        parseJSON
          = withObject "ManagedCertificate"
              (\ o ->
                 ManagedCertificate' <$>
                   (o .:? "status") <*> (o .:? "lastRenewalTime"))

instance ToJSON ManagedCertificate where
        toJSON ManagedCertificate'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _mcStatus,
                  ("lastRenewalTime" .=) <$> _mcLastRenewalTime])

-- | Metadata for the given google.longrunning.Operation during a
-- google.appengine.v1alpha.CreateVersionRequest.
--
-- /See:/ 'createVersionMetadataV1Alpha' smart constructor.
newtype CreateVersionMetadataV1Alpha =
  CreateVersionMetadataV1Alpha'
    { _cvmvaCloudBuildId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateVersionMetadataV1Alpha' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cvmvaCloudBuildId'
createVersionMetadataV1Alpha
    :: CreateVersionMetadataV1Alpha
createVersionMetadataV1Alpha =
  CreateVersionMetadataV1Alpha' {_cvmvaCloudBuildId = Nothing}


-- | The Cloud Build ID if one was created as part of the version create.
-- \'OutputOnly
cvmvaCloudBuildId :: Lens' CreateVersionMetadataV1Alpha (Maybe Text)
cvmvaCloudBuildId
  = lens _cvmvaCloudBuildId
      (\ s a -> s{_cvmvaCloudBuildId = a})

instance FromJSON CreateVersionMetadataV1Alpha where
        parseJSON
          = withObject "CreateVersionMetadataV1Alpha"
              (\ o ->
                 CreateVersionMetadataV1Alpha' <$>
                   (o .:? "cloudBuildId"))

instance ToJSON CreateVersionMetadataV1Alpha where
        toJSON CreateVersionMetadataV1Alpha'{..}
          = object
              (catMaybes
                 [("cloudBuildId" .=) <$> _cvmvaCloudBuildId])

-- | Single source file that is part of the version to be deployed. Each
-- source file that is deployed must be specified separately.
--
-- /See:/ 'fileInfo' smart constructor.
data FileInfo =
  FileInfo'
    { _fiSha1Sum :: !(Maybe Text)
    , _fiMimeType :: !(Maybe Text)
    , _fiSourceURL :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
    {_fiSha1Sum = Nothing, _fiMimeType = Nothing, _fiSourceURL = Nothing}


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
data AutomaticScaling =
  AutomaticScaling'
    { _asNetworkUtilization :: !(Maybe NetworkUtilization)
    , _asMaxTotalInstances :: !(Maybe (Textual Int32))
    , _asMinIdleInstances :: !(Maybe (Textual Int32))
    , _asDiskUtilization :: !(Maybe DiskUtilization)
    , _asMinPendingLatency :: !(Maybe GDuration)
    , _asCPUUtilization :: !(Maybe CPUUtilization)
    , _asMaxIdleInstances :: !(Maybe (Textual Int32))
    , _asMinTotalInstances :: !(Maybe (Textual Int32))
    , _asMaxConcurrentRequests :: !(Maybe (Textual Int32))
    , _asCoolDownPeriod :: !(Maybe GDuration)
    , _asRequestUtilization :: !(Maybe RequestUtilization)
    , _asMaxPendingLatency :: !(Maybe GDuration)
    , _asStandardSchedulerSettings :: !(Maybe StandardSchedulerSettings)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
--
-- * 'asStandardSchedulerSettings'
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
    , _asStandardSchedulerSettings = Nothing
    }


-- | Target scaling by network usage.
asNetworkUtilization :: Lens' AutomaticScaling (Maybe NetworkUtilization)
asNetworkUtilization
  = lens _asNetworkUtilization
      (\ s a -> s{_asNetworkUtilization = a})

-- | Maximum number of instances that should be started to handle requests
-- for this version.
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
asMinPendingLatency :: Lens' AutomaticScaling (Maybe Scientific)
asMinPendingLatency
  = lens _asMinPendingLatency
      (\ s a -> s{_asMinPendingLatency = a})
      . mapping _GDuration

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

-- | Minimum number of running instances that should be maintained for this
-- version.
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

-- | The time period that the Autoscaler
-- (https:\/\/cloud.google.com\/compute\/docs\/autoscaler\/) should wait
-- before it starts collecting information from a new instance. This
-- prevents the autoscaler from collecting information when the instance is
-- initializing, during which the collected usage would not be reliable.
-- Only applicable in the App Engine flexible environment.
asCoolDownPeriod :: Lens' AutomaticScaling (Maybe Scientific)
asCoolDownPeriod
  = lens _asCoolDownPeriod
      (\ s a -> s{_asCoolDownPeriod = a})
      . mapping _GDuration

-- | Target scaling by request utilization.
asRequestUtilization :: Lens' AutomaticScaling (Maybe RequestUtilization)
asRequestUtilization
  = lens _asRequestUtilization
      (\ s a -> s{_asRequestUtilization = a})

-- | Maximum amount of time that a request should wait in the pending queue
-- before starting a new instance to handle it.
asMaxPendingLatency :: Lens' AutomaticScaling (Maybe Scientific)
asMaxPendingLatency
  = lens _asMaxPendingLatency
      (\ s a -> s{_asMaxPendingLatency = a})
      . mapping _GDuration

-- | Scheduler settings for standard environment.
asStandardSchedulerSettings :: Lens' AutomaticScaling (Maybe StandardSchedulerSettings)
asStandardSchedulerSettings
  = lens _asStandardSchedulerSettings
      (\ s a -> s{_asStandardSchedulerSettings = a})

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
                     <*> (o .:? "maxPendingLatency")
                     <*> (o .:? "standardSchedulerSettings"))

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
                  ("maxPendingLatency" .=) <$> _asMaxPendingLatency,
                  ("standardSchedulerSettings" .=) <$>
                    _asStandardSchedulerSettings])

-- | Volumes mounted within the app container. Only applicable in the App
-- Engine flexible environment.
--
-- /See:/ 'volume' smart constructor.
data Volume =
  Volume'
    { _vSizeGb :: !(Maybe (Textual Double))
    , _vName :: !(Maybe Text)
    , _vVolumeType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
volume = Volume' {_vSizeGb = Nothing, _vName = Nothing, _vVolumeType = Nothing}


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
newtype APIEndpointHandler =
  APIEndpointHandler'
    { _aehScriptPath :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'APIEndpointHandler' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aehScriptPath'
apiEndpointHandler
    :: APIEndpointHandler
apiEndpointHandler = APIEndpointHandler' {_aehScriptPath = Nothing}


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

-- | Response message for Firewall.ListIngressRules.
--
-- /See:/ 'listIngressRulesResponse' smart constructor.
data ListIngressRulesResponse =
  ListIngressRulesResponse'
    { _lirrNextPageToken :: !(Maybe Text)
    , _lirrIngressRules :: !(Maybe [FirewallRule])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListIngressRulesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lirrNextPageToken'
--
-- * 'lirrIngressRules'
listIngressRulesResponse
    :: ListIngressRulesResponse
listIngressRulesResponse =
  ListIngressRulesResponse'
    {_lirrNextPageToken = Nothing, _lirrIngressRules = Nothing}


-- | Continuation token for fetching the next page of results.
lirrNextPageToken :: Lens' ListIngressRulesResponse (Maybe Text)
lirrNextPageToken
  = lens _lirrNextPageToken
      (\ s a -> s{_lirrNextPageToken = a})

-- | The ingress FirewallRules for this application.
lirrIngressRules :: Lens' ListIngressRulesResponse [FirewallRule]
lirrIngressRules
  = lens _lirrIngressRules
      (\ s a -> s{_lirrIngressRules = a})
      . _Default
      . _Coerce

instance FromJSON ListIngressRulesResponse where
        parseJSON
          = withObject "ListIngressRulesResponse"
              (\ o ->
                 ListIngressRulesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "ingressRules" .!= mempty))

instance ToJSON ListIngressRulesResponse where
        toJSON ListIngressRulesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lirrNextPageToken,
                  ("ingressRules" .=) <$> _lirrIngressRules])

-- | Extra network settings. Only applicable in the App Engine flexible
-- environment.
--
-- /See:/ 'network' smart constructor.
data Network =
  Network'
    { _nSessionAffinity :: !(Maybe Bool)
    , _nSubnetworkName :: !(Maybe Text)
    , _nForwardedPorts :: !(Maybe [Text])
    , _nInstanceTag :: !(Maybe Text)
    , _nName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Network' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nSessionAffinity'
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
    { _nSessionAffinity = Nothing
    , _nSubnetworkName = Nothing
    , _nForwardedPorts = Nothing
    , _nInstanceTag = Nothing
    , _nName = Nothing
    }


-- | Enable session affinity. Only applicable in the App Engine flexible
-- environment.
nSessionAffinity :: Lens' Network (Maybe Bool)
nSessionAffinity
  = lens _nSessionAffinity
      (\ s a -> s{_nSessionAffinity = a})

-- | Google Cloud Platform sub-network where the virtual machines are
-- created. Specify the short name, not the resource path.If a subnetwork
-- name is specified, a network name will also be required unless it is for
-- the default network. If the network that the instance is being created
-- in is a Legacy network, then the IP address is allocated from the
-- IPv4Range. If the network that the instance is being created in is an
-- auto Subnet Mode Network, then only network name should be specified
-- (not the subnetwork_name) and the IP address is created from the
-- IPCidrRange of the subnetwork that exists in that zone for that network.
-- If the network that the instance is being created in is a custom Subnet
-- Mode Network, then the subnetwork_name must be specified and the IP
-- address is created from the IPCidrRange of the subnetwork.If specified,
-- the subnetwork must exist in the same region as the App Engine flexible
-- environment application.
nSubnetworkName :: Lens' Network (Maybe Text)
nSubnetworkName
  = lens _nSubnetworkName
      (\ s a -> s{_nSubnetworkName = a})

-- | List of ports, or port pairs, to forward from the virtual machine to the
-- application container. Only applicable in the App Engine flexible
-- environment.
nForwardedPorts :: Lens' Network [Text]
nForwardedPorts
  = lens _nForwardedPorts
      (\ s a -> s{_nForwardedPorts = a})
      . _Default
      . _Coerce

-- | Tag to apply to the instance during creation. Only applicable in the App
-- Engine flexible environment.
nInstanceTag :: Lens' Network (Maybe Text)
nInstanceTag
  = lens _nInstanceTag (\ s a -> s{_nInstanceTag = a})

-- | Google Compute Engine network where the virtual machines are created.
-- Specify the short name, not the resource path.Defaults to default.
nName :: Lens' Network (Maybe Text)
nName = lens _nName (\ s a -> s{_nName = a})

instance FromJSON Network where
        parseJSON
          = withObject "Network"
              (\ o ->
                 Network' <$>
                   (o .:? "sessionAffinity") <*>
                     (o .:? "subnetworkName")
                     <*> (o .:? "forwardedPorts" .!= mempty)
                     <*> (o .:? "instanceTag")
                     <*> (o .:? "name"))

instance ToJSON Network where
        toJSON Network'{..}
          = object
              (catMaybes
                 [("sessionAffinity" .=) <$> _nSessionAffinity,
                  ("subnetworkName" .=) <$> _nSubnetworkName,
                  ("forwardedPorts" .=) <$> _nForwardedPorts,
                  ("instanceTag" .=) <$> _nInstanceTag,
                  ("name" .=) <$> _nName])

-- | Readiness checking configuration for VM instances. Unhealthy instances
-- are removed from traffic rotation.
--
-- /See:/ 'readinessCheck' smart constructor.
data ReadinessCheck =
  ReadinessCheck'
    { _rcSuccessThreshold :: !(Maybe (Textual Word32))
    , _rcFailureThreshold :: !(Maybe (Textual Word32))
    , _rcPath :: !(Maybe Text)
    , _rcCheckInterval :: !(Maybe GDuration)
    , _rcAppStartTimeout :: !(Maybe GDuration)
    , _rcHost :: !(Maybe Text)
    , _rcTimeout :: !(Maybe GDuration)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReadinessCheck' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcSuccessThreshold'
--
-- * 'rcFailureThreshold'
--
-- * 'rcPath'
--
-- * 'rcCheckInterval'
--
-- * 'rcAppStartTimeout'
--
-- * 'rcHost'
--
-- * 'rcTimeout'
readinessCheck
    :: ReadinessCheck
readinessCheck =
  ReadinessCheck'
    { _rcSuccessThreshold = Nothing
    , _rcFailureThreshold = Nothing
    , _rcPath = Nothing
    , _rcCheckInterval = Nothing
    , _rcAppStartTimeout = Nothing
    , _rcHost = Nothing
    , _rcTimeout = Nothing
    }


-- | Number of consecutive successful checks required before receiving
-- traffic.
rcSuccessThreshold :: Lens' ReadinessCheck (Maybe Word32)
rcSuccessThreshold
  = lens _rcSuccessThreshold
      (\ s a -> s{_rcSuccessThreshold = a})
      . mapping _Coerce

-- | Number of consecutive failed checks required before removing traffic.
rcFailureThreshold :: Lens' ReadinessCheck (Maybe Word32)
rcFailureThreshold
  = lens _rcFailureThreshold
      (\ s a -> s{_rcFailureThreshold = a})
      . mapping _Coerce

-- | The request path.
rcPath :: Lens' ReadinessCheck (Maybe Text)
rcPath = lens _rcPath (\ s a -> s{_rcPath = a})

-- | Interval between health checks.
rcCheckInterval :: Lens' ReadinessCheck (Maybe Scientific)
rcCheckInterval
  = lens _rcCheckInterval
      (\ s a -> s{_rcCheckInterval = a})
      . mapping _GDuration

-- | A maximum time limit on application initialization, measured from moment
-- the application successfully replies to a healthcheck until it is ready
-- to serve traffic.
rcAppStartTimeout :: Lens' ReadinessCheck (Maybe Scientific)
rcAppStartTimeout
  = lens _rcAppStartTimeout
      (\ s a -> s{_rcAppStartTimeout = a})
      . mapping _GDuration

-- | Host header to send when performing a HTTP Readiness check. Example:
-- \"myapp.appspot.com\"
rcHost :: Lens' ReadinessCheck (Maybe Text)
rcHost = lens _rcHost (\ s a -> s{_rcHost = a})

-- | Time before the check is considered failed.
rcTimeout :: Lens' ReadinessCheck (Maybe Scientific)
rcTimeout
  = lens _rcTimeout (\ s a -> s{_rcTimeout = a}) .
      mapping _GDuration

instance FromJSON ReadinessCheck where
        parseJSON
          = withObject "ReadinessCheck"
              (\ o ->
                 ReadinessCheck' <$>
                   (o .:? "successThreshold") <*>
                     (o .:? "failureThreshold")
                     <*> (o .:? "path")
                     <*> (o .:? "checkInterval")
                     <*> (o .:? "appStartTimeout")
                     <*> (o .:? "host")
                     <*> (o .:? "timeout"))

instance ToJSON ReadinessCheck where
        toJSON ReadinessCheck'{..}
          = object
              (catMaybes
                 [("successThreshold" .=) <$> _rcSuccessThreshold,
                  ("failureThreshold" .=) <$> _rcFailureThreshold,
                  ("path" .=) <$> _rcPath,
                  ("checkInterval" .=) <$> _rcCheckInterval,
                  ("appStartTimeout" .=) <$> _rcAppStartTimeout,
                  ("host" .=) <$> _rcHost,
                  ("timeout" .=) <$> _rcTimeout])

-- | Request message for Firewall.BatchUpdateIngressRules.
--
-- /See:/ 'batchUpdateIngressRulesRequest' smart constructor.
newtype BatchUpdateIngressRulesRequest =
  BatchUpdateIngressRulesRequest'
    { _buirrIngressRules :: Maybe [FirewallRule]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchUpdateIngressRulesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'buirrIngressRules'
batchUpdateIngressRulesRequest
    :: BatchUpdateIngressRulesRequest
batchUpdateIngressRulesRequest =
  BatchUpdateIngressRulesRequest' {_buirrIngressRules = Nothing}


-- | A list of FirewallRules to replace the existing set.
buirrIngressRules :: Lens' BatchUpdateIngressRulesRequest [FirewallRule]
buirrIngressRules
  = lens _buirrIngressRules
      (\ s a -> s{_buirrIngressRules = a})
      . _Default
      . _Coerce

instance FromJSON BatchUpdateIngressRulesRequest
         where
        parseJSON
          = withObject "BatchUpdateIngressRulesRequest"
              (\ o ->
                 BatchUpdateIngressRulesRequest' <$>
                   (o .:? "ingressRules" .!= mempty))

instance ToJSON BatchUpdateIngressRulesRequest where
        toJSON BatchUpdateIngressRulesRequest'{..}
          = object
              (catMaybes
                 [("ingressRules" .=) <$> _buirrIngressRules])

-- | Request message for Instances.DebugInstance.
--
-- /See:/ 'debugInstanceRequest' smart constructor.
newtype DebugInstanceRequest =
  DebugInstanceRequest'
    { _dirSSHKey :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DebugInstanceRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dirSSHKey'
debugInstanceRequest
    :: DebugInstanceRequest
debugInstanceRequest = DebugInstanceRequest' {_dirSSHKey = Nothing}


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
newtype StaticFilesHandlerHTTPHeaders =
  StaticFilesHandlerHTTPHeaders'
    { _sfhhttphAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
    {_sfhhttphAddtional = _Coerce # pSfhhttphAddtional_}


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
data Resources =
  Resources'
    { _rMemoryGb :: !(Maybe (Textual Double))
    , _rDiskGb :: !(Maybe (Textual Double))
    , _rKmsKeyReference :: !(Maybe Text)
    , _rVolumes :: !(Maybe [Volume])
    , _rCPU :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Resources' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rMemoryGb'
--
-- * 'rDiskGb'
--
-- * 'rKmsKeyReference'
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
    , _rKmsKeyReference = Nothing
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

-- | The name of the encryption key that is stored in Google Cloud KMS. Only
-- should be used by Cloud Composer to encrypt the vm disk
rKmsKeyReference :: Lens' Resources (Maybe Text)
rKmsKeyReference
  = lens _rKmsKeyReference
      (\ s a -> s{_rKmsKeyReference = a})

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
                     (o .:? "kmsKeyReference")
                     <*> (o .:? "volumes" .!= mempty)
                     <*> (o .:? "cpu"))

instance ToJSON Resources where
        toJSON Resources'{..}
          = object
              (catMaybes
                 [("memoryGb" .=) <$> _rMemoryGb,
                  ("diskGb" .=) <$> _rDiskGb,
                  ("kmsKeyReference" .=) <$> _rKmsKeyReference,
                  ("volumes" .=) <$> _rVolumes, ("cpu" .=) <$> _rCPU])

-- | The feature specific settings to be used in the application. These
-- define behaviors that are user configurable.
--
-- /See:/ 'featureSettings' smart constructor.
data FeatureSettings =
  FeatureSettings'
    { _fsUseContainerOptimizedOS :: !(Maybe Bool)
    , _fsSplitHealthChecks :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FeatureSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fsUseContainerOptimizedOS'
--
-- * 'fsSplitHealthChecks'
featureSettings
    :: FeatureSettings
featureSettings =
  FeatureSettings'
    {_fsUseContainerOptimizedOS = Nothing, _fsSplitHealthChecks = Nothing}


-- | If true, use Container-Optimized OS
-- (https:\/\/cloud.google.com\/container-optimized-os\/) base image for
-- VMs, rather than a base Debian image.
fsUseContainerOptimizedOS :: Lens' FeatureSettings (Maybe Bool)
fsUseContainerOptimizedOS
  = lens _fsUseContainerOptimizedOS
      (\ s a -> s{_fsUseContainerOptimizedOS = a})

-- | Boolean value indicating if split health checks should be used instead
-- of the legacy health checks. At an app.yaml level, this means defaulting
-- to \'readiness_check\' and \'liveness_check\' values instead of
-- \'health_check\' ones. Once the legacy \'health_check\' behavior is
-- deprecated, and this value is always true, this setting can be removed.
fsSplitHealthChecks :: Lens' FeatureSettings (Maybe Bool)
fsSplitHealthChecks
  = lens _fsSplitHealthChecks
      (\ s a -> s{_fsSplitHealthChecks = a})

instance FromJSON FeatureSettings where
        parseJSON
          = withObject "FeatureSettings"
              (\ o ->
                 FeatureSettings' <$>
                   (o .:? "useContainerOptimizedOs") <*>
                     (o .:? "splitHealthChecks"))

instance ToJSON FeatureSettings where
        toJSON FeatureSettings'{..}
          = object
              (catMaybes
                 [("useContainerOptimizedOs" .=) <$>
                    _fsUseContainerOptimizedOS,
                  ("splitHealthChecks" .=) <$> _fsSplitHealthChecks])

-- | An SSL certificate obtained from a certificate authority.
--
-- /See:/ 'certificateRawData' smart constructor.
data CertificateRawData =
  CertificateRawData'
    { _crdPrivateKey :: !(Maybe Text)
    , _crdPublicCertificate :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CertificateRawData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crdPrivateKey'
--
-- * 'crdPublicCertificate'
certificateRawData
    :: CertificateRawData
certificateRawData =
  CertificateRawData'
    {_crdPrivateKey = Nothing, _crdPublicCertificate = Nothing}


-- | Unencrypted PEM encoded RSA private key. This field is set once on
-- certificate creation and then encrypted. The key size must be 2048 bits
-- or fewer. Must include the header and footer. Example: -----BEGIN RSA
-- PRIVATE KEY----- -----END RSA PRIVATE KEY----- \'InputOnly
crdPrivateKey :: Lens' CertificateRawData (Maybe Text)
crdPrivateKey
  = lens _crdPrivateKey
      (\ s a -> s{_crdPrivateKey = a})

-- | PEM encoded x.509 public key certificate. This field is set once on
-- certificate creation. Must include the header and footer. Example:
-- -----BEGIN CERTIFICATE----- -----END CERTIFICATE-----
crdPublicCertificate :: Lens' CertificateRawData (Maybe Text)
crdPublicCertificate
  = lens _crdPublicCertificate
      (\ s a -> s{_crdPublicCertificate = a})

instance FromJSON CertificateRawData where
        parseJSON
          = withObject "CertificateRawData"
              (\ o ->
                 CertificateRawData' <$>
                   (o .:? "privateKey") <*> (o .:? "publicCertificate"))

instance ToJSON CertificateRawData where
        toJSON CertificateRawData'{..}
          = object
              (catMaybes
                 [("privateKey" .=) <$> _crdPrivateKey,
                  ("publicCertificate" .=) <$> _crdPublicCertificate])

-- | A domain serving an App Engine application.
--
-- /See:/ 'domainMApping' smart constructor.
data DomainMApping =
  DomainMApping'
    { _dmaResourceRecords :: !(Maybe [ResourceRecord])
    , _dmaName :: !(Maybe Text)
    , _dmaId :: !(Maybe Text)
    , _dmaSSLSettings :: !(Maybe SSLSettings)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DomainMApping' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmaResourceRecords'
--
-- * 'dmaName'
--
-- * 'dmaId'
--
-- * 'dmaSSLSettings'
domainMApping
    :: DomainMApping
domainMApping =
  DomainMApping'
    { _dmaResourceRecords = Nothing
    , _dmaName = Nothing
    , _dmaId = Nothing
    , _dmaSSLSettings = Nothing
    }


-- | The resource records required to configure this domain mapping. These
-- records must be added to the domain\'s DNS configuration in order to
-- serve the application via this domain mapping.\'OutputOnly
dmaResourceRecords :: Lens' DomainMApping [ResourceRecord]
dmaResourceRecords
  = lens _dmaResourceRecords
      (\ s a -> s{_dmaResourceRecords = a})
      . _Default
      . _Coerce

-- | Full path to the DomainMapping resource in the API. Example:
-- apps\/myapp\/domainMapping\/example.com.\'OutputOnly
dmaName :: Lens' DomainMApping (Maybe Text)
dmaName = lens _dmaName (\ s a -> s{_dmaName = a})

-- | Relative name of the domain serving the application. Example:
-- example.com.
dmaId :: Lens' DomainMApping (Maybe Text)
dmaId = lens _dmaId (\ s a -> s{_dmaId = a})

-- | SSL configuration for this domain. If unconfigured, this domain will not
-- serve with SSL.
dmaSSLSettings :: Lens' DomainMApping (Maybe SSLSettings)
dmaSSLSettings
  = lens _dmaSSLSettings
      (\ s a -> s{_dmaSSLSettings = a})

instance FromJSON DomainMApping where
        parseJSON
          = withObject "DomainMApping"
              (\ o ->
                 DomainMApping' <$>
                   (o .:? "resourceRecords" .!= mempty) <*>
                     (o .:? "name")
                     <*> (o .:? "id")
                     <*> (o .:? "sslSettings"))

instance ToJSON DomainMApping where
        toJSON DomainMApping'{..}
          = object
              (catMaybes
                 [("resourceRecords" .=) <$> _dmaResourceRecords,
                  ("name" .=) <$> _dmaName, ("id" .=) <$> _dmaId,
                  ("sslSettings" .=) <$> _dmaSSLSettings])

-- | Manifest of the files stored in Google Cloud Storage that are included
-- as part of this version. All files must be readable using the
-- credentials supplied with this call.
--
-- /See:/ 'deploymentFiles' smart constructor.
newtype DeploymentFiles =
  DeploymentFiles'
    { _dfAddtional :: HashMap Text FileInfo
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeploymentFiles' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfAddtional'
deploymentFiles
    :: HashMap Text FileInfo -- ^ 'dfAddtional'
    -> DeploymentFiles
deploymentFiles pDfAddtional_ =
  DeploymentFiles' {_dfAddtional = _Coerce # pDfAddtional_}


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

-- | Response message for Firewall.UpdateAllIngressRules.
--
-- /See:/ 'batchUpdateIngressRulesResponse' smart constructor.
newtype BatchUpdateIngressRulesResponse =
  BatchUpdateIngressRulesResponse'
    { _bIngressRules :: Maybe [FirewallRule]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchUpdateIngressRulesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bIngressRules'
batchUpdateIngressRulesResponse
    :: BatchUpdateIngressRulesResponse
batchUpdateIngressRulesResponse =
  BatchUpdateIngressRulesResponse' {_bIngressRules = Nothing}


-- | The full list of ingress FirewallRules for this application.
bIngressRules :: Lens' BatchUpdateIngressRulesResponse [FirewallRule]
bIngressRules
  = lens _bIngressRules
      (\ s a -> s{_bIngressRules = a})
      . _Default
      . _Coerce

instance FromJSON BatchUpdateIngressRulesResponse
         where
        parseJSON
          = withObject "BatchUpdateIngressRulesResponse"
              (\ o ->
                 BatchUpdateIngressRulesResponse' <$>
                   (o .:? "ingressRules" .!= mempty))

instance ToJSON BatchUpdateIngressRulesResponse where
        toJSON BatchUpdateIngressRulesResponse'{..}
          = object
              (catMaybes [("ingressRules" .=) <$> _bIngressRules])

-- | Target scaling by CPU usage.
--
-- /See:/ 'cpuUtilization' smart constructor.
data CPUUtilization =
  CPUUtilization'
    { _cuAggregationWindowLength :: !(Maybe GDuration)
    , _cuTargetUtilization :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
    {_cuAggregationWindowLength = Nothing, _cuTargetUtilization = Nothing}


-- | Period of time over which CPU utilization is calculated.
cuAggregationWindowLength :: Lens' CPUUtilization (Maybe Scientific)
cuAggregationWindowLength
  = lens _cuAggregationWindowLength
      (\ s a -> s{_cuAggregationWindowLength = a})
      . mapping _GDuration

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

-- | Environment variables available to the build environment.Only returned
-- in GET requests if view=FULL is set.
--
-- /See:/ 'versionBuildEnvVariables' smart constructor.
newtype VersionBuildEnvVariables =
  VersionBuildEnvVariables'
    { _vbevAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VersionBuildEnvVariables' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vbevAddtional'
versionBuildEnvVariables
    :: HashMap Text Text -- ^ 'vbevAddtional'
    -> VersionBuildEnvVariables
versionBuildEnvVariables pVbevAddtional_ =
  VersionBuildEnvVariables' {_vbevAddtional = _Coerce # pVbevAddtional_}


vbevAddtional :: Lens' VersionBuildEnvVariables (HashMap Text Text)
vbevAddtional
  = lens _vbevAddtional
      (\ s a -> s{_vbevAddtional = a})
      . _Coerce

instance FromJSON VersionBuildEnvVariables where
        parseJSON
          = withObject "VersionBuildEnvVariables"
              (\ o ->
                 VersionBuildEnvVariables' <$> (parseJSONObject o))

instance ToJSON VersionBuildEnvVariables where
        toJSON = toJSON . _vbevAddtional

-- | Metadata for the given google.longrunning.Operation during a
-- google.appengine.v1.CreateVersionRequest.
--
-- /See:/ 'createVersionMetadataV1' smart constructor.
newtype CreateVersionMetadataV1 =
  CreateVersionMetadataV1'
    { _cvmvCloudBuildId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateVersionMetadataV1' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cvmvCloudBuildId'
createVersionMetadataV1
    :: CreateVersionMetadataV1
createVersionMetadataV1 = CreateVersionMetadataV1' {_cvmvCloudBuildId = Nothing}


-- | The Cloud Build ID if one was created as part of the version create.
-- \'OutputOnly
cvmvCloudBuildId :: Lens' CreateVersionMetadataV1 (Maybe Text)
cvmvCloudBuildId
  = lens _cvmvCloudBuildId
      (\ s a -> s{_cvmvCloudBuildId = a})

instance FromJSON CreateVersionMetadataV1 where
        parseJSON
          = withObject "CreateVersionMetadataV1"
              (\ o ->
                 CreateVersionMetadataV1' <$> (o .:? "cloudBuildId"))

instance ToJSON CreateVersionMetadataV1 where
        toJSON CreateVersionMetadataV1'{..}
          = object
              (catMaybes
                 [("cloudBuildId" .=) <$> _cvmvCloudBuildId])

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
newtype TrafficSplitAllocations =
  TrafficSplitAllocations'
    { _tsaAddtional :: HashMap Text (Textual Double)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TrafficSplitAllocations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsaAddtional'
trafficSplitAllocations
    :: HashMap Text Double -- ^ 'tsaAddtional'
    -> TrafficSplitAllocations
trafficSplitAllocations pTsaAddtional_ =
  TrafficSplitAllocations' {_tsaAddtional = _Coerce # pTsaAddtional_}


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

-- | Options for the build operations performed as a part of the version
-- deployment. Only applicable for App Engine flexible environment when
-- creating a version using source code directly.
--
-- /See:/ 'cloudBuildOptions' smart constructor.
data CloudBuildOptions =
  CloudBuildOptions'
    { _cboCloudBuildTimeout :: !(Maybe GDuration)
    , _cboAppYamlPath :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CloudBuildOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cboCloudBuildTimeout'
--
-- * 'cboAppYamlPath'
cloudBuildOptions
    :: CloudBuildOptions
cloudBuildOptions =
  CloudBuildOptions'
    {_cboCloudBuildTimeout = Nothing, _cboAppYamlPath = Nothing}


-- | The Cloud Build timeout used as part of any dependent builds performed
-- by version creation. Defaults to 10 minutes.
cboCloudBuildTimeout :: Lens' CloudBuildOptions (Maybe Scientific)
cboCloudBuildTimeout
  = lens _cboCloudBuildTimeout
      (\ s a -> s{_cboCloudBuildTimeout = a})
      . mapping _GDuration

-- | Path to the yaml file used in deployment, used to determine runtime
-- configuration details.Required for flexible environment builds.See
-- https:\/\/cloud.google.com\/appengine\/docs\/standard\/python\/config\/appref
-- for more details.
cboAppYamlPath :: Lens' CloudBuildOptions (Maybe Text)
cboAppYamlPath
  = lens _cboAppYamlPath
      (\ s a -> s{_cboAppYamlPath = a})

instance FromJSON CloudBuildOptions where
        parseJSON
          = withObject "CloudBuildOptions"
              (\ o ->
                 CloudBuildOptions' <$>
                   (o .:? "cloudBuildTimeout") <*>
                     (o .:? "appYamlPath"))

instance ToJSON CloudBuildOptions where
        toJSON CloudBuildOptions'{..}
          = object
              (catMaybes
                 [("cloudBuildTimeout" .=) <$> _cboCloudBuildTimeout,
                  ("appYamlPath" .=) <$> _cboAppYamlPath])

-- | A service with manual scaling runs continuously, allowing you to perform
-- complex initialization and rely on the state of its memory over time.
--
-- /See:/ 'manualScaling' smart constructor.
newtype ManualScaling =
  ManualScaling'
    { _msInstances :: Maybe (Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManualScaling' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'msInstances'
manualScaling
    :: ManualScaling
manualScaling = ManualScaling' {_msInstances = Nothing}


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
data BasicScaling =
  BasicScaling'
    { _bsMaxInstances :: !(Maybe (Textual Int32))
    , _bsIdleTimeout :: !(Maybe GDuration)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  BasicScaling' {_bsMaxInstances = Nothing, _bsIdleTimeout = Nothing}


-- | Maximum number of instances to create for this version.
bsMaxInstances :: Lens' BasicScaling (Maybe Int32)
bsMaxInstances
  = lens _bsMaxInstances
      (\ s a -> s{_bsMaxInstances = a})
      . mapping _Coerce

-- | Duration of time after the last request that an instance must wait
-- before the instance is shut down.
bsIdleTimeout :: Lens' BasicScaling (Maybe Scientific)
bsIdleTimeout
  = lens _bsIdleTimeout
      (\ s a -> s{_bsIdleTimeout = a})
      . mapping _GDuration

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
data OperationMetadataV1 =
  OperationMetadataV1'
    { _omvEphemeralMessage :: !(Maybe Text)
    , _omvInsertTime :: !(Maybe DateTime')
    , _omvUser :: !(Maybe Text)
    , _omvMethod :: !(Maybe Text)
    , _omvEndTime :: !(Maybe DateTime')
    , _omvWarning :: !(Maybe [Text])
    , _omvCreateVersionMetadata :: !(Maybe CreateVersionMetadataV1)
    , _omvTarget :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
-- * 'omvCreateVersionMetadata'
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
    , _omvCreateVersionMetadata = Nothing
    , _omvTarget = Nothing
    }


-- | Ephemeral message that may change every time the operation is polled.
-- \'OutputOnly
omvEphemeralMessage :: Lens' OperationMetadataV1 (Maybe Text)
omvEphemeralMessage
  = lens _omvEphemeralMessage
      (\ s a -> s{_omvEphemeralMessage = a})

-- | Time that this operation was created.\'OutputOnly
omvInsertTime :: Lens' OperationMetadataV1 (Maybe UTCTime)
omvInsertTime
  = lens _omvInsertTime
      (\ s a -> s{_omvInsertTime = a})
      . mapping _DateTime

-- | User who requested this operation.\'OutputOnly
omvUser :: Lens' OperationMetadataV1 (Maybe Text)
omvUser = lens _omvUser (\ s a -> s{_omvUser = a})

-- | API method that initiated this operation. Example:
-- google.appengine.v1.Versions.CreateVersion.\'OutputOnly
omvMethod :: Lens' OperationMetadataV1 (Maybe Text)
omvMethod
  = lens _omvMethod (\ s a -> s{_omvMethod = a})

-- | Time that this operation completed.\'OutputOnly
omvEndTime :: Lens' OperationMetadataV1 (Maybe UTCTime)
omvEndTime
  = lens _omvEndTime (\ s a -> s{_omvEndTime = a}) .
      mapping _DateTime

-- | Durable messages that persist on every operation poll. \'OutputOnly
omvWarning :: Lens' OperationMetadataV1 [Text]
omvWarning
  = lens _omvWarning (\ s a -> s{_omvWarning = a}) .
      _Default
      . _Coerce

omvCreateVersionMetadata :: Lens' OperationMetadataV1 (Maybe CreateVersionMetadataV1)
omvCreateVersionMetadata
  = lens _omvCreateVersionMetadata
      (\ s a -> s{_omvCreateVersionMetadata = a})

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
                     <*> (o .:? "createVersionMetadata")
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
                  ("createVersionMetadata" .=) <$>
                    _omvCreateVersionMetadata,
                  ("target" .=) <$> _omvTarget])

-- | A Version resource is a specific set of source code and configuration
-- files that are deployed into a service.
--
-- /See:/ 'version' smart constructor.
data Version =
  Version'
    { _verRuntime :: !(Maybe Text)
    , _verNobuildFilesRegex :: !(Maybe Text)
    , _verInstanceClass :: !(Maybe Text)
    , _verRuntimeChannel :: !(Maybe Text)
    , _verRuntimeMainExecutablePath :: !(Maybe Text)
    , _verVPCAccessConnector :: !(Maybe VPCAccessConnector)
    , _verHealthCheck :: !(Maybe HealthCheck)
    , _verEndpointsAPIService :: !(Maybe EndpointsAPIService)
    , _verEnv :: !(Maybe Text)
    , _verZones :: !(Maybe [Text])
    , _verEntrypoint :: !(Maybe Entrypoint)
    , _verDefaultExpiration :: !(Maybe GDuration)
    , _verAutomaticScaling :: !(Maybe AutomaticScaling)
    , _verErrorHandlers :: !(Maybe [ErrorHandler])
    , _verCreatedBy :: !(Maybe Text)
    , _verVM :: !(Maybe Bool)
    , _verHandlers :: !(Maybe [URLMap])
    , _verInboundServices :: !(Maybe [VersionInboundServicesItem])
    , _verReadinessCheck :: !(Maybe ReadinessCheck)
    , _verNetwork :: !(Maybe Network)
    , _verResources :: !(Maybe Resources)
    , _verServiceAccount :: !(Maybe Text)
    , _verName :: !(Maybe Text)
    , _verThreadsafe :: !(Maybe Bool)
    , _verBetaSettings :: !(Maybe VersionBetaSettings)
    , _verBasicScaling :: !(Maybe BasicScaling)
    , _verManualScaling :: !(Maybe ManualScaling)
    , _verAPIConfig :: !(Maybe APIConfigHandler)
    , _verId :: !(Maybe Text)
    , _verEnvVariables :: !(Maybe VersionEnvVariables)
    , _verLivenessCheck :: !(Maybe LivenessCheck)
    , _verBuildEnvVariables :: !(Maybe VersionBuildEnvVariables)
    , _verRuntimeAPIVersion :: !(Maybe Text)
    , _verServingStatus :: !(Maybe VersionServingStatus)
    , _verDiskUsageBytes :: !(Maybe (Textual Int64))
    , _verCreateTime :: !(Maybe DateTime')
    , _verLibraries :: !(Maybe [Library])
    , _verVersionURL :: !(Maybe Text)
    , _verDeployment :: !(Maybe Deployment)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
-- * 'verRuntimeChannel'
--
-- * 'verRuntimeMainExecutablePath'
--
-- * 'verVPCAccessConnector'
--
-- * 'verHealthCheck'
--
-- * 'verEndpointsAPIService'
--
-- * 'verEnv'
--
-- * 'verZones'
--
-- * 'verEntrypoint'
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
-- * 'verReadinessCheck'
--
-- * 'verNetwork'
--
-- * 'verResources'
--
-- * 'verServiceAccount'
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
-- * 'verLivenessCheck'
--
-- * 'verBuildEnvVariables'
--
-- * 'verRuntimeAPIVersion'
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
    , _verRuntimeChannel = Nothing
    , _verRuntimeMainExecutablePath = Nothing
    , _verVPCAccessConnector = Nothing
    , _verHealthCheck = Nothing
    , _verEndpointsAPIService = Nothing
    , _verEnv = Nothing
    , _verZones = Nothing
    , _verEntrypoint = Nothing
    , _verDefaultExpiration = Nothing
    , _verAutomaticScaling = Nothing
    , _verErrorHandlers = Nothing
    , _verCreatedBy = Nothing
    , _verVM = Nothing
    , _verHandlers = Nothing
    , _verInboundServices = Nothing
    , _verReadinessCheck = Nothing
    , _verNetwork = Nothing
    , _verResources = Nothing
    , _verServiceAccount = Nothing
    , _verName = Nothing
    , _verThreadsafe = Nothing
    , _verBetaSettings = Nothing
    , _verBasicScaling = Nothing
    , _verManualScaling = Nothing
    , _verAPIConfig = Nothing
    , _verId = Nothing
    , _verEnvVariables = Nothing
    , _verLivenessCheck = Nothing
    , _verBuildEnvVariables = Nothing
    , _verRuntimeAPIVersion = Nothing
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

-- | The channel of the runtime to use. Only available for some runtimes.
-- Defaults to the default channel.
verRuntimeChannel :: Lens' Version (Maybe Text)
verRuntimeChannel
  = lens _verRuntimeChannel
      (\ s a -> s{_verRuntimeChannel = a})

-- | The path or name of the app\'s main executable.
verRuntimeMainExecutablePath :: Lens' Version (Maybe Text)
verRuntimeMainExecutablePath
  = lens _verRuntimeMainExecutablePath
      (\ s a -> s{_verRuntimeMainExecutablePath = a})

-- | Enables VPC connectivity for standard apps.
verVPCAccessConnector :: Lens' Version (Maybe VPCAccessConnector)
verVPCAccessConnector
  = lens _verVPCAccessConnector
      (\ s a -> s{_verVPCAccessConnector = a})

-- | Configures health checking for instances. Unhealthy instances are
-- stopped and replaced with new instances. Only applicable in the App
-- Engine flexible environment.Only returned in GET requests if view=FULL
-- is set.
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

-- | The Google Compute Engine zones that are supported by this version in
-- the App Engine flexible environment. Deprecated.
verZones :: Lens' Version [Text]
verZones
  = lens _verZones (\ s a -> s{_verZones = a}) .
      _Default
      . _Coerce

-- | The entrypoint for the application.
verEntrypoint :: Lens' Version (Maybe Entrypoint)
verEntrypoint
  = lens _verEntrypoint
      (\ s a -> s{_verEntrypoint = a})

-- | Duration that static files should be cached by web proxies and browsers.
-- Only applicable if the corresponding StaticFilesHandler
-- (https:\/\/cloud.google.com\/appengine\/docs\/admin-api\/reference\/rest\/v1\/apps.services.versions#StaticFilesHandler)
-- does not specify its own expiration time.Only returned in GET requests
-- if view=FULL is set.
verDefaultExpiration :: Lens' Version (Maybe Scientific)
verDefaultExpiration
  = lens _verDefaultExpiration
      (\ s a -> s{_verDefaultExpiration = a})
      . mapping _GDuration

-- | Automatic scaling is based on request rate, response latencies, and
-- other application metrics. Instances are dynamically created and
-- destroyed as needed in order to handle traffic.
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
verInboundServices :: Lens' Version [VersionInboundServicesItem]
verInboundServices
  = lens _verInboundServices
      (\ s a -> s{_verInboundServices = a})
      . _Default
      . _Coerce

-- | Configures readiness health checking for instances. Unhealthy instances
-- are not put into the backend traffic rotation.Only returned in GET
-- requests if view=FULL is set.
verReadinessCheck :: Lens' Version (Maybe ReadinessCheck)
verReadinessCheck
  = lens _verReadinessCheck
      (\ s a -> s{_verReadinessCheck = a})

-- | Extra network settings. Only applicable in the App Engine flexible
-- environment.
verNetwork :: Lens' Version (Maybe Network)
verNetwork
  = lens _verNetwork (\ s a -> s{_verNetwork = a})

-- | Machine resources for this version. Only applicable in the App Engine
-- flexible environment.
verResources :: Lens' Version (Maybe Resources)
verResources
  = lens _verResources (\ s a -> s{_verResources = a})

-- | The identity that the deployed version will run as. Admin API will use
-- the App Engine Appspot service account as default if this field is
-- neither provided in app.yaml file nor through CLI flag.
verServiceAccount :: Lens' Version (Maybe Text)
verServiceAccount
  = lens _verServiceAccount
      (\ s a -> s{_verServiceAccount = a})

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
-- Manually scaled versions are sometimes referred to as \"backends\".
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

-- | Configures liveness health checking for instances. Unhealthy instances
-- are stopped and replaced with new instancesOnly returned in GET requests
-- if view=FULL is set.
verLivenessCheck :: Lens' Version (Maybe LivenessCheck)
verLivenessCheck
  = lens _verLivenessCheck
      (\ s a -> s{_verLivenessCheck = a})

-- | Environment variables available to the build environment.Only returned
-- in GET requests if view=FULL is set.
verBuildEnvVariables :: Lens' Version (Maybe VersionBuildEnvVariables)
verBuildEnvVariables
  = lens _verBuildEnvVariables
      (\ s a -> s{_verBuildEnvVariables = a})

-- | The version of the API in the given runtime environment. Please see the
-- app.yaml reference for valid values at
-- https:\/\/cloud.google.com\/appengine\/docs\/standard\/\/config\/appref
verRuntimeAPIVersion :: Lens' Version (Maybe Text)
verRuntimeAPIVersion
  = lens _verRuntimeAPIVersion
      (\ s a -> s{_verRuntimeAPIVersion = a})

-- | Current serving status of this version. Only the versions with a SERVING
-- status create instances and can be billed.SERVING_STATUS_UNSPECIFIED is
-- an invalid value. Defaults to SERVING.
verServingStatus :: Lens' Version (Maybe VersionServingStatus)
verServingStatus
  = lens _verServingStatus
      (\ s a -> s{_verServingStatus = a})

-- | Total size in bytes of all the files that are included in this version
-- and currently hosted on the App Engine disk.\'OutputOnly
verDiskUsageBytes :: Lens' Version (Maybe Int64)
verDiskUsageBytes
  = lens _verDiskUsageBytes
      (\ s a -> s{_verDiskUsageBytes = a})
      . mapping _Coerce

-- | Time that this version was created.\'OutputOnly
verCreateTime :: Lens' Version (Maybe UTCTime)
verCreateTime
  = lens _verCreateTime
      (\ s a -> s{_verCreateTime = a})
      . mapping _DateTime

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
                     <*> (o .:? "runtimeChannel")
                     <*> (o .:? "runtimeMainExecutablePath")
                     <*> (o .:? "vpcAccessConnector")
                     <*> (o .:? "healthCheck")
                     <*> (o .:? "endpointsApiService")
                     <*> (o .:? "env")
                     <*> (o .:? "zones" .!= mempty)
                     <*> (o .:? "entrypoint")
                     <*> (o .:? "defaultExpiration")
                     <*> (o .:? "automaticScaling")
                     <*> (o .:? "errorHandlers" .!= mempty)
                     <*> (o .:? "createdBy")
                     <*> (o .:? "vm")
                     <*> (o .:? "handlers" .!= mempty)
                     <*> (o .:? "inboundServices" .!= mempty)
                     <*> (o .:? "readinessCheck")
                     <*> (o .:? "network")
                     <*> (o .:? "resources")
                     <*> (o .:? "serviceAccount")
                     <*> (o .:? "name")
                     <*> (o .:? "threadsafe")
                     <*> (o .:? "betaSettings")
                     <*> (o .:? "basicScaling")
                     <*> (o .:? "manualScaling")
                     <*> (o .:? "apiConfig")
                     <*> (o .:? "id")
                     <*> (o .:? "envVariables")
                     <*> (o .:? "livenessCheck")
                     <*> (o .:? "buildEnvVariables")
                     <*> (o .:? "runtimeApiVersion")
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
                  ("runtimeChannel" .=) <$> _verRuntimeChannel,
                  ("runtimeMainExecutablePath" .=) <$>
                    _verRuntimeMainExecutablePath,
                  ("vpcAccessConnector" .=) <$> _verVPCAccessConnector,
                  ("healthCheck" .=) <$> _verHealthCheck,
                  ("endpointsApiService" .=) <$>
                    _verEndpointsAPIService,
                  ("env" .=) <$> _verEnv, ("zones" .=) <$> _verZones,
                  ("entrypoint" .=) <$> _verEntrypoint,
                  ("defaultExpiration" .=) <$> _verDefaultExpiration,
                  ("automaticScaling" .=) <$> _verAutomaticScaling,
                  ("errorHandlers" .=) <$> _verErrorHandlers,
                  ("createdBy" .=) <$> _verCreatedBy,
                  ("vm" .=) <$> _verVM,
                  ("handlers" .=) <$> _verHandlers,
                  ("inboundServices" .=) <$> _verInboundServices,
                  ("readinessCheck" .=) <$> _verReadinessCheck,
                  ("network" .=) <$> _verNetwork,
                  ("resources" .=) <$> _verResources,
                  ("serviceAccount" .=) <$> _verServiceAccount,
                  ("name" .=) <$> _verName,
                  ("threadsafe" .=) <$> _verThreadsafe,
                  ("betaSettings" .=) <$> _verBetaSettings,
                  ("basicScaling" .=) <$> _verBasicScaling,
                  ("manualScaling" .=) <$> _verManualScaling,
                  ("apiConfig" .=) <$> _verAPIConfig,
                  ("id" .=) <$> _verId,
                  ("envVariables" .=) <$> _verEnvVariables,
                  ("livenessCheck" .=) <$> _verLivenessCheck,
                  ("buildEnvVariables" .=) <$> _verBuildEnvVariables,
                  ("runtimeApiVersion" .=) <$> _verRuntimeAPIVersion,
                  ("servingStatus" .=) <$> _verServingStatus,
                  ("diskUsageBytes" .=) <$> _verDiskUsageBytes,
                  ("createTime" .=) <$> _verCreateTime,
                  ("libraries" .=) <$> _verLibraries,
                  ("versionUrl" .=) <$> _verVersionURL,
                  ("deployment" .=) <$> _verDeployment])

-- | Identity-Aware Proxy
--
-- /See:/ 'identityAwareProxy' smart constructor.
data IdentityAwareProxy =
  IdentityAwareProxy'
    { _iapEnabled :: !(Maybe Bool)
    , _iapOAuth2ClientSecretSha256 :: !(Maybe Text)
    , _iapOAuth2ClientSecret :: !(Maybe Text)
    , _iapOAuth2ClientId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'IdentityAwareProxy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iapEnabled'
--
-- * 'iapOAuth2ClientSecretSha256'
--
-- * 'iapOAuth2ClientSecret'
--
-- * 'iapOAuth2ClientId'
identityAwareProxy
    :: IdentityAwareProxy
identityAwareProxy =
  IdentityAwareProxy'
    { _iapEnabled = Nothing
    , _iapOAuth2ClientSecretSha256 = Nothing
    , _iapOAuth2ClientSecret = Nothing
    , _iapOAuth2ClientId = Nothing
    }


-- | Whether the serving infrastructure will authenticate and authorize all
-- incoming requests.If true, the oauth2_client_id and oauth2_client_secret
-- fields must be non-empty.
iapEnabled :: Lens' IdentityAwareProxy (Maybe Bool)
iapEnabled
  = lens _iapEnabled (\ s a -> s{_iapEnabled = a})

-- | Hex-encoded SHA-256 hash of the client secret.\'OutputOnly
iapOAuth2ClientSecretSha256 :: Lens' IdentityAwareProxy (Maybe Text)
iapOAuth2ClientSecretSha256
  = lens _iapOAuth2ClientSecretSha256
      (\ s a -> s{_iapOAuth2ClientSecretSha256 = a})

-- | OAuth2 client secret to use for the authentication flow.For security
-- reasons, this value cannot be retrieved via the API. Instead, the
-- SHA-256 hash of the value is returned in the oauth2_client_secret_sha256
-- field.\'InputOnly
iapOAuth2ClientSecret :: Lens' IdentityAwareProxy (Maybe Text)
iapOAuth2ClientSecret
  = lens _iapOAuth2ClientSecret
      (\ s a -> s{_iapOAuth2ClientSecret = a})

-- | OAuth2 client ID to use for the authentication flow.
iapOAuth2ClientId :: Lens' IdentityAwareProxy (Maybe Text)
iapOAuth2ClientId
  = lens _iapOAuth2ClientId
      (\ s a -> s{_iapOAuth2ClientId = a})

instance FromJSON IdentityAwareProxy where
        parseJSON
          = withObject "IdentityAwareProxy"
              (\ o ->
                 IdentityAwareProxy' <$>
                   (o .:? "enabled") <*>
                     (o .:? "oauth2ClientSecretSha256")
                     <*> (o .:? "oauth2ClientSecret")
                     <*> (o .:? "oauth2ClientId"))

instance ToJSON IdentityAwareProxy where
        toJSON IdentityAwareProxy'{..}
          = object
              (catMaybes
                 [("enabled" .=) <$> _iapEnabled,
                  ("oauth2ClientSecretSha256" .=) <$>
                    _iapOAuth2ClientSecretSha256,
                  ("oauth2ClientSecret" .=) <$> _iapOAuth2ClientSecret,
                  ("oauth2ClientId" .=) <$> _iapOAuth2ClientId])

-- | Files served directly to the user for a given URL, such as images, CSS
-- stylesheets, or JavaScript source files. Static file handlers describe
-- which files in the application directory are static files, and which
-- URLs serve them.
--
-- /See:/ 'staticFilesHandler' smart constructor.
data StaticFilesHandler =
  StaticFilesHandler'
    { _sfhHTTPHeaders :: !(Maybe StaticFilesHandlerHTTPHeaders)
    , _sfhPath :: !(Maybe Text)
    , _sfhRequireMatchingFile :: !(Maybe Bool)
    , _sfhExpiration :: !(Maybe GDuration)
    , _sfhMimeType :: !(Maybe Text)
    , _sfhApplicationReadable :: !(Maybe Bool)
    , _sfhUploadPathRegex :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
sfhExpiration :: Lens' StaticFilesHandler (Maybe Scientific)
sfhExpiration
  = lens _sfhExpiration
      (\ s a -> s{_sfhExpiration = a})
      . mapping _GDuration

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
data ErrorHandler =
  ErrorHandler'
    { _ehMimeType :: !(Maybe Text)
    , _ehErrorCode :: !(Maybe ErrorHandlerErrorCode)
    , _ehStaticFile :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
    {_ehMimeType = Nothing, _ehErrorCode = Nothing, _ehStaticFile = Nothing}


-- | MIME type of file. Defaults to text\/html.
ehMimeType :: Lens' ErrorHandler (Maybe Text)
ehMimeType
  = lens _ehMimeType (\ s a -> s{_ehMimeType = a})

-- | Error condition this handler applies to.
ehErrorCode :: Lens' ErrorHandler (Maybe ErrorHandlerErrorCode)
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
newtype LocationLabels =
  LocationLabels'
    { _llAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LocationLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llAddtional'
locationLabels
    :: HashMap Text Text -- ^ 'llAddtional'
    -> LocationLabels
locationLabels pLlAddtional_ =
  LocationLabels' {_llAddtional = _Coerce # pLlAddtional_}


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

-- | Response message for AuthorizedCertificates.ListAuthorizedCertificates.
--
-- /See:/ 'listAuthorizedCertificatesResponse' smart constructor.
data ListAuthorizedCertificatesResponse =
  ListAuthorizedCertificatesResponse'
    { _lacrNextPageToken :: !(Maybe Text)
    , _lacrCertificates :: !(Maybe [AuthorizedCertificate])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListAuthorizedCertificatesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lacrNextPageToken'
--
-- * 'lacrCertificates'
listAuthorizedCertificatesResponse
    :: ListAuthorizedCertificatesResponse
listAuthorizedCertificatesResponse =
  ListAuthorizedCertificatesResponse'
    {_lacrNextPageToken = Nothing, _lacrCertificates = Nothing}


-- | Continuation token for fetching the next page of results.
lacrNextPageToken :: Lens' ListAuthorizedCertificatesResponse (Maybe Text)
lacrNextPageToken
  = lens _lacrNextPageToken
      (\ s a -> s{_lacrNextPageToken = a})

-- | The SSL certificates the user is authorized to administer.
lacrCertificates :: Lens' ListAuthorizedCertificatesResponse [AuthorizedCertificate]
lacrCertificates
  = lens _lacrCertificates
      (\ s a -> s{_lacrCertificates = a})
      . _Default
      . _Coerce

instance FromJSON ListAuthorizedCertificatesResponse
         where
        parseJSON
          = withObject "ListAuthorizedCertificatesResponse"
              (\ o ->
                 ListAuthorizedCertificatesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "certificates" .!= mempty))

instance ToJSON ListAuthorizedCertificatesResponse
         where
        toJSON ListAuthorizedCertificatesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lacrNextPageToken,
                  ("certificates" .=) <$> _lacrCertificates])

-- | A single firewall rule that is evaluated against incoming traffic and
-- provides an action to take on matched requests.
--
-- /See:/ 'firewallRule' smart constructor.
data FirewallRule =
  FirewallRule'
    { _frPriority :: !(Maybe (Textual Int32))
    , _frAction :: !(Maybe FirewallRuleAction)
    , _frSourceRange :: !(Maybe Text)
    , _frDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FirewallRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'frPriority'
--
-- * 'frAction'
--
-- * 'frSourceRange'
--
-- * 'frDescription'
firewallRule
    :: FirewallRule
firewallRule =
  FirewallRule'
    { _frPriority = Nothing
    , _frAction = Nothing
    , _frSourceRange = Nothing
    , _frDescription = Nothing
    }


-- | A positive integer between 1, Int32.MaxValue-1 that defines the order of
-- rule evaluation. Rules with the lowest priority are evaluated first.A
-- default rule at priority Int32.MaxValue matches all IPv4 and IPv6
-- traffic when no previous rule matches. Only the action of this rule can
-- be modified by the user.
frPriority :: Lens' FirewallRule (Maybe Int32)
frPriority
  = lens _frPriority (\ s a -> s{_frPriority = a}) .
      mapping _Coerce

-- | The action to take on matched requests.
frAction :: Lens' FirewallRule (Maybe FirewallRuleAction)
frAction = lens _frAction (\ s a -> s{_frAction = a})

-- | IP address or range, defined using CIDR notation, of requests that this
-- rule applies to. You can use the wildcard character \"*\" to match all
-- IPs equivalent to \"0\/0\" and \"::\/0\" together. Examples: 192.168.1.1
-- or 192.168.0.0\/16 or 2001:db8::\/32 or
-- 2001:0db8:0000:0042:0000:8a2e:0370:7334. Truncation will be silently
-- performed on addresses which are not properly truncated. For example,
-- 1.2.3.4\/24 is accepted as the same address as 1.2.3.0\/24. Similarly,
-- for IPv6, 2001:db8::1\/32 is accepted as the same address as
-- 2001:db8::\/32.
frSourceRange :: Lens' FirewallRule (Maybe Text)
frSourceRange
  = lens _frSourceRange
      (\ s a -> s{_frSourceRange = a})

-- | An optional string description of this rule. This field has a maximum
-- length of 100 characters.
frDescription :: Lens' FirewallRule (Maybe Text)
frDescription
  = lens _frDescription
      (\ s a -> s{_frDescription = a})

instance FromJSON FirewallRule where
        parseJSON
          = withObject "FirewallRule"
              (\ o ->
                 FirewallRule' <$>
                   (o .:? "priority") <*> (o .:? "action") <*>
                     (o .:? "sourceRange")
                     <*> (o .:? "description"))

instance ToJSON FirewallRule where
        toJSON FirewallRule'{..}
          = object
              (catMaybes
                 [("priority" .=) <$> _frPriority,
                  ("action" .=) <$> _frAction,
                  ("sourceRange" .=) <$> _frSourceRange,
                  ("description" .=) <$> _frDescription])

-- | Metadata for the given google.cloud.location.Location.
--
-- /See:/ 'locationMetadata' smart constructor.
data LocationMetadata =
  LocationMetadata'
    { _lmStandardEnvironmentAvailable :: !(Maybe Bool)
    , _lmSearchAPIAvailable :: !(Maybe Bool)
    , _lmFlexibleEnvironmentAvailable :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LocationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmStandardEnvironmentAvailable'
--
-- * 'lmSearchAPIAvailable'
--
-- * 'lmFlexibleEnvironmentAvailable'
locationMetadata
    :: LocationMetadata
locationMetadata =
  LocationMetadata'
    { _lmStandardEnvironmentAvailable = Nothing
    , _lmSearchAPIAvailable = Nothing
    , _lmFlexibleEnvironmentAvailable = Nothing
    }


-- | App Engine standard environment is available in the given
-- location.\'OutputOnly
lmStandardEnvironmentAvailable :: Lens' LocationMetadata (Maybe Bool)
lmStandardEnvironmentAvailable
  = lens _lmStandardEnvironmentAvailable
      (\ s a -> s{_lmStandardEnvironmentAvailable = a})

-- | Output only. Search API
-- (https:\/\/cloud.google.com\/appengine\/docs\/standard\/python\/search)
-- is available in the given location.
lmSearchAPIAvailable :: Lens' LocationMetadata (Maybe Bool)
lmSearchAPIAvailable
  = lens _lmSearchAPIAvailable
      (\ s a -> s{_lmSearchAPIAvailable = a})

-- | App Engine flexible environment is available in the given
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
                     (o .:? "searchApiAvailable")
                     <*> (o .:? "flexibleEnvironmentAvailable"))

instance ToJSON LocationMetadata where
        toJSON LocationMetadata'{..}
          = object
              (catMaybes
                 [("standardEnvironmentAvailable" .=) <$>
                    _lmStandardEnvironmentAvailable,
                  ("searchApiAvailable" .=) <$> _lmSearchAPIAvailable,
                  ("flexibleEnvironmentAvailable" .=) <$>
                    _lmFlexibleEnvironmentAvailable])

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

-- | Metadata for the given google.cloud.location.Location.
--
-- /See:/ 'googleAppEngineV1betaLocationMetadata' smart constructor.
data GoogleAppEngineV1betaLocationMetadata =
  GoogleAppEngineV1betaLocationMetadata'
    { _gaevlmStandardEnvironmentAvailable :: !(Maybe Bool)
    , _gaevlmSearchAPIAvailable :: !(Maybe Bool)
    , _gaevlmFlexibleEnvironmentAvailable :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppEngineV1betaLocationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaevlmStandardEnvironmentAvailable'
--
-- * 'gaevlmSearchAPIAvailable'
--
-- * 'gaevlmFlexibleEnvironmentAvailable'
googleAppEngineV1betaLocationMetadata
    :: GoogleAppEngineV1betaLocationMetadata
googleAppEngineV1betaLocationMetadata =
  GoogleAppEngineV1betaLocationMetadata'
    { _gaevlmStandardEnvironmentAvailable = Nothing
    , _gaevlmSearchAPIAvailable = Nothing
    , _gaevlmFlexibleEnvironmentAvailable = Nothing
    }


-- | App Engine standard environment is available in the given
-- location.\'OutputOnly
gaevlmStandardEnvironmentAvailable :: Lens' GoogleAppEngineV1betaLocationMetadata (Maybe Bool)
gaevlmStandardEnvironmentAvailable
  = lens _gaevlmStandardEnvironmentAvailable
      (\ s a -> s{_gaevlmStandardEnvironmentAvailable = a})

-- | Output only. Search API
-- (https:\/\/cloud.google.com\/appengine\/docs\/standard\/python\/search)
-- is available in the given location.
gaevlmSearchAPIAvailable :: Lens' GoogleAppEngineV1betaLocationMetadata (Maybe Bool)
gaevlmSearchAPIAvailable
  = lens _gaevlmSearchAPIAvailable
      (\ s a -> s{_gaevlmSearchAPIAvailable = a})

-- | App Engine flexible environment is available in the given
-- location.\'OutputOnly
gaevlmFlexibleEnvironmentAvailable :: Lens' GoogleAppEngineV1betaLocationMetadata (Maybe Bool)
gaevlmFlexibleEnvironmentAvailable
  = lens _gaevlmFlexibleEnvironmentAvailable
      (\ s a -> s{_gaevlmFlexibleEnvironmentAvailable = a})

instance FromJSON
           GoogleAppEngineV1betaLocationMetadata
         where
        parseJSON
          = withObject "GoogleAppEngineV1betaLocationMetadata"
              (\ o ->
                 GoogleAppEngineV1betaLocationMetadata' <$>
                   (o .:? "standardEnvironmentAvailable") <*>
                     (o .:? "searchApiAvailable")
                     <*> (o .:? "flexibleEnvironmentAvailable"))

instance ToJSON GoogleAppEngineV1betaLocationMetadata
         where
        toJSON GoogleAppEngineV1betaLocationMetadata'{..}
          = object
              (catMaybes
                 [("standardEnvironmentAvailable" .=) <$>
                    _gaevlmStandardEnvironmentAvailable,
                  ("searchApiAvailable" .=) <$>
                    _gaevlmSearchAPIAvailable,
                  ("flexibleEnvironmentAvailable" .=) <$>
                    _gaevlmFlexibleEnvironmentAvailable])

-- | Response message for Instances.ListInstances.
--
-- /See:/ 'listInstancesResponse' smart constructor.
data ListInstancesResponse =
  ListInstancesResponse'
    { _lirNextPageToken :: !(Maybe Text)
    , _lirInstances :: !(Maybe [Instance])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  ListInstancesResponse' {_lirNextPageToken = Nothing, _lirInstances = Nothing}


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

-- | Metadata for the given google.longrunning.Operation.
--
-- /See:/ 'operationMetadataV1Alpha' smart constructor.
data OperationMetadataV1Alpha =
  OperationMetadataV1Alpha'
    { _omvaEphemeralMessage :: !(Maybe Text)
    , _omvaInsertTime :: !(Maybe DateTime')
    , _omvaUser :: !(Maybe Text)
    , _omvaMethod :: !(Maybe Text)
    , _omvaEndTime :: !(Maybe DateTime')
    , _omvaWarning :: !(Maybe [Text])
    , _omvaCreateVersionMetadata :: !(Maybe CreateVersionMetadataV1Alpha)
    , _omvaTarget :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationMetadataV1Alpha' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'omvaEphemeralMessage'
--
-- * 'omvaInsertTime'
--
-- * 'omvaUser'
--
-- * 'omvaMethod'
--
-- * 'omvaEndTime'
--
-- * 'omvaWarning'
--
-- * 'omvaCreateVersionMetadata'
--
-- * 'omvaTarget'
operationMetadataV1Alpha
    :: OperationMetadataV1Alpha
operationMetadataV1Alpha =
  OperationMetadataV1Alpha'
    { _omvaEphemeralMessage = Nothing
    , _omvaInsertTime = Nothing
    , _omvaUser = Nothing
    , _omvaMethod = Nothing
    , _omvaEndTime = Nothing
    , _omvaWarning = Nothing
    , _omvaCreateVersionMetadata = Nothing
    , _omvaTarget = Nothing
    }


-- | Ephemeral message that may change every time the operation is polled.
-- \'OutputOnly
omvaEphemeralMessage :: Lens' OperationMetadataV1Alpha (Maybe Text)
omvaEphemeralMessage
  = lens _omvaEphemeralMessage
      (\ s a -> s{_omvaEphemeralMessage = a})

-- | Time that this operation was created.\'OutputOnly
omvaInsertTime :: Lens' OperationMetadataV1Alpha (Maybe UTCTime)
omvaInsertTime
  = lens _omvaInsertTime
      (\ s a -> s{_omvaInsertTime = a})
      . mapping _DateTime

-- | User who requested this operation.\'OutputOnly
omvaUser :: Lens' OperationMetadataV1Alpha (Maybe Text)
omvaUser = lens _omvaUser (\ s a -> s{_omvaUser = a})

-- | API method that initiated this operation. Example:
-- google.appengine.v1alpha.Versions.CreateVersion.\'OutputOnly
omvaMethod :: Lens' OperationMetadataV1Alpha (Maybe Text)
omvaMethod
  = lens _omvaMethod (\ s a -> s{_omvaMethod = a})

-- | Time that this operation completed.\'OutputOnly
omvaEndTime :: Lens' OperationMetadataV1Alpha (Maybe UTCTime)
omvaEndTime
  = lens _omvaEndTime (\ s a -> s{_omvaEndTime = a}) .
      mapping _DateTime

-- | Durable messages that persist on every operation poll. \'OutputOnly
omvaWarning :: Lens' OperationMetadataV1Alpha [Text]
omvaWarning
  = lens _omvaWarning (\ s a -> s{_omvaWarning = a}) .
      _Default
      . _Coerce

omvaCreateVersionMetadata :: Lens' OperationMetadataV1Alpha (Maybe CreateVersionMetadataV1Alpha)
omvaCreateVersionMetadata
  = lens _omvaCreateVersionMetadata
      (\ s a -> s{_omvaCreateVersionMetadata = a})

-- | Name of the resource that this operation is acting on. Example:
-- apps\/myapp\/services\/default.\'OutputOnly
omvaTarget :: Lens' OperationMetadataV1Alpha (Maybe Text)
omvaTarget
  = lens _omvaTarget (\ s a -> s{_omvaTarget = a})

instance FromJSON OperationMetadataV1Alpha where
        parseJSON
          = withObject "OperationMetadataV1Alpha"
              (\ o ->
                 OperationMetadataV1Alpha' <$>
                   (o .:? "ephemeralMessage") <*> (o .:? "insertTime")
                     <*> (o .:? "user")
                     <*> (o .:? "method")
                     <*> (o .:? "endTime")
                     <*> (o .:? "warning" .!= mempty)
                     <*> (o .:? "createVersionMetadata")
                     <*> (o .:? "target"))

instance ToJSON OperationMetadataV1Alpha where
        toJSON OperationMetadataV1Alpha'{..}
          = object
              (catMaybes
                 [("ephemeralMessage" .=) <$> _omvaEphemeralMessage,
                  ("insertTime" .=) <$> _omvaInsertTime,
                  ("user" .=) <$> _omvaUser,
                  ("method" .=) <$> _omvaMethod,
                  ("endTime" .=) <$> _omvaEndTime,
                  ("warning" .=) <$> _omvaWarning,
                  ("createVersionMetadata" .=) <$>
                    _omvaCreateVersionMetadata,
                  ("target" .=) <$> _omvaTarget])

-- | Health checking configuration for VM instances. Unhealthy instances are
-- killed and replaced with new instances.
--
-- /See:/ 'livenessCheck' smart constructor.
data LivenessCheck =
  LivenessCheck'
    { _lcSuccessThreshold :: !(Maybe (Textual Word32))
    , _lcFailureThreshold :: !(Maybe (Textual Word32))
    , _lcPath :: !(Maybe Text)
    , _lcCheckInterval :: !(Maybe GDuration)
    , _lcHost :: !(Maybe Text)
    , _lcInitialDelay :: !(Maybe GDuration)
    , _lcTimeout :: !(Maybe GDuration)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LivenessCheck' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcSuccessThreshold'
--
-- * 'lcFailureThreshold'
--
-- * 'lcPath'
--
-- * 'lcCheckInterval'
--
-- * 'lcHost'
--
-- * 'lcInitialDelay'
--
-- * 'lcTimeout'
livenessCheck
    :: LivenessCheck
livenessCheck =
  LivenessCheck'
    { _lcSuccessThreshold = Nothing
    , _lcFailureThreshold = Nothing
    , _lcPath = Nothing
    , _lcCheckInterval = Nothing
    , _lcHost = Nothing
    , _lcInitialDelay = Nothing
    , _lcTimeout = Nothing
    }


-- | Number of consecutive successful checks required before considering the
-- VM healthy.
lcSuccessThreshold :: Lens' LivenessCheck (Maybe Word32)
lcSuccessThreshold
  = lens _lcSuccessThreshold
      (\ s a -> s{_lcSuccessThreshold = a})
      . mapping _Coerce

-- | Number of consecutive failed checks required before considering the VM
-- unhealthy.
lcFailureThreshold :: Lens' LivenessCheck (Maybe Word32)
lcFailureThreshold
  = lens _lcFailureThreshold
      (\ s a -> s{_lcFailureThreshold = a})
      . mapping _Coerce

-- | The request path.
lcPath :: Lens' LivenessCheck (Maybe Text)
lcPath = lens _lcPath (\ s a -> s{_lcPath = a})

-- | Interval between health checks.
lcCheckInterval :: Lens' LivenessCheck (Maybe Scientific)
lcCheckInterval
  = lens _lcCheckInterval
      (\ s a -> s{_lcCheckInterval = a})
      . mapping _GDuration

-- | Host header to send when performing a HTTP Liveness check. Example:
-- \"myapp.appspot.com\"
lcHost :: Lens' LivenessCheck (Maybe Text)
lcHost = lens _lcHost (\ s a -> s{_lcHost = a})

-- | The initial delay before starting to execute the checks.
lcInitialDelay :: Lens' LivenessCheck (Maybe Scientific)
lcInitialDelay
  = lens _lcInitialDelay
      (\ s a -> s{_lcInitialDelay = a})
      . mapping _GDuration

-- | Time before the check is considered failed.
lcTimeout :: Lens' LivenessCheck (Maybe Scientific)
lcTimeout
  = lens _lcTimeout (\ s a -> s{_lcTimeout = a}) .
      mapping _GDuration

instance FromJSON LivenessCheck where
        parseJSON
          = withObject "LivenessCheck"
              (\ o ->
                 LivenessCheck' <$>
                   (o .:? "successThreshold") <*>
                     (o .:? "failureThreshold")
                     <*> (o .:? "path")
                     <*> (o .:? "checkInterval")
                     <*> (o .:? "host")
                     <*> (o .:? "initialDelay")
                     <*> (o .:? "timeout"))

instance ToJSON LivenessCheck where
        toJSON LivenessCheck'{..}
          = object
              (catMaybes
                 [("successThreshold" .=) <$> _lcSuccessThreshold,
                  ("failureThreshold" .=) <$> _lcFailureThreshold,
                  ("path" .=) <$> _lcPath,
                  ("checkInterval" .=) <$> _lcCheckInterval,
                  ("host" .=) <$> _lcHost,
                  ("initialDelay" .=) <$> _lcInitialDelay,
                  ("timeout" .=) <$> _lcTimeout])

-- | A NetworkSettings resource is a container for ingress settings for a
-- version or service.
--
-- /See:/ 'networkSettings' smart constructor.
newtype NetworkSettings =
  NetworkSettings'
    { _nsIngressTrafficAllowed :: Maybe NetworkSettingsIngressTrafficAllowed
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NetworkSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nsIngressTrafficAllowed'
networkSettings
    :: NetworkSettings
networkSettings = NetworkSettings' {_nsIngressTrafficAllowed = Nothing}


-- | The ingress settings for version or service.
nsIngressTrafficAllowed :: Lens' NetworkSettings (Maybe NetworkSettingsIngressTrafficAllowed)
nsIngressTrafficAllowed
  = lens _nsIngressTrafficAllowed
      (\ s a -> s{_nsIngressTrafficAllowed = a})

instance FromJSON NetworkSettings where
        parseJSON
          = withObject "NetworkSettings"
              (\ o ->
                 NetworkSettings' <$> (o .:? "ingressTrafficAllowed"))

instance ToJSON NetworkSettings where
        toJSON NetworkSettings'{..}
          = object
              (catMaybes
                 [("ingressTrafficAllowed" .=) <$>
                    _nsIngressTrafficAllowed])

-- | Target scaling by request utilization. Only applicable in the App Engine
-- flexible environment.
--
-- /See:/ 'requestUtilization' smart constructor.
data RequestUtilization =
  RequestUtilization'
    { _ruTargetConcurrentRequests :: !(Maybe (Textual Int32))
    , _ruTargetRequestCountPerSecond :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  deriving (Eq, Show, Data, Typeable, Generic)


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

-- | Metadata for the given google.longrunning.Operation during a
-- google.appengine.v1beta.CreateVersionRequest.
--
-- /See:/ 'createVersionMetadataV1Beta' smart constructor.
newtype CreateVersionMetadataV1Beta =
  CreateVersionMetadataV1Beta'
    { _cvmvbCloudBuildId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateVersionMetadataV1Beta' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cvmvbCloudBuildId'
createVersionMetadataV1Beta
    :: CreateVersionMetadataV1Beta
createVersionMetadataV1Beta =
  CreateVersionMetadataV1Beta' {_cvmvbCloudBuildId = Nothing}


-- | The Cloud Build ID if one was created as part of the version create.
-- \'OutputOnly
cvmvbCloudBuildId :: Lens' CreateVersionMetadataV1Beta (Maybe Text)
cvmvbCloudBuildId
  = lens _cvmvbCloudBuildId
      (\ s a -> s{_cvmvbCloudBuildId = a})

instance FromJSON CreateVersionMetadataV1Beta where
        parseJSON
          = withObject "CreateVersionMetadataV1Beta"
              (\ o ->
                 CreateVersionMetadataV1Beta' <$>
                   (o .:? "cloudBuildId"))

instance ToJSON CreateVersionMetadataV1Beta where
        toJSON CreateVersionMetadataV1Beta'{..}
          = object
              (catMaybes
                 [("cloudBuildId" .=) <$> _cvmvbCloudBuildId])

-- | Response message for DomainMappings.ListDomainMappings.
--
-- /See:/ 'listDomainMAppingsResponse' smart constructor.
data ListDomainMAppingsResponse =
  ListDomainMAppingsResponse'
    { _ldmarDomainMAppings :: !(Maybe [DomainMApping])
    , _ldmarNextPageToken :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListDomainMAppingsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldmarDomainMAppings'
--
-- * 'ldmarNextPageToken'
listDomainMAppingsResponse
    :: ListDomainMAppingsResponse
listDomainMAppingsResponse =
  ListDomainMAppingsResponse'
    {_ldmarDomainMAppings = Nothing, _ldmarNextPageToken = Nothing}


-- | The domain mappings for the application.
ldmarDomainMAppings :: Lens' ListDomainMAppingsResponse [DomainMApping]
ldmarDomainMAppings
  = lens _ldmarDomainMAppings
      (\ s a -> s{_ldmarDomainMAppings = a})
      . _Default
      . _Coerce

-- | Continuation token for fetching the next page of results.
ldmarNextPageToken :: Lens' ListDomainMAppingsResponse (Maybe Text)
ldmarNextPageToken
  = lens _ldmarNextPageToken
      (\ s a -> s{_ldmarNextPageToken = a})

instance FromJSON ListDomainMAppingsResponse where
        parseJSON
          = withObject "ListDomainMAppingsResponse"
              (\ o ->
                 ListDomainMAppingsResponse' <$>
                   (o .:? "domainMappings" .!= mempty) <*>
                     (o .:? "nextPageToken"))

instance ToJSON ListDomainMAppingsResponse where
        toJSON ListDomainMAppingsResponse'{..}
          = object
              (catMaybes
                 [("domainMappings" .=) <$> _ldmarDomainMAppings,
                  ("nextPageToken" .=) <$> _ldmarNextPageToken])

-- | Scheduler settings for standard environment.
--
-- /See:/ 'standardSchedulerSettings' smart constructor.
data StandardSchedulerSettings =
  StandardSchedulerSettings'
    { _sssTargetCPUUtilization :: !(Maybe (Textual Double))
    , _sssMinInstances :: !(Maybe (Textual Int32))
    , _sssMaxInstances :: !(Maybe (Textual Int32))
    , _sssTargetThroughputUtilization :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StandardSchedulerSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sssTargetCPUUtilization'
--
-- * 'sssMinInstances'
--
-- * 'sssMaxInstances'
--
-- * 'sssTargetThroughputUtilization'
standardSchedulerSettings
    :: StandardSchedulerSettings
standardSchedulerSettings =
  StandardSchedulerSettings'
    { _sssTargetCPUUtilization = Nothing
    , _sssMinInstances = Nothing
    , _sssMaxInstances = Nothing
    , _sssTargetThroughputUtilization = Nothing
    }


-- | Target CPU utilization ratio to maintain when scaling.
sssTargetCPUUtilization :: Lens' StandardSchedulerSettings (Maybe Double)
sssTargetCPUUtilization
  = lens _sssTargetCPUUtilization
      (\ s a -> s{_sssTargetCPUUtilization = a})
      . mapping _Coerce

-- | Minimum number of instances to run for this version. Set to zero to
-- disable min_instances configuration.
sssMinInstances :: Lens' StandardSchedulerSettings (Maybe Int32)
sssMinInstances
  = lens _sssMinInstances
      (\ s a -> s{_sssMinInstances = a})
      . mapping _Coerce

-- | Maximum number of instances to run for this version. Set to zero to
-- disable max_instances configuration.
sssMaxInstances :: Lens' StandardSchedulerSettings (Maybe Int32)
sssMaxInstances
  = lens _sssMaxInstances
      (\ s a -> s{_sssMaxInstances = a})
      . mapping _Coerce

-- | Target throughput utilization ratio to maintain when scaling
sssTargetThroughputUtilization :: Lens' StandardSchedulerSettings (Maybe Double)
sssTargetThroughputUtilization
  = lens _sssTargetThroughputUtilization
      (\ s a -> s{_sssTargetThroughputUtilization = a})
      . mapping _Coerce

instance FromJSON StandardSchedulerSettings where
        parseJSON
          = withObject "StandardSchedulerSettings"
              (\ o ->
                 StandardSchedulerSettings' <$>
                   (o .:? "targetCpuUtilization") <*>
                     (o .:? "minInstances")
                     <*> (o .:? "maxInstances")
                     <*> (o .:? "targetThroughputUtilization"))

instance ToJSON StandardSchedulerSettings where
        toJSON StandardSchedulerSettings'{..}
          = object
              (catMaybes
                 [("targetCpuUtilization" .=) <$>
                    _sssTargetCPUUtilization,
                  ("minInstances" .=) <$> _sssMinInstances,
                  ("maxInstances" .=) <$> _sssMaxInstances,
                  ("targetThroughputUtilization" .=) <$>
                    _sssTargetThroughputUtilization])

-- | Docker image that is used to create a container and start a VM instance
-- for the version that you deploy. Only applicable for instances running
-- in the App Engine flexible environment.
--
-- /See:/ 'containerInfo' smart constructor.
newtype ContainerInfo =
  ContainerInfo'
    { _ciImage :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ContainerInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciImage'
containerInfo
    :: ContainerInfo
containerInfo = ContainerInfo' {_ciImage = Nothing}


-- | URI to the hosted container image in Google Container Registry. The URI
-- must be fully qualified and include a tag or digest. Examples:
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
data Instance =
  Instance'
    { _iMemoryUsage :: !(Maybe (Textual Int64))
    , _iVMStatus :: !(Maybe Text)
    , _iVMZoneName :: !(Maybe Text)
    , _iVMIP :: !(Maybe Text)
    , _iStartTime :: !(Maybe DateTime')
    , _iVMId :: !(Maybe Text)
    , _iVMLiveness :: !(Maybe InstanceVMLiveness)
    , _iAvailability :: !(Maybe InstanceAvailability)
    , _iVMName :: !(Maybe Text)
    , _iName :: !(Maybe Text)
    , _iVMDebugEnabled :: !(Maybe Bool)
    , _iRequests :: !(Maybe (Textual Int32))
    , _iQps :: !(Maybe (Textual Double))
    , _iId :: !(Maybe Text)
    , _iErrors :: !(Maybe (Textual Int32))
    , _iAverageLatency :: !(Maybe (Textual Int32))
    , _iAppEngineRelease :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
-- * 'iVMLiveness'
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
    , _iVMLiveness = Nothing
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


-- | Output only. Total memory in use (bytes).
iMemoryUsage :: Lens' Instance (Maybe Int64)
iMemoryUsage
  = lens _iMemoryUsage (\ s a -> s{_iMemoryUsage = a})
      . mapping _Coerce

-- | Output only. Status of the virtual machine where this instance lives.
-- Only applicable for instances in App Engine flexible environment.
iVMStatus :: Lens' Instance (Maybe Text)
iVMStatus
  = lens _iVMStatus (\ s a -> s{_iVMStatus = a})

-- | Output only. Zone where the virtual machine is located. Only applicable
-- for instances in App Engine flexible environment.
iVMZoneName :: Lens' Instance (Maybe Text)
iVMZoneName
  = lens _iVMZoneName (\ s a -> s{_iVMZoneName = a})

-- | Output only. The IP address of this instance. Only applicable for
-- instances in App Engine flexible environment.
iVMIP :: Lens' Instance (Maybe Text)
iVMIP = lens _iVMIP (\ s a -> s{_iVMIP = a})

-- | Output only. Time that this instance was started.\'OutputOnly
iStartTime :: Lens' Instance (Maybe UTCTime)
iStartTime
  = lens _iStartTime (\ s a -> s{_iStartTime = a}) .
      mapping _DateTime

-- | Output only. Virtual machine ID of this instance. Only applicable for
-- instances in App Engine flexible environment.
iVMId :: Lens' Instance (Maybe Text)
iVMId = lens _iVMId (\ s a -> s{_iVMId = a})

-- | Output only. The liveness health check of this instance. Only applicable
-- for instances in App Engine flexible environment.
iVMLiveness :: Lens' Instance (Maybe InstanceVMLiveness)
iVMLiveness
  = lens _iVMLiveness (\ s a -> s{_iVMLiveness = a})

-- | Output only. Availability of the instance.
iAvailability :: Lens' Instance (Maybe InstanceAvailability)
iAvailability
  = lens _iAvailability
      (\ s a -> s{_iAvailability = a})

-- | Output only. Name of the virtual machine where this instance lives. Only
-- applicable for instances in App Engine flexible environment.
iVMName :: Lens' Instance (Maybe Text)
iVMName = lens _iVMName (\ s a -> s{_iVMName = a})

-- | Output only. Full path to the Instance resource in the API. Example:
-- apps\/myapp\/services\/default\/versions\/v1\/instances\/instance-1.
iName :: Lens' Instance (Maybe Text)
iName = lens _iName (\ s a -> s{_iName = a})

-- | Output only. Whether this instance is in debug mode. Only applicable for
-- instances in App Engine flexible environment.
iVMDebugEnabled :: Lens' Instance (Maybe Bool)
iVMDebugEnabled
  = lens _iVMDebugEnabled
      (\ s a -> s{_iVMDebugEnabled = a})

-- | Output only. Number of requests since this instance was started.
iRequests :: Lens' Instance (Maybe Int32)
iRequests
  = lens _iRequests (\ s a -> s{_iRequests = a}) .
      mapping _Coerce

-- | Output only. Average queries per second (QPS) over the last minute.
iQps :: Lens' Instance (Maybe Double)
iQps
  = lens _iQps (\ s a -> s{_iQps = a}) .
      mapping _Coerce

-- | Output only. Relative name of the instance within the version. Example:
-- instance-1.
iId :: Lens' Instance (Maybe Text)
iId = lens _iId (\ s a -> s{_iId = a})

-- | Output only. Number of errors since this instance was started.
iErrors :: Lens' Instance (Maybe Int32)
iErrors
  = lens _iErrors (\ s a -> s{_iErrors = a}) .
      mapping _Coerce

-- | Output only. Average latency (ms) over the last minute.
iAverageLatency :: Lens' Instance (Maybe Int32)
iAverageLatency
  = lens _iAverageLatency
      (\ s a -> s{_iAverageLatency = a})
      . mapping _Coerce

-- | Output only. App Engine release this instance is running on.
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
                     <*> (o .:? "vmLiveness")
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
                  ("vmLiveness" .=) <$> _iVMLiveness,
                  ("availability" .=) <$> _iAvailability,
                  ("vmName" .=) <$> _iVMName, ("name" .=) <$> _iName,
                  ("vmDebugEnabled" .=) <$> _iVMDebugEnabled,
                  ("requests" .=) <$> _iRequests, ("qps" .=) <$> _iQps,
                  ("id" .=) <$> _iId, ("errors" .=) <$> _iErrors,
                  ("averageLatency" .=) <$> _iAverageLatency,
                  ("appEngineRelease" .=) <$> _iAppEngineRelease])

-- | SSL configuration for a DomainMapping resource.
--
-- /See:/ 'sslSettings' smart constructor.
data SSLSettings =
  SSLSettings'
    { _ssSSLManagementType :: !(Maybe SSLSettingsSSLManagementType)
    , _ssCertificateId :: !(Maybe Text)
    , _ssPendingManagedCertificateId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SSLSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssSSLManagementType'
--
-- * 'ssCertificateId'
--
-- * 'ssPendingManagedCertificateId'
sslSettings
    :: SSLSettings
sslSettings =
  SSLSettings'
    { _ssSSLManagementType = Nothing
    , _ssCertificateId = Nothing
    , _ssPendingManagedCertificateId = Nothing
    }


-- | SSL management type for this domain. If AUTOMATIC, a managed certificate
-- is automatically provisioned. If MANUAL, certificate_id must be manually
-- specified in order to configure SSL for this domain.
ssSSLManagementType :: Lens' SSLSettings (Maybe SSLSettingsSSLManagementType)
ssSSLManagementType
  = lens _ssSSLManagementType
      (\ s a -> s{_ssSSLManagementType = a})

-- | ID of the AuthorizedCertificate resource configuring SSL for the
-- application. Clearing this field will remove SSL support.By default, a
-- managed certificate is automatically created for every domain mapping.
-- To omit SSL support or to configure SSL manually, specify
-- SslManagementType.MANUAL on a CREATE or UPDATE request. You must be
-- authorized to administer the AuthorizedCertificate resource to manually
-- map it to a DomainMapping resource. Example: 12345.
ssCertificateId :: Lens' SSLSettings (Maybe Text)
ssCertificateId
  = lens _ssCertificateId
      (\ s a -> s{_ssCertificateId = a})

-- | ID of the managed AuthorizedCertificate resource currently being
-- provisioned, if applicable. Until the new managed certificate has been
-- successfully provisioned, the previous SSL state will be preserved. Once
-- the provisioning process completes, the certificate_id field will
-- reflect the new managed certificate and this field will be left empty.
-- To remove SSL support while there is still a pending managed
-- certificate, clear the certificate_id field with an
-- UpdateDomainMappingRequest.\'OutputOnly
ssPendingManagedCertificateId :: Lens' SSLSettings (Maybe Text)
ssPendingManagedCertificateId
  = lens _ssPendingManagedCertificateId
      (\ s a -> s{_ssPendingManagedCertificateId = a})

instance FromJSON SSLSettings where
        parseJSON
          = withObject "SSLSettings"
              (\ o ->
                 SSLSettings' <$>
                   (o .:? "sslManagementType") <*>
                     (o .:? "certificateId")
                     <*> (o .:? "pendingManagedCertificateId"))

instance ToJSON SSLSettings where
        toJSON SSLSettings'{..}
          = object
              (catMaybes
                 [("sslManagementType" .=) <$> _ssSSLManagementType,
                  ("certificateId" .=) <$> _ssCertificateId,
                  ("pendingManagedCertificateId" .=) <$>
                    _ssPendingManagedCertificateId])

-- | Code and application artifacts used to deploy a version to App Engine.
--
-- /See:/ 'deployment' smart constructor.
data Deployment =
  Deployment'
    { _dZip :: !(Maybe ZipInfo)
    , _dCloudBuildOptions :: !(Maybe CloudBuildOptions)
    , _dContainer :: !(Maybe ContainerInfo)
    , _dFiles :: !(Maybe DeploymentFiles)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Deployment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dZip'
--
-- * 'dCloudBuildOptions'
--
-- * 'dContainer'
--
-- * 'dFiles'
deployment
    :: Deployment
deployment =
  Deployment'
    { _dZip = Nothing
    , _dCloudBuildOptions = Nothing
    , _dContainer = Nothing
    , _dFiles = Nothing
    }


-- | The zip file for this deployment, if this is a zip deployment.
dZip :: Lens' Deployment (Maybe ZipInfo)
dZip = lens _dZip (\ s a -> s{_dZip = a})

-- | Options for any Google Cloud Build builds created as a part of this
-- deployment.These options will only be used if a new build is created,
-- such as when deploying to the App Engine flexible environment using
-- files or zip.
dCloudBuildOptions :: Lens' Deployment (Maybe CloudBuildOptions)
dCloudBuildOptions
  = lens _dCloudBuildOptions
      (\ s a -> s{_dCloudBuildOptions = a})

-- | The Docker image for the container that runs the version. Only
-- applicable for instances running in the App Engine flexible environment.
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
                   (o .:? "zip") <*> (o .:? "cloudBuildOptions") <*>
                     (o .:? "container")
                     <*> (o .:? "files"))

instance ToJSON Deployment where
        toJSON Deployment'{..}
          = object
              (catMaybes
                 [("zip" .=) <$> _dZip,
                  ("cloudBuildOptions" .=) <$> _dCloudBuildOptions,
                  ("container" .=) <$> _dContainer,
                  ("files" .=) <$> _dFiles])
