{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CloudAsset.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudAsset.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | Asset content type. If not specified, no content but the asset name will
-- be returned.
data GoogleCloudAssetV1p7beta1ExportAssetsRequestContentType
    = ContentTypeUnspecified
      -- ^ @CONTENT_TYPE_UNSPECIFIED@
      -- Unspecified content type.
    | Resource
      -- ^ @RESOURCE@
      -- Resource metadata.
    | IAMPolicy
      -- ^ @IAM_POLICY@
      -- The actual IAM policy set on a resource.
    | OrgPolicy
      -- ^ @ORG_POLICY@
      -- The Cloud Organization Policy set on an asset.
    | AccessPolicy
      -- ^ @ACCESS_POLICY@
      -- The Cloud Access context manager Policy set on an asset.
    | Relationship
      -- ^ @RELATIONSHIP@
      -- The related resources.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudAssetV1p7beta1ExportAssetsRequestContentType

instance FromHttpApiData GoogleCloudAssetV1p7beta1ExportAssetsRequestContentType where
    parseQueryParam = \case
        "CONTENT_TYPE_UNSPECIFIED" -> Right ContentTypeUnspecified
        "RESOURCE" -> Right Resource
        "IAM_POLICY" -> Right IAMPolicy
        "ORG_POLICY" -> Right OrgPolicy
        "ACCESS_POLICY" -> Right AccessPolicy
        "RELATIONSHIP" -> Right Relationship
        x -> Left ("Unable to parse GoogleCloudAssetV1p7beta1ExportAssetsRequestContentType from: " <> x)

instance ToHttpApiData GoogleCloudAssetV1p7beta1ExportAssetsRequestContentType where
    toQueryParam = \case
        ContentTypeUnspecified -> "CONTENT_TYPE_UNSPECIFIED"
        Resource -> "RESOURCE"
        IAMPolicy -> "IAM_POLICY"
        OrgPolicy -> "ORG_POLICY"
        AccessPolicy -> "ACCESS_POLICY"
        Relationship -> "RELATIONSHIP"

instance FromJSON GoogleCloudAssetV1p7beta1ExportAssetsRequestContentType where
    parseJSON = parseJSONText "GoogleCloudAssetV1p7beta1ExportAssetsRequestContentType"

instance ToJSON GoogleCloudAssetV1p7beta1ExportAssetsRequestContentType where
    toJSON = toJSONText

-- | How the \`conditions\` list should be combined to determine if a request
-- is granted this \`AccessLevel\`. If AND is used, each \`Condition\` in
-- \`conditions\` must be satisfied for the \`AccessLevel\` to be applied.
-- If OR is used, at least one \`Condition\` in \`conditions\` must be
-- satisfied for the \`AccessLevel\` to be applied. Default behavior is
-- AND.
data GoogleIdentityAccesscontextManagerV1BasicLevelCombiningFunction
    = And
      -- ^ @AND@
      -- All \`Conditions\` must be true for the \`BasicLevel\` to be true.
    | OR
      -- ^ @OR@
      -- If at least one \`Condition\` is true, then the \`BasicLevel\` is true.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleIdentityAccesscontextManagerV1BasicLevelCombiningFunction

instance FromHttpApiData GoogleIdentityAccesscontextManagerV1BasicLevelCombiningFunction where
    parseQueryParam = \case
        "AND" -> Right And
        "OR" -> Right OR
        x -> Left ("Unable to parse GoogleIdentityAccesscontextManagerV1BasicLevelCombiningFunction from: " <> x)

instance ToHttpApiData GoogleIdentityAccesscontextManagerV1BasicLevelCombiningFunction where
    toQueryParam = \case
        And -> "AND"
        OR -> "OR"

instance FromJSON GoogleIdentityAccesscontextManagerV1BasicLevelCombiningFunction where
    parseJSON = parseJSONText "GoogleIdentityAccesscontextManagerV1BasicLevelCombiningFunction"

instance ToJSON GoogleIdentityAccesscontextManagerV1BasicLevelCombiningFunction where
    toJSON = toJSONText

-- | Perimeter type indicator. A single project is allowed to be a member of
-- single regular perimeter, but multiple service perimeter bridges. A
-- project cannot be a included in a perimeter bridge without being
-- included in regular perimeter. For perimeter bridges, the restricted
-- service list as well as access level lists must be empty.
data GoogleIdentityAccesscontextManagerV1ServicePerimeterPerimeterType
    = PerimeterTypeRegular
      -- ^ @PERIMETER_TYPE_REGULAR@
      -- Regular Perimeter.
    | PerimeterTypeBridge
      -- ^ @PERIMETER_TYPE_BRIDGE@
      -- Perimeter Bridge.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleIdentityAccesscontextManagerV1ServicePerimeterPerimeterType

instance FromHttpApiData GoogleIdentityAccesscontextManagerV1ServicePerimeterPerimeterType where
    parseQueryParam = \case
        "PERIMETER_TYPE_REGULAR" -> Right PerimeterTypeRegular
        "PERIMETER_TYPE_BRIDGE" -> Right PerimeterTypeBridge
        x -> Left ("Unable to parse GoogleIdentityAccesscontextManagerV1ServicePerimeterPerimeterType from: " <> x)

instance ToHttpApiData GoogleIdentityAccesscontextManagerV1ServicePerimeterPerimeterType where
    toQueryParam = \case
        PerimeterTypeRegular -> "PERIMETER_TYPE_REGULAR"
        PerimeterTypeBridge -> "PERIMETER_TYPE_BRIDGE"

instance FromJSON GoogleIdentityAccesscontextManagerV1ServicePerimeterPerimeterType where
    parseJSON = parseJSONText "GoogleIdentityAccesscontextManagerV1ServicePerimeterPerimeterType"

instance ToJSON GoogleIdentityAccesscontextManagerV1ServicePerimeterPerimeterType where
    toJSON = toJSONText

-- | Required. The allowed OS type.
data GoogleIdentityAccesscontextManagerV1OSConstraintOSType
    = OSUnspecified
      -- ^ @OS_UNSPECIFIED@
      -- The operating system of the device is not specified or not known.
    | DesktopMAC
      -- ^ @DESKTOP_MAC@
      -- A desktop Mac operating system.
    | DesktopWindows
      -- ^ @DESKTOP_WINDOWS@
      -- A desktop Windows operating system.
    | DesktopLinux
      -- ^ @DESKTOP_LINUX@
      -- A desktop Linux operating system.
    | DesktopChromeOS
      -- ^ @DESKTOP_CHROME_OS@
      -- A desktop ChromeOS operating system.
    | Android
      -- ^ @ANDROID@
      -- An Android operating system.
    | Ios
      -- ^ @IOS@
      -- An iOS operating system.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleIdentityAccesscontextManagerV1OSConstraintOSType

instance FromHttpApiData GoogleIdentityAccesscontextManagerV1OSConstraintOSType where
    parseQueryParam = \case
        "OS_UNSPECIFIED" -> Right OSUnspecified
        "DESKTOP_MAC" -> Right DesktopMAC
        "DESKTOP_WINDOWS" -> Right DesktopWindows
        "DESKTOP_LINUX" -> Right DesktopLinux
        "DESKTOP_CHROME_OS" -> Right DesktopChromeOS
        "ANDROID" -> Right Android
        "IOS" -> Right Ios
        x -> Left ("Unable to parse GoogleIdentityAccesscontextManagerV1OSConstraintOSType from: " <> x)

instance ToHttpApiData GoogleIdentityAccesscontextManagerV1OSConstraintOSType where
    toQueryParam = \case
        OSUnspecified -> "OS_UNSPECIFIED"
        DesktopMAC -> "DESKTOP_MAC"
        DesktopWindows -> "DESKTOP_WINDOWS"
        DesktopLinux -> "DESKTOP_LINUX"
        DesktopChromeOS -> "DESKTOP_CHROME_OS"
        Android -> "ANDROID"
        Ios -> "IOS"

instance FromJSON GoogleIdentityAccesscontextManagerV1OSConstraintOSType where
    parseJSON = parseJSONText "GoogleIdentityAccesscontextManagerV1OSConstraintOSType"

instance ToJSON GoogleIdentityAccesscontextManagerV1OSConstraintOSType where
    toJSON = toJSONText

data GoogleIdentityAccesscontextManagerV1DevicePolicyAllowedDeviceManagementLevelsItem
    = ManagementUnspecified
      -- ^ @MANAGEMENT_UNSPECIFIED@
      -- The device\'s management level is not specified or not known.
    | None
      -- ^ @NONE@
      -- The device is not managed.
    | Basic
      -- ^ @BASIC@
      -- Basic management is enabled, which is generally limited to monitoring
      -- and wiping the corporate account.
    | Complete
      -- ^ @COMPLETE@
      -- Complete device management. This includes more thorough monitoring and
      -- the ability to directly manage the device (such as remote wiping). This
      -- can be enabled through the Android Enterprise Platform.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleIdentityAccesscontextManagerV1DevicePolicyAllowedDeviceManagementLevelsItem

instance FromHttpApiData GoogleIdentityAccesscontextManagerV1DevicePolicyAllowedDeviceManagementLevelsItem where
    parseQueryParam = \case
        "MANAGEMENT_UNSPECIFIED" -> Right ManagementUnspecified
        "NONE" -> Right None
        "BASIC" -> Right Basic
        "COMPLETE" -> Right Complete
        x -> Left ("Unable to parse GoogleIdentityAccesscontextManagerV1DevicePolicyAllowedDeviceManagementLevelsItem from: " <> x)

instance ToHttpApiData GoogleIdentityAccesscontextManagerV1DevicePolicyAllowedDeviceManagementLevelsItem where
    toQueryParam = \case
        ManagementUnspecified -> "MANAGEMENT_UNSPECIFIED"
        None -> "NONE"
        Basic -> "BASIC"
        Complete -> "COMPLETE"

instance FromJSON GoogleIdentityAccesscontextManagerV1DevicePolicyAllowedDeviceManagementLevelsItem where
    parseJSON = parseJSONText "GoogleIdentityAccesscontextManagerV1DevicePolicyAllowedDeviceManagementLevelsItem"

instance ToJSON GoogleIdentityAccesscontextManagerV1DevicePolicyAllowedDeviceManagementLevelsItem where
    toJSON = toJSONText

-- | Specifies the type of identities that are allowed access from outside
-- the perimeter. If left unspecified, then members of \`identities\` field
-- will be allowed access.
data GoogleIdentityAccesscontextManagerV1IngressFromIdentityType
    = IdentityTypeUnspecified
      -- ^ @IDENTITY_TYPE_UNSPECIFIED@
      -- No blanket identity group specified.
    | AnyIdentity
      -- ^ @ANY_IDENTITY@
      -- Authorize access from all identities outside the perimeter.
    | AnyUserAccount
      -- ^ @ANY_USER_ACCOUNT@
      -- Authorize access from all human users outside the perimeter.
    | AnyServiceAccount
      -- ^ @ANY_SERVICE_ACCOUNT@
      -- Authorize access from all service accounts outside the perimeter.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleIdentityAccesscontextManagerV1IngressFromIdentityType

instance FromHttpApiData GoogleIdentityAccesscontextManagerV1IngressFromIdentityType where
    parseQueryParam = \case
        "IDENTITY_TYPE_UNSPECIFIED" -> Right IdentityTypeUnspecified
        "ANY_IDENTITY" -> Right AnyIdentity
        "ANY_USER_ACCOUNT" -> Right AnyUserAccount
        "ANY_SERVICE_ACCOUNT" -> Right AnyServiceAccount
        x -> Left ("Unable to parse GoogleIdentityAccesscontextManagerV1IngressFromIdentityType from: " <> x)

instance ToHttpApiData GoogleIdentityAccesscontextManagerV1IngressFromIdentityType where
    toQueryParam = \case
        IdentityTypeUnspecified -> "IDENTITY_TYPE_UNSPECIFIED"
        AnyIdentity -> "ANY_IDENTITY"
        AnyUserAccount -> "ANY_USER_ACCOUNT"
        AnyServiceAccount -> "ANY_SERVICE_ACCOUNT"

instance FromJSON GoogleIdentityAccesscontextManagerV1IngressFromIdentityType where
    parseJSON = parseJSONText "GoogleIdentityAccesscontextManagerV1IngressFromIdentityType"

instance ToJSON GoogleIdentityAccesscontextManagerV1IngressFromIdentityType where
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

-- | Specifies the type of identities that are allowed access to outside the
-- perimeter. If left unspecified, then members of \`identities\` field
-- will be allowed access.
data GoogleIdentityAccesscontextManagerV1EgressFromIdentityType
    = GIAMVEFITIdentityTypeUnspecified
      -- ^ @IDENTITY_TYPE_UNSPECIFIED@
      -- No blanket identity group specified.
    | GIAMVEFITAnyIdentity
      -- ^ @ANY_IDENTITY@
      -- Authorize access from all identities outside the perimeter.
    | GIAMVEFITAnyUserAccount
      -- ^ @ANY_USER_ACCOUNT@
      -- Authorize access from all human users outside the perimeter.
    | GIAMVEFITAnyServiceAccount
      -- ^ @ANY_SERVICE_ACCOUNT@
      -- Authorize access from all service accounts outside the perimeter.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleIdentityAccesscontextManagerV1EgressFromIdentityType

instance FromHttpApiData GoogleIdentityAccesscontextManagerV1EgressFromIdentityType where
    parseQueryParam = \case
        "IDENTITY_TYPE_UNSPECIFIED" -> Right GIAMVEFITIdentityTypeUnspecified
        "ANY_IDENTITY" -> Right GIAMVEFITAnyIdentity
        "ANY_USER_ACCOUNT" -> Right GIAMVEFITAnyUserAccount
        "ANY_SERVICE_ACCOUNT" -> Right GIAMVEFITAnyServiceAccount
        x -> Left ("Unable to parse GoogleIdentityAccesscontextManagerV1EgressFromIdentityType from: " <> x)

instance ToHttpApiData GoogleIdentityAccesscontextManagerV1EgressFromIdentityType where
    toQueryParam = \case
        GIAMVEFITIdentityTypeUnspecified -> "IDENTITY_TYPE_UNSPECIFIED"
        GIAMVEFITAnyIdentity -> "ANY_IDENTITY"
        GIAMVEFITAnyUserAccount -> "ANY_USER_ACCOUNT"
        GIAMVEFITAnyServiceAccount -> "ANY_SERVICE_ACCOUNT"

instance FromJSON GoogleIdentityAccesscontextManagerV1EgressFromIdentityType where
    parseJSON = parseJSONText "GoogleIdentityAccesscontextManagerV1EgressFromIdentityType"

instance ToJSON GoogleIdentityAccesscontextManagerV1EgressFromIdentityType where
    toJSON = toJSONText

data GoogleIdentityAccesscontextManagerV1DevicePolicyAllowedEncryptionStatusesItem
    = EncryptionUnspecified
      -- ^ @ENCRYPTION_UNSPECIFIED@
      -- The encryption status of the device is not specified or not known.
    | EncryptionUnsupported
      -- ^ @ENCRYPTION_UNSUPPORTED@
      -- The device does not support encryption.
    | Unencrypted
      -- ^ @UNENCRYPTED@
      -- The device supports encryption, but is currently unencrypted.
    | Encrypted
      -- ^ @ENCRYPTED@
      -- The device is encrypted.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleIdentityAccesscontextManagerV1DevicePolicyAllowedEncryptionStatusesItem

instance FromHttpApiData GoogleIdentityAccesscontextManagerV1DevicePolicyAllowedEncryptionStatusesItem where
    parseQueryParam = \case
        "ENCRYPTION_UNSPECIFIED" -> Right EncryptionUnspecified
        "ENCRYPTION_UNSUPPORTED" -> Right EncryptionUnsupported
        "UNENCRYPTED" -> Right Unencrypted
        "ENCRYPTED" -> Right Encrypted
        x -> Left ("Unable to parse GoogleIdentityAccesscontextManagerV1DevicePolicyAllowedEncryptionStatusesItem from: " <> x)

instance ToHttpApiData GoogleIdentityAccesscontextManagerV1DevicePolicyAllowedEncryptionStatusesItem where
    toQueryParam = \case
        EncryptionUnspecified -> "ENCRYPTION_UNSPECIFIED"
        EncryptionUnsupported -> "ENCRYPTION_UNSUPPORTED"
        Unencrypted -> "UNENCRYPTED"
        Encrypted -> "ENCRYPTED"

instance FromJSON GoogleIdentityAccesscontextManagerV1DevicePolicyAllowedEncryptionStatusesItem where
    parseJSON = parseJSONText "GoogleIdentityAccesscontextManagerV1DevicePolicyAllowedEncryptionStatusesItem"

instance ToJSON GoogleIdentityAccesscontextManagerV1DevicePolicyAllowedEncryptionStatusesItem where
    toJSON = toJSONText

-- | The policy all_values state.
data GoogleCloudOrgpolicyV1ListPolicyAllValues
    = AllValuesUnspecified
      -- ^ @ALL_VALUES_UNSPECIFIED@
      -- Indicates that allowed_values or denied_values must be set.
    | Allow
      -- ^ @ALLOW@
      -- A policy with this set allows all values.
    | Deny
      -- ^ @DENY@
      -- A policy with this set denies all values.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudOrgpolicyV1ListPolicyAllValues

instance FromHttpApiData GoogleCloudOrgpolicyV1ListPolicyAllValues where
    parseQueryParam = \case
        "ALL_VALUES_UNSPECIFIED" -> Right AllValuesUnspecified
        "ALLOW" -> Right Allow
        "DENY" -> Right Deny
        x -> Left ("Unable to parse GoogleCloudOrgpolicyV1ListPolicyAllValues from: " <> x)

instance ToHttpApiData GoogleCloudOrgpolicyV1ListPolicyAllValues where
    toQueryParam = \case
        AllValuesUnspecified -> "ALL_VALUES_UNSPECIFIED"
        Allow -> "ALLOW"
        Deny -> "DENY"

instance FromJSON GoogleCloudOrgpolicyV1ListPolicyAllValues where
    parseJSON = parseJSONText "GoogleCloudOrgpolicyV1ListPolicyAllValues"

instance ToJSON GoogleCloudOrgpolicyV1ListPolicyAllValues where
    toJSON = toJSONText

-- | The partition key for BigQuery partitioned table.
data GoogleCloudAssetV1p7beta1PartitionSpecPartitionKey
    = PartitionKeyUnspecified
      -- ^ @PARTITION_KEY_UNSPECIFIED@
      -- Unspecified partition key. If used, it means using non-partitioned
      -- table.
    | ReadTime
      -- ^ @READ_TIME@
      -- The time when the snapshot is taken. If specified as partition key, the
      -- result table(s) is partitoned by the additional timestamp column,
      -- readTime. If [read_time] in ExportAssetsRequest is specified, the
      -- readTime column\'s value will be the same as it. Otherwise, its value
      -- will be the current time that is used to take the snapshot.
    | RequestTime
      -- ^ @REQUEST_TIME@
      -- The time when the request is received and started to be processed. If
      -- specified as partition key, the result table(s) is partitoned by the
      -- requestTime column, an additional timestamp column representing when the
      -- request was received.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudAssetV1p7beta1PartitionSpecPartitionKey

instance FromHttpApiData GoogleCloudAssetV1p7beta1PartitionSpecPartitionKey where
    parseQueryParam = \case
        "PARTITION_KEY_UNSPECIFIED" -> Right PartitionKeyUnspecified
        "READ_TIME" -> Right ReadTime
        "REQUEST_TIME" -> Right RequestTime
        x -> Left ("Unable to parse GoogleCloudAssetV1p7beta1PartitionSpecPartitionKey from: " <> x)

instance ToHttpApiData GoogleCloudAssetV1p7beta1PartitionSpecPartitionKey where
    toQueryParam = \case
        PartitionKeyUnspecified -> "PARTITION_KEY_UNSPECIFIED"
        ReadTime -> "READ_TIME"
        RequestTime -> "REQUEST_TIME"

instance FromJSON GoogleCloudAssetV1p7beta1PartitionSpecPartitionKey where
    parseJSON = parseJSONText "GoogleCloudAssetV1p7beta1PartitionSpecPartitionKey"

instance ToJSON GoogleCloudAssetV1p7beta1PartitionSpecPartitionKey where
    toJSON = toJSONText
