{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
      discoveryURL

    -- * RestDescriptionResources
    , RestDescriptionResources
    , restDescriptionResources

    -- * RestDescriptionSchemas
    , RestDescriptionSchemas
    , restDescriptionSchemas

    -- * RestDescriptionParameters
    , RestDescriptionParameters
    , restDescriptionParameters

    -- * RestResource
    , RestResource
    , restResource
    , rrResources
    , rrMethods

    -- * Alt
    , Alt (..)

    -- * RestMethodRequest
    , RestMethodRequest
    , restMethodRequest
    , rmrRef
    , rmrParameterName

    -- * RestDescriptionIcons
    , RestDescriptionIcons
    , restDescriptionIcons
    , rdiX16
    , rdiX32

    -- * RestDescriptionOauth2Auth
    , RestDescriptionOauth2Auth
    , restDescriptionOauth2Auth
    , rdoaScopes

    -- * RestResourceResources
    , RestResourceResources
    , restResourceResources

    -- * JsonSchemaProperties
    , JsonSchemaProperties
    , jsonSchemaProperties

    -- * DirectoryListItemItems
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

    -- * DirectoryListIconsItemItems
    , DirectoryListIconsItemItems
    , directoryListIconsItemItems
    , dliiiX16
    , dliiiX32

    -- * DirectoryList
    , DirectoryList
    , directoryList
    , dlKind
    , dlItems
    , dlDiscoveryVersion

    -- * RestMethodParameters
    , RestMethodParameters
    , restMethodParameters

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

    -- * RestMethodProtocolsMediaUpload
    , RestMethodProtocolsMediaUpload
    , restMethodProtocolsMediaUpload
    , rmpmuSimple
    , rmpmuResumable

    -- * RestDescriptionScopesOauth2Auth
    , RestDescriptionScopesOauth2Auth
    , restDescriptionScopesOauth2Auth

    -- * JsonSchemaItemMapVariant
    , JsonSchemaItemMapVariant
    , jsonSchemaItemMapVariant
    , jsimvRef
    , jsimvTypeValue

    -- * RestMethodResponse
    , RestMethodResponse
    , restMethodResponse
    , rRef

    -- * RestMethod
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

    -- * RestDescriptionAuth
    , RestDescriptionAuth
    , restDescriptionAuth
    , rdaOauth2

    -- * JsonSchemaVariant
    , JsonSchemaVariant
    , jsonSchemaVariant
    , jsvDiscriminant
    , jsvMap

    -- * RestResourceMethods
    , RestResourceMethods
    , restResourceMethods

    -- * RestMethodSimpleProtocolsMediaUpload
    , RestMethodSimpleProtocolsMediaUpload
    , restMethodSimpleProtocolsMediaUpload
    , rmspmuPath
    , rmspmuMultipart

    -- * RestMethodResumableProtocolsMediaUpload
    , RestMethodResumableProtocolsMediaUpload
    , restMethodResumableProtocolsMediaUpload
    , rmrpmuPath
    , rmrpmuMultipart

    -- * RestMethodMediaUpload
    , RestMethodMediaUpload
    , restMethodMediaUpload
    , rmmuProtocols
    , rmmuAccept
    , rmmuMaxSize

    -- * JsonSchemaAnnotations
    , JsonSchemaAnnotations
    , jsonSchemaAnnotations
    , jsaRequired

    -- * RestDescriptionMethods
    , RestDescriptionMethods
    , restDescriptionMethods

    -- * JsonSchema
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

import           Network.Google.Discovery.Types.Product
import           Network.Google.Discovery.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v1' of the APIs Discovery Service.
discoveryURL :: BaseUrl
discoveryURL
  = BaseUrl Https
      "https://www.googleapis.com/discovery/v1/"
      443
