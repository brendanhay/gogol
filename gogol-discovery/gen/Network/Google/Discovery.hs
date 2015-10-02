{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Discovery
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lets you discover information about other Google APIs, such as what APIs
-- are available, the resource and method details for each API.
--
-- /See:/ <https://developers.google.com/discovery/ APIs Discovery Service Reference>
module Network.Google.Discovery
    (
    -- * API
      DiscoveryAPI
    , discoveryAPI
    , discoveryURL

    -- * Service Methods

    -- * REST Resources

    -- ** DiscoveryAPIsGetRest
    , module Network.Google.Resource.Discovery.APIs.GetRest

    -- ** DiscoveryAPIsList
    , module Network.Google.Resource.Discovery.APIs.List

    -- * Types

    -- ** RestMethodResponse
    , RestMethodResponse
    , restMethodResponse
    , rmrRef

    -- ** RestDescriptionParameters
    , RestDescriptionParameters
    , restDescriptionParameters

    -- ** RestMethod
    , RestMethod
    , restMethod
    , rmSupportsMediaDownload
    , rmParameterOrder
    , rmMediaUpload
    , rmHTTPMethod
    , rmPath
    , rmResponse
    , rmSupportsMediaUpload
    , rmScopes
    , rmSupportsSubscription
    , rmParameters
    , rmId
    , rmEtagRequired
    , rmUseMediaDownloadService
    , rmDescription
    , rmRequest

    -- ** RestDescriptionMethods
    , RestDescriptionMethods
    , restDescriptionMethods

    -- ** JSONSchemaVariantMap
    , JSONSchemaVariantMap
    , jSONSchemaVariantMap
    , jsvmRef
    , jsvmTypeValue

    -- ** RestResource
    , RestResource
    , restResource
    , rrResources
    , rrMethods

    -- ** RestDescriptionAuthOAuth2Scopes
    , RestDescriptionAuthOAuth2Scopes
    , restDescriptionAuthOAuth2Scopes

    -- ** DirectoryListItemsIcons
    , DirectoryListItemsIcons
    , directoryListItemsIcons
    , dliiX16
    , dliiX32

    -- ** RestResourceResources
    , RestResourceResources
    , restResourceResources

    -- ** RestMethodMediaUploadProtocolsSimple
    , RestMethodMediaUploadProtocolsSimple
    , restMethodMediaUploadProtocolsSimple
    , rmmupsPath
    , rmmupsMultiPart

    -- ** RestDescriptionAuthOAuth2
    , RestDescriptionAuthOAuth2
    , restDescriptionAuthOAuth2
    , rdaoaScopes

    -- ** RestResourceMethods
    , RestResourceMethods
    , restResourceMethods

    -- ** JSONSchemaVariant
    , JSONSchemaVariant
    , jSONSchemaVariant
    , jsvDiscriminant
    , jsvMap

    -- ** RestDescriptionAuth
    , RestDescriptionAuth
    , restDescriptionAuth
    , rdaOAuth2

    -- ** RestDescriptionIcons
    , RestDescriptionIcons
    , restDescriptionIcons
    , rdiX16
    , rdiX32

    -- ** RestDescription
    , RestDescription
    , restDescription
    , rdEtag
    , rdSchemas
    , rdServicePath
    , rdBasePath
    , rdKind
    , rdExponentialBackoffDefault
    , rdAuth
    , rdIcons
    , rdBaseURL
    , rdProtocol
    , rdOwnerName
    , rdResources
    , rdOwnerDomain
    , rdBatchPath
    , rdMethods
    , rdName
    , rdPackagePath
    , rdFeatures
    , rdVersion
    , rdParameters
    , rdDocumentationLink
    , rdRootURL
    , rdId
    , rdCanonicalName
    , rdLabels
    , rdDiscoveryVersion
    , rdTitle
    , rdRevision
    , rdDescription

    -- ** JSONSchema
    , JSONSchema
    , jSONSchema
    , jsAnnotations
    , jsVariant
    , jsLocation
    , jsRef
    , jsPattern
    , jsMaximum
    , jsDefault
    , jsFormat
    , jsItems
    , jsMinimum
    , jsRequired
    , jsId
    , jsAdditionalProperties
    , jsType
    , jsEnum
    , jsRepeated
    , jsReadOnly
    , jsEnumDescriptions
    , jsDescription
    , jsProperties

    -- ** RestDescriptionSchemas
    , RestDescriptionSchemas
    , restDescriptionSchemas

    -- ** RestDescriptionResources
    , RestDescriptionResources
    , restDescriptionResources

    -- ** RestMethodMediaUploadProtocols
    , RestMethodMediaUploadProtocols
    , restMethodMediaUploadProtocols
    , rmmupSimple
    , rmmupResumable

    -- ** RestMethodParameters
    , RestMethodParameters
    , restMethodParameters

    -- ** DirectoryListItems
    , DirectoryListItems
    , directoryListItems
    , dliDiscoveryLink
    , dliPreferred
    , dliKind
    , dliIcons
    , dliName
    , dliVersion
    , dliDocumentationLink
    , dliId
    , dliLabels
    , dliTitle
    , dliDescription
    , dliDiscoveryRestURL

    -- ** JSONSchemaAnnotations
    , JSONSchemaAnnotations
    , jSONSchemaAnnotations
    , jsaRequired

    -- ** JSONSchemaProperties
    , JSONSchemaProperties
    , jSONSchemaProperties

    -- ** RestMethodMediaUpload
    , RestMethodMediaUpload
    , restMethodMediaUpload
    , rmmuProtocols
    , rmmuAccept
    , rmmuMaxSize

    -- ** DirectoryList
    , DirectoryList
    , directoryList
    , dlKind
    , dlItems
    , dlDiscoveryVersion

    -- ** RestMethodMediaUploadProtocolsResumable
    , RestMethodMediaUploadProtocolsResumable
    , restMethodMediaUploadProtocolsResumable
    , rmmuprPath
    , rmmuprMultiPart

    -- ** RestMethodRequest
    , RestMethodRequest
    , restMethodRequest
    , rRef
    , rParameterName
    ) where

import           Network.Google.Discovery.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Discovery.APIs.GetRest
import           Network.Google.Resource.Discovery.APIs.List

{- $resources
TODO
-}

type DiscoveryAPI =
     APIsListResource :<|> APIsGetRestResource

discoveryAPI :: Proxy DiscoveryAPI
discoveryAPI = Proxy
