{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Tracing.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Tracing.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | Type of NetworkEvent. Indicates whether the RPC message was sent or
-- received.
data NetworkEventType
    = TypeUnspecified
      -- ^ @TYPE_UNSPECIFIED@
      -- Unknown event type.
    | Sent
      -- ^ @SENT@
      -- Indicates a sent RPC message.
    | Recv
      -- ^ @RECV@
      -- Indicates a received RPC message.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable NetworkEventType

instance FromHttpApiData NetworkEventType where
    parseQueryParam = \case
        "TYPE_UNSPECIFIED" -> Right TypeUnspecified
        "SENT" -> Right Sent
        "RECV" -> Right Recv
        x -> Left ("Unable to parse NetworkEventType from: " <> x)

instance ToHttpApiData NetworkEventType where
    toQueryParam = \case
        TypeUnspecified -> "TYPE_UNSPECIFIED"
        Sent -> "SENT"
        Recv -> "RECV"

instance FromJSON NetworkEventType where
    parseJSON = parseJSONText "NetworkEventType"

instance ToJSON NetworkEventType where
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

-- | The relationship of the current span relative to the linked span.
data LinkType
    = LTTypeUnspecified
      -- ^ @TYPE_UNSPECIFIED@
      -- The relationship of the two spans is unknown.
    | LTChild
      -- ^ @CHILD@
      -- The current span is a child of the linked span.
    | LTParent
      -- ^ @PARENT@
      -- The current span is the parent of the linked span.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LinkType

instance FromHttpApiData LinkType where
    parseQueryParam = \case
        "TYPE_UNSPECIFIED" -> Right LTTypeUnspecified
        "CHILD" -> Right LTChild
        "PARENT" -> Right LTParent
        x -> Left ("Unable to parse LinkType from: " <> x)

instance ToHttpApiData LinkType where
    toQueryParam = \case
        LTTypeUnspecified -> "TYPE_UNSPECIFIED"
        LTChild -> "CHILD"
        LTParent -> "PARENT"

instance FromJSON LinkType where
    parseJSON = parseJSONText "LinkType"

instance ToJSON LinkType where
    toJSON = toJSONText
