{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.File.Types.Sum
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.File.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | Output only. Current lifecycle state of the resource (e.g. if it\'s
-- being created or ready to use).
data GoogleCloudSaasacceleratorManagementProvidersV1InstanceState
    = StateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- Unspecified state.
    | Creating
      -- ^ @CREATING@
      -- Instance is being created.
    | Ready
      -- ^ @READY@
      -- Instance has been created and is ready to use.
    | Updating
      -- ^ @UPDATING@
      -- Instance is being updated.
    | Repairing
      -- ^ @REPAIRING@
      -- Instance is unheathy and under repair.
    | Deleting
      -- ^ @DELETING@
      -- Instance is being deleted.
    | Error'
      -- ^ @ERROR@
      -- Instance encountered an error and is in indeterministic state.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudSaasacceleratorManagementProvidersV1InstanceState

instance FromHttpApiData GoogleCloudSaasacceleratorManagementProvidersV1InstanceState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right StateUnspecified
        "CREATING" -> Right Creating
        "READY" -> Right Ready
        "UPDATING" -> Right Updating
        "REPAIRING" -> Right Repairing
        "DELETING" -> Right Deleting
        "ERROR" -> Right Error'
        x -> Left ("Unable to parse GoogleCloudSaasacceleratorManagementProvidersV1InstanceState from: " <> x)

instance ToHttpApiData GoogleCloudSaasacceleratorManagementProvidersV1InstanceState where
    toQueryParam = \case
        StateUnspecified -> "STATE_UNSPECIFIED"
        Creating -> "CREATING"
        Ready -> "READY"
        Updating -> "UPDATING"
        Repairing -> "REPAIRING"
        Deleting -> "DELETING"
        Error' -> "ERROR"

instance FromJSON GoogleCloudSaasacceleratorManagementProvidersV1InstanceState where
    parseJSON = parseJSONText "GoogleCloudSaasacceleratorManagementProvidersV1InstanceState"

instance ToJSON GoogleCloudSaasacceleratorManagementProvidersV1InstanceState where
    toJSON = toJSONText

-- | Optional. The state of the policy.
data MaintenancePolicyState
    = MPSStateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- Unspecified state.
    | MPSReady
      -- ^ @READY@
      -- Resource is ready to be used.
    | MPSDeleting
      -- ^ @DELETING@
      -- Resource is being deleted. It can no longer be attached to instances.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MaintenancePolicyState

instance FromHttpApiData MaintenancePolicyState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right MPSStateUnspecified
        "READY" -> Right MPSReady
        "DELETING" -> Right MPSDeleting
        x -> Left ("Unable to parse MaintenancePolicyState from: " <> x)

instance ToHttpApiData MaintenancePolicyState where
    toQueryParam = \case
        MPSStateUnspecified -> "STATE_UNSPECIFIED"
        MPSReady -> "READY"
        MPSDeleting -> "DELETING"

instance FromJSON MaintenancePolicyState where
    parseJSON = parseJSONText "MaintenancePolicyState"

instance ToJSON MaintenancePolicyState where
    toJSON = toJSONText

-- | Either READ_ONLY, for allowing only read requests on the exported
-- directory, or READ_WRITE, for allowing both read and write requests. The
-- default is READ_WRITE.
data NfsExportOptionsAccessMode
    = AccessModeUnspecified
      -- ^ @ACCESS_MODE_UNSPECIFIED@
      -- AccessMode not set.
    | ReadOnly
      -- ^ @READ_ONLY@
      -- The client can only read the file share.
    | ReadWrite
      -- ^ @READ_WRITE@
      -- The client can read and write the file share (default).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable NfsExportOptionsAccessMode

instance FromHttpApiData NfsExportOptionsAccessMode where
    parseQueryParam = \case
        "ACCESS_MODE_UNSPECIFIED" -> Right AccessModeUnspecified
        "READ_ONLY" -> Right ReadOnly
        "READ_WRITE" -> Right ReadWrite
        x -> Left ("Unable to parse NfsExportOptionsAccessMode from: " <> x)

instance ToHttpApiData NfsExportOptionsAccessMode where
    toQueryParam = \case
        AccessModeUnspecified -> "ACCESS_MODE_UNSPECIFIED"
        ReadOnly -> "READ_ONLY"
        ReadWrite -> "READ_WRITE"

instance FromJSON NfsExportOptionsAccessMode where
    parseJSON = parseJSONText "NfsExportOptionsAccessMode"

instance ToJSON NfsExportOptionsAccessMode where
    toJSON = toJSONText

-- | Output only. The service tier of the source Cloud Filestore instance
-- that this backup is created from.
data BackupSourceInstanceTier
    = TierUnspecified
      -- ^ @TIER_UNSPECIFIED@
      -- Not set.
    | Standard
      -- ^ @STANDARD@
      -- STANDARD tier.
    | Premium
      -- ^ @PREMIUM@
      -- PREMIUM tier.
    | BasicHdd
      -- ^ @BASIC_HDD@
      -- BASIC instances offer a maximum capacity of 63.9 TB. BASIC_HDD is an
      -- alias for STANDARD Tier, offering economical performance backed by HDD.
    | BasicSsd
      -- ^ @BASIC_SSD@
      -- BASIC instances offer a maximum capacity of 63.9 TB. BASIC_SSD is an
      -- alias for PREMIUM Tier, and offers improved performance backed by SSD.
    | HighScaleSsd
      -- ^ @HIGH_SCALE_SSD@
      -- HIGH_SCALE instances offer expanded capacity and performance scaling
      -- capabilities.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BackupSourceInstanceTier

instance FromHttpApiData BackupSourceInstanceTier where
    parseQueryParam = \case
        "TIER_UNSPECIFIED" -> Right TierUnspecified
        "STANDARD" -> Right Standard
        "PREMIUM" -> Right Premium
        "BASIC_HDD" -> Right BasicHdd
        "BASIC_SSD" -> Right BasicSsd
        "HIGH_SCALE_SSD" -> Right HighScaleSsd
        x -> Left ("Unable to parse BackupSourceInstanceTier from: " <> x)

instance ToHttpApiData BackupSourceInstanceTier where
    toQueryParam = \case
        TierUnspecified -> "TIER_UNSPECIFIED"
        Standard -> "STANDARD"
        Premium -> "PREMIUM"
        BasicHdd -> "BASIC_HDD"
        BasicSsd -> "BASIC_SSD"
        HighScaleSsd -> "HIGH_SCALE_SSD"

instance FromJSON BackupSourceInstanceTier where
    parseJSON = parseJSONText "BackupSourceInstanceTier"

instance ToJSON BackupSourceInstanceTier where
    toJSON = toJSONText

-- | The service tier of the instance.
data InstanceTier
    = ITTierUnspecified
      -- ^ @TIER_UNSPECIFIED@
      -- Not set.
    | ITStandard
      -- ^ @STANDARD@
      -- STANDARD tier.
    | ITPremium
      -- ^ @PREMIUM@
      -- PREMIUM tier.
    | ITBasicHdd
      -- ^ @BASIC_HDD@
      -- BASIC instances offer a maximum capacity of 63.9 TB. BASIC_HDD is an
      -- alias for STANDARD Tier, offering economical performance backed by HDD.
    | ITBasicSsd
      -- ^ @BASIC_SSD@
      -- BASIC instances offer a maximum capacity of 63.9 TB. BASIC_SSD is an
      -- alias for PREMIUM Tier, and offers improved performance backed by SSD.
    | ITHighScaleSsd
      -- ^ @HIGH_SCALE_SSD@
      -- HIGH_SCALE instances offer expanded capacity and performance scaling
      -- capabilities.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InstanceTier

instance FromHttpApiData InstanceTier where
    parseQueryParam = \case
        "TIER_UNSPECIFIED" -> Right ITTierUnspecified
        "STANDARD" -> Right ITStandard
        "PREMIUM" -> Right ITPremium
        "BASIC_HDD" -> Right ITBasicHdd
        "BASIC_SSD" -> Right ITBasicSsd
        "HIGH_SCALE_SSD" -> Right ITHighScaleSsd
        x -> Left ("Unable to parse InstanceTier from: " <> x)

instance ToHttpApiData InstanceTier where
    toQueryParam = \case
        ITTierUnspecified -> "TIER_UNSPECIFIED"
        ITStandard -> "STANDARD"
        ITPremium -> "PREMIUM"
        ITBasicHdd -> "BASIC_HDD"
        ITBasicSsd -> "BASIC_SSD"
        ITHighScaleSsd -> "HIGH_SCALE_SSD"

instance FromJSON InstanceTier where
    parseJSON = parseJSONText "InstanceTier"

instance ToJSON InstanceTier where
    toJSON = toJSONText

data NetworkConfigModesItem
    = AddressModeUnspecified
      -- ^ @ADDRESS_MODE_UNSPECIFIED@
      -- Internet protocol not set.
    | ModeIPV4
      -- ^ @MODE_IPV4@
      -- Use the IPv4 internet protocol.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable NetworkConfigModesItem

instance FromHttpApiData NetworkConfigModesItem where
    parseQueryParam = \case
        "ADDRESS_MODE_UNSPECIFIED" -> Right AddressModeUnspecified
        "MODE_IPV4" -> Right ModeIPV4
        x -> Left ("Unable to parse NetworkConfigModesItem from: " <> x)

instance ToHttpApiData NetworkConfigModesItem where
    toQueryParam = \case
        AddressModeUnspecified -> "ADDRESS_MODE_UNSPECIFIED"
        ModeIPV4 -> "MODE_IPV4"

instance FromJSON NetworkConfigModesItem where
    parseJSON = parseJSONText "NetworkConfigModesItem"

instance ToJSON NetworkConfigModesItem where
    toJSON = toJSONText

-- | Allows to define schedule that runs specified day of the week.
data ScheduleDay
    = DayOfWeekUnspecified
      -- ^ @DAY_OF_WEEK_UNSPECIFIED@
      -- The day of the week is unspecified.
    | Monday
      -- ^ @MONDAY@
      -- Monday
    | Tuesday
      -- ^ @TUESDAY@
      -- Tuesday
    | Wednesday
      -- ^ @WEDNESDAY@
      -- Wednesday
    | Thursday
      -- ^ @THURSDAY@
      -- Thursday
    | Friday
      -- ^ @FRIDAY@
      -- Friday
    | Saturday
      -- ^ @SATURDAY@
      -- Saturday
    | Sunday
      -- ^ @SUNDAY@
      -- Sunday
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ScheduleDay

instance FromHttpApiData ScheduleDay where
    parseQueryParam = \case
        "DAY_OF_WEEK_UNSPECIFIED" -> Right DayOfWeekUnspecified
        "MONDAY" -> Right Monday
        "TUESDAY" -> Right Tuesday
        "WEDNESDAY" -> Right Wednesday
        "THURSDAY" -> Right Thursday
        "FRIDAY" -> Right Friday
        "SATURDAY" -> Right Saturday
        "SUNDAY" -> Right Sunday
        x -> Left ("Unable to parse ScheduleDay from: " <> x)

instance ToHttpApiData ScheduleDay where
    toQueryParam = \case
        DayOfWeekUnspecified -> "DAY_OF_WEEK_UNSPECIFIED"
        Monday -> "MONDAY"
        Tuesday -> "TUESDAY"
        Wednesday -> "WEDNESDAY"
        Thursday -> "THURSDAY"
        Friday -> "FRIDAY"
        Saturday -> "SATURDAY"
        Sunday -> "SUNDAY"

instance FromJSON ScheduleDay where
    parseJSON = parseJSONText "ScheduleDay"

instance ToJSON ScheduleDay where
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

-- | Optional. Relative scheduling channel applied to resource.
data UpdatePolicyChannel
    = UpdateChannelUnspecified
      -- ^ @UPDATE_CHANNEL_UNSPECIFIED@
      -- Unspecified channel.
    | Earlier
      -- ^ @EARLIER@
      -- Early channel within a customer project.
    | Later
      -- ^ @LATER@
      -- Later channel within a customer project.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UpdatePolicyChannel

instance FromHttpApiData UpdatePolicyChannel where
    parseQueryParam = \case
        "UPDATE_CHANNEL_UNSPECIFIED" -> Right UpdateChannelUnspecified
        "EARLIER" -> Right Earlier
        "LATER" -> Right Later
        x -> Left ("Unable to parse UpdatePolicyChannel from: " <> x)

instance ToHttpApiData UpdatePolicyChannel where
    toQueryParam = \case
        UpdateChannelUnspecified -> "UPDATE_CHANNEL_UNSPECIFIED"
        Earlier -> "EARLIER"
        Later -> "LATER"

instance FromJSON UpdatePolicyChannel where
    parseJSON = parseJSONText "UpdatePolicyChannel"

instance ToJSON UpdatePolicyChannel where
    toJSON = toJSONText

-- | Output only. The instance state.
data InstanceState
    = ISStateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- State not set.
    | ISCreating
      -- ^ @CREATING@
      -- The instance is being created.
    | ISReady
      -- ^ @READY@
      -- The instance is available for use.
    | ISRepairing
      -- ^ @REPAIRING@
      -- Work is being done on the instance. You can get further details from the
      -- \`statusMessage\` field of the \`Instance\` resource.
    | ISDeleting
      -- ^ @DELETING@
      -- The instance is shutting down.
    | ISError'
      -- ^ @ERROR@
      -- The instance is experiencing an issue and might be unusable. You can get
      -- further details from the \`statusMessage\` field of the \`Instance\`
      -- resource.
    | ISRestoring
      -- ^ @RESTORING@
      -- The instance is restoring a backup to an existing file share and may be
      -- unusable during this time.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InstanceState

instance FromHttpApiData InstanceState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right ISStateUnspecified
        "CREATING" -> Right ISCreating
        "READY" -> Right ISReady
        "REPAIRING" -> Right ISRepairing
        "DELETING" -> Right ISDeleting
        "ERROR" -> Right ISError'
        "RESTORING" -> Right ISRestoring
        x -> Left ("Unable to parse InstanceState from: " <> x)

instance ToHttpApiData InstanceState where
    toQueryParam = \case
        ISStateUnspecified -> "STATE_UNSPECIFIED"
        ISCreating -> "CREATING"
        ISReady -> "READY"
        ISRepairing -> "REPAIRING"
        ISDeleting -> "DELETING"
        ISError' -> "ERROR"
        ISRestoring -> "RESTORING"

instance FromJSON InstanceState where
    parseJSON = parseJSONText "InstanceState"

instance ToJSON InstanceState where
    toJSON = toJSONText

-- | Either NO_ROOT_SQUASH, for allowing root access on the exported
-- directory, or ROOT_SQUASH, for not allowing root access. The default is
-- NO_ROOT_SQUASH.
data NfsExportOptionsSquashMode
    = SquashModeUnspecified
      -- ^ @SQUASH_MODE_UNSPECIFIED@
      -- SquashMode not set.
    | NoRootSquash
      -- ^ @NO_ROOT_SQUASH@
      -- The Root user has root access to the file share (default).
    | RootSquash
      -- ^ @ROOT_SQUASH@
      -- The Root user has squashed access to the anonymous uid\/gid.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable NfsExportOptionsSquashMode

instance FromHttpApiData NfsExportOptionsSquashMode where
    parseQueryParam = \case
        "SQUASH_MODE_UNSPECIFIED" -> Right SquashModeUnspecified
        "NO_ROOT_SQUASH" -> Right NoRootSquash
        "ROOT_SQUASH" -> Right RootSquash
        x -> Left ("Unable to parse NfsExportOptionsSquashMode from: " <> x)

instance ToHttpApiData NfsExportOptionsSquashMode where
    toQueryParam = \case
        SquashModeUnspecified -> "SQUASH_MODE_UNSPECIFIED"
        NoRootSquash -> "NO_ROOT_SQUASH"
        RootSquash -> "ROOT_SQUASH"

instance FromJSON NfsExportOptionsSquashMode where
    parseJSON = parseJSONText "NfsExportOptionsSquashMode"

instance ToJSON NfsExportOptionsSquashMode where
    toJSON = toJSONText

-- | Output only. The backup state.
data BackupState
    = BSStateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- State not set.
    | BSCreating
      -- ^ @CREATING@
      -- Backup is being created.
    | BSFinalizing
      -- ^ @FINALIZING@
      -- Backup has been taken and the operation is being finalized. At this
      -- point, changes to the file share will not be reflected in the backup.
    | BSReady
      -- ^ @READY@
      -- Backup is available for use.
    | BSDeleting
      -- ^ @DELETING@
      -- Backup is being deleted.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BackupState

instance FromHttpApiData BackupState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right BSStateUnspecified
        "CREATING" -> Right BSCreating
        "FINALIZING" -> Right BSFinalizing
        "READY" -> Right BSReady
        "DELETING" -> Right BSDeleting
        x -> Left ("Unable to parse BackupState from: " <> x)

instance ToHttpApiData BackupState where
    toQueryParam = \case
        BSStateUnspecified -> "STATE_UNSPECIFIED"
        BSCreating -> "CREATING"
        BSFinalizing -> "FINALIZING"
        BSReady -> "READY"
        BSDeleting -> "DELETING"

instance FromJSON BackupState where
    parseJSON = parseJSONText "BackupState"

instance ToJSON BackupState where
    toJSON = toJSONText
