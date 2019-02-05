{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.BigQueryDataTransfer.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.BigQueryDataTransfer.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

-- | Parameter type.
data DataSourceParameterType
    = TypeUnspecified
      -- ^ @TYPE_UNSPECIFIED@
      -- Type unspecified.
    | String
      -- ^ @STRING@
      -- String parameter.
    | Integer
      -- ^ @INTEGER@
      -- Integer parameter (64-bits). Will be serialized to json as string.
    | Double
      -- ^ @DOUBLE@
      -- Double precision floating point parameter.
    | Boolean
      -- ^ @BOOLEAN@
      -- Boolean parameter.
    | Record
      -- ^ @RECORD@
      -- Deprecated. This field has no effect.
    | PlusPage
      -- ^ @PLUS_PAGE@
      -- Page ID for a Google+ Page.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DataSourceParameterType

instance FromHttpApiData DataSourceParameterType where
    parseQueryParam = \case
        "TYPE_UNSPECIFIED" -> Right TypeUnspecified
        "STRING" -> Right String
        "INTEGER" -> Right Integer
        "DOUBLE" -> Right Double
        "BOOLEAN" -> Right Boolean
        "RECORD" -> Right Record
        "PLUS_PAGE" -> Right PlusPage
        x -> Left ("Unable to parse DataSourceParameterType from: " <> x)

instance ToHttpApiData DataSourceParameterType where
    toQueryParam = \case
        TypeUnspecified -> "TYPE_UNSPECIFIED"
        String -> "STRING"
        Integer -> "INTEGER"
        Double -> "DOUBLE"
        Boolean -> "BOOLEAN"
        Record -> "RECORD"
        PlusPage -> "PLUS_PAGE"

instance FromJSON DataSourceParameterType where
    parseJSON = parseJSONText "DataSourceParameterType"

instance ToJSON DataSourceParameterType where
    toJSON = toJSONText

-- | Data transfer run state. Ignored for input requests.
data TransferRunState
    = TransferStateUnspecified
      -- ^ @TRANSFER_STATE_UNSPECIFIED@
      -- State placeholder.
    | Pending
      -- ^ @PENDING@
      -- Data transfer is scheduled and is waiting to be picked up by data
      -- transfer backend.
    | Running
      -- ^ @RUNNING@
      -- Data transfer is in progress.
    | Succeeded
      -- ^ @SUCCEEDED@
      -- Data transfer completed successfully.
    | Failed
      -- ^ @FAILED@
      -- Data transfer failed.
    | Cancelled
      -- ^ @CANCELLED@
      -- Data transfer is cancelled.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TransferRunState

instance FromHttpApiData TransferRunState where
    parseQueryParam = \case
        "TRANSFER_STATE_UNSPECIFIED" -> Right TransferStateUnspecified
        "PENDING" -> Right Pending
        "RUNNING" -> Right Running
        "SUCCEEDED" -> Right Succeeded
        "FAILED" -> Right Failed
        "CANCELLED" -> Right Cancelled
        x -> Left ("Unable to parse TransferRunState from: " <> x)

instance ToHttpApiData TransferRunState where
    toQueryParam = \case
        TransferStateUnspecified -> "TRANSFER_STATE_UNSPECIFIED"
        Pending -> "PENDING"
        Running -> "RUNNING"
        Succeeded -> "SUCCEEDED"
        Failed -> "FAILED"
        Cancelled -> "CANCELLED"

instance FromJSON TransferRunState where
    parseJSON = parseJSONText "TransferRunState"

instance ToJSON TransferRunState where
    toJSON = toJSONText

-- | Deprecated. This field has no effect.
data DataSourceTransferType
    = TransferTypeUnspecified
      -- ^ @TRANSFER_TYPE_UNSPECIFIED@
      -- Invalid or Unknown transfer type placeholder.
    | Batch
      -- ^ @BATCH@
      -- Batch data transfer.
    | Streaming
      -- ^ @STREAMING@
      -- Streaming data transfer. Streaming data source currently doesn\'t
      -- support multiple transfer configs per project.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DataSourceTransferType

instance FromHttpApiData DataSourceTransferType where
    parseQueryParam = \case
        "TRANSFER_TYPE_UNSPECIFIED" -> Right TransferTypeUnspecified
        "BATCH" -> Right Batch
        "STREAMING" -> Right Streaming
        x -> Left ("Unable to parse DataSourceTransferType from: " <> x)

instance ToHttpApiData DataSourceTransferType where
    toQueryParam = \case
        TransferTypeUnspecified -> "TRANSFER_TYPE_UNSPECIFIED"
        Batch -> "BATCH"
        Streaming -> "STREAMING"

instance FromJSON DataSourceTransferType where
    parseJSON = parseJSONText "DataSourceTransferType"

instance ToJSON DataSourceTransferType where
    toJSON = toJSONText

-- | Indicates the type of authorization.
data DataSourceAuthorizationType
    = AuthorizationTypeUnspecified
      -- ^ @AUTHORIZATION_TYPE_UNSPECIFIED@
      -- Type unspecified.
    | AuthorizationCode
      -- ^ @AUTHORIZATION_CODE@
      -- Use OAuth 2 authorization codes that can be exchanged for a refresh
      -- token on the backend.
    | GooglePlusAuthorizationCode
      -- ^ @GOOGLE_PLUS_AUTHORIZATION_CODE@
      -- Return an authorization code for a given Google+ page that can then be
      -- exchanged for a refresh token on the backend.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DataSourceAuthorizationType

instance FromHttpApiData DataSourceAuthorizationType where
    parseQueryParam = \case
        "AUTHORIZATION_TYPE_UNSPECIFIED" -> Right AuthorizationTypeUnspecified
        "AUTHORIZATION_CODE" -> Right AuthorizationCode
        "GOOGLE_PLUS_AUTHORIZATION_CODE" -> Right GooglePlusAuthorizationCode
        x -> Left ("Unable to parse DataSourceAuthorizationType from: " <> x)

instance ToHttpApiData DataSourceAuthorizationType where
    toQueryParam = \case
        AuthorizationTypeUnspecified -> "AUTHORIZATION_TYPE_UNSPECIFIED"
        AuthorizationCode -> "AUTHORIZATION_CODE"
        GooglePlusAuthorizationCode -> "GOOGLE_PLUS_AUTHORIZATION_CODE"

instance FromJSON DataSourceAuthorizationType where
    parseJSON = parseJSONText "DataSourceAuthorizationType"

instance ToJSON DataSourceAuthorizationType where
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

-- | Specifies whether the data source supports automatic data refresh for
-- the past few days, and how it\'s supported. For some data sources, data
-- might not be complete until a few days later, so it\'s useful to refresh
-- data automatically.
data DataSourceDataRefreshType
    = DataRefreshTypeUnspecified
      -- ^ @DATA_REFRESH_TYPE_UNSPECIFIED@
      -- The data source won\'t support data auto refresh, which is default
      -- value.
    | SlidingWindow
      -- ^ @SLIDING_WINDOW@
      -- The data source supports data auto refresh, and runs will be scheduled
      -- for the past few days. Does not allow custom values to be set for each
      -- transfer config.
    | CustomSlidingWindow
      -- ^ @CUSTOM_SLIDING_WINDOW@
      -- The data source supports data auto refresh, and runs will be scheduled
      -- for the past few days. Allows custom values to be set for each transfer
      -- config.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DataSourceDataRefreshType

instance FromHttpApiData DataSourceDataRefreshType where
    parseQueryParam = \case
        "DATA_REFRESH_TYPE_UNSPECIFIED" -> Right DataRefreshTypeUnspecified
        "SLIDING_WINDOW" -> Right SlidingWindow
        "CUSTOM_SLIDING_WINDOW" -> Right CustomSlidingWindow
        x -> Left ("Unable to parse DataSourceDataRefreshType from: " <> x)

instance ToHttpApiData DataSourceDataRefreshType where
    toQueryParam = \case
        DataRefreshTypeUnspecified -> "DATA_REFRESH_TYPE_UNSPECIFIED"
        SlidingWindow -> "SLIDING_WINDOW"
        CustomSlidingWindow -> "CUSTOM_SLIDING_WINDOW"

instance FromJSON DataSourceDataRefreshType where
    parseJSON = parseJSONText "DataSourceDataRefreshType"

instance ToJSON DataSourceDataRefreshType where
    toJSON = toJSONText

-- | Message severity.
data TransferMessageSeverity
    = MessageSeverityUnspecified
      -- ^ @MESSAGE_SEVERITY_UNSPECIFIED@
      -- No severity specified.
    | Info
      -- ^ @INFO@
      -- Informational message.
    | Warning
      -- ^ @WARNING@
      -- Warning message.
    | Error'
      -- ^ @ERROR@
      -- Error message.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TransferMessageSeverity

instance FromHttpApiData TransferMessageSeverity where
    parseQueryParam = \case
        "MESSAGE_SEVERITY_UNSPECIFIED" -> Right MessageSeverityUnspecified
        "INFO" -> Right Info
        "WARNING" -> Right Warning
        "ERROR" -> Right Error'
        x -> Left ("Unable to parse TransferMessageSeverity from: " <> x)

instance ToHttpApiData TransferMessageSeverity where
    toQueryParam = \case
        MessageSeverityUnspecified -> "MESSAGE_SEVERITY_UNSPECIFIED"
        Info -> "INFO"
        Warning -> "WARNING"
        Error' -> "ERROR"

instance FromJSON TransferMessageSeverity where
    parseJSON = parseJSONText "TransferMessageSeverity"

instance ToJSON TransferMessageSeverity where
    toJSON = toJSONText

-- | Output only. State of the most recently updated transfer run.
data TransferConfigState
    = TCSTransferStateUnspecified
      -- ^ @TRANSFER_STATE_UNSPECIFIED@
      -- State placeholder.
    | TCSPending
      -- ^ @PENDING@
      -- Data transfer is scheduled and is waiting to be picked up by data
      -- transfer backend.
    | TCSRunning
      -- ^ @RUNNING@
      -- Data transfer is in progress.
    | TCSSucceeded
      -- ^ @SUCCEEDED@
      -- Data transfer completed successfully.
    | TCSFailed
      -- ^ @FAILED@
      -- Data transfer failed.
    | TCSCancelled
      -- ^ @CANCELLED@
      -- Data transfer is cancelled.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TransferConfigState

instance FromHttpApiData TransferConfigState where
    parseQueryParam = \case
        "TRANSFER_STATE_UNSPECIFIED" -> Right TCSTransferStateUnspecified
        "PENDING" -> Right TCSPending
        "RUNNING" -> Right TCSRunning
        "SUCCEEDED" -> Right TCSSucceeded
        "FAILED" -> Right TCSFailed
        "CANCELLED" -> Right TCSCancelled
        x -> Left ("Unable to parse TransferConfigState from: " <> x)

instance ToHttpApiData TransferConfigState where
    toQueryParam = \case
        TCSTransferStateUnspecified -> "TRANSFER_STATE_UNSPECIFIED"
        TCSPending -> "PENDING"
        TCSRunning -> "RUNNING"
        TCSSucceeded -> "SUCCEEDED"
        TCSFailed -> "FAILED"
        TCSCancelled -> "CANCELLED"

instance FromJSON TransferConfigState where
    parseJSON = parseJSONText "TransferConfigState"

instance ToJSON TransferConfigState where
    toJSON = toJSONText
