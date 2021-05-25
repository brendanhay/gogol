{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.OSLogin.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.OSLogin.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | The operating system type where this account applies.
data PosixAccountOperatingSystemType
    = OperatingSystemTypeUnspecified
      -- ^ @OPERATING_SYSTEM_TYPE_UNSPECIFIED@
      -- The operating system type associated with the user account information
      -- is unspecified.
    | Linux
      -- ^ @LINUX@
      -- Linux user account information.
    | Windows
      -- ^ @WINDOWS@
      -- Windows user account information.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PosixAccountOperatingSystemType

instance FromHttpApiData PosixAccountOperatingSystemType where
    parseQueryParam = \case
        "OPERATING_SYSTEM_TYPE_UNSPECIFIED" -> Right OperatingSystemTypeUnspecified
        "LINUX" -> Right Linux
        "WINDOWS" -> Right Windows
        x -> Left ("Unable to parse PosixAccountOperatingSystemType from: " <> x)

instance ToHttpApiData PosixAccountOperatingSystemType where
    toQueryParam = \case
        OperatingSystemTypeUnspecified -> "OPERATING_SYSTEM_TYPE_UNSPECIFIED"
        Linux -> "LINUX"
        Windows -> "WINDOWS"

instance FromJSON PosixAccountOperatingSystemType where
    parseJSON = parseJSONText "PosixAccountOperatingSystemType"

instance ToJSON PosixAccountOperatingSystemType where
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
