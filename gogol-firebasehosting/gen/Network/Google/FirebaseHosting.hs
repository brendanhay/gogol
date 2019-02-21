{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.FirebaseHosting
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Firebase Hosting REST API enables programmatic and customizable
-- deployments to your Firebase-hosted sites. Use this REST API to deploy
-- new or updated hosting configurations and content files.
--
-- /See:/ <https://firebase.google.com/docs/hosting/ Firebase Hosting API Reference>
module Network.Google.FirebaseHosting
    (
    -- * Service Configuration
      firebaseHostingService

    -- * OAuth Scopes
    , firebaseScope
    , cloudPlatformReadOnlyScope
    , cloudPlatformScope
    , firebaseReadOnlyScope

    -- * API Declaration
    , FirebaseHostingAPI

    -- * Resources

    -- ** firebasehosting.sites.domains.create
    , module Network.Google.Resource.FirebaseHosting.Sites.Domains.Create

    -- ** firebasehosting.sites.domains.delete
    , module Network.Google.Resource.FirebaseHosting.Sites.Domains.Delete

    -- ** firebasehosting.sites.domains.get
    , module Network.Google.Resource.FirebaseHosting.Sites.Domains.Get

    -- ** firebasehosting.sites.domains.list
    , module Network.Google.Resource.FirebaseHosting.Sites.Domains.List

    -- ** firebasehosting.sites.domains.update
    , module Network.Google.Resource.FirebaseHosting.Sites.Domains.Update

    -- ** firebasehosting.sites.getConfig
    , module Network.Google.Resource.FirebaseHosting.Sites.GetConfig

    -- ** firebasehosting.sites.releases.create
    , module Network.Google.Resource.FirebaseHosting.Sites.Releases.Create

    -- ** firebasehosting.sites.releases.list
    , module Network.Google.Resource.FirebaseHosting.Sites.Releases.List

    -- ** firebasehosting.sites.updateConfig
    , module Network.Google.Resource.FirebaseHosting.Sites.UpdateConfig

    -- ** firebasehosting.sites.versions.create
    , module Network.Google.Resource.FirebaseHosting.Sites.Versions.Create

    -- ** firebasehosting.sites.versions.delete
    , module Network.Google.Resource.FirebaseHosting.Sites.Versions.Delete

    -- ** firebasehosting.sites.versions.files.list
    , module Network.Google.Resource.FirebaseHosting.Sites.Versions.Files.List

    -- ** firebasehosting.sites.versions.patch
    , module Network.Google.Resource.FirebaseHosting.Sites.Versions.Patch

    -- ** firebasehosting.sites.versions.populateFiles
    , module Network.Google.Resource.FirebaseHosting.Sites.Versions.PopulateFiles

    -- * Types

    -- ** DomainStatus
    , DomainStatus (..)

    -- ** DomainProvisioningDNSStatus
    , DomainProvisioningDNSStatus (..)

    -- ** VersionLabels
    , VersionLabels
    , versionLabels
    , vlAddtional

    -- ** PopulateVersionFilesResponse
    , PopulateVersionFilesResponse
    , populateVersionFilesResponse
    , pvfrUploadURL
    , pvfrUploadRequiredHashes

    -- ** DomainRedirectType
    , DomainRedirectType (..)

    -- ** CertDNSChallenge
    , CertDNSChallenge
    , certDNSChallenge
    , cdcToken
    , cdcDomainName

    -- ** Empty
    , Empty
    , empty

    -- ** PopulateVersionFilesRequest
    , PopulateVersionFilesRequest
    , populateVersionFilesRequest
    , pvfrFiles

    -- ** ServingConfigAppAssociation
    , ServingConfigAppAssociation (..)

    -- ** ServingConfig
    , ServingConfig
    , servingConfig
    , scCleanURLs
    , scAppAssociation
    , scRewrites
    , scRedirects
    , scHeaders
    , scTrailingSlashBehavior

    -- ** Domain
    , Domain
    , domain
    , dStatus
    , dProvisioning
    , dUpdateTime
    , dDomainName
    , dDomainRedirect
    , dSite

    -- ** ListReleasesResponse
    , ListReleasesResponse
    , listReleasesResponse
    , lrrNextPageToken
    , lrrReleases

    -- ** VersionStatus
    , VersionStatus (..)

    -- ** DomainProvisioning
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

    -- ** Release
    , Release
    , release
    , rReleaseTime
    , rReleaseUser
    , rName
    , rVersion
    , rType
    , rMessage

    -- ** VersionFile
    , VersionFile
    , versionFile
    , vfStatus
    , vfHash
    , vfPath

    -- ** Header
    , Header
    , header
    , hHeaders
    , hGlob

    -- ** ActingUser
    , ActingUser
    , actingUser
    , auEmail
    , auImageURL

    -- ** Version
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

    -- ** ListDomainsResponse
    , ListDomainsResponse
    , listDomainsResponse
    , ldrNextPageToken
    , ldrDomains

    -- ** Xgafv
    , Xgafv (..)

    -- ** Redirect
    , Redirect
    , redirect
    , rLocation
    , rGlob
    , rStatusCode

    -- ** CloudRunRewrite
    , CloudRunRewrite
    , cloudRunRewrite
    , crrServiceId
    , crrRegion

    -- ** DomainRedirect
    , DomainRedirect
    , domainRedirect
    , drDomainName
    , drType

    -- ** Rewrite
    , Rewrite
    , rewrite
    , rewFunction
    , rewPath
    , rewRun
    , rewGlob
    , rewDynamicLinks

    -- ** DomainProvisioningCertStatus
    , DomainProvisioningCertStatus (..)

    -- ** PopulateVersionFilesRequestFiles
    , PopulateVersionFilesRequestFiles
    , populateVersionFilesRequestFiles
    , pvfrfAddtional

    -- ** VersionFileStatus
    , VersionFileStatus (..)

    -- ** HeaderHeaders
    , HeaderHeaders
    , headerHeaders
    , hhAddtional

    -- ** CertHTTPChallenge
    , CertHTTPChallenge
    , certHTTPChallenge
    , chttpcPath
    , chttpcToken

    -- ** ServingConfigTrailingSlashBehavior
    , ServingConfigTrailingSlashBehavior (..)

    -- ** ListVersionFilesResponse
    , ListVersionFilesResponse
    , listVersionFilesResponse
    , lvfrNextPageToken
    , lvfrFiles

    -- ** ReleaseType
    , ReleaseType (..)

    -- ** SiteConfig
    , SiteConfig
    , siteConfig
    , scMaxVersions
    ) where

import           Network.Google.FirebaseHosting.Types
import           Network.Google.Prelude
import           Network.Google.Resource.FirebaseHosting.Sites.Domains.Create
import           Network.Google.Resource.FirebaseHosting.Sites.Domains.Delete
import           Network.Google.Resource.FirebaseHosting.Sites.Domains.Get
import           Network.Google.Resource.FirebaseHosting.Sites.Domains.List
import           Network.Google.Resource.FirebaseHosting.Sites.Domains.Update
import           Network.Google.Resource.FirebaseHosting.Sites.GetConfig
import           Network.Google.Resource.FirebaseHosting.Sites.Releases.Create
import           Network.Google.Resource.FirebaseHosting.Sites.Releases.List
import           Network.Google.Resource.FirebaseHosting.Sites.UpdateConfig
import           Network.Google.Resource.FirebaseHosting.Sites.Versions.Create
import           Network.Google.Resource.FirebaseHosting.Sites.Versions.Delete
import           Network.Google.Resource.FirebaseHosting.Sites.Versions.Files.List
import           Network.Google.Resource.FirebaseHosting.Sites.Versions.Patch
import           Network.Google.Resource.FirebaseHosting.Sites.Versions.PopulateFiles

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Firebase Hosting API service.
type FirebaseHostingAPI =
     SitesReleasesListResource :<|>
       SitesReleasesCreateResource
       :<|> SitesVersionsFilesListResource
       :<|> SitesVersionsPatchResource
       :<|> SitesVersionsCreateResource
       :<|> SitesVersionsPopulateFilesResource
       :<|> SitesVersionsDeleteResource
       :<|> SitesDomainsListResource
       :<|> SitesDomainsGetResource
       :<|> SitesDomainsCreateResource
       :<|> SitesDomainsDeleteResource
       :<|> SitesDomainsUpdateResource
       :<|> SitesGetConfigResource
       :<|> SitesUpdateConfigResource
