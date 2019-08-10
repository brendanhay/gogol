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

import           Network.Google.Prelude hiding (Bytes)

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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OSConstraintOSType

instance FromHttpApiData OSConstraintOSType where
    parseQueryParam = \case
        "OS_UNSPECIFIED" -> Right OSUnspecified
        "DESKTOP_MAC" -> Right DesktopMAC
        "DESKTOP_WINDOWS" -> Right DesktopWindows
        "DESKTOP_LINUX" -> Right DesktopLinux
        "DESKTOP_CHROME_OS" -> Right DesktopChromeOS
        x -> Left ("Unable to parse OSConstraintOSType from: " <> x)

instance ToHttpApiData OSConstraintOSType where
    toQueryParam = \case
        OSUnspecified -> "OS_UNSPECIFIED"
        DesktopMAC -> "DESKTOP_MAC"
        DesktopWindows -> "DESKTOP_WINDOWS"
        DesktopLinux -> "DESKTOP_LINUX"
        DesktopChromeOS -> "DESKTOP_CHROME_OS"

instance FromJSON OSConstraintOSType where
    parseJSON = parseJSONText "OSConstraintOSType"

instance ToJSON OSConstraintOSType where
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
