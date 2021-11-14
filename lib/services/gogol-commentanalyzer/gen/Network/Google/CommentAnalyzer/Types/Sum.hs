{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CommentAnalyzer.Types.Sum
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CommentAnalyzer.Types.Sum where

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

-- | The type of the above value.
data ScoreType
    = ScoreTypeUnspecified
      -- ^ @SCORE_TYPE_UNSPECIFIED@
      -- Unspecified. Defaults to PROBABILITY scores if available, and otherwise
      -- RAW. Every model has a RAW score.
    | Probability
      -- ^ @PROBABILITY@
      -- Probability scores are in the range [0, 1] and indicate level of
      -- confidence in the attribute label.
    | StdDevScore
      -- ^ @STD_DEV_SCORE@
      -- Standard deviation scores are in the range (-inf, +inf).
    | Percentile
      -- ^ @PERCENTILE@
      -- Percentile scores are in the range [0, 1] and indicate the percentile of
      -- the raw score, normalized with a test dataset. This is not generally
      -- recommended, as the normalization is dependent on the dataset used,
      -- which may not match other usecases.
    | Raw
      -- ^ @RAW@
      -- Raw scores are the raw values from the model, and may take any value.
      -- This is primarily for debugging\/testing, and not generally recommended.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ScoreType

instance FromHttpApiData ScoreType where
    parseQueryParam = \case
        "SCORE_TYPE_UNSPECIFIED" -> Right ScoreTypeUnspecified
        "PROBABILITY" -> Right Probability
        "STD_DEV_SCORE" -> Right StdDevScore
        "PERCENTILE" -> Right Percentile
        "RAW" -> Right Raw
        x -> Left ("Unable to parse ScoreType from: " <> x)

instance ToHttpApiData ScoreType where
    toQueryParam = \case
        ScoreTypeUnspecified -> "SCORE_TYPE_UNSPECIFIED"
        Probability -> "PROBABILITY"
        StdDevScore -> "STD_DEV_SCORE"
        Percentile -> "PERCENTILE"
        Raw -> "RAW"

instance FromJSON ScoreType where
    parseJSON = parseJSONText "ScoreType"

instance ToJSON ScoreType where
    toJSON = toJSONText

-- | What type of scores to return. If unset, defaults to probability scores.
data AttributeParametersScoreType
    = APSTScoreTypeUnspecified
      -- ^ @SCORE_TYPE_UNSPECIFIED@
      -- Unspecified. Defaults to PROBABILITY scores if available, and otherwise
      -- RAW. Every model has a RAW score.
    | APSTProbability
      -- ^ @PROBABILITY@
      -- Probability scores are in the range [0, 1] and indicate level of
      -- confidence in the attribute label.
    | APSTStdDevScore
      -- ^ @STD_DEV_SCORE@
      -- Standard deviation scores are in the range (-inf, +inf).
    | APSTPercentile
      -- ^ @PERCENTILE@
      -- Percentile scores are in the range [0, 1] and indicate the percentile of
      -- the raw score, normalized with a test dataset. This is not generally
      -- recommended, as the normalization is dependent on the dataset used,
      -- which may not match other usecases.
    | APSTRaw
      -- ^ @RAW@
      -- Raw scores are the raw values from the model, and may take any value.
      -- This is primarily for debugging\/testing, and not generally recommended.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AttributeParametersScoreType

instance FromHttpApiData AttributeParametersScoreType where
    parseQueryParam = \case
        "SCORE_TYPE_UNSPECIFIED" -> Right APSTScoreTypeUnspecified
        "PROBABILITY" -> Right APSTProbability
        "STD_DEV_SCORE" -> Right APSTStdDevScore
        "PERCENTILE" -> Right APSTPercentile
        "RAW" -> Right APSTRaw
        x -> Left ("Unable to parse AttributeParametersScoreType from: " <> x)

instance ToHttpApiData AttributeParametersScoreType where
    toQueryParam = \case
        APSTScoreTypeUnspecified -> "SCORE_TYPE_UNSPECIFIED"
        APSTProbability -> "PROBABILITY"
        APSTStdDevScore -> "STD_DEV_SCORE"
        APSTPercentile -> "PERCENTILE"
        APSTRaw -> "RAW"

instance FromJSON AttributeParametersScoreType where
    parseJSON = parseJSONText "AttributeParametersScoreType"

instance ToJSON AttributeParametersScoreType where
    toJSON = toJSONText

-- | Type of the text field.
data TextEntryType
    = TextTypeUnspecified
      -- ^ @TEXT_TYPE_UNSPECIFIED@
      -- The content type is not specified. Text will be interpreted as plain
      -- text by default.
    | PlainText
      -- ^ @PLAIN_TEXT@
      -- Plain text.
    | HTML
      -- ^ @HTML@
      -- HTML.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TextEntryType

instance FromHttpApiData TextEntryType where
    parseQueryParam = \case
        "TEXT_TYPE_UNSPECIFIED" -> Right TextTypeUnspecified
        "PLAIN_TEXT" -> Right PlainText
        "HTML" -> Right HTML
        x -> Left ("Unable to parse TextEntryType from: " <> x)

instance ToHttpApiData TextEntryType where
    toQueryParam = \case
        TextTypeUnspecified -> "TEXT_TYPE_UNSPECIFIED"
        PlainText -> "PLAIN_TEXT"
        HTML -> "HTML"

instance FromJSON TextEntryType where
    parseJSON = parseJSONText "TextEntryType"

instance ToJSON TextEntryType where
    toJSON = toJSONText
