{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.FirebaseHosting.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.FirebaseHosting.Types
    (
    -- * Service Configuration
      firebaseHostingService

    -- * OAuth Scopes
    , firebaseScope
    , cloudPlatformReadOnlyScope
    , cloudPlatformScope
    , firebaseReadOnlyScope

    -- * DomainStatus
    , DomainStatus (..)

    -- * DomainProvisioningDNSStatus
    , DomainProvisioningDNSStatus (..)

    -- * VersionLabels
    , VersionLabels
    , versionLabels
    , vlAddtional

    -- * PopulateVersionFilesResponse
    , PopulateVersionFilesResponse
    , populateVersionFilesResponse
    , pvfrUploadURL
    , pvfrUploadRequiredHashes

    -- * DomainRedirectType
    , DomainRedirectType (..)

    -- * CertDNSChallenge
    , CertDNSChallenge
    , certDNSChallenge
    , cdcToken
    , cdcDomainName

    -- * Empty
    , Empty
    , empty

    -- * PopulateVersionFilesRequest
    , PopulateVersionFilesRequest
    , populateVersionFilesRequest
    , pvfrFiles

    -- * ServingConfigAppAssociation
    , ServingConfigAppAssociation (..)

    -- * ServingConfig
    , ServingConfig
    , servingConfig
    , scCleanURLs
    , scAppAssociation
    , scRewrites
    , scRedirects
    , scHeaders
    , scTrailingSlashBehavior

    -- * Domain
    , Domain
    , domain
    , dStatus
    , dProvisioning
    , dUpdateTime
    , dDomainName
    , dDomainRedirect
    , dSite

    -- * ListReleasesResponse
    , ListReleasesResponse
    , listReleasesResponse
    , lrrNextPageToken
    , lrrReleases

    -- * VersionStatus
    , VersionStatus (..)

    -- * DomainProvisioning
    , DomainProvisioning
    , domainProvisioning
    , dpExpectedIPs
    , dpCertChallengeDNS
    , dpDNSFetchTime
    , dpCertStatus
    , dpDNSStatus
    , dpDiscoveredIPs
    , dpCertChallengeHTTP
    , dpCertChallengeDiscoveredTxt

    -- * Release
    , Release
    , release
    , rReleaseTime
    , rReleaseUser
    , rName
    , rVersion
    , rType
    , rMessage

    -- * VersionFile
    , VersionFile
    , versionFile
    , vfStatus
    , vfHash
    , vfPath

    -- * Header
    , Header
    , header
    , hHeaders
    , hGlob

    -- * ActingUser
    , ActingUser
    , actingUser
    , auEmail
    , auImageURL

    -- * Version
    , Version
    , version
    , vStatus
    , vFinalizeTime
    , vConfig
    , vFileCount
    , vFinalizeUser
    , vVersionBytes
    , vDeleteTime
    , vName
    , vLabels
    , vCreateUser
    , vDeleteUser
    , vCreateTime

    -- * ListDomainsResponse
    , ListDomainsResponse
    , listDomainsResponse
    , ldrNextPageToken
    , ldrDomains

    -- * Xgafv
    , Xgafv (..)

    -- * Redirect
    , Redirect
    , redirect
    , rLocation
    , rGlob
    , rStatusCode

    -- * CloudRunRewrite
    , CloudRunRewrite
    , cloudRunRewrite
    , crrServiceId
    , crrRegion

    -- * DomainRedirect
    , DomainRedirect
    , domainRedirect
    , drDomainName
    , drType

    -- * Rewrite
    , Rewrite
    , rewrite
    , rewFunction
    , rewPath
    , rewRun
    , rewGlob
    , rewDynamicLinks

    -- * DomainProvisioningCertStatus
    , DomainProvisioningCertStatus (..)

    -- * PopulateVersionFilesRequestFiles
    , PopulateVersionFilesRequestFiles
    , populateVersionFilesRequestFiles
    , pvfrfAddtional

    -- * VersionFileStatus
    , VersionFileStatus (..)

    -- * HeaderHeaders
    , HeaderHeaders
    , headerHeaders
    , hhAddtional

    -- * CertHTTPChallenge
    , CertHTTPChallenge
    , certHTTPChallenge
    , chttpcPath
    , chttpcToken

    -- * ServingConfigTrailingSlashBehavior
    , ServingConfigTrailingSlashBehavior (..)

    -- * ListVersionFilesResponse
    , ListVersionFilesResponse
    , listVersionFilesResponse
    , lvfrNextPageToken
    , lvfrFiles

    -- * ReleaseType
    , ReleaseType (..)

    -- * SiteConfig
    , SiteConfig
    , siteConfig
    , scMaxVersions
    ) where

import           Network.Google.FirebaseHosting.Types.Product
import           Network.Google.FirebaseHosting.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1beta1' of the Firebase Hosting API. This contains the host and root path used as a starting point for constructing service requests.
firebaseHostingService :: ServiceConfig
firebaseHostingService
  = defaultService
      (ServiceId "firebasehosting:v1beta1")
      "firebasehosting.googleapis.com"

-- | View and administer all your Firebase data and settings
firebaseScope :: Proxy '["https://www.googleapis.com/auth/firebase"]
firebaseScope = Proxy

-- | View your data across Google Cloud Platform services
cloudPlatformReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform.read-only"]
cloudPlatformReadOnlyScope = Proxy

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy

-- | View all your Firebase data and settings
firebaseReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/firebase.readonly"]
firebaseReadOnlyScope = Proxy
