{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.BigQueryDataTransfer.Types.Sum
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.BigQueryDataTransfer.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

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
      -- State placeholder (0).
    | Pending
      -- ^ @PENDING@
      -- Data transfer is scheduled and is waiting to be picked up by data
      -- transfer backend (2).
    | Running
      -- ^ @RUNNING@
      -- Data transfer is in progress (3).
    | Succeeded
      -- ^ @SUCCEEDED@
      -- Data transfer completed successfully (4).
    | Failed
      -- ^ @FAILED@
      -- Data transfer failed (5).
    | Cancelled
      -- ^ @CANCELLED@
      -- Data transfer is cancelled (6).
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

-- | When specified, only transfer runs with requested states are returned.
data ProjectsLocationsTransferConfigsRunsListStates
    = PLTCRLSTransferStateUnspecified
      -- ^ @TRANSFER_STATE_UNSPECIFIED@
      -- State placeholder (0).
    | PLTCRLSPending
      -- ^ @PENDING@
      -- Data transfer is scheduled and is waiting to be picked up by data
      -- transfer backend (2).
    | PLTCRLSRunning
      -- ^ @RUNNING@
      -- Data transfer is in progress (3).
    | PLTCRLSSucceeded
      -- ^ @SUCCEEDED@
      -- Data transfer completed successfully (4).
    | PLTCRLSFailed
      -- ^ @FAILED@
      -- Data transfer failed (5).
    | PLTCRLSCancelled
      -- ^ @CANCELLED@
      -- Data transfer is cancelled (6).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsLocationsTransferConfigsRunsListStates

instance FromHttpApiData ProjectsLocationsTransferConfigsRunsListStates where
    parseQueryParam = \case
        "TRANSFER_STATE_UNSPECIFIED" -> Right PLTCRLSTransferStateUnspecified
        "PENDING" -> Right PLTCRLSPending
        "RUNNING" -> Right PLTCRLSRunning
        "SUCCEEDED" -> Right PLTCRLSSucceeded
        "FAILED" -> Right PLTCRLSFailed
        "CANCELLED" -> Right PLTCRLSCancelled
        x -> Left ("Unable to parse ProjectsLocationsTransferConfigsRunsListStates from: " <> x)

instance ToHttpApiData ProjectsLocationsTransferConfigsRunsListStates where
    toQueryParam = \case
        PLTCRLSTransferStateUnspecified -> "TRANSFER_STATE_UNSPECIFIED"
        PLTCRLSPending -> "PENDING"
        PLTCRLSRunning -> "RUNNING"
        PLTCRLSSucceeded -> "SUCCEEDED"
        PLTCRLSFailed -> "FAILED"
        PLTCRLSCancelled -> "CANCELLED"

instance FromJSON ProjectsLocationsTransferConfigsRunsListStates where
    parseJSON = parseJSONText "ProjectsLocationsTransferConfigsRunsListStates"

instance ToJSON ProjectsLocationsTransferConfigsRunsListStates where
    toJSON = toJSONText

-- | Message types to return. If not populated - INFO, WARNING and ERROR
-- messages are returned.
data ProjectsLocationsTransferConfigsRunsTransferLogsListMessageTypes
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

instance Hashable ProjectsLocationsTransferConfigsRunsTransferLogsListMessageTypes

instance FromHttpApiData ProjectsLocationsTransferConfigsRunsTransferLogsListMessageTypes where
    parseQueryParam = \case
        "MESSAGE_SEVERITY_UNSPECIFIED" -> Right MessageSeverityUnspecified
        "INFO" -> Right Info
        "WARNING" -> Right Warning
        "ERROR" -> Right Error'
        x -> Left ("Unable to parse ProjectsLocationsTransferConfigsRunsTransferLogsListMessageTypes from: " <> x)

instance ToHttpApiData ProjectsLocationsTransferConfigsRunsTransferLogsListMessageTypes where
    toQueryParam = \case
        MessageSeverityUnspecified -> "MESSAGE_SEVERITY_UNSPECIFIED"
        Info -> "INFO"
        Warning -> "WARNING"
        Error' -> "ERROR"

instance FromJSON ProjectsLocationsTransferConfigsRunsTransferLogsListMessageTypes where
    parseJSON = parseJSONText "ProjectsLocationsTransferConfigsRunsTransferLogsListMessageTypes"

instance ToJSON ProjectsLocationsTransferConfigsRunsTransferLogsListMessageTypes where
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
    | FirstPartyOAuth
      -- ^ @FIRST_PARTY_OAUTH@
      -- Use First Party OAuth based on Loas Owned Clients. First Party OAuth
      -- doesn\'t require a refresh token to get an offline access token.
      -- Instead, it uses a client-signed JWT assertion to retrieve an access
      -- token.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DataSourceAuthorizationType

instance FromHttpApiData DataSourceAuthorizationType where
    parseQueryParam = \case
        "AUTHORIZATION_TYPE_UNSPECIFIED" -> Right AuthorizationTypeUnspecified
        "AUTHORIZATION_CODE" -> Right AuthorizationCode
        "GOOGLE_PLUS_AUTHORIZATION_CODE" -> Right GooglePlusAuthorizationCode
        "FIRST_PARTY_OAUTH" -> Right FirstPartyOAuth
        x -> Left ("Unable to parse DataSourceAuthorizationType from: " <> x)

instance ToHttpApiData DataSourceAuthorizationType where
    toQueryParam = \case
        AuthorizationTypeUnspecified -> "AUTHORIZATION_TYPE_UNSPECIFIED"
        AuthorizationCode -> "AUTHORIZATION_CODE"
        GooglePlusAuthorizationCode -> "GOOGLE_PLUS_AUTHORIZATION_CODE"
        FirstPartyOAuth -> "FIRST_PARTY_OAUTH"

instance FromJSON DataSourceAuthorizationType where
    parseJSON = parseJSONText "DataSourceAuthorizationType"

instance ToJSON DataSourceAuthorizationType where
    toJSON = toJSONText

-- | Indicates how run attempts are to be pulled.
data ProjectsLocationsTransferConfigsRunsListRunAttempt
    = RunAttemptUnspecified
      -- ^ @RUN_ATTEMPT_UNSPECIFIED@
      -- All runs should be returned.
    | Latest
      -- ^ @LATEST@
      -- Only latest run per day should be returned.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsLocationsTransferConfigsRunsListRunAttempt

instance FromHttpApiData ProjectsLocationsTransferConfigsRunsListRunAttempt where
    parseQueryParam = \case
        "RUN_ATTEMPT_UNSPECIFIED" -> Right RunAttemptUnspecified
        "LATEST" -> Right Latest
        x -> Left ("Unable to parse ProjectsLocationsTransferConfigsRunsListRunAttempt from: " <> x)

instance ToHttpApiData ProjectsLocationsTransferConfigsRunsListRunAttempt where
    toQueryParam = \case
        RunAttemptUnspecified -> "RUN_ATTEMPT_UNSPECIFIED"
        Latest -> "LATEST"

instance FromJSON ProjectsLocationsTransferConfigsRunsListRunAttempt where
    parseJSON = parseJSONText "ProjectsLocationsTransferConfigsRunsListRunAttempt"

instance ToJSON ProjectsLocationsTransferConfigsRunsListRunAttempt where
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

-- | Message types to return. If not populated - INFO, WARNING and ERROR
-- messages are returned.
data ProjectsTransferConfigsRunsTransferLogsListMessageTypes
    = PTCRTLLMTMessageSeverityUnspecified
      -- ^ @MESSAGE_SEVERITY_UNSPECIFIED@
      -- No severity specified.
    | PTCRTLLMTInfo
      -- ^ @INFO@
      -- Informational message.
    | PTCRTLLMTWarning
      -- ^ @WARNING@
      -- Warning message.
    | PTCRTLLMTError'
      -- ^ @ERROR@
      -- Error message.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsTransferConfigsRunsTransferLogsListMessageTypes

instance FromHttpApiData ProjectsTransferConfigsRunsTransferLogsListMessageTypes where
    parseQueryParam = \case
        "MESSAGE_SEVERITY_UNSPECIFIED" -> Right PTCRTLLMTMessageSeverityUnspecified
        "INFO" -> Right PTCRTLLMTInfo
        "WARNING" -> Right PTCRTLLMTWarning
        "ERROR" -> Right PTCRTLLMTError'
        x -> Left ("Unable to parse ProjectsTransferConfigsRunsTransferLogsListMessageTypes from: " <> x)

instance ToHttpApiData ProjectsTransferConfigsRunsTransferLogsListMessageTypes where
    toQueryParam = \case
        PTCRTLLMTMessageSeverityUnspecified -> "MESSAGE_SEVERITY_UNSPECIFIED"
        PTCRTLLMTInfo -> "INFO"
        PTCRTLLMTWarning -> "WARNING"
        PTCRTLLMTError' -> "ERROR"

instance FromJSON ProjectsTransferConfigsRunsTransferLogsListMessageTypes where
    parseJSON = parseJSONText "ProjectsTransferConfigsRunsTransferLogsListMessageTypes"

instance ToJSON ProjectsTransferConfigsRunsTransferLogsListMessageTypes where
    toJSON = toJSONText

-- | When specified, only transfer runs with requested states are returned.
data ProjectsTransferConfigsRunsListStates
    = PTCRLSTransferStateUnspecified
      -- ^ @TRANSFER_STATE_UNSPECIFIED@
      -- State placeholder (0).
    | PTCRLSPending
      -- ^ @PENDING@
      -- Data transfer is scheduled and is waiting to be picked up by data
      -- transfer backend (2).
    | PTCRLSRunning
      -- ^ @RUNNING@
      -- Data transfer is in progress (3).
    | PTCRLSSucceeded
      -- ^ @SUCCEEDED@
      -- Data transfer completed successfully (4).
    | PTCRLSFailed
      -- ^ @FAILED@
      -- Data transfer failed (5).
    | PTCRLSCancelled
      -- ^ @CANCELLED@
      -- Data transfer is cancelled (6).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsTransferConfigsRunsListStates

instance FromHttpApiData ProjectsTransferConfigsRunsListStates where
    parseQueryParam = \case
        "TRANSFER_STATE_UNSPECIFIED" -> Right PTCRLSTransferStateUnspecified
        "PENDING" -> Right PTCRLSPending
        "RUNNING" -> Right PTCRLSRunning
        "SUCCEEDED" -> Right PTCRLSSucceeded
        "FAILED" -> Right PTCRLSFailed
        "CANCELLED" -> Right PTCRLSCancelled
        x -> Left ("Unable to parse ProjectsTransferConfigsRunsListStates from: " <> x)

instance ToHttpApiData ProjectsTransferConfigsRunsListStates where
    toQueryParam = \case
        PTCRLSTransferStateUnspecified -> "TRANSFER_STATE_UNSPECIFIED"
        PTCRLSPending -> "PENDING"
        PTCRLSRunning -> "RUNNING"
        PTCRLSSucceeded -> "SUCCEEDED"
        PTCRLSFailed -> "FAILED"
        PTCRLSCancelled -> "CANCELLED"

instance FromJSON ProjectsTransferConfigsRunsListStates where
    parseJSON = parseJSONText "ProjectsTransferConfigsRunsListStates"

instance ToJSON ProjectsTransferConfigsRunsListStates where
    toJSON = toJSONText

-- | Indicates how run attempts are to be pulled.
data ProjectsTransferConfigsRunsListRunAttempt
    = PTCRLRARunAttemptUnspecified
      -- ^ @RUN_ATTEMPT_UNSPECIFIED@
      -- All runs should be returned.
    | PTCRLRALatest
      -- ^ @LATEST@
      -- Only latest run per day should be returned.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsTransferConfigsRunsListRunAttempt

instance FromHttpApiData ProjectsTransferConfigsRunsListRunAttempt where
    parseQueryParam = \case
        "RUN_ATTEMPT_UNSPECIFIED" -> Right PTCRLRARunAttemptUnspecified
        "LATEST" -> Right PTCRLRALatest
        x -> Left ("Unable to parse ProjectsTransferConfigsRunsListRunAttempt from: " <> x)

instance ToHttpApiData ProjectsTransferConfigsRunsListRunAttempt where
    toQueryParam = \case
        PTCRLRARunAttemptUnspecified -> "RUN_ATTEMPT_UNSPECIFIED"
        PTCRLRALatest -> "LATEST"

instance FromJSON ProjectsTransferConfigsRunsListRunAttempt where
    parseJSON = parseJSONText "ProjectsTransferConfigsRunsListRunAttempt"

instance ToJSON ProjectsTransferConfigsRunsListRunAttempt where
    toJSON = toJSONText

-- | Message severity.
data TransferMessageSeverity
    = TMSMessageSeverityUnspecified
      -- ^ @MESSAGE_SEVERITY_UNSPECIFIED@
      -- No severity specified.
    | TMSInfo
      -- ^ @INFO@
      -- Informational message.
    | TMSWarning
      -- ^ @WARNING@
      -- Warning message.
    | TMSError'
      -- ^ @ERROR@
      -- Error message.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TransferMessageSeverity

instance FromHttpApiData TransferMessageSeverity where
    parseQueryParam = \case
        "MESSAGE_SEVERITY_UNSPECIFIED" -> Right TMSMessageSeverityUnspecified
        "INFO" -> Right TMSInfo
        "WARNING" -> Right TMSWarning
        "ERROR" -> Right TMSError'
        x -> Left ("Unable to parse TransferMessageSeverity from: " <> x)

instance ToHttpApiData TransferMessageSeverity where
    toQueryParam = \case
        TMSMessageSeverityUnspecified -> "MESSAGE_SEVERITY_UNSPECIFIED"
        TMSInfo -> "INFO"
        TMSWarning -> "WARNING"
        TMSError' -> "ERROR"

instance FromJSON TransferMessageSeverity where
    parseJSON = parseJSONText "TransferMessageSeverity"

instance ToJSON TransferMessageSeverity where
    toJSON = toJSONText

-- | Output only. State of the most recently updated transfer run.
data TransferConfigState
    = TCSTransferStateUnspecified
      -- ^ @TRANSFER_STATE_UNSPECIFIED@
      -- State placeholder (0).
    | TCSPending
      -- ^ @PENDING@
      -- Data transfer is scheduled and is waiting to be picked up by data
      -- transfer backend (2).
    | TCSRunning
      -- ^ @RUNNING@
      -- Data transfer is in progress (3).
    | TCSSucceeded
      -- ^ @SUCCEEDED@
      -- Data transfer completed successfully (4).
    | TCSFailed
      -- ^ @FAILED@
      -- Data transfer failed (5).
    | TCSCancelled
      -- ^ @CANCELLED@
      -- Data transfer is cancelled (6).
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
