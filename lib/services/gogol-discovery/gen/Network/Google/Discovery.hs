{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Discovery
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides information about other Google APIs, such as what APIs are
-- available, the resource, and method details for each API.
--
-- /See:/ <https://developers.google.com/discovery/ API Discovery Service Reference>
module Network.Google.Discovery
    (
    -- * Service Configuration
      discoveryService

    -- * API Declaration
    , DiscoveryAPI

    -- * Resources

    -- ** discovery.apis.getRest
    , module Network.Google.Resource.Discovery.APIs.GetRest

    -- ** discovery.apis.list
    , module Network.Google.Resource.Discovery.APIs.List

    -- * Types

    -- ** RestMethodResponse
    , RestMethodResponse
    , restMethodResponse
    , rmrRef

    -- ** RestDescriptionParameters
    , RestDescriptionParameters
    , restDescriptionParameters
    , rdpAddtional

    -- ** RestMethod
    , RestMethod
    , restMethod
    , rmSupportsMediaDownload
    , rmParameterOrder
    , rmMediaUpload
    , rmHTTPMethod
    , rmFlatPath
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

    -- ** RestResource
    , RestResource
    , restResource
    , rrResources
    , rrMethods

    -- ** RestDescriptionAuthOAuth2Scopes
    , RestDescriptionAuthOAuth2Scopes
    , restDescriptionAuthOAuth2Scopes
    , rdaoasAddtional

    -- ** RestDescriptionMethods
    , RestDescriptionMethods
    , restDescriptionMethods
    , rdmAddtional

    -- ** DirectoryListItemsItem
    , DirectoryListItemsItem
    , directoryListItemsItem
    , dliiDiscoveryLink
    , dliiPreferred
    , dliiKind
    , dliiIcons
    , dliiName
    , dliiVersion
    , dliiDocumentationLink
    , dliiId
    , dliiLabels
    , dliiTitle
    , dliiDescription
    , dliiDiscoveryRestURL

    -- ** DirectoryListItemsItemIcons
    , DirectoryListItemsItemIcons
    , directoryListItemsItemIcons
    , dliiiX16
    , dliiiX32

    -- ** RestResourceResources
    , RestResourceResources
    , restResourceResources
    , rrrAddtional

    -- ** RestDescriptionAuthOAuth2
    , RestDescriptionAuthOAuth2
    , restDescriptionAuthOAuth2
    , rdaoaScopes

    -- ** RestDescriptionAuthOAuth2ScopesAdditional
    , RestDescriptionAuthOAuth2ScopesAdditional
    , restDescriptionAuthOAuth2ScopesAdditional
    , rdaoasaDescription

    -- ** RestMethodMediaUploadProtocolsSimple
    , RestMethodMediaUploadProtocolsSimple
    , restMethodMediaUploadProtocolsSimple
    , rmmupsPath
    , rmmupsMultiPart

    -- ** RestDescriptionIcons
    , RestDescriptionIcons
    , restDescriptionIcons
    , rdiX16
    , rdiX32

    -- ** JSONSchemaVariant
    , JSONSchemaVariant
    , jsonSchemaVariant
    , jsvDiscriminant
    , jsvMap

    -- ** RestResourceMethods
    , RestResourceMethods
    , restResourceMethods
    , rrmAddtional

    -- ** RestDescriptionAuth
    , RestDescriptionAuth
    , restDescriptionAuth
    , rdaOAuth2

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
    , rdVersionModule
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
    , jsonSchema
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
    , rdsAddtional

    -- ** JSONSchemaVariantMapItem
    , JSONSchemaVariantMapItem
    , jsonSchemaVariantMapItem
    , jsvmiRef
    , jsvmiTypeValue

    -- ** RestDescriptionResources
    , RestDescriptionResources
    , restDescriptionResources
    , rdrAddtional

    -- ** RestMethodMediaUploadProtocols
    , RestMethodMediaUploadProtocols
    , restMethodMediaUploadProtocols
    , rmmupSimple
    , rmmupResumable

    -- ** JSONSchemaAnnotations
    , JSONSchemaAnnotations
    , jsonSchemaAnnotations
    , jsaRequired

    -- ** RestMethodParameters
    , RestMethodParameters
    , restMethodParameters
    , rmpAddtional

    -- ** RestMethodMediaUpload
    , RestMethodMediaUpload
    , restMethodMediaUpload
    , rmmuProtocols
    , rmmuAccept
    , rmmuMaxSize

    -- ** JSONSchemaProperties
    , JSONSchemaProperties
    , jsonSchemaProperties
    , jspAddtional

    -- ** RestMethodMediaUploadProtocolsResumable
    , RestMethodMediaUploadProtocolsResumable
    , restMethodMediaUploadProtocolsResumable
    , rmmuprPath
    , rmmuprMultiPart

    -- ** DirectoryList
    , DirectoryList
    , directoryList
    , dlKind
    , dlItems
    , dlDiscoveryVersion

    -- ** RestMethodRequest
    , RestMethodRequest
    , restMethodRequest
    , rRef
    , rParameterName
    ) where

import Network.Google.Prelude
import Network.Google.Discovery.Types
import Network.Google.Resource.Discovery.APIs.GetRest
import Network.Google.Resource.Discovery.APIs.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the API Discovery Service service.
type DiscoveryAPI =
     APIsListResource :<|> APIsGetRestResource
