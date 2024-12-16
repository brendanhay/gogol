{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.BigQueryDataTransfer.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.BigQueryDataTransfer.Types
    (
    -- * Configuration
      bigQueryDataTransferService

    -- * OAuth Scopes
    , Bigquery'FullControl
    , CloudPlatform'FullControl
    , CloudPlatform'ReadOnly

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** CheckValidCredsRequest
    , CheckValidCredsRequest (..)
    , newCheckValidCredsRequest

    -- ** CheckValidCredsResponse
    , CheckValidCredsResponse (..)
    , newCheckValidCredsResponse

    -- ** DataSource
    , DataSource (..)
    , newDataSource

    -- ** DataSource_AuthorizationType
    , DataSource_AuthorizationType (..)

    -- ** DataSource_DataRefreshType
    , DataSource_DataRefreshType (..)

    -- ** DataSource_TransferType
    , DataSource_TransferType (..)

    -- ** DataSourceParameter
    , DataSourceParameter (..)
    , newDataSourceParameter

    -- ** DataSourceParameter_Type
    , DataSourceParameter_Type (..)

    -- ** EmailPreferences
    , EmailPreferences (..)
    , newEmailPreferences

    -- ** Empty
    , Empty (..)
    , newEmpty

    -- ** EncryptionConfiguration
    , EncryptionConfiguration (..)
    , newEncryptionConfiguration

    -- ** EnrollDataSourcesRequest
    , EnrollDataSourcesRequest (..)
    , newEnrollDataSourcesRequest

    -- ** EventDrivenSchedule
    , EventDrivenSchedule (..)
    , newEventDrivenSchedule

    -- ** ListDataSourcesResponse
    , ListDataSourcesResponse (..)
    , newListDataSourcesResponse

    -- ** ListLocationsResponse
    , ListLocationsResponse (..)
    , newListLocationsResponse

    -- ** ListTransferConfigsResponse
    , ListTransferConfigsResponse (..)
    , newListTransferConfigsResponse

    -- ** ListTransferLogsResponse
    , ListTransferLogsResponse (..)
    , newListTransferLogsResponse

    -- ** ListTransferRunsResponse
    , ListTransferRunsResponse (..)
    , newListTransferRunsResponse

    -- ** Location
    , Location (..)
    , newLocation

    -- ** Location_Labels
    , Location_Labels (..)
    , newLocation_Labels

    -- ** Location_Metadata
    , Location_Metadata (..)
    , newLocation_Metadata

    -- ** ManualSchedule
    , ManualSchedule (..)
    , newManualSchedule

    -- ** ScheduleOptions
    , ScheduleOptions (..)
    , newScheduleOptions

    -- ** ScheduleOptionsV2
    , ScheduleOptionsV2 (..)
    , newScheduleOptionsV2

    -- ** ScheduleTransferRunsRequest
    , ScheduleTransferRunsRequest (..)
    , newScheduleTransferRunsRequest

    -- ** ScheduleTransferRunsResponse
    , ScheduleTransferRunsResponse (..)
    , newScheduleTransferRunsResponse

    -- ** StartManualTransferRunsRequest
    , StartManualTransferRunsRequest (..)
    , newStartManualTransferRunsRequest

    -- ** StartManualTransferRunsResponse
    , StartManualTransferRunsResponse (..)
    , newStartManualTransferRunsResponse

    -- ** Status
    , Status (..)
    , newStatus

    -- ** Status_DetailsItem
    , Status_DetailsItem (..)
    , newStatus_DetailsItem

    -- ** TimeBasedSchedule
    , TimeBasedSchedule (..)
    , newTimeBasedSchedule

    -- ** TimeRange
    , TimeRange (..)
    , newTimeRange

    -- ** TransferConfig
    , TransferConfig (..)
    , newTransferConfig

    -- ** TransferConfig_Params
    , TransferConfig_Params (..)
    , newTransferConfig_Params

    -- ** TransferConfig_State
    , TransferConfig_State (..)

    -- ** TransferMessage
    , TransferMessage (..)
    , newTransferMessage

    -- ** TransferMessage_Severity
    , TransferMessage_Severity (..)

    -- ** TransferRun
    , TransferRun (..)
    , newTransferRun

    -- ** TransferRun_Params
    , TransferRun_Params (..)
    , newTransferRun_Params

    -- ** TransferRun_State
    , TransferRun_State (..)

    -- ** UnenrollDataSourcesRequest
    , UnenrollDataSourcesRequest (..)
    , newUnenrollDataSourcesRequest

    -- ** UserInfo
    , UserInfo (..)
    , newUserInfo

    -- ** ProjectsLocationsTransferConfigsRunsListRunAttempt
    , ProjectsLocationsTransferConfigsRunsListRunAttempt (..)

    -- ** ProjectsLocationsTransferConfigsRunsListStates
    , ProjectsLocationsTransferConfigsRunsListStates (..)

    -- ** ProjectsLocationsTransferConfigsRunsTransferLogsListMessageTypes
    , ProjectsLocationsTransferConfigsRunsTransferLogsListMessageTypes (..)

    -- ** ProjectsTransferConfigsRunsListRunAttempt
    , ProjectsTransferConfigsRunsListRunAttempt (..)

    -- ** ProjectsTransferConfigsRunsListStates
    , ProjectsTransferConfigsRunsListStates (..)

    -- ** ProjectsTransferConfigsRunsTransferLogsListMessageTypes
    , ProjectsTransferConfigsRunsTransferLogsListMessageTypes (..)
    ) where

import qualified Gogol.Prelude as Core
import Gogol.BigQueryDataTransfer.Internal.Product
import Gogol.BigQueryDataTransfer.Internal.Sum

-- | Default request referring to version @v1@ of the BigQuery Data Transfer API. This contains the host and root path used as a starting point for constructing service requests.
bigQueryDataTransferService :: Core.ServiceConfig
bigQueryDataTransferService
  = Core.defaultService
      (Core.ServiceId "bigquerydatatransfer:v1")
      "bigquerydatatransfer.googleapis.com"

-- | View and manage your data in Google BigQuery and see the email address for your Google Account
type Bigquery'FullControl = "https://www.googleapis.com/auth/bigquery"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
type CloudPlatform'FullControl = "https://www.googleapis.com/auth/cloud-platform"

-- | View your data across Google Cloud services and see the email address of your Google Account
type CloudPlatform'ReadOnly = "https://www.googleapis.com/auth/cloud-platform.read-only"
