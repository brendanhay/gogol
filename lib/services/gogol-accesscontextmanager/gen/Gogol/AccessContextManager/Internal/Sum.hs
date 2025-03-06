{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AccessContextManager.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
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

    -- * AuthorizedOrgsDesc_AssetType
    AuthorizedOrgsDesc_AssetType
      ( AuthorizedOrgsDesc_AssetType_ASSETTYPEUNSPECIFIED,
        AuthorizedOrgsDesc_AssetType_ASSETTYPEDEVICE,
        AuthorizedOrgsDesc_AssetType_ASSETTYPECREDENTIALSTRENGTH,
        ..
      ),

    -- * AuthorizedOrgsDesc_AuthorizationDirection
    AuthorizedOrgsDesc_AuthorizationDirection
      ( AuthorizedOrgsDesc_AuthorizationDirection_AUTHORIZATIONDIRECTIONUNSPECIFIED,
        AuthorizedOrgsDesc_AuthorizationDirection_AUTHORIZATIONDIRECTIONTO,
        AuthorizedOrgsDesc_AuthorizationDirection_AUTHORIZATIONDIRECTIONFROM,
        ..
      ),

    -- * AuthorizedOrgsDesc_AuthorizationType
    AuthorizedOrgsDesc_AuthorizationType
      ( AuthorizedOrgsDesc_AuthorizationType_AUTHORIZATIONTYPEUNSPECIFIED,
        AuthorizedOrgsDesc_AuthorizationType_AUTHORIZATIONTYPETRUST,
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

    -- * EgressFrom_SourceRestriction
    EgressFrom_SourceRestriction
      ( EgressFrom_SourceRestriction_SOURCERESTRICTIONUNSPECIFIED,
        EgressFrom_SourceRestriction_SOURCERESTRICTIONENABLED,
        EgressFrom_SourceRestriction_SOURCERESTRICTIONDISABLED,
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

    -- * SessionSettings_SessionReauthMethod
    SessionSettings_SessionReauthMethod
      ( SessionSettings_SessionReauthMethod_SESSIONREAUTHMETHODUNSPECIFIED,
        SessionSettings_SessionReauthMethod_Login,
        SessionSettings_SessionReauthMethod_SECURITYKEY,
        SessionSettings_SessionReauthMethod_Password,
        ..
      ),

    -- * SupportedService_ServiceSupportStage
    SupportedService_ServiceSupportStage
      ( SupportedService_ServiceSupportStage_SERVICESUPPORTSTAGEUNSPECIFIED,
        SupportedService_ServiceSupportStage_GA,
        SupportedService_ServiceSupportStage_Preview,
        SupportedService_ServiceSupportStage_Deprecated,
        ..
      ),

    -- * SupportedService_SupportStage
    SupportedService_SupportStage
      ( SupportedService_SupportStage_LAUNCHSTAGEUNSPECIFIED,
        SupportedService_SupportStage_Unimplemented,
        SupportedService_SupportStage_Prelaunch,
        SupportedService_SupportStage_EARLYACCESS,
        SupportedService_SupportStage_Alpha,
        SupportedService_SupportStage_Beta,
        SupportedService_SupportStage_GA,
        SupportedService_SupportStage_Deprecated,
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

import Gogol.Prelude qualified as Core

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

-- | The asset type of this authorized orgs desc. Valid values are @ASSET_TYPE_DEVICE@, and @ASSET_TYPE_CREDENTIAL_STRENGTH@.
newtype AuthorizedOrgsDesc_AssetType = AuthorizedOrgsDesc_AssetType {fromAuthorizedOrgsDesc_AssetType :: Core.Text}
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

-- | No asset type specified.
pattern AuthorizedOrgsDesc_AssetType_ASSETTYPEUNSPECIFIED :: AuthorizedOrgsDesc_AssetType
pattern AuthorizedOrgsDesc_AssetType_ASSETTYPEUNSPECIFIED = AuthorizedOrgsDesc_AssetType "ASSET_TYPE_UNSPECIFIED"

-- | Device asset type.
pattern AuthorizedOrgsDesc_AssetType_ASSETTYPEDEVICE :: AuthorizedOrgsDesc_AssetType
pattern AuthorizedOrgsDesc_AssetType_ASSETTYPEDEVICE = AuthorizedOrgsDesc_AssetType "ASSET_TYPE_DEVICE"

-- | Credential strength asset type.
pattern AuthorizedOrgsDesc_AssetType_ASSETTYPECREDENTIALSTRENGTH :: AuthorizedOrgsDesc_AssetType
pattern AuthorizedOrgsDesc_AssetType_ASSETTYPECREDENTIALSTRENGTH = AuthorizedOrgsDesc_AssetType "ASSET_TYPE_CREDENTIAL_STRENGTH"

{-# COMPLETE
  AuthorizedOrgsDesc_AssetType_ASSETTYPEUNSPECIFIED,
  AuthorizedOrgsDesc_AssetType_ASSETTYPEDEVICE,
  AuthorizedOrgsDesc_AssetType_ASSETTYPECREDENTIALSTRENGTH,
  AuthorizedOrgsDesc_AssetType
  #-}

-- | The direction of the authorization relationship between this organization and the organizations listed in the @orgs@ field. The valid values for this field include the following: @AUTHORIZATION_DIRECTION_FROM@: Allows this organization to evaluate traffic in the organizations listed in the @orgs@ field. @AUTHORIZATION_DIRECTION_TO@: Allows the organizations listed in the @orgs@ field to evaluate the traffic in this organization. For the authorization relationship to take effect, all of the organizations must authorize and specify the appropriate relationship direction. For example, if organization A authorized organization B and C to evaluate its traffic, by specifying @AUTHORIZATION_DIRECTION_TO@ as the authorization direction, organizations B and C must specify @AUTHORIZATION_DIRECTION_FROM@ as the authorization direction in their @AuthorizedOrgsDesc@ resource.
newtype AuthorizedOrgsDesc_AuthorizationDirection = AuthorizedOrgsDesc_AuthorizationDirection {fromAuthorizedOrgsDesc_AuthorizationDirection :: Core.Text}
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

-- | No direction specified.
pattern AuthorizedOrgsDesc_AuthorizationDirection_AUTHORIZATIONDIRECTIONUNSPECIFIED :: AuthorizedOrgsDesc_AuthorizationDirection
pattern AuthorizedOrgsDesc_AuthorizationDirection_AUTHORIZATIONDIRECTIONUNSPECIFIED = AuthorizedOrgsDesc_AuthorizationDirection "AUTHORIZATION_DIRECTION_UNSPECIFIED"

-- | The specified organizations are authorized to evaluate traffic in this organization.
pattern AuthorizedOrgsDesc_AuthorizationDirection_AUTHORIZATIONDIRECTIONTO :: AuthorizedOrgsDesc_AuthorizationDirection
pattern AuthorizedOrgsDesc_AuthorizationDirection_AUTHORIZATIONDIRECTIONTO = AuthorizedOrgsDesc_AuthorizationDirection "AUTHORIZATION_DIRECTION_TO"

-- | The traffic of the specified organizations can be evaluated by this organization.
pattern AuthorizedOrgsDesc_AuthorizationDirection_AUTHORIZATIONDIRECTIONFROM :: AuthorizedOrgsDesc_AuthorizationDirection
pattern AuthorizedOrgsDesc_AuthorizationDirection_AUTHORIZATIONDIRECTIONFROM = AuthorizedOrgsDesc_AuthorizationDirection "AUTHORIZATION_DIRECTION_FROM"

{-# COMPLETE
  AuthorizedOrgsDesc_AuthorizationDirection_AUTHORIZATIONDIRECTIONUNSPECIFIED,
  AuthorizedOrgsDesc_AuthorizationDirection_AUTHORIZATIONDIRECTIONTO,
  AuthorizedOrgsDesc_AuthorizationDirection_AUTHORIZATIONDIRECTIONFROM,
  AuthorizedOrgsDesc_AuthorizationDirection
  #-}

-- | A granular control type for authorization levels. Valid value is @AUTHORIZATION_TYPE_TRUST@.
newtype AuthorizedOrgsDesc_AuthorizationType = AuthorizedOrgsDesc_AuthorizationType {fromAuthorizedOrgsDesc_AuthorizationType :: Core.Text}
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

-- | No authorization type specified.
pattern AuthorizedOrgsDesc_AuthorizationType_AUTHORIZATIONTYPEUNSPECIFIED :: AuthorizedOrgsDesc_AuthorizationType
pattern AuthorizedOrgsDesc_AuthorizationType_AUTHORIZATIONTYPEUNSPECIFIED = AuthorizedOrgsDesc_AuthorizationType "AUTHORIZATION_TYPE_UNSPECIFIED"

-- | This authorization relationship is \"trust\".
pattern AuthorizedOrgsDesc_AuthorizationType_AUTHORIZATIONTYPETRUST :: AuthorizedOrgsDesc_AuthorizationType
pattern AuthorizedOrgsDesc_AuthorizationType_AUTHORIZATIONTYPETRUST = AuthorizedOrgsDesc_AuthorizationType "AUTHORIZATION_TYPE_TRUST"

{-# COMPLETE
  AuthorizedOrgsDesc_AuthorizationType_AUTHORIZATIONTYPEUNSPECIFIED,
  AuthorizedOrgsDesc_AuthorizationType_AUTHORIZATIONTYPETRUST,
  AuthorizedOrgsDesc_AuthorizationType
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

-- | Whether to enforce traffic restrictions based on @sources@ field. If the @sources@ fields is non-empty, then this field must be set to @SOURCE_RESTRICTION_ENABLED@.
newtype EgressFrom_SourceRestriction = EgressFrom_SourceRestriction {fromEgressFrom_SourceRestriction :: Core.Text}
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

-- | Enforcement preference unspecified, will not enforce traffic restrictions based on @sources@ in EgressFrom.
pattern EgressFrom_SourceRestriction_SOURCERESTRICTIONUNSPECIFIED :: EgressFrom_SourceRestriction
pattern EgressFrom_SourceRestriction_SOURCERESTRICTIONUNSPECIFIED = EgressFrom_SourceRestriction "SOURCE_RESTRICTION_UNSPECIFIED"

-- | Enforcement preference enabled, traffic restrictions will be enforced based on @sources@ in EgressFrom.
pattern EgressFrom_SourceRestriction_SOURCERESTRICTIONENABLED :: EgressFrom_SourceRestriction
pattern EgressFrom_SourceRestriction_SOURCERESTRICTIONENABLED = EgressFrom_SourceRestriction "SOURCE_RESTRICTION_ENABLED"

-- | Enforcement preference disabled, will not enforce traffic restrictions based on @sources@ in EgressFrom.
pattern EgressFrom_SourceRestriction_SOURCERESTRICTIONDISABLED :: EgressFrom_SourceRestriction
pattern EgressFrom_SourceRestriction_SOURCERESTRICTIONDISABLED = EgressFrom_SourceRestriction "SOURCE_RESTRICTION_DISABLED"

{-# COMPLETE
  EgressFrom_SourceRestriction_SOURCERESTRICTIONUNSPECIFIED,
  EgressFrom_SourceRestriction_SOURCERESTRICTIONENABLED,
  EgressFrom_SourceRestriction_SOURCERESTRICTIONDISABLED,
  EgressFrom_SourceRestriction
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

-- | Perimeter type indicator. A single project or VPC network is allowed to be a member of single regular perimeter, but multiple service perimeter bridges. A project cannot be a included in a perimeter bridge without being included in regular perimeter. For perimeter bridges, the restricted service list as well as access level lists must be empty.
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

-- | Regular Perimeter. When no value is specified, the perimeter uses this type.
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

-- | Optional. Session method when user\'s Google Cloud session is up.
newtype SessionSettings_SessionReauthMethod = SessionSettings_SessionReauthMethod {fromSessionSettings_SessionReauthMethod :: Core.Text}
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

-- | If method is undefined in the API, LOGIN will be used by default.
pattern SessionSettings_SessionReauthMethod_SESSIONREAUTHMETHODUNSPECIFIED :: SessionSettings_SessionReauthMethod
pattern SessionSettings_SessionReauthMethod_SESSIONREAUTHMETHODUNSPECIFIED = SessionSettings_SessionReauthMethod "SESSION_REAUTH_METHOD_UNSPECIFIED"

-- | The user will be prompted to perform regular login. Users who are enrolled for two-step verification and haven\'t chosen \"Remember this computer\" will be prompted for their second factor.
pattern SessionSettings_SessionReauthMethod_Login :: SessionSettings_SessionReauthMethod
pattern SessionSettings_SessionReauthMethod_Login = SessionSettings_SessionReauthMethod "LOGIN"

-- | The user will be prompted to authenticate using their security key. If no security key has been configured, then authentication will fallback to LOGIN.
pattern SessionSettings_SessionReauthMethod_SECURITYKEY :: SessionSettings_SessionReauthMethod
pattern SessionSettings_SessionReauthMethod_SECURITYKEY = SessionSettings_SessionReauthMethod "SECURITY_KEY"

-- | The user will be prompted for their password.
pattern SessionSettings_SessionReauthMethod_Password :: SessionSettings_SessionReauthMethod
pattern SessionSettings_SessionReauthMethod_Password = SessionSettings_SessionReauthMethod "PASSWORD"

{-# COMPLETE
  SessionSettings_SessionReauthMethod_SESSIONREAUTHMETHODUNSPECIFIED,
  SessionSettings_SessionReauthMethod_Login,
  SessionSettings_SessionReauthMethod_SECURITYKEY,
  SessionSettings_SessionReauthMethod_Password,
  SessionSettings_SessionReauthMethod
  #-}

-- | The support stage of the service.
newtype SupportedService_ServiceSupportStage = SupportedService_ServiceSupportStage {fromSupportedService_ServiceSupportStage :: Core.Text}
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

-- | Do not use this default value.
pattern SupportedService_ServiceSupportStage_SERVICESUPPORTSTAGEUNSPECIFIED :: SupportedService_ServiceSupportStage
pattern SupportedService_ServiceSupportStage_SERVICESUPPORTSTAGEUNSPECIFIED = SupportedService_ServiceSupportStage "SERVICE_SUPPORT_STAGE_UNSPECIFIED"

-- | GA features are open to all developers and are considered stable and fully qualified for production use.
pattern SupportedService_ServiceSupportStage_GA :: SupportedService_ServiceSupportStage
pattern SupportedService_ServiceSupportStage_GA = SupportedService_ServiceSupportStage "GA"

-- | PREVIEW indicates a pre-release stage where the product is functionally complete but undergoing real-world testing.
pattern SupportedService_ServiceSupportStage_Preview :: SupportedService_ServiceSupportStage
pattern SupportedService_ServiceSupportStage_Preview = SupportedService_ServiceSupportStage "PREVIEW"

-- | Deprecated features are scheduled to be shut down and removed.
pattern SupportedService_ServiceSupportStage_Deprecated :: SupportedService_ServiceSupportStage
pattern SupportedService_ServiceSupportStage_Deprecated = SupportedService_ServiceSupportStage "DEPRECATED"

{-# COMPLETE
  SupportedService_ServiceSupportStage_SERVICESUPPORTSTAGEUNSPECIFIED,
  SupportedService_ServiceSupportStage_GA,
  SupportedService_ServiceSupportStage_Preview,
  SupportedService_ServiceSupportStage_Deprecated,
  SupportedService_ServiceSupportStage
  #-}

-- | The support stage of the service.
newtype SupportedService_SupportStage = SupportedService_SupportStage {fromSupportedService_SupportStage :: Core.Text}
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

-- | Do not use this default value.
pattern SupportedService_SupportStage_LAUNCHSTAGEUNSPECIFIED :: SupportedService_SupportStage
pattern SupportedService_SupportStage_LAUNCHSTAGEUNSPECIFIED = SupportedService_SupportStage "LAUNCH_STAGE_UNSPECIFIED"

-- | The feature is not yet implemented. Users can not use it.
pattern SupportedService_SupportStage_Unimplemented :: SupportedService_SupportStage
pattern SupportedService_SupportStage_Unimplemented = SupportedService_SupportStage "UNIMPLEMENTED"

-- | Prelaunch features are hidden from users and are only visible internally.
pattern SupportedService_SupportStage_Prelaunch :: SupportedService_SupportStage
pattern SupportedService_SupportStage_Prelaunch = SupportedService_SupportStage "PRELAUNCH"

-- | Early Access features are limited to a closed group of testers. To use these features, you must sign up in advance and sign a Trusted Tester agreement (which includes confidentiality provisions). These features may be unstable, changed in backward-incompatible ways, and are not guaranteed to be released.
pattern SupportedService_SupportStage_EARLYACCESS :: SupportedService_SupportStage
pattern SupportedService_SupportStage_EARLYACCESS = SupportedService_SupportStage "EARLY_ACCESS"

-- | Alpha is a limited availability test for releases before they are cleared for widespread use. By Alpha, all significant design issues are resolved and we are in the process of verifying functionality. Alpha customers need to apply for access, agree to applicable terms, and have their projects allowlisted. Alpha releases don\'t have to be feature complete, no SLAs are provided, and there are no technical support obligations, but they will be far enough along that customers can actually use them in test environments or for limited-use tests -- just like they would in normal production cases.
pattern SupportedService_SupportStage_Alpha :: SupportedService_SupportStage
pattern SupportedService_SupportStage_Alpha = SupportedService_SupportStage "ALPHA"

-- | Beta is the point at which we are ready to open a release for any customer to use. There are no SLA or technical support obligations in a Beta release. Products will be complete from a feature perspective, but may have some open outstanding issues. Beta releases are suitable for limited production use cases.
pattern SupportedService_SupportStage_Beta :: SupportedService_SupportStage
pattern SupportedService_SupportStage_Beta = SupportedService_SupportStage "BETA"

-- | GA features are open to all developers and are considered stable and fully qualified for production use.
pattern SupportedService_SupportStage_GA :: SupportedService_SupportStage
pattern SupportedService_SupportStage_GA = SupportedService_SupportStage "GA"

-- | Deprecated features are scheduled to be shut down and removed. For more information, see the \"Deprecation Policy\" section of our <https://cloud.google.com/terms/ Terms of Service> and the <https://cloud.google.com/terms/deprecation Google Cloud Platform Subject to the Deprecation Policy> documentation.
pattern SupportedService_SupportStage_Deprecated :: SupportedService_SupportStage
pattern SupportedService_SupportStage_Deprecated = SupportedService_SupportStage "DEPRECATED"

{-# COMPLETE
  SupportedService_SupportStage_LAUNCHSTAGEUNSPECIFIED,
  SupportedService_SupportStage_Unimplemented,
  SupportedService_SupportStage_Prelaunch,
  SupportedService_SupportStage_EARLYACCESS,
  SupportedService_SupportStage_Alpha,
  SupportedService_SupportStage_Beta,
  SupportedService_SupportStage_GA,
  SupportedService_SupportStage_Deprecated,
  SupportedService_SupportStage
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
