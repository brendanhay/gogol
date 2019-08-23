{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.FirebaseHosting.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.FirebaseHosting.Types.Product where

import           Network.Google.FirebaseHosting.Types.Sum
import           Network.Google.Prelude

-- | The labels used for extra metadata and\/or filtering.
--
-- /See:/ 'versionLabels' smart constructor.
newtype VersionLabels =
  VersionLabels'
    { _vlAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VersionLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vlAddtional'
versionLabels
    :: HashMap Text Text -- ^ 'vlAddtional'
    -> VersionLabels
versionLabels pVlAddtional_ =
  VersionLabels' {_vlAddtional = _Coerce # pVlAddtional_}


vlAddtional :: Lens' VersionLabels (HashMap Text Text)
vlAddtional
  = lens _vlAddtional (\ s a -> s{_vlAddtional = a}) .
      _Coerce

instance FromJSON VersionLabels where
        parseJSON
          = withObject "VersionLabels"
              (\ o -> VersionLabels' <$> (parseJSONObject o))

instance ToJSON VersionLabels where
        toJSON = toJSON . _vlAddtional

--
-- /See:/ 'populateVersionFilesResponse' smart constructor.
data PopulateVersionFilesResponse =
  PopulateVersionFilesResponse'
    { _pvfrUploadURL            :: !(Maybe Text)
    , _pvfrUploadRequiredHashes :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PopulateVersionFilesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pvfrUploadURL'
--
-- * 'pvfrUploadRequiredHashes'
populateVersionFilesResponse
    :: PopulateVersionFilesResponse
populateVersionFilesResponse =
  PopulateVersionFilesResponse'
    {_pvfrUploadURL = Nothing, _pvfrUploadRequiredHashes = Nothing}


-- | The URL to which the files should be uploaded, in the format:
-- \"https:\/\/upload-firebasehosting.googleapis.com\/upload\/sites\/site-name\/versions\/versionID\/files\".
-- Perform a multipart \`POST\` of the Gzipped file contents to the URL
-- using a forward slash and the hash of the file appended to the end.
pvfrUploadURL :: Lens' PopulateVersionFilesResponse (Maybe Text)
pvfrUploadURL
  = lens _pvfrUploadURL
      (\ s a -> s{_pvfrUploadURL = a})

-- | The content hashes of the specified files that need to be uploaded to
-- the specified endpoint.
pvfrUploadRequiredHashes :: Lens' PopulateVersionFilesResponse [Text]
pvfrUploadRequiredHashes
  = lens _pvfrUploadRequiredHashes
      (\ s a -> s{_pvfrUploadRequiredHashes = a})
      . _Default
      . _Coerce

instance FromJSON PopulateVersionFilesResponse where
        parseJSON
          = withObject "PopulateVersionFilesResponse"
              (\ o ->
                 PopulateVersionFilesResponse' <$>
                   (o .:? "uploadUrl") <*>
                     (o .:? "uploadRequiredHashes" .!= mempty))

instance ToJSON PopulateVersionFilesResponse where
        toJSON PopulateVersionFilesResponse'{..}
          = object
              (catMaybes
                 [("uploadUrl" .=) <$> _pvfrUploadURL,
                  ("uploadRequiredHashes" .=) <$>
                    _pvfrUploadRequiredHashes])

-- | Represents a DNS certificate challenge.
--
-- /See:/ 'certDNSChallenge' smart constructor.
data CertDNSChallenge =
  CertDNSChallenge'
    { _cdcToken      :: !(Maybe Text)
    , _cdcDomainName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CertDNSChallenge' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdcToken'
--
-- * 'cdcDomainName'
certDNSChallenge
    :: CertDNSChallenge
certDNSChallenge =
  CertDNSChallenge' {_cdcToken = Nothing, _cdcDomainName = Nothing}


-- | The value that must be present as a TXT record on the domain name to
-- satisfy the challenge.
cdcToken :: Lens' CertDNSChallenge (Maybe Text)
cdcToken = lens _cdcToken (\ s a -> s{_cdcToken = a})

-- | The domain name upon which the DNS challenge must be satisfied.
cdcDomainName :: Lens' CertDNSChallenge (Maybe Text)
cdcDomainName
  = lens _cdcDomainName
      (\ s a -> s{_cdcDomainName = a})

instance FromJSON CertDNSChallenge where
        parseJSON
          = withObject "CertDNSChallenge"
              (\ o ->
                 CertDNSChallenge' <$>
                   (o .:? "token") <*> (o .:? "domainName"))

instance ToJSON CertDNSChallenge where
        toJSON CertDNSChallenge'{..}
          = object
              (catMaybes
                 [("token" .=) <$> _cdcToken,
                  ("domainName" .=) <$> _cdcDomainName])

-- | A generic empty message that you can re-use to avoid defining duplicated
-- empty messages in your APIs. A typical example is to use it as the
-- request or the response type of an API method. For instance: service Foo
-- { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The
-- JSON representation for \`Empty\` is empty JSON object \`{}\`.
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

--
-- /See:/ 'populateVersionFilesRequest' smart constructor.
newtype PopulateVersionFilesRequest =
  PopulateVersionFilesRequest'
    { _pvfrFiles :: Maybe PopulateVersionFilesRequestFiles
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PopulateVersionFilesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pvfrFiles'
populateVersionFilesRequest
    :: PopulateVersionFilesRequest
populateVersionFilesRequest =
  PopulateVersionFilesRequest' {_pvfrFiles = Nothing}


-- | A set of file paths to the hashes corresponding to assets that should be
-- added to the version. Note that a file path to an empty hash will remove
-- the path from the version. Calculate a hash by Gzipping the file then
-- taking the SHA256 hash of the newly compressed file.
pvfrFiles :: Lens' PopulateVersionFilesRequest (Maybe PopulateVersionFilesRequestFiles)
pvfrFiles
  = lens _pvfrFiles (\ s a -> s{_pvfrFiles = a})

instance FromJSON PopulateVersionFilesRequest where
        parseJSON
          = withObject "PopulateVersionFilesRequest"
              (\ o ->
                 PopulateVersionFilesRequest' <$> (o .:? "files"))

instance ToJSON PopulateVersionFilesRequest where
        toJSON PopulateVersionFilesRequest'{..}
          = object (catMaybes [("files" .=) <$> _pvfrFiles])

-- | The configuration for how incoming requests to a site should be routed
-- and processed before serving content. The patterns are matched and
-- applied according to a specific [priority
-- order](\/docs\/hosting\/full-config#hosting_priority_order).
--
-- /See:/ 'servingConfig' smart constructor.
data ServingConfig =
  ServingConfig'
    { _scCleanURLs             :: !(Maybe Bool)
    , _scAppAssociation        :: !(Maybe ServingConfigAppAssociation)
    , _scRewrites              :: !(Maybe [Rewrite])
    , _scRedirects             :: !(Maybe [Redirect])
    , _scHeaders               :: !(Maybe [Header])
    , _scTrailingSlashBehavior :: !(Maybe ServingConfigTrailingSlashBehavior)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServingConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scCleanURLs'
--
-- * 'scAppAssociation'
--
-- * 'scRewrites'
--
-- * 'scRedirects'
--
-- * 'scHeaders'
--
-- * 'scTrailingSlashBehavior'
servingConfig
    :: ServingConfig
servingConfig =
  ServingConfig'
    { _scCleanURLs = Nothing
    , _scAppAssociation = Nothing
    , _scRewrites = Nothing
    , _scRedirects = Nothing
    , _scHeaders = Nothing
    , _scTrailingSlashBehavior = Nothing
    }


-- | Defines whether to drop the file extension from uploaded files.
scCleanURLs :: Lens' ServingConfig (Maybe Bool)
scCleanURLs
  = lens _scCleanURLs (\ s a -> s{_scCleanURLs = a})

-- | How to handle well known App Association files.
scAppAssociation :: Lens' ServingConfig (Maybe ServingConfigAppAssociation)
scAppAssociation
  = lens _scAppAssociation
      (\ s a -> s{_scAppAssociation = a})

-- | A list of rewrites that will act as if the service were given the
-- destination URL.
scRewrites :: Lens' ServingConfig [Rewrite]
scRewrites
  = lens _scRewrites (\ s a -> s{_scRewrites = a}) .
      _Default
      . _Coerce

-- | A list of globs that will cause the response to redirect to another
-- location.
scRedirects :: Lens' ServingConfig [Redirect]
scRedirects
  = lens _scRedirects (\ s a -> s{_scRedirects = a}) .
      _Default
      . _Coerce

-- | A list of custom response headers that are added to the content if the
-- request URL path matches the glob.
scHeaders :: Lens' ServingConfig [Header]
scHeaders
  = lens _scHeaders (\ s a -> s{_scHeaders = a}) .
      _Default
      . _Coerce

-- | Defines how to handle a trailing slash in the URL path.
scTrailingSlashBehavior :: Lens' ServingConfig (Maybe ServingConfigTrailingSlashBehavior)
scTrailingSlashBehavior
  = lens _scTrailingSlashBehavior
      (\ s a -> s{_scTrailingSlashBehavior = a})

instance FromJSON ServingConfig where
        parseJSON
          = withObject "ServingConfig"
              (\ o ->
                 ServingConfig' <$>
                   (o .:? "cleanUrls") <*> (o .:? "appAssociation") <*>
                     (o .:? "rewrites" .!= mempty)
                     <*> (o .:? "redirects" .!= mempty)
                     <*> (o .:? "headers" .!= mempty)
                     <*> (o .:? "trailingSlashBehavior"))

instance ToJSON ServingConfig where
        toJSON ServingConfig'{..}
          = object
              (catMaybes
                 [("cleanUrls" .=) <$> _scCleanURLs,
                  ("appAssociation" .=) <$> _scAppAssociation,
                  ("rewrites" .=) <$> _scRewrites,
                  ("redirects" .=) <$> _scRedirects,
                  ("headers" .=) <$> _scHeaders,
                  ("trailingSlashBehavior" .=) <$>
                    _scTrailingSlashBehavior])

-- | The intended behavior and status information of a domain.
--
-- /See:/ 'domain' smart constructor.
data Domain =
  Domain'
    { _dStatus         :: !(Maybe DomainStatus)
    , _dProvisioning   :: !(Maybe DomainProvisioning)
    , _dUpdateTime     :: !(Maybe DateTime')
    , _dDomainName     :: !(Maybe Text)
    , _dDomainRedirect :: !(Maybe DomainRedirect)
    , _dSite           :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Domain' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dStatus'
--
-- * 'dProvisioning'
--
-- * 'dUpdateTime'
--
-- * 'dDomainName'
--
-- * 'dDomainRedirect'
--
-- * 'dSite'
domain
    :: Domain
domain =
  Domain'
    { _dStatus = Nothing
    , _dProvisioning = Nothing
    , _dUpdateTime = Nothing
    , _dDomainName = Nothing
    , _dDomainRedirect = Nothing
    , _dSite = Nothing
    }


-- | Output only. Additional status of the domain association.
dStatus :: Lens' Domain (Maybe DomainStatus)
dStatus = lens _dStatus (\ s a -> s{_dStatus = a})

-- | Output only. Information about the provisioning of certificates and the
-- health of the DNS resolution for the domain.
dProvisioning :: Lens' Domain (Maybe DomainProvisioning)
dProvisioning
  = lens _dProvisioning
      (\ s a -> s{_dProvisioning = a})

-- | Output only. The time at which the domain was last updated.
dUpdateTime :: Lens' Domain (Maybe UTCTime)
dUpdateTime
  = lens _dUpdateTime (\ s a -> s{_dUpdateTime = a}) .
      mapping _DateTime

-- | Required. The domain name of the association.
dDomainName :: Lens' Domain (Maybe Text)
dDomainName
  = lens _dDomainName (\ s a -> s{_dDomainName = a})

-- | If set, the domain should redirect with the provided parameters.
dDomainRedirect :: Lens' Domain (Maybe DomainRedirect)
dDomainRedirect
  = lens _dDomainRedirect
      (\ s a -> s{_dDomainRedirect = a})

-- | Required. The site name of the association.
dSite :: Lens' Domain (Maybe Text)
dSite = lens _dSite (\ s a -> s{_dSite = a})

instance FromJSON Domain where
        parseJSON
          = withObject "Domain"
              (\ o ->
                 Domain' <$>
                   (o .:? "status") <*> (o .:? "provisioning") <*>
                     (o .:? "updateTime")
                     <*> (o .:? "domainName")
                     <*> (o .:? "domainRedirect")
                     <*> (o .:? "site"))

instance ToJSON Domain where
        toJSON Domain'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _dStatus,
                  ("provisioning" .=) <$> _dProvisioning,
                  ("updateTime" .=) <$> _dUpdateTime,
                  ("domainName" .=) <$> _dDomainName,
                  ("domainRedirect" .=) <$> _dDomainRedirect,
                  ("site" .=) <$> _dSite])

--
-- /See:/ 'listReleasesResponse' smart constructor.
data ListReleasesResponse =
  ListReleasesResponse'
    { _lrrNextPageToken :: !(Maybe Text)
    , _lrrReleases      :: !(Maybe [Release])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListReleasesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrrNextPageToken'
--
-- * 'lrrReleases'
listReleasesResponse
    :: ListReleasesResponse
listReleasesResponse =
  ListReleasesResponse' {_lrrNextPageToken = Nothing, _lrrReleases = Nothing}


-- | If there are additional releases remaining beyond the ones in this
-- response, then supply this token in the next
-- [\`list\`](..\/sites.versions.files\/list) call to continue with the
-- next set of releases.
lrrNextPageToken :: Lens' ListReleasesResponse (Maybe Text)
lrrNextPageToken
  = lens _lrrNextPageToken
      (\ s a -> s{_lrrNextPageToken = a})

-- | The list of hashes of files that still need to be uploaded, if any
-- exist.
lrrReleases :: Lens' ListReleasesResponse [Release]
lrrReleases
  = lens _lrrReleases (\ s a -> s{_lrrReleases = a}) .
      _Default
      . _Coerce

instance FromJSON ListReleasesResponse where
        parseJSON
          = withObject "ListReleasesResponse"
              (\ o ->
                 ListReleasesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "releases" .!= mempty))

instance ToJSON ListReleasesResponse where
        toJSON ListReleasesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lrrNextPageToken,
                  ("releases" .=) <$> _lrrReleases])

-- | The current certificate provisioning status information for a domain.
--
-- /See:/ 'domainProvisioning' smart constructor.
data DomainProvisioning =
  DomainProvisioning'
    { _dpExpectedIPs                :: !(Maybe [Text])
    , _dpCertChallengeDNS           :: !(Maybe CertDNSChallenge)
    , _dpDNSFetchTime               :: !(Maybe DateTime')
    , _dpCertStatus                 :: !(Maybe DomainProvisioningCertStatus)
    , _dpDNSStatus                  :: !(Maybe DomainProvisioningDNSStatus)
    , _dpDiscoveredIPs              :: !(Maybe [Text])
    , _dpCertChallengeHTTP          :: !(Maybe CertHTTPChallenge)
    , _dpCertChallengeDiscoveredTxt :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DomainProvisioning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpExpectedIPs'
--
-- * 'dpCertChallengeDNS'
--
-- * 'dpDNSFetchTime'
--
-- * 'dpCertStatus'
--
-- * 'dpDNSStatus'
--
-- * 'dpDiscoveredIPs'
--
-- * 'dpCertChallengeHTTP'
--
-- * 'dpCertChallengeDiscoveredTxt'
domainProvisioning
    :: DomainProvisioning
domainProvisioning =
  DomainProvisioning'
    { _dpExpectedIPs = Nothing
    , _dpCertChallengeDNS = Nothing
    , _dpDNSFetchTime = Nothing
    , _dpCertStatus = Nothing
    , _dpDNSStatus = Nothing
    , _dpDiscoveredIPs = Nothing
    , _dpCertChallengeHTTP = Nothing
    , _dpCertChallengeDiscoveredTxt = Nothing
    }


-- | The list of IPs to which the domain is expected to resolve.
dpExpectedIPs :: Lens' DomainProvisioning [Text]
dpExpectedIPs
  = lens _dpExpectedIPs
      (\ s a -> s{_dpExpectedIPs = a})
      . _Default
      . _Coerce

-- | The DNS challenge for generating a certificate.
dpCertChallengeDNS :: Lens' DomainProvisioning (Maybe CertDNSChallenge)
dpCertChallengeDNS
  = lens _dpCertChallengeDNS
      (\ s a -> s{_dpCertChallengeDNS = a})

-- | The time at which the last DNS fetch occurred.
dpDNSFetchTime :: Lens' DomainProvisioning (Maybe UTCTime)
dpDNSFetchTime
  = lens _dpDNSFetchTime
      (\ s a -> s{_dpDNSFetchTime = a})
      . mapping _DateTime

-- | The certificate provisioning status; updated when Firebase Hosting
-- provisions an SSL certificate for the domain.
dpCertStatus :: Lens' DomainProvisioning (Maybe DomainProvisioningCertStatus)
dpCertStatus
  = lens _dpCertStatus (\ s a -> s{_dpCertStatus = a})

-- | The DNS record match status as of the last DNS fetch.
dpDNSStatus :: Lens' DomainProvisioning (Maybe DomainProvisioningDNSStatus)
dpDNSStatus
  = lens _dpDNSStatus (\ s a -> s{_dpDNSStatus = a})

-- | The IPs found at the last DNS fetch.
dpDiscoveredIPs :: Lens' DomainProvisioning [Text]
dpDiscoveredIPs
  = lens _dpDiscoveredIPs
      (\ s a -> s{_dpDiscoveredIPs = a})
      . _Default
      . _Coerce

-- | The HTTP challenge for generating a certificate.
dpCertChallengeHTTP :: Lens' DomainProvisioning (Maybe CertHTTPChallenge)
dpCertChallengeHTTP
  = lens _dpCertChallengeHTTP
      (\ s a -> s{_dpCertChallengeHTTP = a})

-- | The TXT records (for the certificate challenge) that were found at the
-- last DNS fetch.
dpCertChallengeDiscoveredTxt :: Lens' DomainProvisioning [Text]
dpCertChallengeDiscoveredTxt
  = lens _dpCertChallengeDiscoveredTxt
      (\ s a -> s{_dpCertChallengeDiscoveredTxt = a})
      . _Default
      . _Coerce

instance FromJSON DomainProvisioning where
        parseJSON
          = withObject "DomainProvisioning"
              (\ o ->
                 DomainProvisioning' <$>
                   (o .:? "expectedIps" .!= mempty) <*>
                     (o .:? "certChallengeDns")
                     <*> (o .:? "dnsFetchTime")
                     <*> (o .:? "certStatus")
                     <*> (o .:? "dnsStatus")
                     <*> (o .:? "discoveredIps" .!= mempty)
                     <*> (o .:? "certChallengeHttp")
                     <*> (o .:? "certChallengeDiscoveredTxt" .!= mempty))

instance ToJSON DomainProvisioning where
        toJSON DomainProvisioning'{..}
          = object
              (catMaybes
                 [("expectedIps" .=) <$> _dpExpectedIPs,
                  ("certChallengeDns" .=) <$> _dpCertChallengeDNS,
                  ("dnsFetchTime" .=) <$> _dpDNSFetchTime,
                  ("certStatus" .=) <$> _dpCertStatus,
                  ("dnsStatus" .=) <$> _dpDNSStatus,
                  ("discoveredIps" .=) <$> _dpDiscoveredIPs,
                  ("certChallengeHttp" .=) <$> _dpCertChallengeHTTP,
                  ("certChallengeDiscoveredTxt" .=) <$>
                    _dpCertChallengeDiscoveredTxt])

-- | A \`Release\` is a particular [collection of configurations and
-- files](sites.versions) that is set to be public at a particular time.
--
-- /See:/ 'release' smart constructor.
data Release =
  Release'
    { _rReleaseTime :: !(Maybe DateTime')
    , _rReleaseUser :: !(Maybe ActingUser)
    , _rName        :: !(Maybe Text)
    , _rVersion     :: !(Maybe Version)
    , _rType        :: !(Maybe ReleaseType)
    , _rMessage     :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Release' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rReleaseTime'
--
-- * 'rReleaseUser'
--
-- * 'rName'
--
-- * 'rVersion'
--
-- * 'rType'
--
-- * 'rMessage'
release
    :: Release
release =
  Release'
    { _rReleaseTime = Nothing
    , _rReleaseUser = Nothing
    , _rName = Nothing
    , _rVersion = Nothing
    , _rType = Nothing
    , _rMessage = Nothing
    }


-- | Output only. The time at which the version is set to be public.
rReleaseTime :: Lens' Release (Maybe UTCTime)
rReleaseTime
  = lens _rReleaseTime (\ s a -> s{_rReleaseTime = a})
      . mapping _DateTime

-- | Output only. Identifies the user who created the release.
rReleaseUser :: Lens' Release (Maybe ActingUser)
rReleaseUser
  = lens _rReleaseUser (\ s a -> s{_rReleaseUser = a})

-- | Output only. The unique identifier for the release, in the format:
-- 'sites\/site-name\/releases\/releaseID' This name is provided in the
-- response body when you call the
-- [\`CreateRelease\`](sites.releases\/create) endpoint.
rName :: Lens' Release (Maybe Text)
rName = lens _rName (\ s a -> s{_rName = a})

-- | Output only. The configuration and content that was released.
rVersion :: Lens' Release (Maybe Version)
rVersion = lens _rVersion (\ s a -> s{_rVersion = a})

-- | Explains the reason for the release.
-- Specify a value for this field only when creating a \`SITE_DISABLE\`
-- type release.
rType :: Lens' Release (Maybe ReleaseType)
rType = lens _rType (\ s a -> s{_rType = a})

-- | The deploy description when the release was created. The value can be up
-- to 512 characters.
rMessage :: Lens' Release (Maybe Text)
rMessage = lens _rMessage (\ s a -> s{_rMessage = a})

instance FromJSON Release where
        parseJSON
          = withObject "Release"
              (\ o ->
                 Release' <$>
                   (o .:? "releaseTime") <*> (o .:? "releaseUser") <*>
                     (o .:? "name")
                     <*> (o .:? "version")
                     <*> (o .:? "type")
                     <*> (o .:? "message"))

instance ToJSON Release where
        toJSON Release'{..}
          = object
              (catMaybes
                 [("releaseTime" .=) <$> _rReleaseTime,
                  ("releaseUser" .=) <$> _rReleaseUser,
                  ("name" .=) <$> _rName, ("version" .=) <$> _rVersion,
                  ("type" .=) <$> _rType,
                  ("message" .=) <$> _rMessage])

-- | A static content file that is part of a version.
--
-- /See:/ 'versionFile' smart constructor.
data VersionFile =
  VersionFile'
    { _vfStatus :: !(Maybe VersionFileStatus)
    , _vfHash   :: !(Maybe Text)
    , _vfPath   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VersionFile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vfStatus'
--
-- * 'vfHash'
--
-- * 'vfPath'
versionFile
    :: VersionFile
versionFile =
  VersionFile' {_vfStatus = Nothing, _vfHash = Nothing, _vfPath = Nothing}


-- | Output only. The current status of a particular file in the specified
-- version.
-- The value will be either \`pending upload\` or \`uploaded\`.
vfStatus :: Lens' VersionFile (Maybe VersionFileStatus)
vfStatus = lens _vfStatus (\ s a -> s{_vfStatus = a})

-- | The SHA256 content hash of the file.
vfHash :: Lens' VersionFile (Maybe Text)
vfHash = lens _vfHash (\ s a -> s{_vfHash = a})

-- | The URI at which the file\'s content should display.
vfPath :: Lens' VersionFile (Maybe Text)
vfPath = lens _vfPath (\ s a -> s{_vfPath = a})

instance FromJSON VersionFile where
        parseJSON
          = withObject "VersionFile"
              (\ o ->
                 VersionFile' <$>
                   (o .:? "status") <*> (o .:? "hash") <*>
                     (o .:? "path"))

instance ToJSON VersionFile where
        toJSON VersionFile'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _vfStatus,
                  ("hash" .=) <$> _vfHash, ("path" .=) <$> _vfPath])

-- | A [\`header\`](\/docs\/hosting\/full-config#headers) defines custom
-- headers to add to a response should the request URL path match the
-- pattern.
--
-- /See:/ 'header' smart constructor.
data Header =
  Header'
    { _hHeaders :: !(Maybe HeaderHeaders)
    , _hGlob    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Header' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hHeaders'
--
-- * 'hGlob'
header
    :: Header
header = Header' {_hHeaders = Nothing, _hGlob = Nothing}


-- | Required. The additional headers to add to the response.
hHeaders :: Lens' Header (Maybe HeaderHeaders)
hHeaders = lens _hHeaders (\ s a -> s{_hHeaders = a})

-- | Required. The user-supplied [glob
-- pattern](\/docs\/hosting\/full-config#glob_pattern_matching) to match
-- against the request URL path.
hGlob :: Lens' Header (Maybe Text)
hGlob = lens _hGlob (\ s a -> s{_hGlob = a})

instance FromJSON Header where
        parseJSON
          = withObject "Header"
              (\ o ->
                 Header' <$> (o .:? "headers") <*> (o .:? "glob"))

instance ToJSON Header where
        toJSON Header'{..}
          = object
              (catMaybes
                 [("headers" .=) <$> _hHeaders,
                  ("glob" .=) <$> _hGlob])

-- | Contains metadata about the user who performed an action, such as
-- creating a release or finalizing a version.
--
-- /See:/ 'actingUser' smart constructor.
data ActingUser =
  ActingUser'
    { _auEmail    :: !(Maybe Text)
    , _auImageURL :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ActingUser' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auEmail'
--
-- * 'auImageURL'
actingUser
    :: ActingUser
actingUser = ActingUser' {_auEmail = Nothing, _auImageURL = Nothing}


-- | The email address of the user when the user performed the action.
auEmail :: Lens' ActingUser (Maybe Text)
auEmail = lens _auEmail (\ s a -> s{_auEmail = a})

-- | A profile image URL for the user. May not be present if the user has
-- changed their email address or deleted their account.
auImageURL :: Lens' ActingUser (Maybe Text)
auImageURL
  = lens _auImageURL (\ s a -> s{_auImageURL = a})

instance FromJSON ActingUser where
        parseJSON
          = withObject "ActingUser"
              (\ o ->
                 ActingUser' <$>
                   (o .:? "email") <*> (o .:? "imageUrl"))

instance ToJSON ActingUser where
        toJSON ActingUser'{..}
          = object
              (catMaybes
                 [("email" .=) <$> _auEmail,
                  ("imageUrl" .=) <$> _auImageURL])

-- | A \`Version\` is the collection of configuration and [static
-- files](sites.versions.files) that determine how a site is displayed.
--
-- /See:/ 'version' smart constructor.
data Version =
  Version'
    { _vStatus       :: !(Maybe VersionStatus)
    , _vFinalizeTime :: !(Maybe DateTime')
    , _vConfig       :: !(Maybe ServingConfig)
    , _vFileCount    :: !(Maybe (Textual Int64))
    , _vFinalizeUser :: !(Maybe ActingUser)
    , _vVersionBytes :: !(Maybe (Textual Int64))
    , _vDeleteTime   :: !(Maybe DateTime')
    , _vName         :: !(Maybe Text)
    , _vLabels       :: !(Maybe VersionLabels)
    , _vCreateUser   :: !(Maybe ActingUser)
    , _vDeleteUser   :: !(Maybe ActingUser)
    , _vCreateTime   :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Version' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vStatus'
--
-- * 'vFinalizeTime'
--
-- * 'vConfig'
--
-- * 'vFileCount'
--
-- * 'vFinalizeUser'
--
-- * 'vVersionBytes'
--
-- * 'vDeleteTime'
--
-- * 'vName'
--
-- * 'vLabels'
--
-- * 'vCreateUser'
--
-- * 'vDeleteUser'
--
-- * 'vCreateTime'
version
    :: Version
version =
  Version'
    { _vStatus = Nothing
    , _vFinalizeTime = Nothing
    , _vConfig = Nothing
    , _vFileCount = Nothing
    , _vFinalizeUser = Nothing
    , _vVersionBytes = Nothing
    , _vDeleteTime = Nothing
    , _vName = Nothing
    , _vLabels = Nothing
    , _vCreateUser = Nothing
    , _vDeleteUser = Nothing
    , _vCreateTime = Nothing
    }


-- | The deploy status of a version.
-- For a successful deploy, call the
-- [\`CreateVersion\`](sites.versions\/create) endpoint to make a new
-- version (\`CREATED\` status), [upload all desired
-- files](sites.versions\/populateFiles) to the version, then
-- [update](sites.versions\/patch) the version to the \`FINALIZED\` status.
-- Note that if you leave the version in the \`CREATED\` state for more
-- than 12 hours, the system will automatically mark the version as
-- \`ABANDONED\`.
-- You can also change the status of a version to \`DELETED\` by calling
-- the [\`DeleteVersion\`](sites.versions\/delete) endpoint.
vStatus :: Lens' Version (Maybe VersionStatus)
vStatus = lens _vStatus (\ s a -> s{_vStatus = a})

-- | Output only. The time at which the version was \`FINALIZED\`.
vFinalizeTime :: Lens' Version (Maybe UTCTime)
vFinalizeTime
  = lens _vFinalizeTime
      (\ s a -> s{_vFinalizeTime = a})
      . mapping _DateTime

-- | The configuration for the behavior of the site. This configuration
-- exists in the [\`firebase.json\`](\/docs\/cli\/#the_firebasejson_file)
-- file.
vConfig :: Lens' Version (Maybe ServingConfig)
vConfig = lens _vConfig (\ s a -> s{_vConfig = a})

-- | Output only. The total number of files associated with the version.
-- This value is calculated after a version is \`FINALIZED\`.
vFileCount :: Lens' Version (Maybe Int64)
vFileCount
  = lens _vFileCount (\ s a -> s{_vFileCount = a}) .
      mapping _Coerce

-- | Output only. Identifies the user who \`FINALIZED\` the version.
vFinalizeUser :: Lens' Version (Maybe ActingUser)
vFinalizeUser
  = lens _vFinalizeUser
      (\ s a -> s{_vFinalizeUser = a})

-- | Output only. The total stored bytesize of the version.
-- This value is calculated after a version is \`FINALIZED\`.
vVersionBytes :: Lens' Version (Maybe Int64)
vVersionBytes
  = lens _vVersionBytes
      (\ s a -> s{_vVersionBytes = a})
      . mapping _Coerce

-- | Output only. The time at which the version was \`DELETED\`.
vDeleteTime :: Lens' Version (Maybe UTCTime)
vDeleteTime
  = lens _vDeleteTime (\ s a -> s{_vDeleteTime = a}) .
      mapping _DateTime

-- | The unique identifier for a version, in the format:
-- 'sites\/site-name\/versions\/versionID' This name is provided in the
-- response body when you call the
-- [\`CreateVersion\`](..\/sites.versions\/create) endpoint.
vName :: Lens' Version (Maybe Text)
vName = lens _vName (\ s a -> s{_vName = a})

-- | The labels used for extra metadata and\/or filtering.
vLabels :: Lens' Version (Maybe VersionLabels)
vLabels = lens _vLabels (\ s a -> s{_vLabels = a})

-- | Output only. Identifies the user who created the version.
vCreateUser :: Lens' Version (Maybe ActingUser)
vCreateUser
  = lens _vCreateUser (\ s a -> s{_vCreateUser = a})

-- | Output only. Identifies the user who \`DELETED\` the version.
vDeleteUser :: Lens' Version (Maybe ActingUser)
vDeleteUser
  = lens _vDeleteUser (\ s a -> s{_vDeleteUser = a})

-- | Output only. The time at which the version was created.
vCreateTime :: Lens' Version (Maybe UTCTime)
vCreateTime
  = lens _vCreateTime (\ s a -> s{_vCreateTime = a}) .
      mapping _DateTime

instance FromJSON Version where
        parseJSON
          = withObject "Version"
              (\ o ->
                 Version' <$>
                   (o .:? "status") <*> (o .:? "finalizeTime") <*>
                     (o .:? "config")
                     <*> (o .:? "fileCount")
                     <*> (o .:? "finalizeUser")
                     <*> (o .:? "versionBytes")
                     <*> (o .:? "deleteTime")
                     <*> (o .:? "name")
                     <*> (o .:? "labels")
                     <*> (o .:? "createUser")
                     <*> (o .:? "deleteUser")
                     <*> (o .:? "createTime"))

instance ToJSON Version where
        toJSON Version'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _vStatus,
                  ("finalizeTime" .=) <$> _vFinalizeTime,
                  ("config" .=) <$> _vConfig,
                  ("fileCount" .=) <$> _vFileCount,
                  ("finalizeUser" .=) <$> _vFinalizeUser,
                  ("versionBytes" .=) <$> _vVersionBytes,
                  ("deleteTime" .=) <$> _vDeleteTime,
                  ("name" .=) <$> _vName, ("labels" .=) <$> _vLabels,
                  ("createUser" .=) <$> _vCreateUser,
                  ("deleteUser" .=) <$> _vDeleteUser,
                  ("createTime" .=) <$> _vCreateTime])

--
-- /See:/ 'listDomainsResponse' smart constructor.
data ListDomainsResponse =
  ListDomainsResponse'
    { _ldrNextPageToken :: !(Maybe Text)
    , _ldrDomains       :: !(Maybe [Domain])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListDomainsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldrNextPageToken'
--
-- * 'ldrDomains'
listDomainsResponse
    :: ListDomainsResponse
listDomainsResponse =
  ListDomainsResponse' {_ldrNextPageToken = Nothing, _ldrDomains = Nothing}


-- | The pagination token, if more results exist.
ldrNextPageToken :: Lens' ListDomainsResponse (Maybe Text)
ldrNextPageToken
  = lens _ldrNextPageToken
      (\ s a -> s{_ldrNextPageToken = a})

-- | The list of domains, if any exist.
ldrDomains :: Lens' ListDomainsResponse [Domain]
ldrDomains
  = lens _ldrDomains (\ s a -> s{_ldrDomains = a}) .
      _Default
      . _Coerce

instance FromJSON ListDomainsResponse where
        parseJSON
          = withObject "ListDomainsResponse"
              (\ o ->
                 ListDomainsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "domains" .!= mempty))

instance ToJSON ListDomainsResponse where
        toJSON ListDomainsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ldrNextPageToken,
                  ("domains" .=) <$> _ldrDomains])

-- | A [\`redirect\`](\/docs\/hosting\/full-config#redirects) represents the
-- configuration for returning an HTTP redirect response given a matching
-- request URL path.
--
-- /See:/ 'redirect' smart constructor.
data Redirect =
  Redirect'
    { _rLocation   :: !(Maybe Text)
    , _rGlob       :: !(Maybe Text)
    , _rStatusCode :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Redirect' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rLocation'
--
-- * 'rGlob'
--
-- * 'rStatusCode'
redirect
    :: Redirect
redirect =
  Redirect' {_rLocation = Nothing, _rGlob = Nothing, _rStatusCode = Nothing}


-- | Required. The value to put in the HTTP location header of the response.
-- The location can contain capture group values from the pattern using a
-- \`:\` prefix to identify the segment and an optional \`*\` to capture
-- the rest of the URL. For example:
-- '\"glob\": \"\/:capture*\", \"statusCode\": 301, \"location\": \"https:\/\/example.com\/foo\/:capture\"'
rLocation :: Lens' Redirect (Maybe Text)
rLocation
  = lens _rLocation (\ s a -> s{_rLocation = a})

-- | Required. The user-supplied [glob
-- pattern](\/docs\/hosting\/full-config#glob_pattern_matching) to match
-- against the request URL path.
rGlob :: Lens' Redirect (Maybe Text)
rGlob = lens _rGlob (\ s a -> s{_rGlob = a})

-- | Required. The status HTTP code to return in the response. It must be a
-- valid 3xx status code.
rStatusCode :: Lens' Redirect (Maybe Int32)
rStatusCode
  = lens _rStatusCode (\ s a -> s{_rStatusCode = a}) .
      mapping _Coerce

instance FromJSON Redirect where
        parseJSON
          = withObject "Redirect"
              (\ o ->
                 Redirect' <$>
                   (o .:? "location") <*> (o .:? "glob") <*>
                     (o .:? "statusCode"))

instance ToJSON Redirect where
        toJSON Redirect'{..}
          = object
              (catMaybes
                 [("location" .=) <$> _rLocation,
                  ("glob" .=) <$> _rGlob,
                  ("statusCode" .=) <$> _rStatusCode])

-- | A configured rewrite that directs requests to a Cloud Run service. If
-- the Cloud Run service does not exist when setting or updating your
-- Firebase Hosting configuration, then the request fails. Any errors from
-- the Cloud Run service are passed to the end user (for example, if you
-- delete a service, any requests directed to that service receive a
-- \`404\` error).
--
-- /See:/ 'cloudRunRewrite' smart constructor.
data CloudRunRewrite =
  CloudRunRewrite'
    { _crrServiceId :: !(Maybe Text)
    , _crrRegion    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CloudRunRewrite' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crrServiceId'
--
-- * 'crrRegion'
cloudRunRewrite
    :: CloudRunRewrite
cloudRunRewrite =
  CloudRunRewrite' {_crrServiceId = Nothing, _crrRegion = Nothing}


-- | Required. User-defined ID of the Cloud Run service.
crrServiceId :: Lens' CloudRunRewrite (Maybe Text)
crrServiceId
  = lens _crrServiceId (\ s a -> s{_crrServiceId = a})

-- | Optional. User-provided region where the Cloud Run service is hosted.
-- Defaults to \`us-central1\` if not supplied.
crrRegion :: Lens' CloudRunRewrite (Maybe Text)
crrRegion
  = lens _crrRegion (\ s a -> s{_crrRegion = a})

instance FromJSON CloudRunRewrite where
        parseJSON
          = withObject "CloudRunRewrite"
              (\ o ->
                 CloudRunRewrite' <$>
                   (o .:? "serviceId") <*> (o .:? "region"))

instance ToJSON CloudRunRewrite where
        toJSON CloudRunRewrite'{..}
          = object
              (catMaybes
                 [("serviceId" .=) <$> _crrServiceId,
                  ("region" .=) <$> _crrRegion])

-- | Defines the behavior of a domain-level redirect. Domain redirects
-- preserve the path of the redirect but replace the requested domain with
-- the one specified in the redirect configuration.
--
-- /See:/ 'domainRedirect' smart constructor.
data DomainRedirect =
  DomainRedirect'
    { _drDomainName :: !(Maybe Text)
    , _drType       :: !(Maybe DomainRedirectType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DomainRedirect' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drDomainName'
--
-- * 'drType'
domainRedirect
    :: DomainRedirect
domainRedirect = DomainRedirect' {_drDomainName = Nothing, _drType = Nothing}


-- | Required. The domain name to redirect to.
drDomainName :: Lens' DomainRedirect (Maybe Text)
drDomainName
  = lens _drDomainName (\ s a -> s{_drDomainName = a})

-- | Required. The redirect status code.
drType :: Lens' DomainRedirect (Maybe DomainRedirectType)
drType = lens _drType (\ s a -> s{_drType = a})

instance FromJSON DomainRedirect where
        parseJSON
          = withObject "DomainRedirect"
              (\ o ->
                 DomainRedirect' <$>
                   (o .:? "domainName") <*> (o .:? "type"))

instance ToJSON DomainRedirect where
        toJSON DomainRedirect'{..}
          = object
              (catMaybes
                 [("domainName" .=) <$> _drDomainName,
                  ("type" .=) <$> _drType])

-- | A [\`rewrite\`](\/docs\/hosting\/full-config#rewrites) represents an
-- internal content rewrite on the version. If the pattern matches, the
-- request will be handled as if it were to the destination path specified
-- in the configuration.
--
-- /See:/ 'rewrite' smart constructor.
data Rewrite =
  Rewrite'
    { _rewFunction     :: !(Maybe Text)
    , _rewPath         :: !(Maybe Text)
    , _rewRun          :: !(Maybe CloudRunRewrite)
    , _rewGlob         :: !(Maybe Text)
    , _rewDynamicLinks :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Rewrite' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rewFunction'
--
-- * 'rewPath'
--
-- * 'rewRun'
--
-- * 'rewGlob'
--
-- * 'rewDynamicLinks'
rewrite
    :: Rewrite
rewrite =
  Rewrite'
    { _rewFunction = Nothing
    , _rewPath = Nothing
    , _rewRun = Nothing
    , _rewGlob = Nothing
    , _rewDynamicLinks = Nothing
    }


-- | The function to proxy requests to. Must match the exported function name
-- exactly.
rewFunction :: Lens' Rewrite (Maybe Text)
rewFunction
  = lens _rewFunction (\ s a -> s{_rewFunction = a})

-- | The URL path to rewrite the request to.
rewPath :: Lens' Rewrite (Maybe Text)
rewPath = lens _rewPath (\ s a -> s{_rewPath = a})

-- | The request will be forwarded to Cloud Run.
rewRun :: Lens' Rewrite (Maybe CloudRunRewrite)
rewRun = lens _rewRun (\ s a -> s{_rewRun = a})

-- | Required. The user-supplied [glob
-- pattern](\/docs\/hosting\/full-config#glob_pattern_matching) to match
-- against the request URL path.
rewGlob :: Lens' Rewrite (Maybe Text)
rewGlob = lens _rewGlob (\ s a -> s{_rewGlob = a})

-- | The request will be forwarded to Firebase Dynamic Links.
rewDynamicLinks :: Lens' Rewrite (Maybe Bool)
rewDynamicLinks
  = lens _rewDynamicLinks
      (\ s a -> s{_rewDynamicLinks = a})

instance FromJSON Rewrite where
        parseJSON
          = withObject "Rewrite"
              (\ o ->
                 Rewrite' <$>
                   (o .:? "function") <*> (o .:? "path") <*>
                     (o .:? "run")
                     <*> (o .:? "glob")
                     <*> (o .:? "dynamicLinks"))

instance ToJSON Rewrite where
        toJSON Rewrite'{..}
          = object
              (catMaybes
                 [("function" .=) <$> _rewFunction,
                  ("path" .=) <$> _rewPath, ("run" .=) <$> _rewRun,
                  ("glob" .=) <$> _rewGlob,
                  ("dynamicLinks" .=) <$> _rewDynamicLinks])

-- | A set of file paths to the hashes corresponding to assets that should be
-- added to the version. Note that a file path to an empty hash will remove
-- the path from the version. Calculate a hash by Gzipping the file then
-- taking the SHA256 hash of the newly compressed file.
--
-- /See:/ 'populateVersionFilesRequestFiles' smart constructor.
newtype PopulateVersionFilesRequestFiles =
  PopulateVersionFilesRequestFiles'
    { _pvfrfAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PopulateVersionFilesRequestFiles' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pvfrfAddtional'
populateVersionFilesRequestFiles
    :: HashMap Text Text -- ^ 'pvfrfAddtional'
    -> PopulateVersionFilesRequestFiles
populateVersionFilesRequestFiles pPvfrfAddtional_ =
  PopulateVersionFilesRequestFiles'
    {_pvfrfAddtional = _Coerce # pPvfrfAddtional_}


pvfrfAddtional :: Lens' PopulateVersionFilesRequestFiles (HashMap Text Text)
pvfrfAddtional
  = lens _pvfrfAddtional
      (\ s a -> s{_pvfrfAddtional = a})
      . _Coerce

instance FromJSON PopulateVersionFilesRequestFiles
         where
        parseJSON
          = withObject "PopulateVersionFilesRequestFiles"
              (\ o ->
                 PopulateVersionFilesRequestFiles' <$>
                   (parseJSONObject o))

instance ToJSON PopulateVersionFilesRequestFiles
         where
        toJSON = toJSON . _pvfrfAddtional

-- | Required. The additional headers to add to the response.
--
-- /See:/ 'headerHeaders' smart constructor.
newtype HeaderHeaders =
  HeaderHeaders'
    { _hhAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HeaderHeaders' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hhAddtional'
headerHeaders
    :: HashMap Text Text -- ^ 'hhAddtional'
    -> HeaderHeaders
headerHeaders pHhAddtional_ =
  HeaderHeaders' {_hhAddtional = _Coerce # pHhAddtional_}


hhAddtional :: Lens' HeaderHeaders (HashMap Text Text)
hhAddtional
  = lens _hhAddtional (\ s a -> s{_hhAddtional = a}) .
      _Coerce

instance FromJSON HeaderHeaders where
        parseJSON
          = withObject "HeaderHeaders"
              (\ o -> HeaderHeaders' <$> (parseJSONObject o))

instance ToJSON HeaderHeaders where
        toJSON = toJSON . _hhAddtional

-- | Represents an HTTP certificate challenge.
--
-- /See:/ 'certHTTPChallenge' smart constructor.
data CertHTTPChallenge =
  CertHTTPChallenge'
    { _chttpcPath  :: !(Maybe Text)
    , _chttpcToken :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CertHTTPChallenge' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'chttpcPath'
--
-- * 'chttpcToken'
certHTTPChallenge
    :: CertHTTPChallenge
certHTTPChallenge =
  CertHTTPChallenge' {_chttpcPath = Nothing, _chttpcToken = Nothing}


-- | The URL path on which to serve the specified token to satisfy the
-- certificate challenge.
chttpcPath :: Lens' CertHTTPChallenge (Maybe Text)
chttpcPath
  = lens _chttpcPath (\ s a -> s{_chttpcPath = a})

-- | The token to serve at the specified URL path to satisfy the certificate
-- challenge.
chttpcToken :: Lens' CertHTTPChallenge (Maybe Text)
chttpcToken
  = lens _chttpcToken (\ s a -> s{_chttpcToken = a})

instance FromJSON CertHTTPChallenge where
        parseJSON
          = withObject "CertHTTPChallenge"
              (\ o ->
                 CertHTTPChallenge' <$>
                   (o .:? "path") <*> (o .:? "token"))

instance ToJSON CertHTTPChallenge where
        toJSON CertHTTPChallenge'{..}
          = object
              (catMaybes
                 [("path" .=) <$> _chttpcPath,
                  ("token" .=) <$> _chttpcToken])

--
-- /See:/ 'listVersionFilesResponse' smart constructor.
data ListVersionFilesResponse =
  ListVersionFilesResponse'
    { _lvfrNextPageToken :: !(Maybe Text)
    , _lvfrFiles         :: !(Maybe [VersionFile])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListVersionFilesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lvfrNextPageToken'
--
-- * 'lvfrFiles'
listVersionFilesResponse
    :: ListVersionFilesResponse
listVersionFilesResponse =
  ListVersionFilesResponse' {_lvfrNextPageToken = Nothing, _lvfrFiles = Nothing}


-- | The pagination token, if more results exist.
lvfrNextPageToken :: Lens' ListVersionFilesResponse (Maybe Text)
lvfrNextPageToken
  = lens _lvfrNextPageToken
      (\ s a -> s{_lvfrNextPageToken = a})

-- | The list path\/hashes in the specified version.
lvfrFiles :: Lens' ListVersionFilesResponse [VersionFile]
lvfrFiles
  = lens _lvfrFiles (\ s a -> s{_lvfrFiles = a}) .
      _Default
      . _Coerce

instance FromJSON ListVersionFilesResponse where
        parseJSON
          = withObject "ListVersionFilesResponse"
              (\ o ->
                 ListVersionFilesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "files" .!= mempty))

instance ToJSON ListVersionFilesResponse where
        toJSON ListVersionFilesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lvfrNextPageToken,
                  ("files" .=) <$> _lvfrFiles])

-- | A \`SiteConfig\` contains metadata associated with a specific site that
-- controls Firebase Hosting serving behavior
--
-- /See:/ 'siteConfig' smart constructor.
newtype SiteConfig =
  SiteConfig'
    { _scMaxVersions :: Maybe (Textual Int64)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SiteConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scMaxVersions'
siteConfig
    :: SiteConfig
siteConfig = SiteConfig' {_scMaxVersions = Nothing}


-- | The number of FINALIZED versions that will be held for a site before
-- automatic deletion. When a new version is deployed, content for versions
-- in storage in excess of this number will be deleted, and will no longer
-- be billed for storage usage. Oldest versions will be deleted first;
-- sites are created with an unlimited number of max_versions by default.
scMaxVersions :: Lens' SiteConfig (Maybe Int64)
scMaxVersions
  = lens _scMaxVersions
      (\ s a -> s{_scMaxVersions = a})
      . mapping _Coerce

instance FromJSON SiteConfig where
        parseJSON
          = withObject "SiteConfig"
              (\ o -> SiteConfig' <$> (o .:? "maxVersions"))

instance ToJSON SiteConfig where
        toJSON SiteConfig'{..}
          = object
              (catMaybes [("maxVersions" .=) <$> _scMaxVersions])
