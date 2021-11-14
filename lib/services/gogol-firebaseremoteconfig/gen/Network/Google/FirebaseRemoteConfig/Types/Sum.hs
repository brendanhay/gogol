{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.FirebaseRemoteConfig.Types.Sum
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.FirebaseRemoteConfig.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

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

-- | Optional. The display (tag) color of this condition. This serves as part
-- of a tag (in the future, we may add tag text as well as tag color, but
-- that is not yet implemented in the UI). This value has no affect on the
-- semantics of the delivered config and it is ignored by the backend,
-- except for passing it through write\/read requests. Not having this
-- value or having the \"CONDITION_DISPLAY_COLOR_UNSPECIFIED\" value (0)
-- have the same meaning: Let the UI choose any valid color when displaying
-- the condition.
data RemoteConfigConditionTagColor
    = ConditionDisplayColorUnspecified
      -- ^ @CONDITION_DISPLAY_COLOR_UNSPECIFIED@
    | Blue
      -- ^ @BLUE@
      -- Blue
    | Brown
      -- ^ @BROWN@
      -- Brown
    | Cyan
      -- ^ @CYAN@
      -- Cyan
    | DeepOrange
      -- ^ @DEEP_ORANGE@
      -- aka \"Red Orange\"
    | Green
      -- ^ @GREEN@
      -- Green
    | Indigo
      -- ^ @INDIGO@
      -- Indigo *
    | Lime
      -- ^ @LIME@
      -- Lime - Approved deviation from Material color palette
    | Orange
      -- ^ @ORANGE@
      -- Orange
    | Pink
      -- ^ @PINK@
      -- Pink
    | Purple
      -- ^ @PURPLE@
      -- Purple
    | Teal
      -- ^ @TEAL@
      -- Teal
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RemoteConfigConditionTagColor

instance FromHttpApiData RemoteConfigConditionTagColor where
    parseQueryParam = \case
        "CONDITION_DISPLAY_COLOR_UNSPECIFIED" -> Right ConditionDisplayColorUnspecified
        "BLUE" -> Right Blue
        "BROWN" -> Right Brown
        "CYAN" -> Right Cyan
        "DEEP_ORANGE" -> Right DeepOrange
        "GREEN" -> Right Green
        "INDIGO" -> Right Indigo
        "LIME" -> Right Lime
        "ORANGE" -> Right Orange
        "PINK" -> Right Pink
        "PURPLE" -> Right Purple
        "TEAL" -> Right Teal
        x -> Left ("Unable to parse RemoteConfigConditionTagColor from: " <> x)

instance ToHttpApiData RemoteConfigConditionTagColor where
    toQueryParam = \case
        ConditionDisplayColorUnspecified -> "CONDITION_DISPLAY_COLOR_UNSPECIFIED"
        Blue -> "BLUE"
        Brown -> "BROWN"
        Cyan -> "CYAN"
        DeepOrange -> "DEEP_ORANGE"
        Green -> "GREEN"
        Indigo -> "INDIGO"
        Lime -> "LIME"
        Orange -> "ORANGE"
        Pink -> "PINK"
        Purple -> "PURPLE"
        Teal -> "TEAL"

instance FromJSON RemoteConfigConditionTagColor where
    parseJSON = parseJSONText "RemoteConfigConditionTagColor"

instance ToJSON RemoteConfigConditionTagColor where
    toJSON = toJSONText
