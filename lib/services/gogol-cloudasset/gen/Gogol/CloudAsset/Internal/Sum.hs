{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.CloudAsset.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.CloudAsset.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AuditLogConfig_LogType
    AuditLogConfig_LogType
      ( AuditLogConfig_LogType_LOGTYPEUNSPECIFIED,
        AuditLogConfig_LogType_ADMINREAD,
        AuditLogConfig_LogType_DATAWRITE,
        AuditLogConfig_LogType_DATAREAD,
        ..
      ),

    -- * GoogleCloudAssetV1p7beta1ExportAssetsRequest_ContentType
    GoogleCloudAssetV1p7beta1ExportAssetsRequest_ContentType
      ( GoogleCloudAssetV1p7beta1ExportAssetsRequest_ContentType_CONTENTTYPEUNSPECIFIED,
        GoogleCloudAssetV1p7beta1ExportAssetsRequest_ContentType_Resource,
        GoogleCloudAssetV1p7beta1ExportAssetsRequest_ContentType_IAMPOLICY,
        GoogleCloudAssetV1p7beta1ExportAssetsRequest_ContentType_ORGPOLICY,
        GoogleCloudAssetV1p7beta1ExportAssetsRequest_ContentType_ACCESSPOLICY,
        GoogleCloudAssetV1p7beta1ExportAssetsRequest_ContentType_Relationship,
        ..
      ),

    -- * GoogleCloudAssetV1p7beta1PartitionSpec_PartitionKey
    GoogleCloudAssetV1p7beta1PartitionSpec_PartitionKey
      ( GoogleCloudAssetV1p7beta1PartitionSpec_PartitionKey_PARTITIONKEYUNSPECIFIED,
        GoogleCloudAssetV1p7beta1PartitionSpec_PartitionKey_READTIME,
        GoogleCloudAssetV1p7beta1PartitionSpec_PartitionKey_REQUESTTIME,
        ..
      ),

    -- * GoogleCloudOrgpolicyV1ListPolicy_AllValues
    GoogleCloudOrgpolicyV1ListPolicy_AllValues
      ( GoogleCloudOrgpolicyV1ListPolicy_AllValues_ALLVALUESUNSPECIFIED,
        GoogleCloudOrgpolicyV1ListPolicy_AllValues_Allow,
        GoogleCloudOrgpolicyV1ListPolicy_AllValues_Deny,
        ..
      ),

    -- * GoogleIdentityAccesscontextmanagerV1BasicLevel_CombiningFunction
    GoogleIdentityAccesscontextmanagerV1BasicLevel_CombiningFunction
      ( GoogleIdentityAccesscontextmanagerV1BasicLevel_CombiningFunction_And,
        GoogleIdentityAccesscontextmanagerV1BasicLevel_CombiningFunction_OR,
        ..
      ),

    -- * GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedDeviceManagementLevelsItem
    GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedDeviceManagementLevelsItem
      ( GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedDeviceManagementLevelsItem_MANAGEMENTUNSPECIFIED,
        GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedDeviceManagementLevelsItem_None,
        GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedDeviceManagementLevelsItem_Basic,
        GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedDeviceManagementLevelsItem_Complete,
        ..
      ),

    -- * GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedEncryptionStatusesItem
    GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedEncryptionStatusesItem
      ( GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedEncryptionStatusesItem_ENCRYPTIONUNSPECIFIED,
        GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedEncryptionStatusesItem_ENCRYPTIONUNSUPPORTED,
        GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedEncryptionStatusesItem_Unencrypted,
        GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedEncryptionStatusesItem_Encrypted,
        ..
      ),

    -- * GoogleIdentityAccesscontextmanagerV1EgressFrom_IdentityType
    GoogleIdentityAccesscontextmanagerV1EgressFrom_IdentityType
      ( GoogleIdentityAccesscontextmanagerV1EgressFrom_IdentityType_IDENTITYTYPEUNSPECIFIED,
        GoogleIdentityAccesscontextmanagerV1EgressFrom_IdentityType_ANYIDENTITY,
        GoogleIdentityAccesscontextmanagerV1EgressFrom_IdentityType_ANYUSERACCOUNT,
        GoogleIdentityAccesscontextmanagerV1EgressFrom_IdentityType_ANYSERVICEACCOUNT,
        ..
      ),

    -- * GoogleIdentityAccesscontextmanagerV1IngressFrom_IdentityType
    GoogleIdentityAccesscontextmanagerV1IngressFrom_IdentityType
      ( GoogleIdentityAccesscontextmanagerV1IngressFrom_IdentityType_IDENTITYTYPEUNSPECIFIED,
        GoogleIdentityAccesscontextmanagerV1IngressFrom_IdentityType_ANYIDENTITY,
        GoogleIdentityAccesscontextmanagerV1IngressFrom_IdentityType_ANYUSERACCOUNT,
        GoogleIdentityAccesscontextmanagerV1IngressFrom_IdentityType_ANYSERVICEACCOUNT,
        ..
      ),

    -- * GoogleIdentityAccesscontextmanagerV1OsConstraint_OsType
    GoogleIdentityAccesscontextmanagerV1OsConstraint_OsType
      ( GoogleIdentityAccesscontextmanagerV1OsConstraint_OsType_OSUNSPECIFIED,
        GoogleIdentityAccesscontextmanagerV1OsConstraint_OsType_DESKTOPMAC,
        GoogleIdentityAccesscontextmanagerV1OsConstraint_OsType_DESKTOPWINDOWS,
        GoogleIdentityAccesscontextmanagerV1OsConstraint_OsType_DESKTOPLINUX,
        GoogleIdentityAccesscontextmanagerV1OsConstraint_OsType_DESKTOPCHROMEOS,
        GoogleIdentityAccesscontextmanagerV1OsConstraint_OsType_Android,
        GoogleIdentityAccesscontextmanagerV1OsConstraint_OsType_Ios,
        ..
      ),

    -- * GoogleIdentityAccesscontextmanagerV1ServicePerimeter_PerimeterType
    GoogleIdentityAccesscontextmanagerV1ServicePerimeter_PerimeterType
      ( GoogleIdentityAccesscontextmanagerV1ServicePerimeter_PerimeterType_PERIMETERTYPEREGULAR,
        GoogleIdentityAccesscontextmanagerV1ServicePerimeter_PerimeterType_PERIMETERTYPEBRIDGE,
        ..
      ),
  )
where

import qualified Gogol.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv {fromXgafv :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv
  #-}

-- | The log type that this config enables.
newtype AuditLogConfig_LogType = AuditLogConfig_LogType {fromAuditLogConfig_LogType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default case. Should never be this.
pattern AuditLogConfig_LogType_LOGTYPEUNSPECIFIED :: AuditLogConfig_LogType
pattern AuditLogConfig_LogType_LOGTYPEUNSPECIFIED = AuditLogConfig_LogType "LOG_TYPE_UNSPECIFIED"

-- | Admin reads. Example: CloudIAM getIamPolicy
pattern AuditLogConfig_LogType_ADMINREAD :: AuditLogConfig_LogType
pattern AuditLogConfig_LogType_ADMINREAD = AuditLogConfig_LogType "ADMIN_READ"

-- | Data writes. Example: CloudSQL Users create
pattern AuditLogConfig_LogType_DATAWRITE :: AuditLogConfig_LogType
pattern AuditLogConfig_LogType_DATAWRITE = AuditLogConfig_LogType "DATA_WRITE"

-- | Data reads. Example: CloudSQL Users list
pattern AuditLogConfig_LogType_DATAREAD :: AuditLogConfig_LogType
pattern AuditLogConfig_LogType_DATAREAD = AuditLogConfig_LogType "DATA_READ"

{-# COMPLETE
  AuditLogConfig_LogType_LOGTYPEUNSPECIFIED,
  AuditLogConfig_LogType_ADMINREAD,
  AuditLogConfig_LogType_DATAWRITE,
  AuditLogConfig_LogType_DATAREAD,
  AuditLogConfig_LogType
  #-}

-- | Asset content type. If not specified, no content but the asset name will be returned.
newtype GoogleCloudAssetV1p7beta1ExportAssetsRequest_ContentType = GoogleCloudAssetV1p7beta1ExportAssetsRequest_ContentType {fromGoogleCloudAssetV1p7beta1ExportAssetsRequest_ContentType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified content type.
pattern GoogleCloudAssetV1p7beta1ExportAssetsRequest_ContentType_CONTENTTYPEUNSPECIFIED :: GoogleCloudAssetV1p7beta1ExportAssetsRequest_ContentType
pattern GoogleCloudAssetV1p7beta1ExportAssetsRequest_ContentType_CONTENTTYPEUNSPECIFIED = GoogleCloudAssetV1p7beta1ExportAssetsRequest_ContentType "CONTENT_TYPE_UNSPECIFIED"

-- | Resource metadata.
pattern GoogleCloudAssetV1p7beta1ExportAssetsRequest_ContentType_Resource :: GoogleCloudAssetV1p7beta1ExportAssetsRequest_ContentType
pattern GoogleCloudAssetV1p7beta1ExportAssetsRequest_ContentType_Resource = GoogleCloudAssetV1p7beta1ExportAssetsRequest_ContentType "RESOURCE"

-- | The actual IAM policy set on a resource.
pattern GoogleCloudAssetV1p7beta1ExportAssetsRequest_ContentType_IAMPOLICY :: GoogleCloudAssetV1p7beta1ExportAssetsRequest_ContentType
pattern GoogleCloudAssetV1p7beta1ExportAssetsRequest_ContentType_IAMPOLICY = GoogleCloudAssetV1p7beta1ExportAssetsRequest_ContentType "IAM_POLICY"

-- | The organization policy set on an asset.
pattern GoogleCloudAssetV1p7beta1ExportAssetsRequest_ContentType_ORGPOLICY :: GoogleCloudAssetV1p7beta1ExportAssetsRequest_ContentType
pattern GoogleCloudAssetV1p7beta1ExportAssetsRequest_ContentType_ORGPOLICY = GoogleCloudAssetV1p7beta1ExportAssetsRequest_ContentType "ORG_POLICY"

-- | The Access Context Manager policy set on an asset.
pattern GoogleCloudAssetV1p7beta1ExportAssetsRequest_ContentType_ACCESSPOLICY :: GoogleCloudAssetV1p7beta1ExportAssetsRequest_ContentType
pattern GoogleCloudAssetV1p7beta1ExportAssetsRequest_ContentType_ACCESSPOLICY = GoogleCloudAssetV1p7beta1ExportAssetsRequest_ContentType "ACCESS_POLICY"

-- | The related resources.
pattern GoogleCloudAssetV1p7beta1ExportAssetsRequest_ContentType_Relationship :: GoogleCloudAssetV1p7beta1ExportAssetsRequest_ContentType
pattern GoogleCloudAssetV1p7beta1ExportAssetsRequest_ContentType_Relationship = GoogleCloudAssetV1p7beta1ExportAssetsRequest_ContentType "RELATIONSHIP"

{-# COMPLETE
  GoogleCloudAssetV1p7beta1ExportAssetsRequest_ContentType_CONTENTTYPEUNSPECIFIED,
  GoogleCloudAssetV1p7beta1ExportAssetsRequest_ContentType_Resource,
  GoogleCloudAssetV1p7beta1ExportAssetsRequest_ContentType_IAMPOLICY,
  GoogleCloudAssetV1p7beta1ExportAssetsRequest_ContentType_ORGPOLICY,
  GoogleCloudAssetV1p7beta1ExportAssetsRequest_ContentType_ACCESSPOLICY,
  GoogleCloudAssetV1p7beta1ExportAssetsRequest_ContentType_Relationship,
  GoogleCloudAssetV1p7beta1ExportAssetsRequest_ContentType
  #-}

-- | The partition key for BigQuery partitioned table.
newtype GoogleCloudAssetV1p7beta1PartitionSpec_PartitionKey = GoogleCloudAssetV1p7beta1PartitionSpec_PartitionKey {fromGoogleCloudAssetV1p7beta1PartitionSpec_PartitionKey :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified partition key. If used, it means using non-partitioned table.
pattern GoogleCloudAssetV1p7beta1PartitionSpec_PartitionKey_PARTITIONKEYUNSPECIFIED :: GoogleCloudAssetV1p7beta1PartitionSpec_PartitionKey
pattern GoogleCloudAssetV1p7beta1PartitionSpec_PartitionKey_PARTITIONKEYUNSPECIFIED = GoogleCloudAssetV1p7beta1PartitionSpec_PartitionKey "PARTITION_KEY_UNSPECIFIED"

-- | The time when the snapshot is taken. If specified as partition key, the result table(s) is partitoned by the additional timestamp column, readTime. If [read_time] in ExportAssetsRequest is specified, the readTime column\'s value will be the same as it. Otherwise, its value will be the current time that is used to take the snapshot.
pattern GoogleCloudAssetV1p7beta1PartitionSpec_PartitionKey_READTIME :: GoogleCloudAssetV1p7beta1PartitionSpec_PartitionKey
pattern GoogleCloudAssetV1p7beta1PartitionSpec_PartitionKey_READTIME = GoogleCloudAssetV1p7beta1PartitionSpec_PartitionKey "READ_TIME"

-- | The time when the request is received and started to be processed. If specified as partition key, the result table(s) is partitoned by the requestTime column, an additional timestamp column representing when the request was received.
pattern GoogleCloudAssetV1p7beta1PartitionSpec_PartitionKey_REQUESTTIME :: GoogleCloudAssetV1p7beta1PartitionSpec_PartitionKey
pattern GoogleCloudAssetV1p7beta1PartitionSpec_PartitionKey_REQUESTTIME = GoogleCloudAssetV1p7beta1PartitionSpec_PartitionKey "REQUEST_TIME"

{-# COMPLETE
  GoogleCloudAssetV1p7beta1PartitionSpec_PartitionKey_PARTITIONKEYUNSPECIFIED,
  GoogleCloudAssetV1p7beta1PartitionSpec_PartitionKey_READTIME,
  GoogleCloudAssetV1p7beta1PartitionSpec_PartitionKey_REQUESTTIME,
  GoogleCloudAssetV1p7beta1PartitionSpec_PartitionKey
  #-}

-- | The policy all_values state.
newtype GoogleCloudOrgpolicyV1ListPolicy_AllValues = GoogleCloudOrgpolicyV1ListPolicy_AllValues {fromGoogleCloudOrgpolicyV1ListPolicy_AllValues :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Indicates that allowed/values or denied/values must be set.
pattern GoogleCloudOrgpolicyV1ListPolicy_AllValues_ALLVALUESUNSPECIFIED :: GoogleCloudOrgpolicyV1ListPolicy_AllValues
pattern GoogleCloudOrgpolicyV1ListPolicy_AllValues_ALLVALUESUNSPECIFIED = GoogleCloudOrgpolicyV1ListPolicy_AllValues "ALL_VALUES_UNSPECIFIED"

-- | A policy with this set allows all values.
pattern GoogleCloudOrgpolicyV1ListPolicy_AllValues_Allow :: GoogleCloudOrgpolicyV1ListPolicy_AllValues
pattern GoogleCloudOrgpolicyV1ListPolicy_AllValues_Allow = GoogleCloudOrgpolicyV1ListPolicy_AllValues "ALLOW"

-- | A policy with this set denies all values.
pattern GoogleCloudOrgpolicyV1ListPolicy_AllValues_Deny :: GoogleCloudOrgpolicyV1ListPolicy_AllValues
pattern GoogleCloudOrgpolicyV1ListPolicy_AllValues_Deny = GoogleCloudOrgpolicyV1ListPolicy_AllValues "DENY"

{-# COMPLETE
  GoogleCloudOrgpolicyV1ListPolicy_AllValues_ALLVALUESUNSPECIFIED,
  GoogleCloudOrgpolicyV1ListPolicy_AllValues_Allow,
  GoogleCloudOrgpolicyV1ListPolicy_AllValues_Deny,
  GoogleCloudOrgpolicyV1ListPolicy_AllValues
  #-}

-- | How the @conditions@ list should be combined to determine if a request is granted this @AccessLevel@. If AND is used, each @Condition@ in @conditions@ must be satisfied for the @AccessLevel@ to be applied. If OR is used, at least one @Condition@ in @conditions@ must be satisfied for the @AccessLevel@ to be applied. Default behavior is AND.
newtype GoogleIdentityAccesscontextmanagerV1BasicLevel_CombiningFunction = GoogleIdentityAccesscontextmanagerV1BasicLevel_CombiningFunction {fromGoogleIdentityAccesscontextmanagerV1BasicLevel_CombiningFunction :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | All @Conditions@ must be true for the @BasicLevel@ to be true.
pattern GoogleIdentityAccesscontextmanagerV1BasicLevel_CombiningFunction_And :: GoogleIdentityAccesscontextmanagerV1BasicLevel_CombiningFunction
pattern GoogleIdentityAccesscontextmanagerV1BasicLevel_CombiningFunction_And = GoogleIdentityAccesscontextmanagerV1BasicLevel_CombiningFunction "AND"

-- | If at least one @Condition@ is true, then the @BasicLevel@ is true.
pattern GoogleIdentityAccesscontextmanagerV1BasicLevel_CombiningFunction_OR :: GoogleIdentityAccesscontextmanagerV1BasicLevel_CombiningFunction
pattern GoogleIdentityAccesscontextmanagerV1BasicLevel_CombiningFunction_OR = GoogleIdentityAccesscontextmanagerV1BasicLevel_CombiningFunction "OR"

{-# COMPLETE
  GoogleIdentityAccesscontextmanagerV1BasicLevel_CombiningFunction_And,
  GoogleIdentityAccesscontextmanagerV1BasicLevel_CombiningFunction_OR,
  GoogleIdentityAccesscontextmanagerV1BasicLevel_CombiningFunction
  #-}

newtype GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedDeviceManagementLevelsItem = GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedDeviceManagementLevelsItem {fromGoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedDeviceManagementLevelsItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The device\'s management level is not specified or not known.
pattern GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedDeviceManagementLevelsItem_MANAGEMENTUNSPECIFIED :: GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedDeviceManagementLevelsItem
pattern GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedDeviceManagementLevelsItem_MANAGEMENTUNSPECIFIED = GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedDeviceManagementLevelsItem "MANAGEMENT_UNSPECIFIED"

-- | The device is not managed.
pattern GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedDeviceManagementLevelsItem_None :: GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedDeviceManagementLevelsItem
pattern GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedDeviceManagementLevelsItem_None = GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedDeviceManagementLevelsItem "NONE"

-- | Basic management is enabled, which is generally limited to monitoring and wiping the corporate account.
pattern GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedDeviceManagementLevelsItem_Basic :: GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedDeviceManagementLevelsItem
pattern GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedDeviceManagementLevelsItem_Basic = GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedDeviceManagementLevelsItem "BASIC"

-- | Complete device management. This includes more thorough monitoring and the ability to directly manage the device (such as remote wiping). This can be enabled through the Android Enterprise Platform.
pattern GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedDeviceManagementLevelsItem_Complete :: GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedDeviceManagementLevelsItem
pattern GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedDeviceManagementLevelsItem_Complete = GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedDeviceManagementLevelsItem "COMPLETE"

{-# COMPLETE
  GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedDeviceManagementLevelsItem_MANAGEMENTUNSPECIFIED,
  GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedDeviceManagementLevelsItem_None,
  GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedDeviceManagementLevelsItem_Basic,
  GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedDeviceManagementLevelsItem_Complete,
  GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedDeviceManagementLevelsItem
  #-}

newtype GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedEncryptionStatusesItem = GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedEncryptionStatusesItem {fromGoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedEncryptionStatusesItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The encryption status of the device is not specified or not known.
pattern GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedEncryptionStatusesItem_ENCRYPTIONUNSPECIFIED :: GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedEncryptionStatusesItem
pattern GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedEncryptionStatusesItem_ENCRYPTIONUNSPECIFIED = GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedEncryptionStatusesItem "ENCRYPTION_UNSPECIFIED"

-- | The device does not support encryption.
pattern GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedEncryptionStatusesItem_ENCRYPTIONUNSUPPORTED :: GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedEncryptionStatusesItem
pattern GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedEncryptionStatusesItem_ENCRYPTIONUNSUPPORTED = GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedEncryptionStatusesItem "ENCRYPTION_UNSUPPORTED"

-- | The device supports encryption, but is currently unencrypted.
pattern GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedEncryptionStatusesItem_Unencrypted :: GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedEncryptionStatusesItem
pattern GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedEncryptionStatusesItem_Unencrypted = GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedEncryptionStatusesItem "UNENCRYPTED"

-- | The device is encrypted.
pattern GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedEncryptionStatusesItem_Encrypted :: GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedEncryptionStatusesItem
pattern GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedEncryptionStatusesItem_Encrypted = GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedEncryptionStatusesItem "ENCRYPTED"

{-# COMPLETE
  GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedEncryptionStatusesItem_ENCRYPTIONUNSPECIFIED,
  GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedEncryptionStatusesItem_ENCRYPTIONUNSUPPORTED,
  GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedEncryptionStatusesItem_Unencrypted,
  GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedEncryptionStatusesItem_Encrypted,
  GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedEncryptionStatusesItem
  #-}

-- | Specifies the type of identities that are allowed access to outside the perimeter. If left unspecified, then members of @identities@ field will be allowed access.
newtype GoogleIdentityAccesscontextmanagerV1EgressFrom_IdentityType = GoogleIdentityAccesscontextmanagerV1EgressFrom_IdentityType {fromGoogleIdentityAccesscontextmanagerV1EgressFrom_IdentityType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | No blanket identity group specified.
pattern GoogleIdentityAccesscontextmanagerV1EgressFrom_IdentityType_IDENTITYTYPEUNSPECIFIED :: GoogleIdentityAccesscontextmanagerV1EgressFrom_IdentityType
pattern GoogleIdentityAccesscontextmanagerV1EgressFrom_IdentityType_IDENTITYTYPEUNSPECIFIED = GoogleIdentityAccesscontextmanagerV1EgressFrom_IdentityType "IDENTITY_TYPE_UNSPECIFIED"

-- | Authorize access from all identities outside the perimeter.
pattern GoogleIdentityAccesscontextmanagerV1EgressFrom_IdentityType_ANYIDENTITY :: GoogleIdentityAccesscontextmanagerV1EgressFrom_IdentityType
pattern GoogleIdentityAccesscontextmanagerV1EgressFrom_IdentityType_ANYIDENTITY = GoogleIdentityAccesscontextmanagerV1EgressFrom_IdentityType "ANY_IDENTITY"

-- | Authorize access from all human users outside the perimeter.
pattern GoogleIdentityAccesscontextmanagerV1EgressFrom_IdentityType_ANYUSERACCOUNT :: GoogleIdentityAccesscontextmanagerV1EgressFrom_IdentityType
pattern GoogleIdentityAccesscontextmanagerV1EgressFrom_IdentityType_ANYUSERACCOUNT = GoogleIdentityAccesscontextmanagerV1EgressFrom_IdentityType "ANY_USER_ACCOUNT"

-- | Authorize access from all service accounts outside the perimeter.
pattern GoogleIdentityAccesscontextmanagerV1EgressFrom_IdentityType_ANYSERVICEACCOUNT :: GoogleIdentityAccesscontextmanagerV1EgressFrom_IdentityType
pattern GoogleIdentityAccesscontextmanagerV1EgressFrom_IdentityType_ANYSERVICEACCOUNT = GoogleIdentityAccesscontextmanagerV1EgressFrom_IdentityType "ANY_SERVICE_ACCOUNT"

{-# COMPLETE
  GoogleIdentityAccesscontextmanagerV1EgressFrom_IdentityType_IDENTITYTYPEUNSPECIFIED,
  GoogleIdentityAccesscontextmanagerV1EgressFrom_IdentityType_ANYIDENTITY,
  GoogleIdentityAccesscontextmanagerV1EgressFrom_IdentityType_ANYUSERACCOUNT,
  GoogleIdentityAccesscontextmanagerV1EgressFrom_IdentityType_ANYSERVICEACCOUNT,
  GoogleIdentityAccesscontextmanagerV1EgressFrom_IdentityType
  #-}

-- | Specifies the type of identities that are allowed access from outside the perimeter. If left unspecified, then members of @identities@ field will be allowed access.
newtype GoogleIdentityAccesscontextmanagerV1IngressFrom_IdentityType = GoogleIdentityAccesscontextmanagerV1IngressFrom_IdentityType {fromGoogleIdentityAccesscontextmanagerV1IngressFrom_IdentityType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | No blanket identity group specified.
pattern GoogleIdentityAccesscontextmanagerV1IngressFrom_IdentityType_IDENTITYTYPEUNSPECIFIED :: GoogleIdentityAccesscontextmanagerV1IngressFrom_IdentityType
pattern GoogleIdentityAccesscontextmanagerV1IngressFrom_IdentityType_IDENTITYTYPEUNSPECIFIED = GoogleIdentityAccesscontextmanagerV1IngressFrom_IdentityType "IDENTITY_TYPE_UNSPECIFIED"

-- | Authorize access from all identities outside the perimeter.
pattern GoogleIdentityAccesscontextmanagerV1IngressFrom_IdentityType_ANYIDENTITY :: GoogleIdentityAccesscontextmanagerV1IngressFrom_IdentityType
pattern GoogleIdentityAccesscontextmanagerV1IngressFrom_IdentityType_ANYIDENTITY = GoogleIdentityAccesscontextmanagerV1IngressFrom_IdentityType "ANY_IDENTITY"

-- | Authorize access from all human users outside the perimeter.
pattern GoogleIdentityAccesscontextmanagerV1IngressFrom_IdentityType_ANYUSERACCOUNT :: GoogleIdentityAccesscontextmanagerV1IngressFrom_IdentityType
pattern GoogleIdentityAccesscontextmanagerV1IngressFrom_IdentityType_ANYUSERACCOUNT = GoogleIdentityAccesscontextmanagerV1IngressFrom_IdentityType "ANY_USER_ACCOUNT"

-- | Authorize access from all service accounts outside the perimeter.
pattern GoogleIdentityAccesscontextmanagerV1IngressFrom_IdentityType_ANYSERVICEACCOUNT :: GoogleIdentityAccesscontextmanagerV1IngressFrom_IdentityType
pattern GoogleIdentityAccesscontextmanagerV1IngressFrom_IdentityType_ANYSERVICEACCOUNT = GoogleIdentityAccesscontextmanagerV1IngressFrom_IdentityType "ANY_SERVICE_ACCOUNT"

{-# COMPLETE
  GoogleIdentityAccesscontextmanagerV1IngressFrom_IdentityType_IDENTITYTYPEUNSPECIFIED,
  GoogleIdentityAccesscontextmanagerV1IngressFrom_IdentityType_ANYIDENTITY,
  GoogleIdentityAccesscontextmanagerV1IngressFrom_IdentityType_ANYUSERACCOUNT,
  GoogleIdentityAccesscontextmanagerV1IngressFrom_IdentityType_ANYSERVICEACCOUNT,
  GoogleIdentityAccesscontextmanagerV1IngressFrom_IdentityType
  #-}

-- | Required. The allowed OS type.
newtype GoogleIdentityAccesscontextmanagerV1OsConstraint_OsType = GoogleIdentityAccesscontextmanagerV1OsConstraint_OsType {fromGoogleIdentityAccesscontextmanagerV1OsConstraint_OsType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The operating system of the device is not specified or not known.
pattern GoogleIdentityAccesscontextmanagerV1OsConstraint_OsType_OSUNSPECIFIED :: GoogleIdentityAccesscontextmanagerV1OsConstraint_OsType
pattern GoogleIdentityAccesscontextmanagerV1OsConstraint_OsType_OSUNSPECIFIED = GoogleIdentityAccesscontextmanagerV1OsConstraint_OsType "OS_UNSPECIFIED"

-- | A desktop Mac operating system.
pattern GoogleIdentityAccesscontextmanagerV1OsConstraint_OsType_DESKTOPMAC :: GoogleIdentityAccesscontextmanagerV1OsConstraint_OsType
pattern GoogleIdentityAccesscontextmanagerV1OsConstraint_OsType_DESKTOPMAC = GoogleIdentityAccesscontextmanagerV1OsConstraint_OsType "DESKTOP_MAC"

-- | A desktop Windows operating system.
pattern GoogleIdentityAccesscontextmanagerV1OsConstraint_OsType_DESKTOPWINDOWS :: GoogleIdentityAccesscontextmanagerV1OsConstraint_OsType
pattern GoogleIdentityAccesscontextmanagerV1OsConstraint_OsType_DESKTOPWINDOWS = GoogleIdentityAccesscontextmanagerV1OsConstraint_OsType "DESKTOP_WINDOWS"

-- | A desktop Linux operating system.
pattern GoogleIdentityAccesscontextmanagerV1OsConstraint_OsType_DESKTOPLINUX :: GoogleIdentityAccesscontextmanagerV1OsConstraint_OsType
pattern GoogleIdentityAccesscontextmanagerV1OsConstraint_OsType_DESKTOPLINUX = GoogleIdentityAccesscontextmanagerV1OsConstraint_OsType "DESKTOP_LINUX"

-- | A desktop ChromeOS operating system.
pattern GoogleIdentityAccesscontextmanagerV1OsConstraint_OsType_DESKTOPCHROMEOS :: GoogleIdentityAccesscontextmanagerV1OsConstraint_OsType
pattern GoogleIdentityAccesscontextmanagerV1OsConstraint_OsType_DESKTOPCHROMEOS = GoogleIdentityAccesscontextmanagerV1OsConstraint_OsType "DESKTOP_CHROME_OS"

-- | An Android operating system.
pattern GoogleIdentityAccesscontextmanagerV1OsConstraint_OsType_Android :: GoogleIdentityAccesscontextmanagerV1OsConstraint_OsType
pattern GoogleIdentityAccesscontextmanagerV1OsConstraint_OsType_Android = GoogleIdentityAccesscontextmanagerV1OsConstraint_OsType "ANDROID"

-- | An iOS operating system.
pattern GoogleIdentityAccesscontextmanagerV1OsConstraint_OsType_Ios :: GoogleIdentityAccesscontextmanagerV1OsConstraint_OsType
pattern GoogleIdentityAccesscontextmanagerV1OsConstraint_OsType_Ios = GoogleIdentityAccesscontextmanagerV1OsConstraint_OsType "IOS"

{-# COMPLETE
  GoogleIdentityAccesscontextmanagerV1OsConstraint_OsType_OSUNSPECIFIED,
  GoogleIdentityAccesscontextmanagerV1OsConstraint_OsType_DESKTOPMAC,
  GoogleIdentityAccesscontextmanagerV1OsConstraint_OsType_DESKTOPWINDOWS,
  GoogleIdentityAccesscontextmanagerV1OsConstraint_OsType_DESKTOPLINUX,
  GoogleIdentityAccesscontextmanagerV1OsConstraint_OsType_DESKTOPCHROMEOS,
  GoogleIdentityAccesscontextmanagerV1OsConstraint_OsType_Android,
  GoogleIdentityAccesscontextmanagerV1OsConstraint_OsType_Ios,
  GoogleIdentityAccesscontextmanagerV1OsConstraint_OsType
  #-}

-- | Perimeter type indicator. A single project or VPC network is allowed to be a member of single regular perimeter, but multiple service perimeter bridges. A project cannot be a included in a perimeter bridge without being included in regular perimeter. For perimeter bridges, the restricted service list as well as access level lists must be empty.
newtype GoogleIdentityAccesscontextmanagerV1ServicePerimeter_PerimeterType = GoogleIdentityAccesscontextmanagerV1ServicePerimeter_PerimeterType {fromGoogleIdentityAccesscontextmanagerV1ServicePerimeter_PerimeterType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Regular Perimeter. When no value is specified, the perimeter uses this type.
pattern GoogleIdentityAccesscontextmanagerV1ServicePerimeter_PerimeterType_PERIMETERTYPEREGULAR :: GoogleIdentityAccesscontextmanagerV1ServicePerimeter_PerimeterType
pattern GoogleIdentityAccesscontextmanagerV1ServicePerimeter_PerimeterType_PERIMETERTYPEREGULAR = GoogleIdentityAccesscontextmanagerV1ServicePerimeter_PerimeterType "PERIMETER_TYPE_REGULAR"

-- | Perimeter Bridge.
pattern GoogleIdentityAccesscontextmanagerV1ServicePerimeter_PerimeterType_PERIMETERTYPEBRIDGE :: GoogleIdentityAccesscontextmanagerV1ServicePerimeter_PerimeterType
pattern GoogleIdentityAccesscontextmanagerV1ServicePerimeter_PerimeterType_PERIMETERTYPEBRIDGE = GoogleIdentityAccesscontextmanagerV1ServicePerimeter_PerimeterType "PERIMETER_TYPE_BRIDGE"

{-# COMPLETE
  GoogleIdentityAccesscontextmanagerV1ServicePerimeter_PerimeterType_PERIMETERTYPEREGULAR,
  GoogleIdentityAccesscontextmanagerV1ServicePerimeter_PerimeterType_PERIMETERTYPEBRIDGE,
  GoogleIdentityAccesscontextmanagerV1ServicePerimeter_PerimeterType
  #-}
