{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.BigQueryDataTransfer.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.BigQueryDataTransfer.Types
    (
    -- * Service Configuration
      bigQueryDataTransferService

    -- * OAuth Scopes
    , cloudPlatformReadOnlyScope
    , cloudPlatformScope
    , bigQueryScope

    -- * DataSourceParameterType
    , DataSourceParameterType (..)

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * ListLocationsResponse
    , ListLocationsResponse
    , listLocationsResponse
    , llrNextPageToken
    , llrLocations

    -- * TransferRun
    , TransferRun
    , transferRun
    , trRunTime
    , trErrorStatus
    , trState
    , trSchedule
    , trStartTime
    , trScheduleTime
    , trDataSourceId
    , trParams
    , trUserId
    , trUpdateTime
    , trName
    , trEndTime
    , trDestinationDataSetId

    -- * CheckValidCredsRequest
    , CheckValidCredsRequest
    , checkValidCredsRequest

    -- * TransferConfigParams
    , TransferConfigParams
    , transferConfigParams
    , tcpAddtional

    -- * ScheduleTransferRunsRequest
    , ScheduleTransferRunsRequest
    , scheduleTransferRunsRequest
    , strrStartTime
    , strrEndTime

    -- * Location
    , Location
    , location
    , lName
    , lMetadata
    , lDisplayName
    , lLabels
    , lLocationId

    -- * Empty
    , Empty
    , empty

    -- * TransferRunState
    , TransferRunState (..)

    -- * ListTransferLogsResponse
    , ListTransferLogsResponse
    , listTransferLogsResponse
    , ltlrNextPageToken
    , ltlrTransferMessages

    -- * CheckValidCredsResponse
    , CheckValidCredsResponse
    , checkValidCredsResponse
    , cvcrHasValidCreds

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * DataSourceTransferType
    , DataSourceTransferType (..)

    -- * DataSourceAuthorizationType
    , DataSourceAuthorizationType (..)

    -- * TransferRunParams
    , TransferRunParams
    , transferRunParams
    , trpAddtional

    -- * DataSourceParameter
    , DataSourceParameter
    , dataSourceParameter
    , dspMaxValue
    , dspParamId
    , dspImmutable
    , dspRecurse
    , dspValidationDescription
    , dspRequired
    , dspDisplayName
    , dspType
    , dspAllowedValues
    , dspRepeated
    , dspDescription
    , dspValidationRegex
    , dspMinValue
    , dspValidationHelpURL
    , dspFields

    -- * ScheduleTransferRunsResponse
    , ScheduleTransferRunsResponse
    , scheduleTransferRunsResponse
    , strrRuns

    -- * ListDataSourcesResponse
    , ListDataSourcesResponse
    , listDataSourcesResponse
    , ldsrNextPageToken
    , ldsrDataSources

    -- * Xgafv
    , Xgafv (..)

    -- * DataSource
    , DataSource
    , dataSource
    , dsClientId
    , dsMinimumScheduleInterval
    , dsSupportsCustomSchedule
    , dsUpdateDeadlineSeconds
    , dsManualRunsDisabled
    , dsDataSourceId
    , dsTransferType
    , dsScopes
    , dsSupportsMultipleTransfers
    , dsName
    , dsParameters
    , dsHelpURL
    , dsDefaultDataRefreshWindowDays
    , dsDisplayName
    , dsDataRefreshType
    , dsAuthorizationType
    , dsDefaultSchedule
    , dsDescription

    -- * DataSourceDataRefreshType
    , DataSourceDataRefreshType (..)

    -- * ListTransferRunsResponse
    , ListTransferRunsResponse
    , listTransferRunsResponse
    , ltrrNextPageToken
    , ltrrTransferRuns

    -- * TransferMessage
    , TransferMessage
    , transferMessage
    , tmSeverity
    , tmMessageTime
    , tmMessageText

    -- * LocationLabels
    , LocationLabels
    , locationLabels
    , llAddtional

    -- * LocationMetadata
    , LocationMetadata
    , locationMetadata
    , lmAddtional

    -- * TransferMessageSeverity
    , TransferMessageSeverity (..)

    -- * ListTransferConfigsResponse
    , ListTransferConfigsResponse
    , listTransferConfigsResponse
    , ltcrNextPageToken
    , ltcrTransferConfigs

    -- * TransferConfigState
    , TransferConfigState (..)

    -- * TransferConfig
    , TransferConfig
    , transferConfig
    , tcState
    , tcSchedule
    , tcDisabled
    , tcDataSourceId
    , tcParams
    , tcUserId
    , tcUpdateTime
    , tcName
    , tcDataSetRegion
    , tcDisplayName
    , tcNextRunTime
    , tcDestinationDataSetId
    , tcDataRefreshWindowDays
    ) where

import           Network.Google.BigQueryDataTransfer.Types.Product
import           Network.Google.BigQueryDataTransfer.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the BigQuery Data Transfer API. This contains the host and root path used as a starting point for constructing service requests.
bigQueryDataTransferService :: ServiceConfig
bigQueryDataTransferService
  = defaultService
      (ServiceId "bigquerydatatransfer:v1")
      "bigquerydatatransfer.googleapis.com"

-- | View your data across Google Cloud Platform services
cloudPlatformReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform.read-only"]
cloudPlatformReadOnlyScope = Proxy;

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy;

-- | View and manage your data in Google BigQuery
bigQueryScope :: Proxy '["https://www.googleapis.com/auth/bigquery"]
bigQueryScope = Proxy;
