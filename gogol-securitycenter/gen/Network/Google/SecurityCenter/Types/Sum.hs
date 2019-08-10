{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.SecurityCenter.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.SecurityCenter.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

-- | State change of the finding between the points in time.
data ListFindingsResultStateChange
    = Unused
      -- ^ @UNUSED@
      -- State change is unused, this is the canonical default for this enum.
    | Changed
      -- ^ @CHANGED@
      -- The finding has changed state in some way between the points in time and
      -- existed at both points.
    | Unchanged
      -- ^ @UNCHANGED@
      -- The finding has not changed state between the points in time and existed
      -- at both points.
    | Added
      -- ^ @ADDED@
      -- The finding was created between the points in time.
    | Removed
      -- ^ @REMOVED@
      -- The finding at timestamp does not match the filter specified, but it did
      -- at timestamp - compare_duration.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ListFindingsResultStateChange

instance FromHttpApiData ListFindingsResultStateChange where
    parseQueryParam = \case
        "UNUSED" -> Right Unused
        "CHANGED" -> Right Changed
        "UNCHANGED" -> Right Unchanged
        "ADDED" -> Right Added
        "REMOVED" -> Right Removed
        x -> Left ("Unable to parse ListFindingsResultStateChange from: " <> x)

instance ToHttpApiData ListFindingsResultStateChange where
    toQueryParam = \case
        Unused -> "UNUSED"
        Changed -> "CHANGED"
        Unchanged -> "UNCHANGED"
        Added -> "ADDED"
        Removed -> "REMOVED"

instance FromJSON ListFindingsResultStateChange where
    parseJSON = parseJSONText "ListFindingsResultStateChange"

instance ToJSON ListFindingsResultStateChange where
    toJSON = toJSONText

-- | The mode to use for filtering asset discovery.
data AssetDiscoveryConfigInclusionMode
    = InclusionModeUnspecified
      -- ^ @INCLUSION_MODE_UNSPECIFIED@
      -- Unspecified. Setting the mode with this value will disable
      -- inclusion\/exclusion filtering for Asset Discovery.
    | IncludeOnly
      -- ^ @INCLUDE_ONLY@
      -- Asset Discovery will capture only the resources within the projects
      -- specified. All other resources will be ignored.
    | Exclude
      -- ^ @EXCLUDE@
      -- Asset Discovery will ignore all resources under the projects specified.
      -- All other resources will be retrieved.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AssetDiscoveryConfigInclusionMode

instance FromHttpApiData AssetDiscoveryConfigInclusionMode where
    parseQueryParam = \case
        "INCLUSION_MODE_UNSPECIFIED" -> Right InclusionModeUnspecified
        "INCLUDE_ONLY" -> Right IncludeOnly
        "EXCLUDE" -> Right Exclude
        x -> Left ("Unable to parse AssetDiscoveryConfigInclusionMode from: " <> x)

instance ToHttpApiData AssetDiscoveryConfigInclusionMode where
    toQueryParam = \case
        InclusionModeUnspecified -> "INCLUSION_MODE_UNSPECIFIED"
        IncludeOnly -> "INCLUDE_ONLY"
        Exclude -> "EXCLUDE"

instance FromJSON AssetDiscoveryConfigInclusionMode where
    parseJSON = parseJSONText "AssetDiscoveryConfigInclusionMode"

instance ToJSON AssetDiscoveryConfigInclusionMode where
    toJSON = toJSONText

-- | The desired State of the finding.
data SetFindingStateRequestState
    = StateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- Unspecified state.
    | Active
      -- ^ @ACTIVE@
      -- The finding requires attention and has not been addressed yet.
    | Inactive
      -- ^ @INACTIVE@
      -- The finding has been fixed, triaged as a non-issue or otherwise
      -- addressed and is no longer active.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SetFindingStateRequestState

instance FromHttpApiData SetFindingStateRequestState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right StateUnspecified
        "ACTIVE" -> Right Active
        "INACTIVE" -> Right Inactive
        x -> Left ("Unable to parse SetFindingStateRequestState from: " <> x)

instance ToHttpApiData SetFindingStateRequestState where
    toQueryParam = \case
        StateUnspecified -> "STATE_UNSPECIFIED"
        Active -> "ACTIVE"
        Inactive -> "INACTIVE"

instance FromJSON SetFindingStateRequestState where
    parseJSON = parseJSONText "SetFindingStateRequestState"

instance ToJSON SetFindingStateRequestState where
    toJSON = toJSONText

-- | State change of the asset between the points in time.
data ListAssetsResultStateChange
    = LARSCUnused
      -- ^ @UNUSED@
      -- State change is unused, this is the canonical default for this enum.
    | LARSCAdded
      -- ^ @ADDED@
      -- Asset was added between the points in time.
    | LARSCRemoved
      -- ^ @REMOVED@
      -- Asset was removed between the points in time.
    | LARSCActive
      -- ^ @ACTIVE@
      -- Asset was present at both point(s) in time.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ListAssetsResultStateChange

instance FromHttpApiData ListAssetsResultStateChange where
    parseQueryParam = \case
        "UNUSED" -> Right LARSCUnused
        "ADDED" -> Right LARSCAdded
        "REMOVED" -> Right LARSCRemoved
        "ACTIVE" -> Right LARSCActive
        x -> Left ("Unable to parse ListAssetsResultStateChange from: " <> x)

instance ToHttpApiData ListAssetsResultStateChange where
    toQueryParam = \case
        LARSCUnused -> "UNUSED"
        LARSCAdded -> "ADDED"
        LARSCRemoved -> "REMOVED"
        LARSCActive -> "ACTIVE"

instance FromJSON ListAssetsResultStateChange where
    parseJSON = parseJSONText "ListAssetsResultStateChange"

instance ToJSON ListAssetsResultStateChange where
    toJSON = toJSONText

-- | The log type that this config enables.
data AuditLogConfigLogType
    = LogTypeUnspecified
      -- ^ @LOG_TYPE_UNSPECIFIED@
      -- Default case. Should never be this.
    | AdminRead
      -- ^ @ADMIN_READ@
      -- Admin reads. Example: CloudIAM getIamPolicy
    | DataWrite
      -- ^ @DATA_WRITE@
      -- Data writes. Example: CloudSQL Users create
    | DataRead
      -- ^ @DATA_READ@
      -- Data reads. Example: CloudSQL Users list
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AuditLogConfigLogType

instance FromHttpApiData AuditLogConfigLogType where
    parseQueryParam = \case
        "LOG_TYPE_UNSPECIFIED" -> Right LogTypeUnspecified
        "ADMIN_READ" -> Right AdminRead
        "DATA_WRITE" -> Right DataWrite
        "DATA_READ" -> Right DataRead
        x -> Left ("Unable to parse AuditLogConfigLogType from: " <> x)

instance ToHttpApiData AuditLogConfigLogType where
    toQueryParam = \case
        LogTypeUnspecified -> "LOG_TYPE_UNSPECIFIED"
        AdminRead -> "ADMIN_READ"
        DataWrite -> "DATA_WRITE"
        DataRead -> "DATA_READ"

instance FromJSON AuditLogConfigLogType where
    parseJSON = parseJSONText "AuditLogConfigLogType"

instance ToJSON AuditLogConfigLogType where
    toJSON = toJSONText

-- | The state of the finding.
data FindingState
    = FSStateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- Unspecified state.
    | FSActive
      -- ^ @ACTIVE@
      -- The finding requires attention and has not been addressed yet.
    | FSInactive
      -- ^ @INACTIVE@
      -- The finding has been fixed, triaged as a non-issue or otherwise
      -- addressed and is no longer active.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FindingState

instance FromHttpApiData FindingState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right FSStateUnspecified
        "ACTIVE" -> Right FSActive
        "INACTIVE" -> Right FSInactive
        x -> Left ("Unable to parse FindingState from: " <> x)

instance ToHttpApiData FindingState where
    toQueryParam = \case
        FSStateUnspecified -> "STATE_UNSPECIFIED"
        FSActive -> "ACTIVE"
        FSInactive -> "INACTIVE"

instance FromJSON FindingState where
    parseJSON = parseJSONText "FindingState"

instance ToJSON FindingState where
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

-- | The state of an asset discovery run.
data GoogleCloudSecuritycenterV1RunAssetDiscoveryResponseState
    = GCSVRADRSStateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- Asset discovery run state was unspecified.
    | GCSVRADRSCompleted
      -- ^ @COMPLETED@
      -- Asset discovery run completed successfully.
    | GCSVRADRSSuperseded
      -- ^ @SUPERSEDED@
      -- Asset discovery run was cancelled with tasks still pending, as another
      -- run for the same organization was started with a higher priority.
    | GCSVRADRSTerminated
      -- ^ @TERMINATED@
      -- Asset discovery run was killed and terminated.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudSecuritycenterV1RunAssetDiscoveryResponseState

instance FromHttpApiData GoogleCloudSecuritycenterV1RunAssetDiscoveryResponseState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right GCSVRADRSStateUnspecified
        "COMPLETED" -> Right GCSVRADRSCompleted
        "SUPERSEDED" -> Right GCSVRADRSSuperseded
        "TERMINATED" -> Right GCSVRADRSTerminated
        x -> Left ("Unable to parse GoogleCloudSecuritycenterV1RunAssetDiscoveryResponseState from: " <> x)

instance ToHttpApiData GoogleCloudSecuritycenterV1RunAssetDiscoveryResponseState where
    toQueryParam = \case
        GCSVRADRSStateUnspecified -> "STATE_UNSPECIFIED"
        GCSVRADRSCompleted -> "COMPLETED"
        GCSVRADRSSuperseded -> "SUPERSEDED"
        GCSVRADRSTerminated -> "TERMINATED"

instance FromJSON GoogleCloudSecuritycenterV1RunAssetDiscoveryResponseState where
    parseJSON = parseJSONText "GoogleCloudSecuritycenterV1RunAssetDiscoveryResponseState"

instance ToJSON GoogleCloudSecuritycenterV1RunAssetDiscoveryResponseState where
    toJSON = toJSONText

-- | The state of an asset discovery run.
data GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponseState
    = GStateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- Asset discovery run state was unspecified.
    | GCompleted
      -- ^ @COMPLETED@
      -- Asset discovery run completed successfully.
    | GSuperseded
      -- ^ @SUPERSEDED@
      -- Asset discovery run was cancelled with tasks still pending, as another
      -- run for the same organization was started with a higher priority.
    | GTerminated
      -- ^ @TERMINATED@
      -- Asset discovery run was killed and terminated.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponseState

instance FromHttpApiData GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponseState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right GStateUnspecified
        "COMPLETED" -> Right GCompleted
        "SUPERSEDED" -> Right GSuperseded
        "TERMINATED" -> Right GTerminated
        x -> Left ("Unable to parse GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponseState from: " <> x)

instance ToHttpApiData GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponseState where
    toQueryParam = \case
        GStateUnspecified -> "STATE_UNSPECIFIED"
        GCompleted -> "COMPLETED"
        GSuperseded -> "SUPERSEDED"
        GTerminated -> "TERMINATED"

instance FromJSON GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponseState where
    parseJSON = parseJSONText "GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponseState"

instance ToJSON GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponseState where
    toJSON = toJSONText
