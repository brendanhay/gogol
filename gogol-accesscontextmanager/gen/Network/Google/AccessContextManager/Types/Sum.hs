{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AccessContextManager.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AccessContextManager.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | Whether to return \`BasicLevels\` in the Cloud Common Expression
-- Language rather than as \`BasicLevels\`. Defaults to AS_DEFINED, where
-- Access Levels are returned as \`BasicLevels\` or \`CustomLevels\` based
-- on how they were created. If set to CEL, all Access Levels are returned
-- as \`CustomLevels\`. In the CEL case, \`BasicLevels\` are translated to
-- equivalent \`CustomLevels\`.
data AccessPoliciesAccessLevelsGetAccessLevelFormat
    = LevelFormatUnspecified
      -- ^ @LEVEL_FORMAT_UNSPECIFIED@
      -- The format was not specified.
    | AsDefined
      -- ^ @AS_DEFINED@
      -- Uses the format the resource was defined in. BasicLevels are returned as
      -- BasicLevels, CustomLevels are returned as CustomLevels.
    | Cel
      -- ^ @CEL@
      -- Use Cloud Common Expression Language when returning the resource. Both
      -- BasicLevels and CustomLevels are returned as CustomLevels.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AccessPoliciesAccessLevelsGetAccessLevelFormat

instance FromHttpApiData AccessPoliciesAccessLevelsGetAccessLevelFormat where
    parseQueryParam = \case
        "LEVEL_FORMAT_UNSPECIFIED" -> Right LevelFormatUnspecified
        "AS_DEFINED" -> Right AsDefined
        "CEL" -> Right Cel
        x -> Left ("Unable to parse AccessPoliciesAccessLevelsGetAccessLevelFormat from: " <> x)

instance ToHttpApiData AccessPoliciesAccessLevelsGetAccessLevelFormat where
    toQueryParam = \case
        LevelFormatUnspecified -> "LEVEL_FORMAT_UNSPECIFIED"
        AsDefined -> "AS_DEFINED"
        Cel -> "CEL"

instance FromJSON AccessPoliciesAccessLevelsGetAccessLevelFormat where
    parseJSON = parseJSONText "AccessPoliciesAccessLevelsGetAccessLevelFormat"

instance ToJSON AccessPoliciesAccessLevelsGetAccessLevelFormat where
    toJSON = toJSONText

-- | How the \`conditions\` list should be combined to determine if a request
-- is granted this \`AccessLevel\`. If AND is used, each \`Condition\` in
-- \`conditions\` must be satisfied for the \`AccessLevel\` to be applied.
-- If OR is used, at least one \`Condition\` in \`conditions\` must be
-- satisfied for the \`AccessLevel\` to be applied. Default behavior is
-- AND.
data BasicLevelCombiningFunction
    = And
      -- ^ @AND@
      -- All \`Conditions\` must be true for the \`BasicLevel\` to be true.
    | OR
      -- ^ @OR@
      -- If at least one \`Condition\` is true, then the \`BasicLevel\` is true.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BasicLevelCombiningFunction

instance FromHttpApiData BasicLevelCombiningFunction where
    parseQueryParam = \case
        "AND" -> Right And
        "OR" -> Right OR
        x -> Left ("Unable to parse BasicLevelCombiningFunction from: " <> x)

instance ToHttpApiData BasicLevelCombiningFunction where
    toQueryParam = \case
        And -> "AND"
        OR -> "OR"

instance FromJSON BasicLevelCombiningFunction where
    parseJSON = parseJSONText "BasicLevelCombiningFunction"

instance ToJSON BasicLevelCombiningFunction where
    toJSON = toJSONText

-- | Perimeter type indicator. A single project is allowed to be a member of
-- single regular perimeter, but multiple service perimeter bridges. A
-- project cannot be a included in a perimeter bridge without being
-- included in regular perimeter. For perimeter bridges, the restricted
-- service list as well as access level lists must be empty.
data ServicePerimeterPerimeterType
    = PerimeterTypeRegular
      -- ^ @PERIMETER_TYPE_REGULAR@
      -- Regular Perimeter.
    | PerimeterTypeBridge
      -- ^ @PERIMETER_TYPE_BRIDGE@
      -- Perimeter Bridge.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ServicePerimeterPerimeterType

instance FromHttpApiData ServicePerimeterPerimeterType where
    parseQueryParam = \case
        "PERIMETER_TYPE_REGULAR" -> Right PerimeterTypeRegular
        "PERIMETER_TYPE_BRIDGE" -> Right PerimeterTypeBridge
        x -> Left ("Unable to parse ServicePerimeterPerimeterType from: " <> x)

instance ToHttpApiData ServicePerimeterPerimeterType where
    toQueryParam = \case
        PerimeterTypeRegular -> "PERIMETER_TYPE_REGULAR"
        PerimeterTypeBridge -> "PERIMETER_TYPE_BRIDGE"

instance FromJSON ServicePerimeterPerimeterType where
    parseJSON = parseJSONText "ServicePerimeterPerimeterType"

instance ToJSON ServicePerimeterPerimeterType where
    toJSON = toJSONText

-- | Required. The allowed OS type.
data OSConstraintOSType
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

instance Hashable OSConstraintOSType

instance FromHttpApiData OSConstraintOSType where
    parseQueryParam = \case
        "OS_UNSPECIFIED" -> Right OSUnspecified
        "DESKTOP_MAC" -> Right DesktopMAC
        "DESKTOP_WINDOWS" -> Right DesktopWindows
        "DESKTOP_LINUX" -> Right DesktopLinux
        "DESKTOP_CHROME_OS" -> Right DesktopChromeOS
        "ANDROID" -> Right Android
        "IOS" -> Right Ios
        x -> Left ("Unable to parse OSConstraintOSType from: " <> x)

instance ToHttpApiData OSConstraintOSType where
    toQueryParam = \case
        OSUnspecified -> "OS_UNSPECIFIED"
        DesktopMAC -> "DESKTOP_MAC"
        DesktopWindows -> "DESKTOP_WINDOWS"
        DesktopLinux -> "DESKTOP_LINUX"
        DesktopChromeOS -> "DESKTOP_CHROME_OS"
        Android -> "ANDROID"
        Ios -> "IOS"

instance FromJSON OSConstraintOSType where
    parseJSON = parseJSONText "OSConstraintOSType"

instance ToJSON OSConstraintOSType where
    toJSON = toJSONText

-- | Whether to return \`BasicLevels\` in the Cloud Common Expression
-- language, as \`CustomLevels\`, rather than as \`BasicLevels\`. Defaults
-- to returning \`AccessLevels\` in the format they were defined.
data AccessPoliciesAccessLevelsListAccessLevelFormat
    = APALLALFLevelFormatUnspecified
      -- ^ @LEVEL_FORMAT_UNSPECIFIED@
      -- The format was not specified.
    | APALLALFAsDefined
      -- ^ @AS_DEFINED@
      -- Uses the format the resource was defined in. BasicLevels are returned as
      -- BasicLevels, CustomLevels are returned as CustomLevels.
    | APALLALFCel
      -- ^ @CEL@
      -- Use Cloud Common Expression Language when returning the resource. Both
      -- BasicLevels and CustomLevels are returned as CustomLevels.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AccessPoliciesAccessLevelsListAccessLevelFormat

instance FromHttpApiData AccessPoliciesAccessLevelsListAccessLevelFormat where
    parseQueryParam = \case
        "LEVEL_FORMAT_UNSPECIFIED" -> Right APALLALFLevelFormatUnspecified
        "AS_DEFINED" -> Right APALLALFAsDefined
        "CEL" -> Right APALLALFCel
        x -> Left ("Unable to parse AccessPoliciesAccessLevelsListAccessLevelFormat from: " <> x)

instance ToHttpApiData AccessPoliciesAccessLevelsListAccessLevelFormat where
    toQueryParam = \case
        APALLALFLevelFormatUnspecified -> "LEVEL_FORMAT_UNSPECIFIED"
        APALLALFAsDefined -> "AS_DEFINED"
        APALLALFCel -> "CEL"

instance FromJSON AccessPoliciesAccessLevelsListAccessLevelFormat where
    parseJSON = parseJSONText "AccessPoliciesAccessLevelsListAccessLevelFormat"

instance ToJSON AccessPoliciesAccessLevelsListAccessLevelFormat where
    toJSON = toJSONText

data DevicePolicyAllowedDeviceManagementLevelsItem
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

instance Hashable DevicePolicyAllowedDeviceManagementLevelsItem

instance FromHttpApiData DevicePolicyAllowedDeviceManagementLevelsItem where
    parseQueryParam = \case
        "MANAGEMENT_UNSPECIFIED" -> Right ManagementUnspecified
        "NONE" -> Right None
        "BASIC" -> Right Basic
        "COMPLETE" -> Right Complete
        x -> Left ("Unable to parse DevicePolicyAllowedDeviceManagementLevelsItem from: " <> x)

instance ToHttpApiData DevicePolicyAllowedDeviceManagementLevelsItem where
    toQueryParam = \case
        ManagementUnspecified -> "MANAGEMENT_UNSPECIFIED"
        None -> "NONE"
        Basic -> "BASIC"
        Complete -> "COMPLETE"

instance FromJSON DevicePolicyAllowedDeviceManagementLevelsItem where
    parseJSON = parseJSONText "DevicePolicyAllowedDeviceManagementLevelsItem"

instance ToJSON DevicePolicyAllowedDeviceManagementLevelsItem where
    toJSON = toJSONText

-- | Specifies the type of identities that are allowed access from outside
-- the perimeter. If left unspecified, then members of \`identities\` field
-- will be allowed access.
data IngressFromIdentityType
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

instance Hashable IngressFromIdentityType

instance FromHttpApiData IngressFromIdentityType where
    parseQueryParam = \case
        "IDENTITY_TYPE_UNSPECIFIED" -> Right IdentityTypeUnspecified
        "ANY_IDENTITY" -> Right AnyIdentity
        "ANY_USER_ACCOUNT" -> Right AnyUserAccount
        "ANY_SERVICE_ACCOUNT" -> Right AnyServiceAccount
        x -> Left ("Unable to parse IngressFromIdentityType from: " <> x)

instance ToHttpApiData IngressFromIdentityType where
    toQueryParam = \case
        IdentityTypeUnspecified -> "IDENTITY_TYPE_UNSPECIFIED"
        AnyIdentity -> "ANY_IDENTITY"
        AnyUserAccount -> "ANY_USER_ACCOUNT"
        AnyServiceAccount -> "ANY_SERVICE_ACCOUNT"

instance FromJSON IngressFromIdentityType where
    parseJSON = parseJSONText "IngressFromIdentityType"

instance ToJSON IngressFromIdentityType where
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
data EgressFromIdentityType
    = EFITIdentityTypeUnspecified
      -- ^ @IDENTITY_TYPE_UNSPECIFIED@
      -- No blanket identity group specified.
    | EFITAnyIdentity
      -- ^ @ANY_IDENTITY@
      -- Authorize access from all identities outside the perimeter.
    | EFITAnyUserAccount
      -- ^ @ANY_USER_ACCOUNT@
      -- Authorize access from all human users outside the perimeter.
    | EFITAnyServiceAccount
      -- ^ @ANY_SERVICE_ACCOUNT@
      -- Authorize access from all service accounts outside the perimeter.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EgressFromIdentityType

instance FromHttpApiData EgressFromIdentityType where
    parseQueryParam = \case
        "IDENTITY_TYPE_UNSPECIFIED" -> Right EFITIdentityTypeUnspecified
        "ANY_IDENTITY" -> Right EFITAnyIdentity
        "ANY_USER_ACCOUNT" -> Right EFITAnyUserAccount
        "ANY_SERVICE_ACCOUNT" -> Right EFITAnyServiceAccount
        x -> Left ("Unable to parse EgressFromIdentityType from: " <> x)

instance ToHttpApiData EgressFromIdentityType where
    toQueryParam = \case
        EFITIdentityTypeUnspecified -> "IDENTITY_TYPE_UNSPECIFIED"
        EFITAnyIdentity -> "ANY_IDENTITY"
        EFITAnyUserAccount -> "ANY_USER_ACCOUNT"
        EFITAnyServiceAccount -> "ANY_SERVICE_ACCOUNT"

instance FromJSON EgressFromIdentityType where
    parseJSON = parseJSONText "EgressFromIdentityType"

instance ToJSON EgressFromIdentityType where
    toJSON = toJSONText

data DevicePolicyAllowedEncryptionStatusesItem
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

instance Hashable DevicePolicyAllowedEncryptionStatusesItem

instance FromHttpApiData DevicePolicyAllowedEncryptionStatusesItem where
    parseQueryParam = \case
        "ENCRYPTION_UNSPECIFIED" -> Right EncryptionUnspecified
        "ENCRYPTION_UNSUPPORTED" -> Right EncryptionUnsupported
        "UNENCRYPTED" -> Right Unencrypted
        "ENCRYPTED" -> Right Encrypted
        x -> Left ("Unable to parse DevicePolicyAllowedEncryptionStatusesItem from: " <> x)

instance ToHttpApiData DevicePolicyAllowedEncryptionStatusesItem where
    toQueryParam = \case
        EncryptionUnspecified -> "ENCRYPTION_UNSPECIFIED"
        EncryptionUnsupported -> "ENCRYPTION_UNSUPPORTED"
        Unencrypted -> "UNENCRYPTED"
        Encrypted -> "ENCRYPTED"

instance FromJSON DevicePolicyAllowedEncryptionStatusesItem where
    parseJSON = parseJSONText "DevicePolicyAllowedEncryptionStatusesItem"

instance ToJSON DevicePolicyAllowedEncryptionStatusesItem where
    toJSON = toJSONText
