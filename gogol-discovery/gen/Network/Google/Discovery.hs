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
-- -- | Lets you discover information about other Google APIs, such as what APIs
-- are available, the resource and method details for each API.
--
-- /See:/ <https://developers.google.com/discovery/ APIs Discovery Service Reference>
module Network.Google.Discovery
    (
    -- * REST Resources

    -- ** APIs Discovery Service
      Discovery
    , discovery
    , discoveryURL

    -- ** discovery.apis.getRest
    , module Network.Google.API.Discovery.APIs.GetRest

    -- ** discovery.apis.list
    , module Network.Google.API.Discovery.APIs.List

    -- * Types

    -- ** RestDescriptionResources
    , RestDescriptionResources
    , restDescriptionResources

    -- ** RestDescriptionSchemas
    , RestDescriptionSchemas
    , restDescriptionSchemas

    -- ** RestDescriptionParameters
    , RestDescriptionParameters
    , restDescriptionParameters

    -- ** RestResource
    , RestResource
    , restResource
    , rrResources
    , rrMethods

    -- ** Alt
    , Alt (..)

    -- ** RestMethodRequest
    , RestMethodRequest
    , restMethodRequest
    , rmrRef
    , rmrParameterName

    -- ** RestDescriptionIcons
    , RestDescriptionIcons
    , restDescriptionIcons
    , rdiX16
    , rdiX32

    -- ** RestDescriptionOauth2Auth
    , RestDescriptionOauth2Auth
    , restDescriptionOauth2Auth
    , rdoaScopes

    -- ** RestResourceResources
    , RestResourceResources
    , restResourceResources

    -- ** JsonSchemaProperties
    , JsonSchemaProperties
    , jsonSchemaProperties

    -- ** DirectoryListItemItems
    , DirectoryListItemItems
    , directoryListItemItems
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
    , dliiDiscoveryRestUrl

    -- ** DirectoryListIconsItemItems
    , DirectoryListIconsItemItems
    , directoryListIconsItemItems
    , dliiiX16
    , dliiiX32

    -- ** DirectoryList
    , DirectoryList
    , directoryList
    , dlKind
    , dlItems
    , dlDiscoveryVersion

    -- ** RestMethodParameters
    , RestMethodParameters
    , restMethodParameters

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
    , rdBaseUrl
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
    , rdRootUrl
    , rdId
    , rdCanonicalName
    , rdLabels
    , rdDiscoveryVersion
    , rdTitle
    , rdRevision
    , rdDescription

    -- ** RestMethodProtocolsMediaUpload
    , RestMethodProtocolsMediaUpload
    , restMethodProtocolsMediaUpload
    , rmpmuSimple
    , rmpmuResumable

    -- ** RestDescriptionScopesOauth2Auth
    , RestDescriptionScopesOauth2Auth
    , restDescriptionScopesOauth2Auth

    -- ** JsonSchemaItemMapVariant
    , JsonSchemaItemMapVariant
    , jsonSchemaItemMapVariant
    , jsimvRef
    , jsimvTypeValue

    -- ** RestMethodResponse
    , RestMethodResponse
    , restMethodResponse
    , rRef

    -- ** RestMethod
    , RestMethod
    , restMethod
    , rmSupportsMediaDownload
    , rmParameterOrder
    , rmMediaUpload
    , rmHttpMethod
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

    -- ** RestDescriptionAuth
    , RestDescriptionAuth
    , restDescriptionAuth
    , rdaOauth2

    -- ** JsonSchemaVariant
    , JsonSchemaVariant
    , jsonSchemaVariant
    , jsvDiscriminant
    , jsvMap

    -- ** RestResourceMethods
    , RestResourceMethods
    , restResourceMethods

    -- ** RestMethodSimpleProtocolsMediaUpload
    , RestMethodSimpleProtocolsMediaUpload
    , restMethodSimpleProtocolsMediaUpload
    , rmspmuPath
    , rmspmuMultipart

    -- ** RestMethodResumableProtocolsMediaUpload
    , RestMethodResumableProtocolsMediaUpload
    , restMethodResumableProtocolsMediaUpload
    , rmrpmuPath
    , rmrpmuMultipart

    -- ** RestMethodMediaUpload
    , RestMethodMediaUpload
    , restMethodMediaUpload
    , rmmuProtocols
    , rmmuAccept
    , rmmuMaxSize

    -- ** JsonSchemaAnnotations
    , JsonSchemaAnnotations
    , jsonSchemaAnnotations
    , jsaRequired

    -- ** RestDescriptionMethods
    , RestDescriptionMethods
    , restDescriptionMethods

    -- ** JsonSchema
    , JsonSchema
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
    ) where

import           Network.Google.API.Discovery.APIs.GetRest
import           Network.Google.API.Discovery.APIs.List
import           Network.Google.Discovery.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type Discovery = APIsListAPI :<|> APIsGetRestAPI

discovery :: Proxy Discovery
discovery = Proxy
