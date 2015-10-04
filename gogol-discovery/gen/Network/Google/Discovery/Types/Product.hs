{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Discovery.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Discovery.Types.Product where

import           Network.Google.Discovery.Types.Sum
import           Network.Google.Prelude

-- | Additional information about this property.
--
-- /See:/ 'annotations' smart constructor.
newtype Annotations = Annotations
    { _aRequired :: Maybe [Text]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Annotations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aRequired'
annotations
    :: Annotations
annotations =
    Annotations
    { _aRequired = Nothing
    }

-- | A list of methods for which this property is required on requests.
aRequired :: Lens' Annotations [Text]
aRequired
  = lens _aRequired (\ s a -> s{_aRequired = a}) .
      _Default
      . _Coerce

instance FromJSON Annotations where
        parseJSON
          = withObject "Annotations"
              (\ o ->
                 Annotations <$> (o .:? "required" .!= mempty))

instance ToJSON Annotations where
        toJSON Annotations{..}
          = object (catMaybes [("required" .=) <$> _aRequired])

-- | Common parameters that apply across all apis.
--
-- /See:/ 'restDescriptionParameters' smart constructor.
data RestDescriptionParameters =
    RestDescriptionParameters
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RestDescriptionParameters' with the minimum fields required to make a request.
--
restDescriptionParameters
    :: RestDescriptionParameters
restDescriptionParameters = RestDescriptionParameters

instance FromJSON RestDescriptionParameters where
        parseJSON
          = withObject "RestDescriptionParameters"
              (\ o -> pure RestDescriptionParameters)

instance ToJSON RestDescriptionParameters where
        toJSON = const (Object mempty)

--
-- /See:/ 'restMethod' smart constructor.
data RestMethod = RestMethod
    { _rmSupportsMediaDownload   :: !(Maybe Bool)
    , _rmParameterOrder          :: !(Maybe [Text])
    , _rmMediaUpload             :: !(Maybe MediaUpload)
    , _rmHTTPMethod              :: !(Maybe Text)
    , _rmPath                    :: !(Maybe Text)
    , _rmResponse                :: !(Maybe Response)
    , _rmSupportsMediaUpload     :: !(Maybe Bool)
    , _rmScopes                  :: !(Maybe [Text])
    , _rmSupportsSubscription    :: !(Maybe Bool)
    , _rmParameters              :: !(Maybe Parameters)
    , _rmId                      :: !(Maybe Text)
    , _rmEtagRequired            :: !(Maybe Bool)
    , _rmUseMediaDownloadService :: !(Maybe Bool)
    , _rmDescription             :: !(Maybe Text)
    , _rmRequest                 :: !(Maybe Request)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RestMethod' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rmSupportsMediaDownload'
--
-- * 'rmParameterOrder'
--
-- * 'rmMediaUpload'
--
-- * 'rmHTTPMethod'
--
-- * 'rmPath'
--
-- * 'rmResponse'
--
-- * 'rmSupportsMediaUpload'
--
-- * 'rmScopes'
--
-- * 'rmSupportsSubscription'
--
-- * 'rmParameters'
--
-- * 'rmId'
--
-- * 'rmEtagRequired'
--
-- * 'rmUseMediaDownloadService'
--
-- * 'rmDescription'
--
-- * 'rmRequest'
restMethod
    :: RestMethod
restMethod =
    RestMethod
    { _rmSupportsMediaDownload = Nothing
    , _rmParameterOrder = Nothing
    , _rmMediaUpload = Nothing
    , _rmHTTPMethod = Nothing
    , _rmPath = Nothing
    , _rmResponse = Nothing
    , _rmSupportsMediaUpload = Nothing
    , _rmScopes = Nothing
    , _rmSupportsSubscription = Nothing
    , _rmParameters = Nothing
    , _rmId = Nothing
    , _rmEtagRequired = Nothing
    , _rmUseMediaDownloadService = Nothing
    , _rmDescription = Nothing
    , _rmRequest = Nothing
    }

-- | Whether this method supports media downloads.
rmSupportsMediaDownload :: Lens' RestMethod (Maybe Bool)
rmSupportsMediaDownload
  = lens _rmSupportsMediaDownload
      (\ s a -> s{_rmSupportsMediaDownload = a})

-- | Ordered list of required parameters, serves as a hint to clients on how
-- to structure their method signatures. The array is ordered such that the
-- \"most-significant\" parameter appears first.
rmParameterOrder :: Lens' RestMethod [Text]
rmParameterOrder
  = lens _rmParameterOrder
      (\ s a -> s{_rmParameterOrder = a})
      . _Default
      . _Coerce

-- | Media upload parameters.
rmMediaUpload :: Lens' RestMethod (Maybe MediaUpload)
rmMediaUpload
  = lens _rmMediaUpload
      (\ s a -> s{_rmMediaUpload = a})

-- | HTTP method used by this method.
rmHTTPMethod :: Lens' RestMethod (Maybe Text)
rmHTTPMethod
  = lens _rmHTTPMethod (\ s a -> s{_rmHTTPMethod = a})

-- | The URI path of this REST method. Should be used in conjunction with the
-- basePath property at the api-level.
rmPath :: Lens' RestMethod (Maybe Text)
rmPath = lens _rmPath (\ s a -> s{_rmPath = a})

-- | The schema for the response.
rmResponse :: Lens' RestMethod (Maybe Response)
rmResponse
  = lens _rmResponse (\ s a -> s{_rmResponse = a})

-- | Whether this method supports media uploads.
rmSupportsMediaUpload :: Lens' RestMethod (Maybe Bool)
rmSupportsMediaUpload
  = lens _rmSupportsMediaUpload
      (\ s a -> s{_rmSupportsMediaUpload = a})

-- | OAuth 2.0 scopes applicable to this method.
rmScopes :: Lens' RestMethod [Text]
rmScopes
  = lens _rmScopes (\ s a -> s{_rmScopes = a}) .
      _Default
      . _Coerce

-- | Whether this method supports subscriptions.
rmSupportsSubscription :: Lens' RestMethod (Maybe Bool)
rmSupportsSubscription
  = lens _rmSupportsSubscription
      (\ s a -> s{_rmSupportsSubscription = a})

-- | Details for all parameters in this method.
rmParameters :: Lens' RestMethod (Maybe Parameters)
rmParameters
  = lens _rmParameters (\ s a -> s{_rmParameters = a})

-- | A unique ID for this method. This property can be used to match methods
-- between different versions of Discovery.
rmId :: Lens' RestMethod (Maybe Text)
rmId = lens _rmId (\ s a -> s{_rmId = a})

-- | Whether this method requires an ETag to be specified. The ETag is sent
-- as an HTTP If-Match or If-None-Match header.
rmEtagRequired :: Lens' RestMethod (Maybe Bool)
rmEtagRequired
  = lens _rmEtagRequired
      (\ s a -> s{_rmEtagRequired = a})

-- | Indicates that downloads from this method should use the download
-- service URL (i.e. \"\/download\"). Only applies if the method supports
-- media download.
rmUseMediaDownloadService :: Lens' RestMethod (Maybe Bool)
rmUseMediaDownloadService
  = lens _rmUseMediaDownloadService
      (\ s a -> s{_rmUseMediaDownloadService = a})

-- | Description of this method.
rmDescription :: Lens' RestMethod (Maybe Text)
rmDescription
  = lens _rmDescription
      (\ s a -> s{_rmDescription = a})

-- | The schema for the request.
rmRequest :: Lens' RestMethod (Maybe Request)
rmRequest
  = lens _rmRequest (\ s a -> s{_rmRequest = a})

instance FromJSON RestMethod where
        parseJSON
          = withObject "RestMethod"
              (\ o ->
                 RestMethod <$>
                   (o .:? "supportsMediaDownload") <*>
                     (o .:? "parameterOrder" .!= mempty)
                     <*> (o .:? "mediaUpload")
                     <*> (o .:? "httpMethod")
                     <*> (o .:? "path")
                     <*> (o .:? "response")
                     <*> (o .:? "supportsMediaUpload")
                     <*> (o .:? "scopes" .!= mempty)
                     <*> (o .:? "supportsSubscription")
                     <*> (o .:? "parameters")
                     <*> (o .:? "id")
                     <*> (o .:? "etagRequired")
                     <*> (o .:? "useMediaDownloadService")
                     <*> (o .:? "description")
                     <*> (o .:? "request"))

instance ToJSON RestMethod where
        toJSON RestMethod{..}
          = object
              (catMaybes
                 [("supportsMediaDownload" .=) <$>
                    _rmSupportsMediaDownload,
                  ("parameterOrder" .=) <$> _rmParameterOrder,
                  ("mediaUpload" .=) <$> _rmMediaUpload,
                  ("httpMethod" .=) <$> _rmHTTPMethod,
                  ("path" .=) <$> _rmPath,
                  ("response" .=) <$> _rmResponse,
                  ("supportsMediaUpload" .=) <$>
                    _rmSupportsMediaUpload,
                  ("scopes" .=) <$> _rmScopes,
                  ("supportsSubscription" .=) <$>
                    _rmSupportsSubscription,
                  ("parameters" .=) <$> _rmParameters,
                  ("id" .=) <$> _rmId,
                  ("etagRequired" .=) <$> _rmEtagRequired,
                  ("useMediaDownloadService" .=) <$>
                    _rmUseMediaDownloadService,
                  ("description" .=) <$> _rmDescription,
                  ("request" .=) <$> _rmRequest])

-- | In a variant data type, the value of one property is used to determine
-- how to interpret the entire entity. Its value must exist in a map of
-- descriminant values to schema names.
--
-- /See:/ 'variant' smart constructor.
data Variant = Variant
    { _vDiscriminant :: !(Maybe Text)
    , _vMap          :: !(Maybe [MapItem])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Variant' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vDiscriminant'
--
-- * 'vMap'
variant
    :: Variant
variant =
    Variant
    { _vDiscriminant = Nothing
    , _vMap = Nothing
    }

-- | The name of the type discriminant property.
vDiscriminant :: Lens' Variant (Maybe Text)
vDiscriminant
  = lens _vDiscriminant
      (\ s a -> s{_vDiscriminant = a})

-- | The map of discriminant value to schema to use for parsing..
vMap :: Lens' Variant [MapItem]
vMap
  = lens _vMap (\ s a -> s{_vMap = a}) . _Default .
      _Coerce

instance FromJSON Variant where
        parseJSON
          = withObject "Variant"
              (\ o ->
                 Variant <$>
                   (o .:? "discriminant") <*> (o .:? "map" .!= mempty))

instance ToJSON Variant where
        toJSON Variant{..}
          = object
              (catMaybes
                 [("discriminant" .=) <$> _vDiscriminant,
                  ("map" .=) <$> _vMap])

-- | Media upload parameters.
--
-- /See:/ 'mediaUpload' smart constructor.
data MediaUpload = MediaUpload
    { _muProtocols :: !(Maybe Protocols)
    , _muAccept    :: !(Maybe [Text])
    , _muMaxSize   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MediaUpload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'muProtocols'
--
-- * 'muAccept'
--
-- * 'muMaxSize'
mediaUpload
    :: MediaUpload
mediaUpload =
    MediaUpload
    { _muProtocols = Nothing
    , _muAccept = Nothing
    , _muMaxSize = Nothing
    }

-- | Supported upload protocols.
muProtocols :: Lens' MediaUpload (Maybe Protocols)
muProtocols
  = lens _muProtocols (\ s a -> s{_muProtocols = a})

-- | MIME Media Ranges for acceptable media uploads to this method.
muAccept :: Lens' MediaUpload [Text]
muAccept
  = lens _muAccept (\ s a -> s{_muAccept = a}) .
      _Default
      . _Coerce

-- | Maximum size of a media upload, such as \"1MB\", \"2GB\" or \"3TB\".
muMaxSize :: Lens' MediaUpload (Maybe Text)
muMaxSize
  = lens _muMaxSize (\ s a -> s{_muMaxSize = a})

instance FromJSON MediaUpload where
        parseJSON
          = withObject "MediaUpload"
              (\ o ->
                 MediaUpload <$>
                   (o .:? "protocols") <*> (o .:? "accept" .!= mempty)
                     <*> (o .:? "maxSize"))

instance ToJSON MediaUpload where
        toJSON MediaUpload{..}
          = object
              (catMaybes
                 [("protocols" .=) <$> _muProtocols,
                  ("accept" .=) <$> _muAccept,
                  ("maxSize" .=) <$> _muMaxSize])

-- | API-level methods for this API.
--
-- /See:/ 'restDescriptionMethods' smart constructor.
data RestDescriptionMethods =
    RestDescriptionMethods
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RestDescriptionMethods' with the minimum fields required to make a request.
--
restDescriptionMethods
    :: RestDescriptionMethods
restDescriptionMethods = RestDescriptionMethods

instance FromJSON RestDescriptionMethods where
        parseJSON
          = withObject "RestDescriptionMethods"
              (\ o -> pure RestDescriptionMethods)

instance ToJSON RestDescriptionMethods where
        toJSON = const (Object mempty)

--
-- /See:/ 'restResource' smart constructor.
data RestResource = RestResource
    { _rrResources :: !(Maybe Resources)
    , _rrMethods   :: !(Maybe Methods)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RestResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrResources'
--
-- * 'rrMethods'
restResource
    :: RestResource
restResource =
    RestResource
    { _rrResources = Nothing
    , _rrMethods = Nothing
    }

-- | Sub-resources on this resource.
rrResources :: Lens' RestResource (Maybe Resources)
rrResources
  = lens _rrResources (\ s a -> s{_rrResources = a})

-- | Methods on this resource.
rrMethods :: Lens' RestResource (Maybe Methods)
rrMethods
  = lens _rrMethods (\ s a -> s{_rrMethods = a})

instance FromJSON RestResource where
        parseJSON
          = withObject "RestResource"
              (\ o ->
                 RestResource <$>
                   (o .:? "resources") <*> (o .:? "methods"))

instance ToJSON RestResource where
        toJSON RestResource{..}
          = object
              (catMaybes
                 [("resources" .=) <$> _rrResources,
                  ("methods" .=) <$> _rrMethods])

-- | The schemas for this API.
--
-- /See:/ 'schemas' smart constructor.
data Schemas =
    Schemas
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Schemas' with the minimum fields required to make a request.
--
schemas
    :: Schemas
schemas = Schemas

instance FromJSON Schemas where
        parseJSON
          = withObject "Schemas" (\ o -> pure Schemas)

instance ToJSON Schemas where
        toJSON = const (Object mempty)

-- | Supported upload protocols.
--
-- /See:/ 'protocols' smart constructor.
data Protocols = Protocols
    { _pSimple    :: !(Maybe Simple)
    , _pResumable :: !(Maybe Resumable)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Protocols' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pSimple'
--
-- * 'pResumable'
protocols
    :: Protocols
protocols =
    Protocols
    { _pSimple = Nothing
    , _pResumable = Nothing
    }

-- | Supports uploading as a single HTTP request.
pSimple :: Lens' Protocols (Maybe Simple)
pSimple = lens _pSimple (\ s a -> s{_pSimple = a})

-- | Supports the Resumable Media Upload protocol.
pResumable :: Lens' Protocols (Maybe Resumable)
pResumable
  = lens _pResumable (\ s a -> s{_pResumable = a})

instance FromJSON Protocols where
        parseJSON
          = withObject "Protocols"
              (\ o ->
                 Protocols <$>
                   (o .:? "simple") <*> (o .:? "resumable"))

instance ToJSON Protocols where
        toJSON Protocols{..}
          = object
              (catMaybes
                 [("simple" .=) <$> _pSimple,
                  ("resumable" .=) <$> _pResumable])

--
-- /See:/ 'directoryListItemsItem' smart constructor.
data DirectoryListItemsItem = DirectoryListItemsItem
    { _dliiDiscoveryLink     :: !(Maybe Text)
    , _dliiPreferred         :: !(Maybe Bool)
    , _dliiKind              :: !Text
    , _dliiIcons             :: !(Maybe DirectoryListItemsItemIcons)
    , _dliiName              :: !(Maybe Text)
    , _dliiVersion           :: !(Maybe Text)
    , _dliiDocumentationLink :: !(Maybe Text)
    , _dliiId                :: !(Maybe Text)
    , _dliiLabels            :: !(Maybe [Text])
    , _dliiTitle             :: !(Maybe Text)
    , _dliiDescription       :: !(Maybe Text)
    , _dliiDiscoveryRestURL  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DirectoryListItemsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dliiDiscoveryLink'
--
-- * 'dliiPreferred'
--
-- * 'dliiKind'
--
-- * 'dliiIcons'
--
-- * 'dliiName'
--
-- * 'dliiVersion'
--
-- * 'dliiDocumentationLink'
--
-- * 'dliiId'
--
-- * 'dliiLabels'
--
-- * 'dliiTitle'
--
-- * 'dliiDescription'
--
-- * 'dliiDiscoveryRestURL'
directoryListItemsItem
    :: DirectoryListItemsItem
directoryListItemsItem =
    DirectoryListItemsItem
    { _dliiDiscoveryLink = Nothing
    , _dliiPreferred = Nothing
    , _dliiKind = "discovery#directoryItem"
    , _dliiIcons = Nothing
    , _dliiName = Nothing
    , _dliiVersion = Nothing
    , _dliiDocumentationLink = Nothing
    , _dliiId = Nothing
    , _dliiLabels = Nothing
    , _dliiTitle = Nothing
    , _dliiDescription = Nothing
    , _dliiDiscoveryRestURL = Nothing
    }

-- | A link to the discovery document.
dliiDiscoveryLink :: Lens' DirectoryListItemsItem (Maybe Text)
dliiDiscoveryLink
  = lens _dliiDiscoveryLink
      (\ s a -> s{_dliiDiscoveryLink = a})

-- | True if this version is the preferred version to use.
dliiPreferred :: Lens' DirectoryListItemsItem (Maybe Bool)
dliiPreferred
  = lens _dliiPreferred
      (\ s a -> s{_dliiPreferred = a})

-- | The kind for this response.
dliiKind :: Lens' DirectoryListItemsItem Text
dliiKind = lens _dliiKind (\ s a -> s{_dliiKind = a})

-- | Links to 16x16 and 32x32 icons representing the API.
dliiIcons :: Lens' DirectoryListItemsItem (Maybe DirectoryListItemsItemIcons)
dliiIcons
  = lens _dliiIcons (\ s a -> s{_dliiIcons = a})

-- | The name of the API.
dliiName :: Lens' DirectoryListItemsItem (Maybe Text)
dliiName = lens _dliiName (\ s a -> s{_dliiName = a})

-- | The version of the API.
dliiVersion :: Lens' DirectoryListItemsItem (Maybe Text)
dliiVersion
  = lens _dliiVersion (\ s a -> s{_dliiVersion = a})

-- | A link to human readable documentation for the API.
dliiDocumentationLink :: Lens' DirectoryListItemsItem (Maybe Text)
dliiDocumentationLink
  = lens _dliiDocumentationLink
      (\ s a -> s{_dliiDocumentationLink = a})

-- | The id of this API.
dliiId :: Lens' DirectoryListItemsItem (Maybe Text)
dliiId = lens _dliiId (\ s a -> s{_dliiId = a})

-- | Labels for the status of this API, such as labs or deprecated.
dliiLabels :: Lens' DirectoryListItemsItem [Text]
dliiLabels
  = lens _dliiLabels (\ s a -> s{_dliiLabels = a}) .
      _Default
      . _Coerce

-- | The title of this API.
dliiTitle :: Lens' DirectoryListItemsItem (Maybe Text)
dliiTitle
  = lens _dliiTitle (\ s a -> s{_dliiTitle = a})

-- | The description of this API.
dliiDescription :: Lens' DirectoryListItemsItem (Maybe Text)
dliiDescription
  = lens _dliiDescription
      (\ s a -> s{_dliiDescription = a})

-- | The URL for the discovery REST document.
dliiDiscoveryRestURL :: Lens' DirectoryListItemsItem (Maybe Text)
dliiDiscoveryRestURL
  = lens _dliiDiscoveryRestURL
      (\ s a -> s{_dliiDiscoveryRestURL = a})

instance FromJSON DirectoryListItemsItem where
        parseJSON
          = withObject "DirectoryListItemsItem"
              (\ o ->
                 DirectoryListItemsItem <$>
                   (o .:? "discoveryLink") <*> (o .:? "preferred") <*>
                     (o .:? "kind" .!= "discovery#directoryItem")
                     <*> (o .:? "icons")
                     <*> (o .:? "name")
                     <*> (o .:? "version")
                     <*> (o .:? "documentationLink")
                     <*> (o .:? "id")
                     <*> (o .:? "labels" .!= mempty)
                     <*> (o .:? "title")
                     <*> (o .:? "description")
                     <*> (o .:? "discoveryRestUrl"))

instance ToJSON DirectoryListItemsItem where
        toJSON DirectoryListItemsItem{..}
          = object
              (catMaybes
                 [("discoveryLink" .=) <$> _dliiDiscoveryLink,
                  ("preferred" .=) <$> _dliiPreferred,
                  Just ("kind" .= _dliiKind),
                  ("icons" .=) <$> _dliiIcons,
                  ("name" .=) <$> _dliiName,
                  ("version" .=) <$> _dliiVersion,
                  ("documentationLink" .=) <$> _dliiDocumentationLink,
                  ("id" .=) <$> _dliiId, ("labels" .=) <$> _dliiLabels,
                  ("title" .=) <$> _dliiTitle,
                  ("description" .=) <$> _dliiDescription,
                  ("discoveryRestUrl" .=) <$> _dliiDiscoveryRestURL])

-- | Authentication information.
--
-- /See:/ 'auth' smart constructor.
newtype Auth = Auth
    { _aOAuth2 :: Maybe OAuth2
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Auth' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aOAuth2'
auth
    :: Auth
auth =
    Auth
    { _aOAuth2 = Nothing
    }

-- | OAuth 2.0 authentication information.
aOAuth2 :: Lens' Auth (Maybe OAuth2)
aOAuth2 = lens _aOAuth2 (\ s a -> s{_aOAuth2 = a})

instance FromJSON Auth where
        parseJSON
          = withObject "Auth"
              (\ o -> Auth <$> (o .:? "oauth2"))

instance ToJSON Auth where
        toJSON Auth{..}
          = object (catMaybes [("oauth2" .=) <$> _aOAuth2])

-- | Links to 16x16 and 32x32 icons representing the API.
--
-- /See:/ 'icons' smart constructor.
data Icons = Icons
    { _iX16 :: !(Maybe Text)
    , _iX32 :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Icons' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iX16'
--
-- * 'iX32'
icons
    :: Icons
icons =
    Icons
    { _iX16 = Nothing
    , _iX32 = Nothing
    }

-- | The URL of the 16x16 icon.
iX16 :: Lens' Icons (Maybe Text)
iX16 = lens _iX16 (\ s a -> s{_iX16 = a})

-- | The URL of the 32x32 icon.
iX32 :: Lens' Icons (Maybe Text)
iX32 = lens _iX32 (\ s a -> s{_iX32 = a})

instance FromJSON Icons where
        parseJSON
          = withObject "Icons"
              (\ o -> Icons <$> (o .:? "x16") <*> (o .:? "x32"))

instance ToJSON Icons where
        toJSON Icons{..}
          = object
              (catMaybes
                 [("x16" .=) <$> _iX16, ("x32" .=) <$> _iX32])

-- | Links to 16x16 and 32x32 icons representing the API.
--
-- /See:/ 'directoryListItemsItemIcons' smart constructor.
data DirectoryListItemsItemIcons = DirectoryListItemsItemIcons
    { _dliiiX16 :: !(Maybe Text)
    , _dliiiX32 :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DirectoryListItemsItemIcons' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dliiiX16'
--
-- * 'dliiiX32'
directoryListItemsItemIcons
    :: DirectoryListItemsItemIcons
directoryListItemsItemIcons =
    DirectoryListItemsItemIcons
    { _dliiiX16 = Nothing
    , _dliiiX32 = Nothing
    }

-- | The URL of the 16x16 icon.
dliiiX16 :: Lens' DirectoryListItemsItemIcons (Maybe Text)
dliiiX16 = lens _dliiiX16 (\ s a -> s{_dliiiX16 = a})

-- | The URL of the 32x32 icon.
dliiiX32 :: Lens' DirectoryListItemsItemIcons (Maybe Text)
dliiiX32 = lens _dliiiX32 (\ s a -> s{_dliiiX32 = a})

instance FromJSON DirectoryListItemsItemIcons where
        parseJSON
          = withObject "DirectoryListItemsItemIcons"
              (\ o ->
                 DirectoryListItemsItemIcons <$>
                   (o .:? "x16") <*> (o .:? "x32"))

instance ToJSON DirectoryListItemsItemIcons where
        toJSON DirectoryListItemsItemIcons{..}
          = object
              (catMaybes
                 [("x16" .=) <$> _dliiiX16, ("x32" .=) <$> _dliiiX32])

-- | The schema for the response.
--
-- /See:/ 'response' smart constructor.
newtype Response = Response
    { _rRef :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Response' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rRef'
response
    :: Response
response =
    Response
    { _rRef = Nothing
    }

-- | Schema ID for the response schema.
rRef :: Lens' Response (Maybe Text)
rRef = lens _rRef (\ s a -> s{_rRef = a})

instance FromJSON Response where
        parseJSON
          = withObject "Response"
              (\ o -> Response <$> (o .:? "$ref"))

instance ToJSON Response where
        toJSON Response{..}
          = object (catMaybes [("$ref" .=) <$> _rRef])

-- | Supports uploading as a single HTTP request.
--
-- /See:/ 'simple' smart constructor.
data Simple = Simple
    { _sPath      :: !(Maybe Text)
    , _sMultiPart :: !Bool
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Simple' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sPath'
--
-- * 'sMultiPart'
simple
    :: Simple
simple =
    Simple
    { _sPath = Nothing
    , _sMultiPart = True
    }

-- | The URI path to be used for upload. Should be used in conjunction with
-- the basePath property at the api-level.
sPath :: Lens' Simple (Maybe Text)
sPath = lens _sPath (\ s a -> s{_sPath = a})

-- | True if this endpoint supports upload multipart media.
sMultiPart :: Lens' Simple Bool
sMultiPart
  = lens _sMultiPart (\ s a -> s{_sMultiPart = a})

instance FromJSON Simple where
        parseJSON
          = withObject "Simple"
              (\ o ->
                 Simple <$>
                   (o .:? "path") <*> (o .:? "multipart" .!= True))

instance ToJSON Simple where
        toJSON Simple{..}
          = object
              (catMaybes
                 [("path" .=) <$> _sPath,
                  Just ("multipart" .= _sMultiPart)])

--
-- /See:/ 'restDescription' smart constructor.
data RestDescription = RestDescription
    { _rdEtag                      :: !(Maybe Text)
    , _rdSchemas                   :: !(Maybe Schemas)
    , _rdServicePath               :: !(Maybe Text)
    , _rdBasePath                  :: !(Maybe Text)
    , _rdKind                      :: !Text
    , _rdExponentialBackoffDefault :: !(Maybe Bool)
    , _rdAuth                      :: !(Maybe Auth)
    , _rdIcons                     :: !(Maybe Icons)
    , _rdBaseURL                   :: !(Maybe Text)
    , _rdProtocol                  :: !Text
    , _rdOwnerName                 :: !(Maybe Text)
    , _rdResources                 :: !(Maybe RestDescriptionResources)
    , _rdOwnerDomain               :: !(Maybe Text)
    , _rdBatchPath                 :: !Text
    , _rdMethods                   :: !(Maybe RestDescriptionMethods)
    , _rdName                      :: !(Maybe Text)
    , _rdPackagePath               :: !(Maybe Text)
    , _rdFeatures                  :: !(Maybe [Text])
    , _rdVersion                   :: !(Maybe Text)
    , _rdParameters                :: !(Maybe RestDescriptionParameters)
    , _rdDocumentationLink         :: !(Maybe Text)
    , _rdRootURL                   :: !(Maybe Text)
    , _rdId                        :: !(Maybe Text)
    , _rdCanonicalName             :: !(Maybe Text)
    , _rdLabels                    :: !(Maybe [Text])
    , _rdDiscoveryVersion          :: !Text
    , _rdTitle                     :: !(Maybe Text)
    , _rdRevision                  :: !(Maybe Text)
    , _rdDescription               :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RestDescription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdEtag'
--
-- * 'rdSchemas'
--
-- * 'rdServicePath'
--
-- * 'rdBasePath'
--
-- * 'rdKind'
--
-- * 'rdExponentialBackoffDefault'
--
-- * 'rdAuth'
--
-- * 'rdIcons'
--
-- * 'rdBaseURL'
--
-- * 'rdProtocol'
--
-- * 'rdOwnerName'
--
-- * 'rdResources'
--
-- * 'rdOwnerDomain'
--
-- * 'rdBatchPath'
--
-- * 'rdMethods'
--
-- * 'rdName'
--
-- * 'rdPackagePath'
--
-- * 'rdFeatures'
--
-- * 'rdVersion'
--
-- * 'rdParameters'
--
-- * 'rdDocumentationLink'
--
-- * 'rdRootURL'
--
-- * 'rdId'
--
-- * 'rdCanonicalName'
--
-- * 'rdLabels'
--
-- * 'rdDiscoveryVersion'
--
-- * 'rdTitle'
--
-- * 'rdRevision'
--
-- * 'rdDescription'
restDescription
    :: RestDescription
restDescription =
    RestDescription
    { _rdEtag = Nothing
    , _rdSchemas = Nothing
    , _rdServicePath = Nothing
    , _rdBasePath = Nothing
    , _rdKind = "discovery#restDescription"
    , _rdExponentialBackoffDefault = Nothing
    , _rdAuth = Nothing
    , _rdIcons = Nothing
    , _rdBaseURL = Nothing
    , _rdProtocol = "rest"
    , _rdOwnerName = Nothing
    , _rdResources = Nothing
    , _rdOwnerDomain = Nothing
    , _rdBatchPath = "batch"
    , _rdMethods = Nothing
    , _rdName = Nothing
    , _rdPackagePath = Nothing
    , _rdFeatures = Nothing
    , _rdVersion = Nothing
    , _rdParameters = Nothing
    , _rdDocumentationLink = Nothing
    , _rdRootURL = Nothing
    , _rdId = Nothing
    , _rdCanonicalName = Nothing
    , _rdLabels = Nothing
    , _rdDiscoveryVersion = "v1"
    , _rdTitle = Nothing
    , _rdRevision = Nothing
    , _rdDescription = Nothing
    }

-- | The ETag for this response.
rdEtag :: Lens' RestDescription (Maybe Text)
rdEtag = lens _rdEtag (\ s a -> s{_rdEtag = a})

-- | The schemas for this API.
rdSchemas :: Lens' RestDescription (Maybe Schemas)
rdSchemas
  = lens _rdSchemas (\ s a -> s{_rdSchemas = a})

-- | The base path for all REST requests.
rdServicePath :: Lens' RestDescription (Maybe Text)
rdServicePath
  = lens _rdServicePath
      (\ s a -> s{_rdServicePath = a})

-- | [DEPRECATED] The base path for REST requests.
rdBasePath :: Lens' RestDescription (Maybe Text)
rdBasePath
  = lens _rdBasePath (\ s a -> s{_rdBasePath = a})

-- | The kind for this response.
rdKind :: Lens' RestDescription Text
rdKind = lens _rdKind (\ s a -> s{_rdKind = a})

-- | Enable exponential backoff for suitable methods in the generated
-- clients.
rdExponentialBackoffDefault :: Lens' RestDescription (Maybe Bool)
rdExponentialBackoffDefault
  = lens _rdExponentialBackoffDefault
      (\ s a -> s{_rdExponentialBackoffDefault = a})

-- | Authentication information.
rdAuth :: Lens' RestDescription (Maybe Auth)
rdAuth = lens _rdAuth (\ s a -> s{_rdAuth = a})

-- | Links to 16x16 and 32x32 icons representing the API.
rdIcons :: Lens' RestDescription (Maybe Icons)
rdIcons = lens _rdIcons (\ s a -> s{_rdIcons = a})

-- | [DEPRECATED] The base URL for REST requests.
rdBaseURL :: Lens' RestDescription (Maybe Text)
rdBaseURL
  = lens _rdBaseURL (\ s a -> s{_rdBaseURL = a})

-- | The protocol described by this document.
rdProtocol :: Lens' RestDescription Text
rdProtocol
  = lens _rdProtocol (\ s a -> s{_rdProtocol = a})

-- | The name of the owner of this API. See ownerDomain.
rdOwnerName :: Lens' RestDescription (Maybe Text)
rdOwnerName
  = lens _rdOwnerName (\ s a -> s{_rdOwnerName = a})

-- | The resources in this API.
rdResources :: Lens' RestDescription (Maybe RestDescriptionResources)
rdResources
  = lens _rdResources (\ s a -> s{_rdResources = a})

-- | The domain of the owner of this API. Together with the ownerName and a
-- packagePath values, this can be used to generate a library for this API
-- which would have a unique fully qualified name.
rdOwnerDomain :: Lens' RestDescription (Maybe Text)
rdOwnerDomain
  = lens _rdOwnerDomain
      (\ s a -> s{_rdOwnerDomain = a})

-- | The path for REST batch requests.
rdBatchPath :: Lens' RestDescription Text
rdBatchPath
  = lens _rdBatchPath (\ s a -> s{_rdBatchPath = a})

-- | API-level methods for this API.
rdMethods :: Lens' RestDescription (Maybe RestDescriptionMethods)
rdMethods
  = lens _rdMethods (\ s a -> s{_rdMethods = a})

-- | The name of this API.
rdName :: Lens' RestDescription (Maybe Text)
rdName = lens _rdName (\ s a -> s{_rdName = a})

-- | The package of the owner of this API. See ownerDomain.
rdPackagePath :: Lens' RestDescription (Maybe Text)
rdPackagePath
  = lens _rdPackagePath
      (\ s a -> s{_rdPackagePath = a})

-- | A list of supported features for this API.
rdFeatures :: Lens' RestDescription [Text]
rdFeatures
  = lens _rdFeatures (\ s a -> s{_rdFeatures = a}) .
      _Default
      . _Coerce

-- | The version of this API.
rdVersion :: Lens' RestDescription (Maybe Text)
rdVersion
  = lens _rdVersion (\ s a -> s{_rdVersion = a})

-- | Common parameters that apply across all apis.
rdParameters :: Lens' RestDescription (Maybe RestDescriptionParameters)
rdParameters
  = lens _rdParameters (\ s a -> s{_rdParameters = a})

-- | A link to human readable documentation for the API.
rdDocumentationLink :: Lens' RestDescription (Maybe Text)
rdDocumentationLink
  = lens _rdDocumentationLink
      (\ s a -> s{_rdDocumentationLink = a})

-- | The root URL under which all API services live.
rdRootURL :: Lens' RestDescription (Maybe Text)
rdRootURL
  = lens _rdRootURL (\ s a -> s{_rdRootURL = a})

-- | The ID of this API.
rdId :: Lens' RestDescription (Maybe Text)
rdId = lens _rdId (\ s a -> s{_rdId = a})

-- | Indicates how the API name should be capitalized and split into various
-- parts. Useful for generating pretty class names.
rdCanonicalName :: Lens' RestDescription (Maybe Text)
rdCanonicalName
  = lens _rdCanonicalName
      (\ s a -> s{_rdCanonicalName = a})

-- | Labels for the status of this API, such as labs or deprecated.
rdLabels :: Lens' RestDescription [Text]
rdLabels
  = lens _rdLabels (\ s a -> s{_rdLabels = a}) .
      _Default
      . _Coerce

-- | Indicate the version of the Discovery API used to generate this doc.
rdDiscoveryVersion :: Lens' RestDescription Text
rdDiscoveryVersion
  = lens _rdDiscoveryVersion
      (\ s a -> s{_rdDiscoveryVersion = a})

-- | The title of this API.
rdTitle :: Lens' RestDescription (Maybe Text)
rdTitle = lens _rdTitle (\ s a -> s{_rdTitle = a})

-- | The version of this API.
rdRevision :: Lens' RestDescription (Maybe Text)
rdRevision
  = lens _rdRevision (\ s a -> s{_rdRevision = a})

-- | The description of this API.
rdDescription :: Lens' RestDescription (Maybe Text)
rdDescription
  = lens _rdDescription
      (\ s a -> s{_rdDescription = a})

instance FromJSON RestDescription where
        parseJSON
          = withObject "RestDescription"
              (\ o ->
                 RestDescription <$>
                   (o .:? "etag") <*> (o .:? "schemas") <*>
                     (o .:? "servicePath")
                     <*> (o .:? "basePath")
                     <*> (o .:? "kind" .!= "discovery#restDescription")
                     <*> (o .:? "exponentialBackoffDefault")
                     <*> (o .:? "auth")
                     <*> (o .:? "icons")
                     <*> (o .:? "baseUrl")
                     <*> (o .:? "protocol" .!= "rest")
                     <*> (o .:? "ownerName")
                     <*> (o .:? "resources")
                     <*> (o .:? "ownerDomain")
                     <*> (o .:? "batchPath" .!= "batch")
                     <*> (o .:? "methods")
                     <*> (o .:? "name")
                     <*> (o .:? "packagePath")
                     <*> (o .:? "features" .!= mempty)
                     <*> (o .:? "version")
                     <*> (o .:? "parameters")
                     <*> (o .:? "documentationLink")
                     <*> (o .:? "rootUrl")
                     <*> (o .:? "id")
                     <*> (o .:? "canonicalName")
                     <*> (o .:? "labels" .!= mempty)
                     <*> (o .:? "discoveryVersion" .!= "v1")
                     <*> (o .:? "title")
                     <*> (o .:? "revision")
                     <*> (o .:? "description"))

instance ToJSON RestDescription where
        toJSON RestDescription{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _rdEtag,
                  ("schemas" .=) <$> _rdSchemas,
                  ("servicePath" .=) <$> _rdServicePath,
                  ("basePath" .=) <$> _rdBasePath,
                  Just ("kind" .= _rdKind),
                  ("exponentialBackoffDefault" .=) <$>
                    _rdExponentialBackoffDefault,
                  ("auth" .=) <$> _rdAuth, ("icons" .=) <$> _rdIcons,
                  ("baseUrl" .=) <$> _rdBaseURL,
                  Just ("protocol" .= _rdProtocol),
                  ("ownerName" .=) <$> _rdOwnerName,
                  ("resources" .=) <$> _rdResources,
                  ("ownerDomain" .=) <$> _rdOwnerDomain,
                  Just ("batchPath" .= _rdBatchPath),
                  ("methods" .=) <$> _rdMethods,
                  ("name" .=) <$> _rdName,
                  ("packagePath" .=) <$> _rdPackagePath,
                  ("features" .=) <$> _rdFeatures,
                  ("version" .=) <$> _rdVersion,
                  ("parameters" .=) <$> _rdParameters,
                  ("documentationLink" .=) <$> _rdDocumentationLink,
                  ("rootUrl" .=) <$> _rdRootURL, ("id" .=) <$> _rdId,
                  ("canonicalName" .=) <$> _rdCanonicalName,
                  ("labels" .=) <$> _rdLabels,
                  Just ("discoveryVersion" .= _rdDiscoveryVersion),
                  ("title" .=) <$> _rdTitle,
                  ("revision" .=) <$> _rdRevision,
                  ("description" .=) <$> _rdDescription])

-- | Supports the Resumable Media Upload protocol.
--
-- /See:/ 'resumable' smart constructor.
data Resumable = Resumable
    { _rPath      :: !(Maybe Text)
    , _rMultiPart :: !Bool
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Resumable' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rPath'
--
-- * 'rMultiPart'
resumable
    :: Resumable
resumable =
    Resumable
    { _rPath = Nothing
    , _rMultiPart = True
    }

-- | The URI path to be used for upload. Should be used in conjunction with
-- the basePath property at the api-level.
rPath :: Lens' Resumable (Maybe Text)
rPath = lens _rPath (\ s a -> s{_rPath = a})

-- | True if this endpoint supports uploading multipart media.
rMultiPart :: Lens' Resumable Bool
rMultiPart
  = lens _rMultiPart (\ s a -> s{_rMultiPart = a})

instance FromJSON Resumable where
        parseJSON
          = withObject "Resumable"
              (\ o ->
                 Resumable <$>
                   (o .:? "path") <*> (o .:? "multipart" .!= True))

instance ToJSON Resumable where
        toJSON Resumable{..}
          = object
              (catMaybes
                 [("path" .=) <$> _rPath,
                  Just ("multipart" .= _rMultiPart)])

-- | Sub-resources on this resource.
--
-- /See:/ 'resources' smart constructor.
data Resources =
    Resources
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Resources' with the minimum fields required to make a request.
--
resources
    :: Resources
resources = Resources

instance FromJSON Resources where
        parseJSON
          = withObject "Resources" (\ o -> pure Resources)

instance ToJSON Resources where
        toJSON = const (Object mempty)

--
-- /See:/ 'jsonSchema' smart constructor.
data JSONSchema = JSONSchema
    { _jsAnnotations          :: !(Maybe Annotations)
    , _jsVariant              :: !(Maybe Variant)
    , _jsLocation             :: !(Maybe Text)
    , _jsRef                  :: !(Maybe Text)
    , _jsPattern              :: !(Maybe Text)
    , _jsMaximum              :: !(Maybe Text)
    , _jsDefault              :: !(Maybe Text)
    , _jsFormat               :: !(Maybe Text)
    , _jsItems                :: !(Maybe JSONSchema)
    , _jsMinimum              :: !(Maybe Text)
    , _jsRequired             :: !(Maybe Bool)
    , _jsId                   :: !(Maybe Text)
    , _jsAdditionalProperties :: !(Maybe JSONSchema)
    , _jsType                 :: !(Maybe Text)
    , _jsEnum                 :: !(Maybe [Text])
    , _jsRepeated             :: !(Maybe Bool)
    , _jsReadOnly             :: !(Maybe Bool)
    , _jsEnumDescriptions     :: !(Maybe [Text])
    , _jsDescription          :: !(Maybe Text)
    , _jsProperties           :: !(Maybe Properties)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'JSONSchema' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jsAnnotations'
--
-- * 'jsVariant'
--
-- * 'jsLocation'
--
-- * 'jsRef'
--
-- * 'jsPattern'
--
-- * 'jsMaximum'
--
-- * 'jsDefault'
--
-- * 'jsFormat'
--
-- * 'jsItems'
--
-- * 'jsMinimum'
--
-- * 'jsRequired'
--
-- * 'jsId'
--
-- * 'jsAdditionalProperties'
--
-- * 'jsType'
--
-- * 'jsEnum'
--
-- * 'jsRepeated'
--
-- * 'jsReadOnly'
--
-- * 'jsEnumDescriptions'
--
-- * 'jsDescription'
--
-- * 'jsProperties'
jsonSchema
    :: JSONSchema
jsonSchema =
    JSONSchema
    { _jsAnnotations = Nothing
    , _jsVariant = Nothing
    , _jsLocation = Nothing
    , _jsRef = Nothing
    , _jsPattern = Nothing
    , _jsMaximum = Nothing
    , _jsDefault = Nothing
    , _jsFormat = Nothing
    , _jsItems = Nothing
    , _jsMinimum = Nothing
    , _jsRequired = Nothing
    , _jsId = Nothing
    , _jsAdditionalProperties = Nothing
    , _jsType = Nothing
    , _jsEnum = Nothing
    , _jsRepeated = Nothing
    , _jsReadOnly = Nothing
    , _jsEnumDescriptions = Nothing
    , _jsDescription = Nothing
    , _jsProperties = Nothing
    }

-- | Additional information about this property.
jsAnnotations :: Lens' JSONSchema (Maybe Annotations)
jsAnnotations
  = lens _jsAnnotations
      (\ s a -> s{_jsAnnotations = a})

-- | In a variant data type, the value of one property is used to determine
-- how to interpret the entire entity. Its value must exist in a map of
-- descriminant values to schema names.
jsVariant :: Lens' JSONSchema (Maybe Variant)
jsVariant
  = lens _jsVariant (\ s a -> s{_jsVariant = a})

-- | Whether this parameter goes in the query or the path for REST requests.
jsLocation :: Lens' JSONSchema (Maybe Text)
jsLocation
  = lens _jsLocation (\ s a -> s{_jsLocation = a})

-- | A reference to another schema. The value of this property is the \"id\"
-- of another schema.
jsRef :: Lens' JSONSchema (Maybe Text)
jsRef = lens _jsRef (\ s a -> s{_jsRef = a})

-- | The regular expression this parameter must conform to. Uses Java 6 regex
-- format:
-- http:\/\/docs.oracle.com\/javase\/6\/docs\/api\/java\/util\/regex\/Pattern.html
jsPattern :: Lens' JSONSchema (Maybe Text)
jsPattern
  = lens _jsPattern (\ s a -> s{_jsPattern = a})

-- | The maximum value of this parameter.
jsMaximum :: Lens' JSONSchema (Maybe Text)
jsMaximum
  = lens _jsMaximum (\ s a -> s{_jsMaximum = a})

-- | The default value of this property (if one exists).
jsDefault :: Lens' JSONSchema (Maybe Text)
jsDefault
  = lens _jsDefault (\ s a -> s{_jsDefault = a})

-- | An additional regular expression or key that helps constrain the value.
-- For more details see:
-- http:\/\/tools.ietf.org\/html\/draft-zyp-json-schema-03#section-5.23
jsFormat :: Lens' JSONSchema (Maybe Text)
jsFormat = lens _jsFormat (\ s a -> s{_jsFormat = a})

-- | If this is a schema for an array, this property is the schema for each
-- element in the array.
jsItems :: Lens' JSONSchema (Maybe JSONSchema)
jsItems = lens _jsItems (\ s a -> s{_jsItems = a})

-- | The minimum value of this parameter.
jsMinimum :: Lens' JSONSchema (Maybe Text)
jsMinimum
  = lens _jsMinimum (\ s a -> s{_jsMinimum = a})

-- | Whether the parameter is required.
jsRequired :: Lens' JSONSchema (Maybe Bool)
jsRequired
  = lens _jsRequired (\ s a -> s{_jsRequired = a})

-- | Unique identifier for this schema.
jsId :: Lens' JSONSchema (Maybe Text)
jsId = lens _jsId (\ s a -> s{_jsId = a})

-- | If this is a schema for an object, this property is the schema for any
-- additional properties with dynamic keys on this object.
jsAdditionalProperties :: Lens' JSONSchema (Maybe JSONSchema)
jsAdditionalProperties
  = lens _jsAdditionalProperties
      (\ s a -> s{_jsAdditionalProperties = a})

-- | The value type for this schema. A list of values can be found here:
-- http:\/\/tools.ietf.org\/html\/draft-zyp-json-schema-03#section-5.1
jsType :: Lens' JSONSchema (Maybe Text)
jsType = lens _jsType (\ s a -> s{_jsType = a})

-- | Values this parameter may take (if it is an enum).
jsEnum :: Lens' JSONSchema [Text]
jsEnum
  = lens _jsEnum (\ s a -> s{_jsEnum = a}) . _Default .
      _Coerce

-- | Whether this parameter may appear multiple times.
jsRepeated :: Lens' JSONSchema (Maybe Bool)
jsRepeated
  = lens _jsRepeated (\ s a -> s{_jsRepeated = a})

-- | The value is read-only, generated by the service. The value cannot be
-- modified by the client. If the value is included in a POST, PUT, or
-- PATCH request, it is ignored by the service.
jsReadOnly :: Lens' JSONSchema (Maybe Bool)
jsReadOnly
  = lens _jsReadOnly (\ s a -> s{_jsReadOnly = a})

-- | The descriptions for the enums. Each position maps to the corresponding
-- value in the \"enum\" array.
jsEnumDescriptions :: Lens' JSONSchema [Text]
jsEnumDescriptions
  = lens _jsEnumDescriptions
      (\ s a -> s{_jsEnumDescriptions = a})
      . _Default
      . _Coerce

-- | A description of this object.
jsDescription :: Lens' JSONSchema (Maybe Text)
jsDescription
  = lens _jsDescription
      (\ s a -> s{_jsDescription = a})

-- | If this is a schema for an object, list the schema for each property of
-- this object.
jsProperties :: Lens' JSONSchema (Maybe Properties)
jsProperties
  = lens _jsProperties (\ s a -> s{_jsProperties = a})

instance FromJSON JSONSchema where
        parseJSON
          = withObject "JSONSchema"
              (\ o ->
                 JSONSchema <$>
                   (o .:? "annotations") <*> (o .:? "variant") <*>
                     (o .:? "location")
                     <*> (o .:? "$ref")
                     <*> (o .:? "pattern")
                     <*> (o .:? "maximum")
                     <*> (o .:? "default")
                     <*> (o .:? "format")
                     <*> (o .:? "items")
                     <*> (o .:? "minimum")
                     <*> (o .:? "required")
                     <*> (o .:? "id")
                     <*> (o .:? "additionalProperties")
                     <*> (o .:? "type")
                     <*> (o .:? "enum" .!= mempty)
                     <*> (o .:? "repeated")
                     <*> (o .:? "readOnly")
                     <*> (o .:? "enumDescriptions" .!= mempty)
                     <*> (o .:? "description")
                     <*> (o .:? "properties"))

instance ToJSON JSONSchema where
        toJSON JSONSchema{..}
          = object
              (catMaybes
                 [("annotations" .=) <$> _jsAnnotations,
                  ("variant" .=) <$> _jsVariant,
                  ("location" .=) <$> _jsLocation,
                  ("$ref" .=) <$> _jsRef,
                  ("pattern" .=) <$> _jsPattern,
                  ("maximum" .=) <$> _jsMaximum,
                  ("default" .=) <$> _jsDefault,
                  ("format" .=) <$> _jsFormat,
                  ("items" .=) <$> _jsItems,
                  ("minimum" .=) <$> _jsMinimum,
                  ("required" .=) <$> _jsRequired, ("id" .=) <$> _jsId,
                  ("additionalProperties" .=) <$>
                    _jsAdditionalProperties,
                  ("type" .=) <$> _jsType, ("enum" .=) <$> _jsEnum,
                  ("repeated" .=) <$> _jsRepeated,
                  ("readOnly" .=) <$> _jsReadOnly,
                  ("enumDescriptions" .=) <$> _jsEnumDescriptions,
                  ("description" .=) <$> _jsDescription,
                  ("properties" .=) <$> _jsProperties])

--
-- /See:/ 'mapItem' smart constructor.
data MapItem = MapItem
    { _miRef       :: !(Maybe Text)
    , _miTypeValue :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MapItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'miRef'
--
-- * 'miTypeValue'
mapItem
    :: MapItem
mapItem =
    MapItem
    { _miRef = Nothing
    , _miTypeValue = Nothing
    }

miRef :: Lens' MapItem (Maybe Text)
miRef = lens _miRef (\ s a -> s{_miRef = a})

miTypeValue :: Lens' MapItem (Maybe Text)
miTypeValue
  = lens _miTypeValue (\ s a -> s{_miTypeValue = a})

instance FromJSON MapItem where
        parseJSON
          = withObject "MapItem"
              (\ o ->
                 MapItem <$> (o .:? "$ref") <*> (o .:? "type_value"))

instance ToJSON MapItem where
        toJSON MapItem{..}
          = object
              (catMaybes
                 [("$ref" .=) <$> _miRef,
                  ("type_value" .=) <$> _miTypeValue])

-- | Methods on this resource.
--
-- /See:/ 'methods' smart constructor.
data Methods =
    Methods
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Methods' with the minimum fields required to make a request.
--
methods
    :: Methods
methods = Methods

instance FromJSON Methods where
        parseJSON
          = withObject "Methods" (\ o -> pure Methods)

instance ToJSON Methods where
        toJSON = const (Object mempty)

-- | Available OAuth 2.0 scopes.
--
-- /See:/ 'oAuth2Scopes' smart constructor.
data OAuth2Scopes =
    OAuth2Scopes
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OAuth2Scopes' with the minimum fields required to make a request.
--
oAuth2Scopes
    :: OAuth2Scopes
oAuth2Scopes = OAuth2Scopes

instance FromJSON OAuth2Scopes where
        parseJSON
          = withObject "OAuth2Scopes"
              (\ o -> pure OAuth2Scopes)

instance ToJSON OAuth2Scopes where
        toJSON = const (Object mempty)

-- | The resources in this API.
--
-- /See:/ 'restDescriptionResources' smart constructor.
data RestDescriptionResources =
    RestDescriptionResources
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RestDescriptionResources' with the minimum fields required to make a request.
--
restDescriptionResources
    :: RestDescriptionResources
restDescriptionResources = RestDescriptionResources

instance FromJSON RestDescriptionResources where
        parseJSON
          = withObject "RestDescriptionResources"
              (\ o -> pure RestDescriptionResources)

instance ToJSON RestDescriptionResources where
        toJSON = const (Object mempty)

-- | Details for all parameters in this method.
--
-- /See:/ 'parameters' smart constructor.
data Parameters =
    Parameters
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Parameters' with the minimum fields required to make a request.
--
parameters
    :: Parameters
parameters = Parameters

instance FromJSON Parameters where
        parseJSON
          = withObject "Parameters" (\ o -> pure Parameters)

instance ToJSON Parameters where
        toJSON = const (Object mempty)

-- | OAuth 2.0 authentication information.
--
-- /See:/ 'oAuth2' smart constructor.
newtype OAuth2 = OAuth2
    { _oaScopes :: Maybe OAuth2Scopes
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OAuth2' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oaScopes'
oAuth2
    :: OAuth2
oAuth2 =
    OAuth2
    { _oaScopes = Nothing
    }

-- | Available OAuth 2.0 scopes.
oaScopes :: Lens' OAuth2 (Maybe OAuth2Scopes)
oaScopes = lens _oaScopes (\ s a -> s{_oaScopes = a})

instance FromJSON OAuth2 where
        parseJSON
          = withObject "OAuth2"
              (\ o -> OAuth2 <$> (o .:? "scopes"))

instance ToJSON OAuth2 where
        toJSON OAuth2{..}
          = object (catMaybes [("scopes" .=) <$> _oaScopes])

--
-- /See:/ 'directoryList' smart constructor.
data DirectoryList = DirectoryList
    { _dlKind             :: !Text
    , _dlItems            :: !(Maybe [DirectoryListItemsItem])
    , _dlDiscoveryVersion :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DirectoryList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlKind'
--
-- * 'dlItems'
--
-- * 'dlDiscoveryVersion'
directoryList
    :: DirectoryList
directoryList =
    DirectoryList
    { _dlKind = "discovery#directoryList"
    , _dlItems = Nothing
    , _dlDiscoveryVersion = "v1"
    }

-- | The kind for this response.
dlKind :: Lens' DirectoryList Text
dlKind = lens _dlKind (\ s a -> s{_dlKind = a})

-- | The individual directory entries. One entry per api\/version pair.
dlItems :: Lens' DirectoryList [DirectoryListItemsItem]
dlItems
  = lens _dlItems (\ s a -> s{_dlItems = a}) . _Default
      . _Coerce

-- | Indicate the version of the Discovery API used to generate this doc.
dlDiscoveryVersion :: Lens' DirectoryList Text
dlDiscoveryVersion
  = lens _dlDiscoveryVersion
      (\ s a -> s{_dlDiscoveryVersion = a})

instance FromJSON DirectoryList where
        parseJSON
          = withObject "DirectoryList"
              (\ o ->
                 DirectoryList <$>
                   (o .:? "kind" .!= "discovery#directoryList") <*>
                     (o .:? "items" .!= mempty)
                     <*> (o .:? "discoveryVersion" .!= "v1"))

instance ToJSON DirectoryList where
        toJSON DirectoryList{..}
          = object
              (catMaybes
                 [Just ("kind" .= _dlKind), ("items" .=) <$> _dlItems,
                  Just ("discoveryVersion" .= _dlDiscoveryVersion)])

-- | If this is a schema for an object, list the schema for each property of
-- this object.
--
-- /See:/ 'properties' smart constructor.
data Properties =
    Properties
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Properties' with the minimum fields required to make a request.
--
properties
    :: Properties
properties = Properties

instance FromJSON Properties where
        parseJSON
          = withObject "Properties" (\ o -> pure Properties)

instance ToJSON Properties where
        toJSON = const (Object mempty)

-- | The schema for the request.
--
-- /See:/ 'request'' smart constructor.
data Request = Request
    { _reqRef           :: !(Maybe Text)
    , _reqParameterName :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Request' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'reqRef'
--
-- * 'reqParameterName'
request'
    :: Request
request' =
    Request
    { _reqRef = Nothing
    , _reqParameterName = Nothing
    }

-- | Schema ID for the request schema.
reqRef :: Lens' Request (Maybe Text)
reqRef = lens _reqRef (\ s a -> s{_reqRef = a})

-- | parameter name.
reqParameterName :: Lens' Request (Maybe Text)
reqParameterName
  = lens _reqParameterName
      (\ s a -> s{_reqParameterName = a})

instance FromJSON Request where
        parseJSON
          = withObject "Request"
              (\ o ->
                 Request <$>
                   (o .:? "$ref") <*> (o .:? "parameterName"))

instance ToJSON Request where
        toJSON Request{..}
          = object
              (catMaybes
                 [("$ref" .=) <$> _reqRef,
                  ("parameterName" .=) <$> _reqParameterName])
