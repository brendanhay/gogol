{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Discovery.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Discovery.Types
    (
    -- * Service URL
      discoveryRequest

    -- * RestMethodResponse
    , RestMethodResponse
    , restMethodResponse
    , rmrRef

    -- * RestDescriptionParameters
    , RestDescriptionParameters
    , restDescriptionParameters

    -- * RestMethod
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

    -- * RestResource
    , RestResource
    , restResource
    , rrResources
    , rrMethods

    -- * RestDescriptionAuthOAuth2Scopes
    , RestDescriptionAuthOAuth2Scopes
    , restDescriptionAuthOAuth2Scopes

    -- * RestDescriptionMethods
    , RestDescriptionMethods
    , restDescriptionMethods

    -- * DirectoryListItemsItem
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

    -- * DirectoryListItemsItemIcons
    , DirectoryListItemsItemIcons
    , directoryListItemsItemIcons
    , dliiiX16
    , dliiiX32

    -- * RestResourceResources
    , RestResourceResources
    , restResourceResources

    -- * RestDescriptionAuthOAuth2
    , RestDescriptionAuthOAuth2
    , restDescriptionAuthOAuth2
    , rdaoaScopes

    -- * RestMethodMediaUploadProtocolsSimple
    , RestMethodMediaUploadProtocolsSimple
    , restMethodMediaUploadProtocolsSimple
    , rmmupsPath
    , rmmupsMultiPart

    -- * RestDescriptionIcons
    , RestDescriptionIcons
    , restDescriptionIcons
    , rdiX16
    , rdiX32

    -- * JSONSchemaVariant
    , JSONSchemaVariant
    , jsonSchemaVariant
    , jsvDiscriminant
    , jsvMap

    -- * RestResourceMethods
    , RestResourceMethods
    , restResourceMethods

    -- * RestDescriptionAuth
    , RestDescriptionAuth
    , restDescriptionAuth
    , rdaOAuth2

    -- * RestDescription
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

    -- * JSONSchema
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

    -- * RestDescriptionSchemas
    , RestDescriptionSchemas
    , restDescriptionSchemas

    -- * JSONSchemaVariantMapItem
    , JSONSchemaVariantMapItem
    , jsonSchemaVariantMapItem
    , jsvmiRef
    , jsvmiTypeValue

    -- * RestDescriptionResources
    , RestDescriptionResources
    , restDescriptionResources

    -- * RestMethodMediaUploadProtocols
    , RestMethodMediaUploadProtocols
    , restMethodMediaUploadProtocols
    , rmmupSimple
    , rmmupResumable

    -- * JSONSchemaAnnotations
    , JSONSchemaAnnotations
    , jsonSchemaAnnotations
    , jsaRequired

    -- * RestMethodParameters
    , RestMethodParameters
    , restMethodParameters

    -- * RestMethodMediaUpload
    , RestMethodMediaUpload
    , restMethodMediaUpload
    , rmmuProtocols
    , rmmuAccept
    , rmmuMaxSize

    -- * JSONSchemaProperties
    , JSONSchemaProperties
    , jsonSchemaProperties

    -- * RestMethodMediaUploadProtocolsResumable
    , RestMethodMediaUploadProtocolsResumable
    , restMethodMediaUploadProtocolsResumable
    , rmmuprPath
    , rmmuprMultiPart

    -- * DirectoryList
    , DirectoryList
    , directoryList
    , dlKind
    , dlItems
    , dlDiscoveryVersion

    -- * RestMethodRequest
    , RestMethodRequest
    , restMethodRequest
    , rRef
    , rParameterName
    ) where

import           Network.Google.Discovery.Types.Product
import           Network.Google.Discovery.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the APIs Discovery Service.
discoveryRequest :: RequestBuilder
discoveryRequest
  = defaultRequest "https://www.googleapis.com/"
      "discovery/v1/"
