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

    -- * Annotations
    , Annotations
    , annotations
    , aRequired

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

    -- * Variant
    , Variant
    , variant
    , vDiscriminant
    , vMap

    -- * MediaUpload
    , MediaUpload
    , mediaUpload
    , muProtocols
    , muAccept
    , muMaxSize

    -- * RestDescriptionMethods
    , RestDescriptionMethods
    , restDescriptionMethods

    -- * RestResource
    , RestResource
    , restResource
    , rrResources
    , rrMethods

    -- * Schemas
    , Schemas
    , schemas

    -- * Protocols
    , Protocols
    , protocols
    , pSimple
    , pResumable

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

    -- * Auth
    , Auth
    , auth
    , aOAuth2

    -- * Icons
    , Icons
    , icons
    , iX16
    , iX32

    -- * DirectoryListItemsItemIcons
    , DirectoryListItemsItemIcons
    , directoryListItemsItemIcons
    , dliiiX16
    , dliiiX32

    -- * Response
    , Response
    , response
    , rRef

    -- * Simple
    , Simple
    , simple
    , sPath
    , sMultiPart

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

    -- * Resumable
    , Resumable
    , resumable
    , rPath
    , rMultiPart

    -- * Resources
    , Resources
    , resources

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

    -- * MapItem
    , MapItem
    , mapItem
    , miRef
    , miTypeValue

    -- * Methods
    , Methods
    , methods

    -- * OAuth2Scopes
    , OAuth2Scopes
    , oAuth2Scopes

    -- * RestDescriptionResources
    , RestDescriptionResources
    , restDescriptionResources

    -- * Parameters
    , Parameters
    , parameters

    -- * OAuth2
    , OAuth2
    , oAuth2
    , oaScopes

    -- * DirectoryList
    , DirectoryList
    , directoryList
    , dlKind
    , dlItems
    , dlDiscoveryVersion

    -- * Properties
    , Properties
    , properties

    -- * Request
    , Request
    , request'
    , reqRef
    , reqParameterName
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
