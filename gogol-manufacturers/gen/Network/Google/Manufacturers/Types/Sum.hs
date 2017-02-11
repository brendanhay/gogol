{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Manufacturers.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Manufacturers.Types.Sum where

import           Network.Google.Prelude

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

-- | The severity of the issue.
data IssueSeverity
    = SeverityUnspecified
      -- ^ @SEVERITY_UNSPECIFIED@
      -- Unspecified severity, never used.
    | Error'
      -- ^ @ERROR@
      -- Error severity. The issue prevents the usage of the whole item.
    | Warning
      -- ^ @WARNING@
      -- Warning severity. The issue is either one that prevents the usage of the
      -- attribute that triggered it or one that will soon prevent the usage of
      -- the whole item.
    | Info
      -- ^ @INFO@
      -- Info severity. The issue is one that doesn\'t require immediate
      -- attention. It is, for example, used to communicate which attributes are
      -- still pending review.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable IssueSeverity

instance FromHttpApiData IssueSeverity where
    parseQueryParam = \case
        "SEVERITY_UNSPECIFIED" -> Right SeverityUnspecified
        "ERROR" -> Right Error'
        "WARNING" -> Right Warning
        "INFO" -> Right Info
        x -> Left ("Unable to parse IssueSeverity from: " <> x)

instance ToHttpApiData IssueSeverity where
    toQueryParam = \case
        SeverityUnspecified -> "SEVERITY_UNSPECIFIED"
        Error' -> "ERROR"
        Warning -> "WARNING"
        Info -> "INFO"

instance FromJSON IssueSeverity where
    parseJSON = parseJSONText "IssueSeverity"

instance ToJSON IssueSeverity where
    toJSON = toJSONText
