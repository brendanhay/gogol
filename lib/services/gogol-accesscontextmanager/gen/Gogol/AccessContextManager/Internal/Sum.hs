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
-- Module      : Gogol.AccessContextManager.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.AccessContextManager.Internal.Sum
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

    -- * BasicLevel_CombiningFunction
    BasicLevel_CombiningFunction
      ( BasicLevel_CombiningFunction_And,
        BasicLevel_CombiningFunction_OR,
        ..
      ),

    -- * DevicePolicy_AllowedDeviceManagementLevelsItem
    DevicePolicy_AllowedDeviceManagementLevelsItem
      ( DevicePolicy_AllowedDeviceManagementLevelsItem_MANAGEMENTUNSPECIFIED,
        DevicePolicy_AllowedDeviceManagementLevelsItem_None,
        DevicePolicy_AllowedDeviceManagementLevelsItem_Basic,
        DevicePolicy_AllowedDeviceManagementLevelsItem_Complete,
        ..
      ),

    -- * DevicePolicy_AllowedEncryptionStatusesItem
    DevicePolicy_AllowedEncryptionStatusesItem
      ( DevicePolicy_AllowedEncryptionStatusesItem_ENCRYPTIONUNSPECIFIED,
        DevicePolicy_AllowedEncryptionStatusesItem_ENCRYPTIONUNSUPPORTED,
        DevicePolicy_AllowedEncryptionStatusesItem_Unencrypted,
        DevicePolicy_AllowedEncryptionStatusesItem_Encrypted,
        ..
      ),

    -- * EgressFrom_IdentityType
    EgressFrom_IdentityType
      ( EgressFrom_IdentityType_IDENTITYTYPEUNSPECIFIED,
        EgressFrom_IdentityType_ANYIDENTITY,
        EgressFrom_IdentityType_ANYUSERACCOUNT,
        EgressFrom_IdentityType_ANYSERVICEACCOUNT,
        ..
      ),

    -- * IngressFrom_IdentityType
    IngressFrom_IdentityType
      ( IngressFrom_IdentityType_IDENTITYTYPEUNSPECIFIED,
        IngressFrom_IdentityType_ANYIDENTITY,
        IngressFrom_IdentityType_ANYUSERACCOUNT,
        IngressFrom_IdentityType_ANYSERVICEACCOUNT,
        ..
      ),

    -- * OsConstraint_OsType
    OsConstraint_OsType
      ( OsConstraint_OsType_OSUNSPECIFIED,
        OsConstraint_OsType_DESKTOPMAC,
        OsConstraint_OsType_DESKTOPWINDOWS,
        OsConstraint_OsType_DESKTOPLINUX,
        OsConstraint_OsType_DESKTOPCHROMEOS,
        OsConstraint_OsType_Android,
        OsConstraint_OsType_Ios,
        ..
      ),

    -- * ServicePerimeter_PerimeterType
    ServicePerimeter_PerimeterType
      ( ServicePerimeter_PerimeterType_PERIMETERTYPEREGULAR,
        ServicePerimeter_PerimeterType_PERIMETERTYPEBRIDGE,
        ..
      ),

    -- * AccessPoliciesAccessLevelsGetAccessLevelFormat
    AccessPoliciesAccessLevelsGetAccessLevelFormat
      ( AccessPoliciesAccessLevelsGetAccessLevelFormat_LEVELFORMATUNSPECIFIED,
        AccessPoliciesAccessLevelsGetAccessLevelFormat_ASDEFINED,
        AccessPoliciesAccessLevelsGetAccessLevelFormat_Cel,
        ..
      ),

    -- * AccessPoliciesAccessLevelsListAccessLevelFormat
    AccessPoliciesAccessLevelsListAccessLevelFormat
      ( AccessPoliciesAccessLevelsListAccessLevelFormat_LEVELFORMATUNSPECIFIED,
        AccessPoliciesAccessLevelsListAccessLevelFormat_ASDEFINED,
        AccessPoliciesAccessLevelsListAccessLevelFormat_Cel,
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

-- | How the @conditions@ list should be combined to determine if a request is granted this @AccessLevel@. If AND is used, each @Condition@ in @conditions@ must be satisfied for the @AccessLevel@ to be applied. If OR is used, at least one @Condition@ in @conditions@ must be satisfied for the @AccessLevel@ to be applied. Default behavior is AND.
newtype BasicLevel_CombiningFunction = BasicLevel_CombiningFunction {fromBasicLevel_CombiningFunction :: Core.Text}
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
pattern BasicLevel_CombiningFunction_And :: BasicLevel_CombiningFunction
pattern BasicLevel_CombiningFunction_And = BasicLevel_CombiningFunction "AND"

-- | If at least one @Condition@ is true, then the @BasicLevel@ is true.
pattern BasicLevel_CombiningFunction_OR :: BasicLevel_CombiningFunction
pattern BasicLevel_CombiningFunction_OR = BasicLevel_CombiningFunction "OR"

{-# COMPLETE
  BasicLevel_CombiningFunction_And,
  BasicLevel_CombiningFunction_OR,
  BasicLevel_CombiningFunction
  #-}

newtype DevicePolicy_AllowedDeviceManagementLevelsItem = DevicePolicy_AllowedDeviceManagementLevelsItem {fromDevicePolicy_AllowedDeviceManagementLevelsItem :: Core.Text}
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
pattern DevicePolicy_AllowedDeviceManagementLevelsItem_MANAGEMENTUNSPECIFIED :: DevicePolicy_AllowedDeviceManagementLevelsItem
pattern DevicePolicy_AllowedDeviceManagementLevelsItem_MANAGEMENTUNSPECIFIED = DevicePolicy_AllowedDeviceManagementLevelsItem "MANAGEMENT_UNSPECIFIED"

-- | The device is not managed.
pattern DevicePolicy_AllowedDeviceManagementLevelsItem_None :: DevicePolicy_AllowedDeviceManagementLevelsItem
pattern DevicePolicy_AllowedDeviceManagementLevelsItem_None = DevicePolicy_AllowedDeviceManagementLevelsItem "NONE"

-- | Basic management is enabled, which is generally limited to monitoring and wiping the corporate account.
pattern DevicePolicy_AllowedDeviceManagementLevelsItem_Basic :: DevicePolicy_AllowedDeviceManagementLevelsItem
pattern DevicePolicy_AllowedDeviceManagementLevelsItem_Basic = DevicePolicy_AllowedDeviceManagementLevelsItem "BASIC"

-- | Complete device management. This includes more thorough monitoring and the ability to directly manage the device (such as remote wiping). This can be enabled through the Android Enterprise Platform.
pattern DevicePolicy_AllowedDeviceManagementLevelsItem_Complete :: DevicePolicy_AllowedDeviceManagementLevelsItem
pattern DevicePolicy_AllowedDeviceManagementLevelsItem_Complete = DevicePolicy_AllowedDeviceManagementLevelsItem "COMPLETE"

{-# COMPLETE
  DevicePolicy_AllowedDeviceManagementLevelsItem_MANAGEMENTUNSPECIFIED,
  DevicePolicy_AllowedDeviceManagementLevelsItem_None,
  DevicePolicy_AllowedDeviceManagementLevelsItem_Basic,
  DevicePolicy_AllowedDeviceManagementLevelsItem_Complete,
  DevicePolicy_AllowedDeviceManagementLevelsItem
  #-}

newtype DevicePolicy_AllowedEncryptionStatusesItem = DevicePolicy_AllowedEncryptionStatusesItem {fromDevicePolicy_AllowedEncryptionStatusesItem :: Core.Text}
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
pattern DevicePolicy_AllowedEncryptionStatusesItem_ENCRYPTIONUNSPECIFIED :: DevicePolicy_AllowedEncryptionStatusesItem
pattern DevicePolicy_AllowedEncryptionStatusesItem_ENCRYPTIONUNSPECIFIED = DevicePolicy_AllowedEncryptionStatusesItem "ENCRYPTION_UNSPECIFIED"

-- | The device does not support encryption.
pattern DevicePolicy_AllowedEncryptionStatusesItem_ENCRYPTIONUNSUPPORTED :: DevicePolicy_AllowedEncryptionStatusesItem
pattern DevicePolicy_AllowedEncryptionStatusesItem_ENCRYPTIONUNSUPPORTED = DevicePolicy_AllowedEncryptionStatusesItem "ENCRYPTION_UNSUPPORTED"

-- | The device supports encryption, but is currently unencrypted.
pattern DevicePolicy_AllowedEncryptionStatusesItem_Unencrypted :: DevicePolicy_AllowedEncryptionStatusesItem
pattern DevicePolicy_AllowedEncryptionStatusesItem_Unencrypted = DevicePolicy_AllowedEncryptionStatusesItem "UNENCRYPTED"

-- | The device is encrypted.
pattern DevicePolicy_AllowedEncryptionStatusesItem_Encrypted :: DevicePolicy_AllowedEncryptionStatusesItem
pattern DevicePolicy_AllowedEncryptionStatusesItem_Encrypted = DevicePolicy_AllowedEncryptionStatusesItem "ENCRYPTED"

{-# COMPLETE
  DevicePolicy_AllowedEncryptionStatusesItem_ENCRYPTIONUNSPECIFIED,
  DevicePolicy_AllowedEncryptionStatusesItem_ENCRYPTIONUNSUPPORTED,
  DevicePolicy_AllowedEncryptionStatusesItem_Unencrypted,
  DevicePolicy_AllowedEncryptionStatusesItem_Encrypted,
  DevicePolicy_AllowedEncryptionStatusesItem
  #-}

-- | Specifies the type of identities that are allowed access to outside the perimeter. If left unspecified, then members of @identities@ field will be allowed access.
newtype EgressFrom_IdentityType = EgressFrom_IdentityType {fromEgressFrom_IdentityType :: Core.Text}
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
pattern EgressFrom_IdentityType_IDENTITYTYPEUNSPECIFIED :: EgressFrom_IdentityType
pattern EgressFrom_IdentityType_IDENTITYTYPEUNSPECIFIED = EgressFrom_IdentityType "IDENTITY_TYPE_UNSPECIFIED"

-- | Authorize access from all identities outside the perimeter.
pattern EgressFrom_IdentityType_ANYIDENTITY :: EgressFrom_IdentityType
pattern EgressFrom_IdentityType_ANYIDENTITY = EgressFrom_IdentityType "ANY_IDENTITY"

-- | Authorize access from all human users outside the perimeter.
pattern EgressFrom_IdentityType_ANYUSERACCOUNT :: EgressFrom_IdentityType
pattern EgressFrom_IdentityType_ANYUSERACCOUNT = EgressFrom_IdentityType "ANY_USER_ACCOUNT"

-- | Authorize access from all service accounts outside the perimeter.
pattern EgressFrom_IdentityType_ANYSERVICEACCOUNT :: EgressFrom_IdentityType
pattern EgressFrom_IdentityType_ANYSERVICEACCOUNT = EgressFrom_IdentityType "ANY_SERVICE_ACCOUNT"

{-# COMPLETE
  EgressFrom_IdentityType_IDENTITYTYPEUNSPECIFIED,
  EgressFrom_IdentityType_ANYIDENTITY,
  EgressFrom_IdentityType_ANYUSERACCOUNT,
  EgressFrom_IdentityType_ANYSERVICEACCOUNT,
  EgressFrom_IdentityType
  #-}

-- | Specifies the type of identities that are allowed access from outside the perimeter. If left unspecified, then members of @identities@ field will be allowed access.
newtype IngressFrom_IdentityType = IngressFrom_IdentityType {fromIngressFrom_IdentityType :: Core.Text}
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
pattern IngressFrom_IdentityType_IDENTITYTYPEUNSPECIFIED :: IngressFrom_IdentityType
pattern IngressFrom_IdentityType_IDENTITYTYPEUNSPECIFIED = IngressFrom_IdentityType "IDENTITY_TYPE_UNSPECIFIED"

-- | Authorize access from all identities outside the perimeter.
pattern IngressFrom_IdentityType_ANYIDENTITY :: IngressFrom_IdentityType
pattern IngressFrom_IdentityType_ANYIDENTITY = IngressFrom_IdentityType "ANY_IDENTITY"

-- | Authorize access from all human users outside the perimeter.
pattern IngressFrom_IdentityType_ANYUSERACCOUNT :: IngressFrom_IdentityType
pattern IngressFrom_IdentityType_ANYUSERACCOUNT = IngressFrom_IdentityType "ANY_USER_ACCOUNT"

-- | Authorize access from all service accounts outside the perimeter.
pattern IngressFrom_IdentityType_ANYSERVICEACCOUNT :: IngressFrom_IdentityType
pattern IngressFrom_IdentityType_ANYSERVICEACCOUNT = IngressFrom_IdentityType "ANY_SERVICE_ACCOUNT"

{-# COMPLETE
  IngressFrom_IdentityType_IDENTITYTYPEUNSPECIFIED,
  IngressFrom_IdentityType_ANYIDENTITY,
  IngressFrom_IdentityType_ANYUSERACCOUNT,
  IngressFrom_IdentityType_ANYSERVICEACCOUNT,
  IngressFrom_IdentityType
  #-}

-- | Required. The allowed OS type.
newtype OsConstraint_OsType = OsConstraint_OsType {fromOsConstraint_OsType :: Core.Text}
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
pattern OsConstraint_OsType_OSUNSPECIFIED :: OsConstraint_OsType
pattern OsConstraint_OsType_OSUNSPECIFIED = OsConstraint_OsType "OS_UNSPECIFIED"

-- | A desktop Mac operating system.
pattern OsConstraint_OsType_DESKTOPMAC :: OsConstraint_OsType
pattern OsConstraint_OsType_DESKTOPMAC = OsConstraint_OsType "DESKTOP_MAC"

-- | A desktop Windows operating system.
pattern OsConstraint_OsType_DESKTOPWINDOWS :: OsConstraint_OsType
pattern OsConstraint_OsType_DESKTOPWINDOWS = OsConstraint_OsType "DESKTOP_WINDOWS"

-- | A desktop Linux operating system.
pattern OsConstraint_OsType_DESKTOPLINUX :: OsConstraint_OsType
pattern OsConstraint_OsType_DESKTOPLINUX = OsConstraint_OsType "DESKTOP_LINUX"

-- | A desktop ChromeOS operating system.
pattern OsConstraint_OsType_DESKTOPCHROMEOS :: OsConstraint_OsType
pattern OsConstraint_OsType_DESKTOPCHROMEOS = OsConstraint_OsType "DESKTOP_CHROME_OS"

-- | An Android operating system.
pattern OsConstraint_OsType_Android :: OsConstraint_OsType
pattern OsConstraint_OsType_Android = OsConstraint_OsType "ANDROID"

-- | An iOS operating system.
pattern OsConstraint_OsType_Ios :: OsConstraint_OsType
pattern OsConstraint_OsType_Ios = OsConstraint_OsType "IOS"

{-# COMPLETE
  OsConstraint_OsType_OSUNSPECIFIED,
  OsConstraint_OsType_DESKTOPMAC,
  OsConstraint_OsType_DESKTOPWINDOWS,
  OsConstraint_OsType_DESKTOPLINUX,
  OsConstraint_OsType_DESKTOPCHROMEOS,
  OsConstraint_OsType_Android,
  OsConstraint_OsType_Ios,
  OsConstraint_OsType
  #-}

-- | Perimeter type indicator. A single project is allowed to be a member of single regular perimeter, but multiple service perimeter bridges. A project cannot be a included in a perimeter bridge without being included in regular perimeter. For perimeter bridges, the restricted service list as well as access level lists must be empty.
newtype ServicePerimeter_PerimeterType = ServicePerimeter_PerimeterType {fromServicePerimeter_PerimeterType :: Core.Text}
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

-- | Regular Perimeter.
pattern ServicePerimeter_PerimeterType_PERIMETERTYPEREGULAR :: ServicePerimeter_PerimeterType
pattern ServicePerimeter_PerimeterType_PERIMETERTYPEREGULAR = ServicePerimeter_PerimeterType "PERIMETER_TYPE_REGULAR"

-- | Perimeter Bridge.
pattern ServicePerimeter_PerimeterType_PERIMETERTYPEBRIDGE :: ServicePerimeter_PerimeterType
pattern ServicePerimeter_PerimeterType_PERIMETERTYPEBRIDGE = ServicePerimeter_PerimeterType "PERIMETER_TYPE_BRIDGE"

{-# COMPLETE
  ServicePerimeter_PerimeterType_PERIMETERTYPEREGULAR,
  ServicePerimeter_PerimeterType_PERIMETERTYPEBRIDGE,
  ServicePerimeter_PerimeterType
  #-}

-- | Whether to return @BasicLevels@ in the Cloud Common Expression Language rather than as @BasicLevels@. Defaults to AS_DEFINED, where Access Levels are returned as @BasicLevels@ or @CustomLevels@ based on how they were created. If set to CEL, all Access Levels are returned as @CustomLevels@. In the CEL case, @BasicLevels@ are translated to equivalent @CustomLevels@.
newtype AccessPoliciesAccessLevelsGetAccessLevelFormat = AccessPoliciesAccessLevelsGetAccessLevelFormat {fromAccessPoliciesAccessLevelsGetAccessLevelFormat :: Core.Text}
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

-- | The format was not specified.
pattern AccessPoliciesAccessLevelsGetAccessLevelFormat_LEVELFORMATUNSPECIFIED :: AccessPoliciesAccessLevelsGetAccessLevelFormat
pattern AccessPoliciesAccessLevelsGetAccessLevelFormat_LEVELFORMATUNSPECIFIED = AccessPoliciesAccessLevelsGetAccessLevelFormat "LEVEL_FORMAT_UNSPECIFIED"

-- | Uses the format the resource was defined in. BasicLevels are returned as BasicLevels, CustomLevels are returned as CustomLevels.
pattern AccessPoliciesAccessLevelsGetAccessLevelFormat_ASDEFINED :: AccessPoliciesAccessLevelsGetAccessLevelFormat
pattern AccessPoliciesAccessLevelsGetAccessLevelFormat_ASDEFINED = AccessPoliciesAccessLevelsGetAccessLevelFormat "AS_DEFINED"

-- | Use Cloud Common Expression Language when returning the resource. Both BasicLevels and CustomLevels are returned as CustomLevels.
pattern AccessPoliciesAccessLevelsGetAccessLevelFormat_Cel :: AccessPoliciesAccessLevelsGetAccessLevelFormat
pattern AccessPoliciesAccessLevelsGetAccessLevelFormat_Cel = AccessPoliciesAccessLevelsGetAccessLevelFormat "CEL"

{-# COMPLETE
  AccessPoliciesAccessLevelsGetAccessLevelFormat_LEVELFORMATUNSPECIFIED,
  AccessPoliciesAccessLevelsGetAccessLevelFormat_ASDEFINED,
  AccessPoliciesAccessLevelsGetAccessLevelFormat_Cel,
  AccessPoliciesAccessLevelsGetAccessLevelFormat
  #-}

-- | Whether to return @BasicLevels@ in the Cloud Common Expression language, as @CustomLevels@, rather than as @BasicLevels@. Defaults to returning @AccessLevels@ in the format they were defined.
newtype AccessPoliciesAccessLevelsListAccessLevelFormat = AccessPoliciesAccessLevelsListAccessLevelFormat {fromAccessPoliciesAccessLevelsListAccessLevelFormat :: Core.Text}
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

-- | The format was not specified.
pattern AccessPoliciesAccessLevelsListAccessLevelFormat_LEVELFORMATUNSPECIFIED :: AccessPoliciesAccessLevelsListAccessLevelFormat
pattern AccessPoliciesAccessLevelsListAccessLevelFormat_LEVELFORMATUNSPECIFIED = AccessPoliciesAccessLevelsListAccessLevelFormat "LEVEL_FORMAT_UNSPECIFIED"

-- | Uses the format the resource was defined in. BasicLevels are returned as BasicLevels, CustomLevels are returned as CustomLevels.
pattern AccessPoliciesAccessLevelsListAccessLevelFormat_ASDEFINED :: AccessPoliciesAccessLevelsListAccessLevelFormat
pattern AccessPoliciesAccessLevelsListAccessLevelFormat_ASDEFINED = AccessPoliciesAccessLevelsListAccessLevelFormat "AS_DEFINED"

-- | Use Cloud Common Expression Language when returning the resource. Both BasicLevels and CustomLevels are returned as CustomLevels.
pattern AccessPoliciesAccessLevelsListAccessLevelFormat_Cel :: AccessPoliciesAccessLevelsListAccessLevelFormat
pattern AccessPoliciesAccessLevelsListAccessLevelFormat_Cel = AccessPoliciesAccessLevelsListAccessLevelFormat "CEL"

{-# COMPLETE
  AccessPoliciesAccessLevelsListAccessLevelFormat_LEVELFORMATUNSPECIFIED,
  AccessPoliciesAccessLevelsListAccessLevelFormat_ASDEFINED,
  AccessPoliciesAccessLevelsListAccessLevelFormat_Cel,
  AccessPoliciesAccessLevelsListAccessLevelFormat
  #-}
