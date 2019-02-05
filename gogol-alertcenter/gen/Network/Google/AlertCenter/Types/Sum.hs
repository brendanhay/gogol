{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AlertCenter.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AlertCenter.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

-- | Optional. The format of the payload that would be sent. If not specified
-- the format will be JSON.
data CloudPubsubTopicPayloadFormat
    = PayloadFormatUnspecified
      -- ^ @PAYLOAD_FORMAT_UNSPECIFIED@
      -- Payload format is not specified (will use JSON as default).
    | JSON
      -- ^ @JSON@
      -- Use JSON.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CloudPubsubTopicPayloadFormat

instance FromHttpApiData CloudPubsubTopicPayloadFormat where
    parseQueryParam = \case
        "PAYLOAD_FORMAT_UNSPECIFIED" -> Right PayloadFormatUnspecified
        "JSON" -> Right JSON
        x -> Left ("Unable to parse CloudPubsubTopicPayloadFormat from: " <> x)

instance ToHttpApiData CloudPubsubTopicPayloadFormat where
    toQueryParam = \case
        PayloadFormatUnspecified -> "PAYLOAD_FORMAT_UNSPECIFIED"
        JSON -> "JSON"

instance FromJSON CloudPubsubTopicPayloadFormat where
    parseJSON = parseJSONText "CloudPubsubTopicPayloadFormat"

instance ToJSON CloudPubsubTopicPayloadFormat where
    toJSON = toJSONText

-- | Required. The type of the feedback.
data AlertFeedbackType
    = AlertFeedbackTypeUnspecified
      -- ^ @ALERT_FEEDBACK_TYPE_UNSPECIFIED@
      -- The feedback type is not specified.
    | NotUseful
      -- ^ @NOT_USEFUL@
      -- The alert report is not useful.
    | SomewhatUseful
      -- ^ @SOMEWHAT_USEFUL@
      -- The alert report is somewhat useful.
    | VeryUseful
      -- ^ @VERY_USEFUL@
      -- The alert report is very useful.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AlertFeedbackType

instance FromHttpApiData AlertFeedbackType where
    parseQueryParam = \case
        "ALERT_FEEDBACK_TYPE_UNSPECIFIED" -> Right AlertFeedbackTypeUnspecified
        "NOT_USEFUL" -> Right NotUseful
        "SOMEWHAT_USEFUL" -> Right SomewhatUseful
        "VERY_USEFUL" -> Right VeryUseful
        x -> Left ("Unable to parse AlertFeedbackType from: " <> x)

instance ToHttpApiData AlertFeedbackType where
    toQueryParam = \case
        AlertFeedbackTypeUnspecified -> "ALERT_FEEDBACK_TYPE_UNSPECIFIED"
        NotUseful -> "NOT_USEFUL"
        SomewhatUseful -> "SOMEWHAT_USEFUL"
        VeryUseful -> "VERY_USEFUL"

instance FromJSON AlertFeedbackType where
    parseJSON = parseJSONText "AlertFeedbackType"

instance ToJSON AlertFeedbackType where
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
