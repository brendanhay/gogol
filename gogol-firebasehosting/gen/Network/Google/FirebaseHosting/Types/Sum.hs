{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.FirebaseHosting.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.FirebaseHosting.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

-- | Output only. Additional status of the domain association.
data DomainStatus
    = DomainStatusUnspecified
      -- ^ @DOMAIN_STATUS_UNSPECIFIED@
      -- Unspecified domain association status.
    | DomainChangePending
      -- ^ @DOMAIN_CHANGE_PENDING@
      -- An operation is in progress on the domain association and no further
      -- operations can be performed until it is complete.
    | DomainActive
      -- ^ @DOMAIN_ACTIVE@
      -- The domain association is active and no additional action is required.
    | DomainVerificationRequired
      -- ^ @DOMAIN_VERIFICATION_REQUIRED@
      -- The domain was previously verified in the legacy system. User must
      -- reverify the domain through the ownership service.
    | DomainVerificationLost
      -- ^ @DOMAIN_VERIFICATION_LOST@
      -- The domain verification has been lost and the domain is in the grace
      -- period before being removed from the Firebase Hosting site.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DomainStatus

instance FromHttpApiData DomainStatus where
    parseQueryParam = \case
        "DOMAIN_STATUS_UNSPECIFIED" -> Right DomainStatusUnspecified
        "DOMAIN_CHANGE_PENDING" -> Right DomainChangePending
        "DOMAIN_ACTIVE" -> Right DomainActive
        "DOMAIN_VERIFICATION_REQUIRED" -> Right DomainVerificationRequired
        "DOMAIN_VERIFICATION_LOST" -> Right DomainVerificationLost
        x -> Left ("Unable to parse DomainStatus from: " <> x)

instance ToHttpApiData DomainStatus where
    toQueryParam = \case
        DomainStatusUnspecified -> "DOMAIN_STATUS_UNSPECIFIED"
        DomainChangePending -> "DOMAIN_CHANGE_PENDING"
        DomainActive -> "DOMAIN_ACTIVE"
        DomainVerificationRequired -> "DOMAIN_VERIFICATION_REQUIRED"
        DomainVerificationLost -> "DOMAIN_VERIFICATION_LOST"

instance FromJSON DomainStatus where
    parseJSON = parseJSONText "DomainStatus"

instance ToJSON DomainStatus where
    toJSON = toJSONText

-- | The DNS record match status as of the last DNS fetch.
data DomainProvisioningDNSStatus
    = DNSStatusUnspecified
      -- ^ @DNS_STATUS_UNSPECIFIED@
      -- Unspecified DNS status.
    | DNSPending
      -- ^ @DNS_PENDING@
      -- No DNS records have been specified for this domain yet.
    | DNSMissing
      -- ^ @DNS_MISSING@
      -- None of the required DNS records have been detected on the domain.
    | DNSPartialMatch
      -- ^ @DNS_PARTIAL_MATCH@
      -- Some of the required DNS records were detected, but not all of them. No
      -- extra (non-required) DNS records were detected.
    | DNSMatch
      -- ^ @DNS_MATCH@
      -- All required DNS records were detected. No extra (non-required) DNS
      -- records were detected.
    | DNSExtraneousMatch
      -- ^ @DNS_EXTRANEOUS_MATCH@
      -- The domain has at least one of the required DNS records, and it has at
      -- least one extra (non-required) DNS record.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DomainProvisioningDNSStatus

instance FromHttpApiData DomainProvisioningDNSStatus where
    parseQueryParam = \case
        "DNS_STATUS_UNSPECIFIED" -> Right DNSStatusUnspecified
        "DNS_PENDING" -> Right DNSPending
        "DNS_MISSING" -> Right DNSMissing
        "DNS_PARTIAL_MATCH" -> Right DNSPartialMatch
        "DNS_MATCH" -> Right DNSMatch
        "DNS_EXTRANEOUS_MATCH" -> Right DNSExtraneousMatch
        x -> Left ("Unable to parse DomainProvisioningDNSStatus from: " <> x)

instance ToHttpApiData DomainProvisioningDNSStatus where
    toQueryParam = \case
        DNSStatusUnspecified -> "DNS_STATUS_UNSPECIFIED"
        DNSPending -> "DNS_PENDING"
        DNSMissing -> "DNS_MISSING"
        DNSPartialMatch -> "DNS_PARTIAL_MATCH"
        DNSMatch -> "DNS_MATCH"
        DNSExtraneousMatch -> "DNS_EXTRANEOUS_MATCH"

instance FromJSON DomainProvisioningDNSStatus where
    parseJSON = parseJSONText "DomainProvisioningDNSStatus"

instance ToJSON DomainProvisioningDNSStatus where
    toJSON = toJSONText

-- | Required. The redirect status code.
data DomainRedirectType
    = RedirectTypeUnspecified
      -- ^ @REDIRECT_TYPE_UNSPECIFIED@
      -- The default redirect type; should not be intentionlly used.
    | MovedPermanently
      -- ^ @MOVED_PERMANENTLY@
      -- The redirect will respond with an HTTP status code of \`301 Moved
      -- Permanently\`.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DomainRedirectType

instance FromHttpApiData DomainRedirectType where
    parseQueryParam = \case
        "REDIRECT_TYPE_UNSPECIFIED" -> Right RedirectTypeUnspecified
        "MOVED_PERMANENTLY" -> Right MovedPermanently
        x -> Left ("Unable to parse DomainRedirectType from: " <> x)

instance ToHttpApiData DomainRedirectType where
    toQueryParam = \case
        RedirectTypeUnspecified -> "REDIRECT_TYPE_UNSPECIFIED"
        MovedPermanently -> "MOVED_PERMANENTLY"

instance FromJSON DomainRedirectType where
    parseJSON = parseJSONText "DomainRedirectType"

instance ToJSON DomainRedirectType where
    toJSON = toJSONText

-- | How to handle well known App Association files.
data ServingConfigAppAssociation
    = Auto
      -- ^ @AUTO@
      -- The app association files will be automattically created from the apps
      -- that exist in the Firebase project.
    | None
      -- ^ @NONE@
      -- No special handling of the app association files will occur, these paths
      -- will result in a 404 unless caught with a Rewrite.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ServingConfigAppAssociation

instance FromHttpApiData ServingConfigAppAssociation where
    parseQueryParam = \case
        "AUTO" -> Right Auto
        "NONE" -> Right None
        x -> Left ("Unable to parse ServingConfigAppAssociation from: " <> x)

instance ToHttpApiData ServingConfigAppAssociation where
    toQueryParam = \case
        Auto -> "AUTO"
        None -> "NONE"

instance FromJSON ServingConfigAppAssociation where
    parseJSON = parseJSONText "ServingConfigAppAssociation"

instance ToJSON ServingConfigAppAssociation where
    toJSON = toJSONText

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
data VersionStatus
    = VersionStatusUnspecified
      -- ^ @VERSION_STATUS_UNSPECIFIED@
      -- The default status; should not be intentionally used.
    | Created
      -- ^ @CREATED@
      -- The version has been created, and content is currently being added to
      -- the version.
    | Finalized
      -- ^ @FINALIZED@
      -- All content has been added to the version, and the version can no longer
      -- be changed.
    | Deleted
      -- ^ @DELETED@
      -- The version has been deleted.
    | Abandoned
      -- ^ @ABANDONED@
      -- The version was not updated to \`FINALIZED\` within 12 hours and was
      -- automatically deleted.
    | Expired
      -- ^ @EXPIRED@
      -- The version is outside the site-configured limit for the number of
      -- retained versions, so the version\'s content is scheduled for deletion.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VersionStatus

instance FromHttpApiData VersionStatus where
    parseQueryParam = \case
        "VERSION_STATUS_UNSPECIFIED" -> Right VersionStatusUnspecified
        "CREATED" -> Right Created
        "FINALIZED" -> Right Finalized
        "DELETED" -> Right Deleted
        "ABANDONED" -> Right Abandoned
        "EXPIRED" -> Right Expired
        x -> Left ("Unable to parse VersionStatus from: " <> x)

instance ToHttpApiData VersionStatus where
    toQueryParam = \case
        VersionStatusUnspecified -> "VERSION_STATUS_UNSPECIFIED"
        Created -> "CREATED"
        Finalized -> "FINALIZED"
        Deleted -> "DELETED"
        Abandoned -> "ABANDONED"
        Expired -> "EXPIRED"

instance FromJSON VersionStatus where
    parseJSON = parseJSONText "VersionStatus"

instance ToJSON VersionStatus where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

-- | The certificate provisioning status; updated when Firebase Hosting
-- provisions an SSL certificate for the domain.
data DomainProvisioningCertStatus
    = CertStatusUnspecified
      -- ^ @CERT_STATUS_UNSPECIFIED@
      -- Unspecified certificate provisioning status.
    | CertPending
      -- ^ @CERT_PENDING@
      -- Waiting for certificate challenge to be created.
    | CertMissing
      -- ^ @CERT_MISSING@
      -- Waiting for certificate challenge to be met.
    | CertProcessing
      -- ^ @CERT_PROCESSING@
      -- Certificate challenge met; attempting to acquire\/propagate certificate.
    | CertPropagating
      -- ^ @CERT_PROPAGATING@
      -- Certificate obtained; propagating to the CDN.
    | CertActive
      -- ^ @CERT_ACTIVE@
      -- Certificate provisioned and deployed across the CDN.
    | CertError
      -- ^ @CERT_ERROR@
      -- Certificate provisioning failed in a non-recoverable manner.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DomainProvisioningCertStatus

instance FromHttpApiData DomainProvisioningCertStatus where
    parseQueryParam = \case
        "CERT_STATUS_UNSPECIFIED" -> Right CertStatusUnspecified
        "CERT_PENDING" -> Right CertPending
        "CERT_MISSING" -> Right CertMissing
        "CERT_PROCESSING" -> Right CertProcessing
        "CERT_PROPAGATING" -> Right CertPropagating
        "CERT_ACTIVE" -> Right CertActive
        "CERT_ERROR" -> Right CertError
        x -> Left ("Unable to parse DomainProvisioningCertStatus from: " <> x)

instance ToHttpApiData DomainProvisioningCertStatus where
    toQueryParam = \case
        CertStatusUnspecified -> "CERT_STATUS_UNSPECIFIED"
        CertPending -> "CERT_PENDING"
        CertMissing -> "CERT_MISSING"
        CertProcessing -> "CERT_PROCESSING"
        CertPropagating -> "CERT_PROPAGATING"
        CertActive -> "CERT_ACTIVE"
        CertError -> "CERT_ERROR"

instance FromJSON DomainProvisioningCertStatus where
    parseJSON = parseJSONText "DomainProvisioningCertStatus"

instance ToJSON DomainProvisioningCertStatus where
    toJSON = toJSONText

-- | Output only. The current status of a particular file in the specified
-- version.
-- The value will be either \`pending upload\` or \`uploaded\`.
data VersionFileStatus
    = StatusUnspecified
      -- ^ @STATUS_UNSPECIFIED@
      -- The default status; should not be intentionally used.
    | Expected
      -- ^ @EXPECTED@
      -- The file has been included in the version and is expected to be uploaded
      -- in the near future.
    | Active
      -- ^ @ACTIVE@
      -- The file has already been uploaded to Firebase Hosting.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VersionFileStatus

instance FromHttpApiData VersionFileStatus where
    parseQueryParam = \case
        "STATUS_UNSPECIFIED" -> Right StatusUnspecified
        "EXPECTED" -> Right Expected
        "ACTIVE" -> Right Active
        x -> Left ("Unable to parse VersionFileStatus from: " <> x)

instance ToHttpApiData VersionFileStatus where
    toQueryParam = \case
        StatusUnspecified -> "STATUS_UNSPECIFIED"
        Expected -> "EXPECTED"
        Active -> "ACTIVE"

instance FromJSON VersionFileStatus where
    parseJSON = parseJSONText "VersionFileStatus"

instance ToJSON VersionFileStatus where
    toJSON = toJSONText

-- | Defines how to handle a trailing slash in the URL path.
data ServingConfigTrailingSlashBehavior
    = TrailingSlashBehaviorUnspecified
      -- ^ @TRAILING_SLASH_BEHAVIOR_UNSPECIFIED@
      -- No behavior is specified.
      -- Files are served at their exact location only, and trailing slashes are
      -- only added to directory indexes.
    | Add
      -- ^ @ADD@
      -- Trailing slashes are _added_ to directory indexes as well as to any URL
      -- path not ending in a file extension.
    | Remove
      -- ^ @REMOVE@
      -- Trailing slashes are _removed_ from directory indexes as well as from
      -- any URL path not ending in a file extension.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ServingConfigTrailingSlashBehavior

instance FromHttpApiData ServingConfigTrailingSlashBehavior where
    parseQueryParam = \case
        "TRAILING_SLASH_BEHAVIOR_UNSPECIFIED" -> Right TrailingSlashBehaviorUnspecified
        "ADD" -> Right Add
        "REMOVE" -> Right Remove
        x -> Left ("Unable to parse ServingConfigTrailingSlashBehavior from: " <> x)

instance ToHttpApiData ServingConfigTrailingSlashBehavior where
    toQueryParam = \case
        TrailingSlashBehaviorUnspecified -> "TRAILING_SLASH_BEHAVIOR_UNSPECIFIED"
        Add -> "ADD"
        Remove -> "REMOVE"

instance FromJSON ServingConfigTrailingSlashBehavior where
    parseJSON = parseJSONText "ServingConfigTrailingSlashBehavior"

instance ToJSON ServingConfigTrailingSlashBehavior where
    toJSON = toJSONText

-- | Explains the reason for the release.
-- Specify a value for this field only when creating a \`SITE_DISABLE\`
-- type release.
data ReleaseType
    = TypeUnspecified
      -- ^ @TYPE_UNSPECIFIED@
      -- An unspecified type. Indicates that a version was released.
      -- This is the default value when no other \`type\` is explicitly
      -- specified.
    | Deploy
      -- ^ @DEPLOY@
      -- A version was uploaded to Firebase Hosting and released.
    | Rollback
      -- ^ @ROLLBACK@
      -- The release points back to a previously deployed version.
    | SiteDisable
      -- ^ @SITE_DISABLE@
      -- The release prevents the site from serving content. Firebase Hosting
      -- acts as if the site never existed.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ReleaseType

instance FromHttpApiData ReleaseType where
    parseQueryParam = \case
        "TYPE_UNSPECIFIED" -> Right TypeUnspecified
        "DEPLOY" -> Right Deploy
        "ROLLBACK" -> Right Rollback
        "SITE_DISABLE" -> Right SiteDisable
        x -> Left ("Unable to parse ReleaseType from: " <> x)

instance ToHttpApiData ReleaseType where
    toQueryParam = \case
        TypeUnspecified -> "TYPE_UNSPECIFIED"
        Deploy -> "DEPLOY"
        Rollback -> "ROLLBACK"
        SiteDisable -> "SITE_DISABLE"

instance FromJSON ReleaseType where
    parseJSON = parseJSONText "ReleaseType"

instance ToJSON ReleaseType where
    toJSON = toJSONText
