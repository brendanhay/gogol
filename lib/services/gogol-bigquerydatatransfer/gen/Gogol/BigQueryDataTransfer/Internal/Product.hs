{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.BigQueryDataTransfer.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.BigQueryDataTransfer.Internal.Product
  ( -- * CheckValidCredsRequest
    CheckValidCredsRequest (..),
    newCheckValidCredsRequest,

    -- * CheckValidCredsResponse
    CheckValidCredsResponse (..),
    newCheckValidCredsResponse,

    -- * DataSource
    DataSource (..),
    newDataSource,

    -- * DataSourceParameter
    DataSourceParameter (..),
    newDataSourceParameter,

    -- * EmailPreferences
    EmailPreferences (..),
    newEmailPreferences,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * EnrollDataSourcesRequest
    EnrollDataSourcesRequest (..),
    newEnrollDataSourcesRequest,

    -- * ListDataSourcesResponse
    ListDataSourcesResponse (..),
    newListDataSourcesResponse,

    -- * ListLocationsResponse
    ListLocationsResponse (..),
    newListLocationsResponse,

    -- * ListTransferConfigsResponse
    ListTransferConfigsResponse (..),
    newListTransferConfigsResponse,

    -- * ListTransferLogsResponse
    ListTransferLogsResponse (..),
    newListTransferLogsResponse,

    -- * ListTransferRunsResponse
    ListTransferRunsResponse (..),
    newListTransferRunsResponse,

    -- * Location
    Location (..),
    newLocation,

    -- * Location_Labels
    Location_Labels (..),
    newLocation_Labels,

    -- * Location_Metadata
    Location_Metadata (..),
    newLocation_Metadata,

    -- * ScheduleOptions
    ScheduleOptions (..),
    newScheduleOptions,

    -- * ScheduleTransferRunsRequest
    ScheduleTransferRunsRequest (..),
    newScheduleTransferRunsRequest,

    -- * ScheduleTransferRunsResponse
    ScheduleTransferRunsResponse (..),
    newScheduleTransferRunsResponse,

    -- * StartManualTransferRunsRequest
    StartManualTransferRunsRequest (..),
    newStartManualTransferRunsRequest,

    -- * StartManualTransferRunsResponse
    StartManualTransferRunsResponse (..),
    newStartManualTransferRunsResponse,

    -- * Status
    Status (..),
    newStatus,

    -- * Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- * TimeRange
    TimeRange (..),
    newTimeRange,

    -- * TransferConfig
    TransferConfig (..),
    newTransferConfig,

    -- * TransferConfig_Params
    TransferConfig_Params (..),
    newTransferConfig_Params,

    -- * TransferMessage
    TransferMessage (..),
    newTransferMessage,

    -- * TransferRun
    TransferRun (..),
    newTransferRun,

    -- * TransferRun_Params
    TransferRun_Params (..),
    newTransferRun_Params,

    -- * UserInfo
    UserInfo (..),
    newUserInfo,
  )
where

import Gogol.BigQueryDataTransfer.Internal.Sum
import qualified Gogol.Prelude as Core

-- | A request to determine whether the user has valid credentials. This method is used to limit the number of OAuth popups in the user interface. The user id is inferred from the API call context. If the data source has the Google+ authorization type, this method returns false, as it cannot be determined whether the credentials are already valid merely based on the user id.
--
-- /See:/ 'newCheckValidCredsRequest' smart constructor.
data CheckValidCredsRequest = CheckValidCredsRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CheckValidCredsRequest' with the minimum fields required to make a request.
newCheckValidCredsRequest ::
  CheckValidCredsRequest
newCheckValidCredsRequest = CheckValidCredsRequest

instance Core.FromJSON CheckValidCredsRequest where
  parseJSON =
    Core.withObject
      "CheckValidCredsRequest"
      (\o -> Core.pure CheckValidCredsRequest)

instance Core.ToJSON CheckValidCredsRequest where
  toJSON = Core.const Core.emptyObject

-- | A response indicating whether the credentials exist and are valid.
--
-- /See:/ 'newCheckValidCredsResponse' smart constructor.
newtype CheckValidCredsResponse = CheckValidCredsResponse
  { -- | If set to @true@, the credentials exist and are valid.
    hasValidCreds :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CheckValidCredsResponse' with the minimum fields required to make a request.
newCheckValidCredsResponse ::
  CheckValidCredsResponse
newCheckValidCredsResponse =
  CheckValidCredsResponse {hasValidCreds = Core.Nothing}

instance Core.FromJSON CheckValidCredsResponse where
  parseJSON =
    Core.withObject
      "CheckValidCredsResponse"
      ( \o ->
          CheckValidCredsResponse
            Core.<$> (o Core..:? "hasValidCreds")
      )

instance Core.ToJSON CheckValidCredsResponse where
  toJSON CheckValidCredsResponse {..} =
    Core.object
      ( Core.catMaybes
          [("hasValidCreds" Core..=) Core.<$> hasValidCreds]
      )

-- | Defines the properties and custom parameters for a data source.
--
-- /See:/ 'newDataSource' smart constructor.
data DataSource = DataSource
  { -- | Indicates the type of authorization.
    authorizationType :: (Core.Maybe DataSource_AuthorizationType),
    -- | Data source client id which should be used to receive refresh token.
    clientId :: (Core.Maybe Core.Text),
    -- | Specifies whether the data source supports automatic data refresh for the past few days, and how it\'s supported. For some data sources, data might not be complete until a few days later, so it\'s useful to refresh data automatically.
    dataRefreshType :: (Core.Maybe DataSource_DataRefreshType),
    -- | Data source id.
    dataSourceId :: (Core.Maybe Core.Text),
    -- | Default data refresh window on days. Only meaningful when @data_refresh_type@ = @SLIDING_WINDOW@.
    defaultDataRefreshWindowDays :: (Core.Maybe Core.Int32),
    -- | Default data transfer schedule. Examples of valid schedules include: @1st,3rd monday of month 15:30@, @every wed,fri of jan,jun 13:15@, and @first sunday of quarter 00:00@.
    defaultSchedule :: (Core.Maybe Core.Text),
    -- | User friendly data source description string.
    description :: (Core.Maybe Core.Text),
    -- | User friendly data source name.
    displayName :: (Core.Maybe Core.Text),
    -- | Url for the help document for this data source.
    helpUrl :: (Core.Maybe Core.Text),
    -- | Disables backfilling and manual run scheduling for the data source.
    manualRunsDisabled :: (Core.Maybe Core.Bool),
    -- | The minimum interval for scheduler to schedule runs.
    minimumScheduleInterval :: (Core.Maybe Core.Duration),
    -- | Output only. Data source resource name.
    name :: (Core.Maybe Core.Text),
    -- | Data source parameters.
    parameters :: (Core.Maybe [DataSourceParameter]),
    -- | Api auth scopes for which refresh token needs to be obtained. These are scopes needed by a data source to prepare data and ingest them into BigQuery, e.g., https:\/\/www.googleapis.com\/auth\/bigquery
    scopes :: (Core.Maybe [Core.Text]),
    -- | Specifies whether the data source supports a user defined schedule, or operates on the default schedule. When set to @true@, user can override default schedule.
    supportsCustomSchedule :: (Core.Maybe Core.Bool),
    -- | Deprecated. This field has no effect.
    supportsMultipleTransfers :: (Core.Maybe Core.Bool),
    -- | Deprecated. This field has no effect.
    transferType :: (Core.Maybe DataSource_TransferType),
    -- | The number of seconds to wait for an update from the data source before the Data Transfer Service marks the transfer as FAILED.
    updateDeadlineSeconds :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataSource' with the minimum fields required to make a request.
newDataSource ::
  DataSource
newDataSource =
  DataSource
    { authorizationType = Core.Nothing,
      clientId = Core.Nothing,
      dataRefreshType = Core.Nothing,
      dataSourceId = Core.Nothing,
      defaultDataRefreshWindowDays = Core.Nothing,
      defaultSchedule = Core.Nothing,
      description = Core.Nothing,
      displayName = Core.Nothing,
      helpUrl = Core.Nothing,
      manualRunsDisabled = Core.Nothing,
      minimumScheduleInterval = Core.Nothing,
      name = Core.Nothing,
      parameters = Core.Nothing,
      scopes = Core.Nothing,
      supportsCustomSchedule = Core.Nothing,
      supportsMultipleTransfers = Core.Nothing,
      transferType = Core.Nothing,
      updateDeadlineSeconds = Core.Nothing
    }

instance Core.FromJSON DataSource where
  parseJSON =
    Core.withObject
      "DataSource"
      ( \o ->
          DataSource
            Core.<$> (o Core..:? "authorizationType")
            Core.<*> (o Core..:? "clientId")
            Core.<*> (o Core..:? "dataRefreshType")
            Core.<*> (o Core..:? "dataSourceId")
            Core.<*> (o Core..:? "defaultDataRefreshWindowDays")
            Core.<*> (o Core..:? "defaultSchedule")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "helpUrl")
            Core.<*> (o Core..:? "manualRunsDisabled")
            Core.<*> (o Core..:? "minimumScheduleInterval")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "parameters" Core..!= Core.mempty)
            Core.<*> (o Core..:? "scopes" Core..!= Core.mempty)
            Core.<*> (o Core..:? "supportsCustomSchedule")
            Core.<*> (o Core..:? "supportsMultipleTransfers")
            Core.<*> (o Core..:? "transferType")
            Core.<*> (o Core..:? "updateDeadlineSeconds")
      )

instance Core.ToJSON DataSource where
  toJSON DataSource {..} =
    Core.object
      ( Core.catMaybes
          [ ("authorizationType" Core..=)
              Core.<$> authorizationType,
            ("clientId" Core..=) Core.<$> clientId,
            ("dataRefreshType" Core..=) Core.<$> dataRefreshType,
            ("dataSourceId" Core..=) Core.<$> dataSourceId,
            ("defaultDataRefreshWindowDays" Core..=)
              Core.<$> defaultDataRefreshWindowDays,
            ("defaultSchedule" Core..=) Core.<$> defaultSchedule,
            ("description" Core..=) Core.<$> description,
            ("displayName" Core..=) Core.<$> displayName,
            ("helpUrl" Core..=) Core.<$> helpUrl,
            ("manualRunsDisabled" Core..=)
              Core.<$> manualRunsDisabled,
            ("minimumScheduleInterval" Core..=)
              Core.<$> minimumScheduleInterval,
            ("name" Core..=) Core.<$> name,
            ("parameters" Core..=) Core.<$> parameters,
            ("scopes" Core..=) Core.<$> scopes,
            ("supportsCustomSchedule" Core..=)
              Core.<$> supportsCustomSchedule,
            ("supportsMultipleTransfers" Core..=)
              Core.<$> supportsMultipleTransfers,
            ("transferType" Core..=) Core.<$> transferType,
            ("updateDeadlineSeconds" Core..=)
              Core.<$> updateDeadlineSeconds
          ]
      )

-- | A parameter used to define custom fields in a data source definition.
--
-- /See:/ 'newDataSourceParameter' smart constructor.
data DataSourceParameter = DataSourceParameter
  { -- | All possible values for the parameter.
    allowedValues :: (Core.Maybe [Core.Text]),
    -- | If true, it should not be used in new transfers, and it should not be visible to users.
    deprecated :: (Core.Maybe Core.Bool),
    -- | Parameter description.
    description :: (Core.Maybe Core.Text),
    -- | Parameter display name in the user interface.
    displayName :: (Core.Maybe Core.Text),
    -- | Deprecated. This field has no effect.
    fields :: (Core.Maybe [DataSourceParameter]),
    -- | Cannot be changed after initial creation.
    immutable :: (Core.Maybe Core.Bool),
    -- | For integer and double values specifies maxminum allowed value.
    maxValue :: (Core.Maybe Core.Double),
    -- | For integer and double values specifies minimum allowed value.
    minValue :: (Core.Maybe Core.Double),
    -- | Parameter identifier.
    paramId :: (Core.Maybe Core.Text),
    -- | Deprecated. This field has no effect.
    recurse :: (Core.Maybe Core.Bool),
    -- | Deprecated. This field has no effect.
    repeated :: (Core.Maybe Core.Bool),
    -- | Is parameter required.
    required :: (Core.Maybe Core.Bool),
    -- | Parameter type.
    type' :: (Core.Maybe DataSourceParameter_Type),
    -- | Description of the requirements for this field, in case the user input does not fulfill the regex pattern or min\/max values.
    validationDescription :: (Core.Maybe Core.Text),
    -- | URL to a help document to further explain the naming requirements.
    validationHelpUrl :: (Core.Maybe Core.Text),
    -- | Regular expression which can be used for parameter validation.
    validationRegex :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataSourceParameter' with the minimum fields required to make a request.
newDataSourceParameter ::
  DataSourceParameter
newDataSourceParameter =
  DataSourceParameter
    { allowedValues = Core.Nothing,
      deprecated = Core.Nothing,
      description = Core.Nothing,
      displayName = Core.Nothing,
      fields = Core.Nothing,
      immutable = Core.Nothing,
      maxValue = Core.Nothing,
      minValue = Core.Nothing,
      paramId = Core.Nothing,
      recurse = Core.Nothing,
      repeated = Core.Nothing,
      required = Core.Nothing,
      type' = Core.Nothing,
      validationDescription = Core.Nothing,
      validationHelpUrl = Core.Nothing,
      validationRegex = Core.Nothing
    }

instance Core.FromJSON DataSourceParameter where
  parseJSON =
    Core.withObject
      "DataSourceParameter"
      ( \o ->
          DataSourceParameter
            Core.<$> (o Core..:? "allowedValues" Core..!= Core.mempty)
            Core.<*> (o Core..:? "deprecated")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "fields" Core..!= Core.mempty)
            Core.<*> (o Core..:? "immutable")
            Core.<*> (o Core..:? "maxValue")
            Core.<*> (o Core..:? "minValue")
            Core.<*> (o Core..:? "paramId")
            Core.<*> (o Core..:? "recurse")
            Core.<*> (o Core..:? "repeated")
            Core.<*> (o Core..:? "required")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "validationDescription")
            Core.<*> (o Core..:? "validationHelpUrl")
            Core.<*> (o Core..:? "validationRegex")
      )

instance Core.ToJSON DataSourceParameter where
  toJSON DataSourceParameter {..} =
    Core.object
      ( Core.catMaybes
          [ ("allowedValues" Core..=) Core.<$> allowedValues,
            ("deprecated" Core..=) Core.<$> deprecated,
            ("description" Core..=) Core.<$> description,
            ("displayName" Core..=) Core.<$> displayName,
            ("fields" Core..=) Core.<$> fields,
            ("immutable" Core..=) Core.<$> immutable,
            ("maxValue" Core..=) Core.<$> maxValue,
            ("minValue" Core..=) Core.<$> minValue,
            ("paramId" Core..=) Core.<$> paramId,
            ("recurse" Core..=) Core.<$> recurse,
            ("repeated" Core..=) Core.<$> repeated,
            ("required" Core..=) Core.<$> required,
            ("type" Core..=) Core.<$> type',
            ("validationDescription" Core..=)
              Core.<$> validationDescription,
            ("validationHelpUrl" Core..=)
              Core.<$> validationHelpUrl,
            ("validationRegex" Core..=)
              Core.<$> validationRegex
          ]
      )

-- | Represents preferences for sending email notifications for transfer run events.
--
-- /See:/ 'newEmailPreferences' smart constructor.
newtype EmailPreferences = EmailPreferences
  { -- | If true, email notifications will be sent on transfer run failures.
    enableFailureEmail :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EmailPreferences' with the minimum fields required to make a request.
newEmailPreferences ::
  EmailPreferences
newEmailPreferences = EmailPreferences {enableFailureEmail = Core.Nothing}

instance Core.FromJSON EmailPreferences where
  parseJSON =
    Core.withObject
      "EmailPreferences"
      ( \o ->
          EmailPreferences
            Core.<$> (o Core..:? "enableFailureEmail")
      )

instance Core.ToJSON EmailPreferences where
  toJSON EmailPreferences {..} =
    Core.object
      ( Core.catMaybes
          [ ("enableFailureEmail" Core..=)
              Core.<$> enableFailureEmail
          ]
      )

-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON representation for @Empty@ is empty JSON object @{}@.
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty ::
  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
  parseJSON =
    Core.withObject "Empty" (\o -> Core.pure Empty)

instance Core.ToJSON Empty where
  toJSON = Core.const Core.emptyObject

-- | A request to enroll a set of data sources so they are visible in the BigQuery UI\'s @Transfer@ tab.
--
-- /See:/ 'newEnrollDataSourcesRequest' smart constructor.
newtype EnrollDataSourcesRequest = EnrollDataSourcesRequest
  { -- | Data sources that are enrolled. It is required to provide at least one data source id.
    dataSourceIds :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EnrollDataSourcesRequest' with the minimum fields required to make a request.
newEnrollDataSourcesRequest ::
  EnrollDataSourcesRequest
newEnrollDataSourcesRequest =
  EnrollDataSourcesRequest {dataSourceIds = Core.Nothing}

instance Core.FromJSON EnrollDataSourcesRequest where
  parseJSON =
    Core.withObject
      "EnrollDataSourcesRequest"
      ( \o ->
          EnrollDataSourcesRequest
            Core.<$> (o Core..:? "dataSourceIds" Core..!= Core.mempty)
      )

instance Core.ToJSON EnrollDataSourcesRequest where
  toJSON EnrollDataSourcesRequest {..} =
    Core.object
      ( Core.catMaybes
          [("dataSourceIds" Core..=) Core.<$> dataSourceIds]
      )

-- | Returns list of supported data sources and their metadata.
--
-- /See:/ 'newListDataSourcesResponse' smart constructor.
data ListDataSourcesResponse = ListDataSourcesResponse
  { -- | List of supported data sources and their transfer settings.
    dataSources :: (Core.Maybe [DataSource]),
    -- | Output only. The next-pagination token. For multiple-page list results, this token can be used as the @ListDataSourcesRequest.page_token@ to request the next page of list results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListDataSourcesResponse' with the minimum fields required to make a request.
newListDataSourcesResponse ::
  ListDataSourcesResponse
newListDataSourcesResponse =
  ListDataSourcesResponse
    { dataSources = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListDataSourcesResponse where
  parseJSON =
    Core.withObject
      "ListDataSourcesResponse"
      ( \o ->
          ListDataSourcesResponse
            Core.<$> (o Core..:? "dataSources" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListDataSourcesResponse where
  toJSON ListDataSourcesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataSources" Core..=) Core.<$> dataSources,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | The response message for Locations.ListLocations.
--
-- /See:/ 'newListLocationsResponse' smart constructor.
data ListLocationsResponse = ListLocationsResponse
  { -- | A list of locations that matches the specified filter in the request.
    locations :: (Core.Maybe [Location]),
    -- | The standard List next-page token.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListLocationsResponse' with the minimum fields required to make a request.
newListLocationsResponse ::
  ListLocationsResponse
newListLocationsResponse =
  ListLocationsResponse {locations = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListLocationsResponse where
  parseJSON =
    Core.withObject
      "ListLocationsResponse"
      ( \o ->
          ListLocationsResponse
            Core.<$> (o Core..:? "locations" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListLocationsResponse where
  toJSON ListLocationsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("locations" Core..=) Core.<$> locations,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | The returned list of pipelines in the project.
--
-- /See:/ 'newListTransferConfigsResponse' smart constructor.
data ListTransferConfigsResponse = ListTransferConfigsResponse
  { -- | Output only. The next-pagination token. For multiple-page list results, this token can be used as the @ListTransferConfigsRequest.page_token@ to request the next page of list results.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Output only. The stored pipeline transfer configurations.
    transferConfigs :: (Core.Maybe [TransferConfig])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListTransferConfigsResponse' with the minimum fields required to make a request.
newListTransferConfigsResponse ::
  ListTransferConfigsResponse
newListTransferConfigsResponse =
  ListTransferConfigsResponse
    { nextPageToken = Core.Nothing,
      transferConfigs = Core.Nothing
    }

instance Core.FromJSON ListTransferConfigsResponse where
  parseJSON =
    Core.withObject
      "ListTransferConfigsResponse"
      ( \o ->
          ListTransferConfigsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "transferConfigs" Core..!= Core.mempty)
      )

instance Core.ToJSON ListTransferConfigsResponse where
  toJSON ListTransferConfigsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("transferConfigs" Core..=)
              Core.<$> transferConfigs
          ]
      )

-- | The returned list transfer run messages.
--
-- /See:/ 'newListTransferLogsResponse' smart constructor.
data ListTransferLogsResponse = ListTransferLogsResponse
  { -- | Output only. The next-pagination token. For multiple-page list results, this token can be used as the @GetTransferRunLogRequest.page_token@ to request the next page of list results.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Output only. The stored pipeline transfer messages.
    transferMessages :: (Core.Maybe [TransferMessage])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListTransferLogsResponse' with the minimum fields required to make a request.
newListTransferLogsResponse ::
  ListTransferLogsResponse
newListTransferLogsResponse =
  ListTransferLogsResponse
    { nextPageToken = Core.Nothing,
      transferMessages = Core.Nothing
    }

instance Core.FromJSON ListTransferLogsResponse where
  parseJSON =
    Core.withObject
      "ListTransferLogsResponse"
      ( \o ->
          ListTransferLogsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "transferMessages" Core..!= Core.mempty)
      )

instance Core.ToJSON ListTransferLogsResponse where
  toJSON ListTransferLogsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("transferMessages" Core..=)
              Core.<$> transferMessages
          ]
      )

-- | The returned list of pipelines in the project.
--
-- /See:/ 'newListTransferRunsResponse' smart constructor.
data ListTransferRunsResponse = ListTransferRunsResponse
  { -- | Output only. The next-pagination token. For multiple-page list results, this token can be used as the @ListTransferRunsRequest.page_token@ to request the next page of list results.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Output only. The stored pipeline transfer runs.
    transferRuns :: (Core.Maybe [TransferRun])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListTransferRunsResponse' with the minimum fields required to make a request.
newListTransferRunsResponse ::
  ListTransferRunsResponse
newListTransferRunsResponse =
  ListTransferRunsResponse
    { nextPageToken = Core.Nothing,
      transferRuns = Core.Nothing
    }

instance Core.FromJSON ListTransferRunsResponse where
  parseJSON =
    Core.withObject
      "ListTransferRunsResponse"
      ( \o ->
          ListTransferRunsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "transferRuns" Core..!= Core.mempty)
      )

instance Core.ToJSON ListTransferRunsResponse where
  toJSON ListTransferRunsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("transferRuns" Core..=) Core.<$> transferRuns
          ]
      )

-- | A resource that represents Google Cloud Platform location.
--
-- /See:/ 'newLocation' smart constructor.
data Location = Location
  { -- | The friendly name for this location, typically a nearby city name. For example, \"Tokyo\".
    displayName :: (Core.Maybe Core.Text),
    -- | Cross-service attributes for the location. For example {\"cloud.googleapis.com\/region\": \"us-east1\"}
    labels :: (Core.Maybe Location_Labels),
    -- | The canonical id for this location. For example: @\"us-east1\"@.
    locationId :: (Core.Maybe Core.Text),
    -- | Service-specific metadata. For example the available capacity at the given location.
    metadata :: (Core.Maybe Location_Metadata),
    -- | Resource name for the location, which may vary between implementations. For example: @\"projects\/example-project\/locations\/us-east1\"@
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location' with the minimum fields required to make a request.
newLocation ::
  Location
newLocation =
  Location
    { displayName = Core.Nothing,
      labels = Core.Nothing,
      locationId = Core.Nothing,
      metadata = Core.Nothing,
      name = Core.Nothing
    }

instance Core.FromJSON Location where
  parseJSON =
    Core.withObject
      "Location"
      ( \o ->
          Location
            Core.<$> (o Core..:? "displayName")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "locationId")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON Location where
  toJSON Location {..} =
    Core.object
      ( Core.catMaybes
          [ ("displayName" Core..=) Core.<$> displayName,
            ("labels" Core..=) Core.<$> labels,
            ("locationId" Core..=) Core.<$> locationId,
            ("metadata" Core..=) Core.<$> metadata,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | Cross-service attributes for the location. For example {\"cloud.googleapis.com\/region\": \"us-east1\"}
--
-- /See:/ 'newLocation_Labels' smart constructor.
newtype Location_Labels = Location_Labels
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location_Labels' with the minimum fields required to make a request.
newLocation_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Location_Labels
newLocation_Labels additional = Location_Labels {additional = additional}

instance Core.FromJSON Location_Labels where
  parseJSON =
    Core.withObject
      "Location_Labels"
      ( \o ->
          Location_Labels Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Location_Labels where
  toJSON Location_Labels {..} = Core.toJSON additional

-- | Service-specific metadata. For example the available capacity at the given location.
--
-- /See:/ 'newLocation_Metadata' smart constructor.
newtype Location_Metadata = Location_Metadata
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location_Metadata' with the minimum fields required to make a request.
newLocation_Metadata ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Location_Metadata
newLocation_Metadata additional = Location_Metadata {additional = additional}

instance Core.FromJSON Location_Metadata where
  parseJSON =
    Core.withObject
      "Location_Metadata"
      ( \o ->
          Location_Metadata Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Location_Metadata where
  toJSON Location_Metadata {..} = Core.toJSON additional

-- | Options customizing the data transfer schedule.
--
-- /See:/ 'newScheduleOptions' smart constructor.
data ScheduleOptions = ScheduleOptions
  { -- | If true, automatic scheduling of data transfer runs for this configuration will be disabled. The runs can be started on ad-hoc basis using StartManualTransferRuns API. When automatic scheduling is disabled, the TransferConfig.schedule field will be ignored.
    disableAutoScheduling :: (Core.Maybe Core.Bool),
    -- | Defines time to stop scheduling transfer runs. A transfer run cannot be scheduled at or after the end time. The end time can be changed at any moment. The time when a data transfer can be trigerred manually is not limited by this option.
    endTime :: (Core.Maybe Core.DateTime),
    -- | Specifies time to start scheduling transfer runs. The first run will be scheduled at or after the start time according to a recurrence pattern defined in the schedule string. The start time can be changed at any moment. The time when a data transfer can be trigerred manually is not limited by this option.
    startTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ScheduleOptions' with the minimum fields required to make a request.
newScheduleOptions ::
  ScheduleOptions
newScheduleOptions =
  ScheduleOptions
    { disableAutoScheduling = Core.Nothing,
      endTime = Core.Nothing,
      startTime = Core.Nothing
    }

instance Core.FromJSON ScheduleOptions where
  parseJSON =
    Core.withObject
      "ScheduleOptions"
      ( \o ->
          ScheduleOptions
            Core.<$> (o Core..:? "disableAutoScheduling")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "startTime")
      )

instance Core.ToJSON ScheduleOptions where
  toJSON ScheduleOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("disableAutoScheduling" Core..=)
              Core.<$> disableAutoScheduling,
            ("endTime" Core..=) Core.<$> endTime,
            ("startTime" Core..=) Core.<$> startTime
          ]
      )

-- | A request to schedule transfer runs for a time range.
--
-- /See:/ 'newScheduleTransferRunsRequest' smart constructor.
data ScheduleTransferRunsRequest = ScheduleTransferRunsRequest
  { -- | Required. End time of the range of transfer runs. For example, @\"2017-05-30T00:00:00+00:00\"@.
    endTime :: (Core.Maybe Core.DateTime),
    -- | Required. Start time of the range of transfer runs. For example, @\"2017-05-25T00:00:00+00:00\"@.
    startTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ScheduleTransferRunsRequest' with the minimum fields required to make a request.
newScheduleTransferRunsRequest ::
  ScheduleTransferRunsRequest
newScheduleTransferRunsRequest =
  ScheduleTransferRunsRequest {endTime = Core.Nothing, startTime = Core.Nothing}

instance Core.FromJSON ScheduleTransferRunsRequest where
  parseJSON =
    Core.withObject
      "ScheduleTransferRunsRequest"
      ( \o ->
          ScheduleTransferRunsRequest
            Core.<$> (o Core..:? "endTime")
            Core.<*> (o Core..:? "startTime")
      )

instance Core.ToJSON ScheduleTransferRunsRequest where
  toJSON ScheduleTransferRunsRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("endTime" Core..=) Core.<$> endTime,
            ("startTime" Core..=) Core.<$> startTime
          ]
      )

-- | A response to schedule transfer runs for a time range.
--
-- /See:/ 'newScheduleTransferRunsResponse' smart constructor.
newtype ScheduleTransferRunsResponse = ScheduleTransferRunsResponse
  { -- | The transfer runs that were scheduled.
    runs :: (Core.Maybe [TransferRun])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ScheduleTransferRunsResponse' with the minimum fields required to make a request.
newScheduleTransferRunsResponse ::
  ScheduleTransferRunsResponse
newScheduleTransferRunsResponse =
  ScheduleTransferRunsResponse {runs = Core.Nothing}

instance Core.FromJSON ScheduleTransferRunsResponse where
  parseJSON =
    Core.withObject
      "ScheduleTransferRunsResponse"
      ( \o ->
          ScheduleTransferRunsResponse
            Core.<$> (o Core..:? "runs" Core..!= Core.mempty)
      )

instance Core.ToJSON ScheduleTransferRunsResponse where
  toJSON ScheduleTransferRunsResponse {..} =
    Core.object
      (Core.catMaybes [("runs" Core..=) Core.<$> runs])

-- | A request to start manual transfer runs.
--
-- /See:/ 'newStartManualTransferRunsRequest' smart constructor.
data StartManualTransferRunsRequest = StartManualTransferRunsRequest
  { -- | Specific run/time for a transfer run to be started. The requested/run_time must not be in the future.
    requestedRunTime :: (Core.Maybe Core.DateTime),
    -- | Time range for the transfer runs that should be started.
    requestedTimeRange :: (Core.Maybe TimeRange)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StartManualTransferRunsRequest' with the minimum fields required to make a request.
newStartManualTransferRunsRequest ::
  StartManualTransferRunsRequest
newStartManualTransferRunsRequest =
  StartManualTransferRunsRequest
    { requestedRunTime = Core.Nothing,
      requestedTimeRange = Core.Nothing
    }

instance Core.FromJSON StartManualTransferRunsRequest where
  parseJSON =
    Core.withObject
      "StartManualTransferRunsRequest"
      ( \o ->
          StartManualTransferRunsRequest
            Core.<$> (o Core..:? "requestedRunTime")
            Core.<*> (o Core..:? "requestedTimeRange")
      )

instance Core.ToJSON StartManualTransferRunsRequest where
  toJSON StartManualTransferRunsRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("requestedRunTime" Core..=)
              Core.<$> requestedRunTime,
            ("requestedTimeRange" Core..=)
              Core.<$> requestedTimeRange
          ]
      )

-- | A response to start manual transfer runs.
--
-- /See:/ 'newStartManualTransferRunsResponse' smart constructor.
newtype StartManualTransferRunsResponse = StartManualTransferRunsResponse
  { -- | The transfer runs that were created.
    runs :: (Core.Maybe [TransferRun])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StartManualTransferRunsResponse' with the minimum fields required to make a request.
newStartManualTransferRunsResponse ::
  StartManualTransferRunsResponse
newStartManualTransferRunsResponse =
  StartManualTransferRunsResponse {runs = Core.Nothing}

instance
  Core.FromJSON
    StartManualTransferRunsResponse
  where
  parseJSON =
    Core.withObject
      "StartManualTransferRunsResponse"
      ( \o ->
          StartManualTransferRunsResponse
            Core.<$> (o Core..:? "runs" Core..!= Core.mempty)
      )

instance Core.ToJSON StartManualTransferRunsResponse where
  toJSON StartManualTransferRunsResponse {..} =
    Core.object
      (Core.catMaybes [("runs" Core..=) Core.<$> runs])

-- | The @Status@ type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by <https://github.com/grpc gRPC>. Each @Status@ message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the <https://cloud.google.com/apis/design/errors API Design Guide>.
--
-- /See:/ 'newStatus' smart constructor.
data Status = Status
  { -- | The status code, which should be an enum value of google.rpc.Code.
    code :: (Core.Maybe Core.Int32),
    -- | A list of messages that carry the error details. There is a common set of message types for APIs to use.
    details :: (Core.Maybe [Status_DetailsItem]),
    -- | A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
    message :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status' with the minimum fields required to make a request.
newStatus ::
  Status
newStatus =
  Status {code = Core.Nothing, details = Core.Nothing, message = Core.Nothing}

instance Core.FromJSON Status where
  parseJSON =
    Core.withObject
      "Status"
      ( \o ->
          Status
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "details" Core..!= Core.mempty)
            Core.<*> (o Core..:? "message")
      )

instance Core.ToJSON Status where
  toJSON Status {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("details" Core..=) Core.<$> details,
            ("message" Core..=) Core.<$> message
          ]
      )

--
-- /See:/ 'newStatus_DetailsItem' smart constructor.
newtype Status_DetailsItem = Status_DetailsItem
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status_DetailsItem' with the minimum fields required to make a request.
newStatus_DetailsItem ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Status_DetailsItem
newStatus_DetailsItem additional = Status_DetailsItem {additional = additional}

instance Core.FromJSON Status_DetailsItem where
  parseJSON =
    Core.withObject
      "Status_DetailsItem"
      ( \o ->
          Status_DetailsItem Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Status_DetailsItem where
  toJSON Status_DetailsItem {..} =
    Core.toJSON additional

-- | A specification for a time range, this will request transfer runs with run/time between start/time (inclusive) and end_time (exclusive).
--
-- /See:/ 'newTimeRange' smart constructor.
data TimeRange = TimeRange
  { -- | End time of the range of transfer runs. For example, @\"2017-05-30T00:00:00+00:00\"@. The end/time must not be in the future. Creates transfer runs where run/time is in the range between start/time (inclusive) and end/time (exclusive).
    endTime :: (Core.Maybe Core.DateTime),
    -- | Start time of the range of transfer runs. For example, @\"2017-05-25T00:00:00+00:00\"@. The start/time must be strictly less than the end/time. Creates transfer runs where run/time is in the range between start/time (inclusive) and end_time (exclusive).
    startTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TimeRange' with the minimum fields required to make a request.
newTimeRange ::
  TimeRange
newTimeRange = TimeRange {endTime = Core.Nothing, startTime = Core.Nothing}

instance Core.FromJSON TimeRange where
  parseJSON =
    Core.withObject
      "TimeRange"
      ( \o ->
          TimeRange
            Core.<$> (o Core..:? "endTime")
            Core.<*> (o Core..:? "startTime")
      )

instance Core.ToJSON TimeRange where
  toJSON TimeRange {..} =
    Core.object
      ( Core.catMaybes
          [ ("endTime" Core..=) Core.<$> endTime,
            ("startTime" Core..=) Core.<$> startTime
          ]
      )

-- | Represents a data transfer configuration. A transfer configuration contains all metadata needed to perform a data transfer. For example, @destination_dataset_id@ specifies where data should be stored. When a new transfer configuration is created, the specified @destination_dataset_id@ is created when needed and shared with the appropriate data source service account.
--
-- /See:/ 'newTransferConfig' smart constructor.
data TransferConfig = TransferConfig
  { -- | The number of days to look back to automatically refresh the data. For example, if @data_refresh_window_days = 10@, then every day BigQuery reingests data for [today-10, today-1], rather than ingesting data for just [today-1]. Only valid if the data source supports the feature. Set the value to 0 to use the default value.
    dataRefreshWindowDays :: (Core.Maybe Core.Int32),
    -- | Data source id. Cannot be changed once data transfer is created.
    dataSourceId :: (Core.Maybe Core.Text),
    -- | Output only. Region in which BigQuery dataset is located.
    datasetRegion :: (Core.Maybe Core.Text),
    -- | The BigQuery target dataset id.
    destinationDatasetId :: (Core.Maybe Core.Text),
    -- | Is this config disabled. When set to true, no runs are scheduled for a given transfer.
    disabled :: (Core.Maybe Core.Bool),
    -- | User specified display name for the data transfer.
    displayName :: (Core.Maybe Core.Text),
    -- | Email notifications will be sent according to these preferences to the email address of the user who owns this transfer config.
    emailPreferences :: (Core.Maybe EmailPreferences),
    -- | The resource name of the transfer config. Transfer config names have the form @projects\/{project_id}\/locations\/{region}\/transferConfigs\/{config_id}@. Where @config_id@ is usually a uuid, even though it is not guaranteed or required. The name is ignored when creating a transfer config.
    name :: (Core.Maybe Core.Text),
    -- | Output only. Next time when data transfer will run.
    nextRunTime :: (Core.Maybe Core.DateTime),
    -- | Pub\/Sub topic where notifications will be sent after transfer runs associated with this transfer config finish. The format for specifying a pubsub topic is: @projects\/{project}\/topics\/{topic}@
    notificationPubsubTopic :: (Core.Maybe Core.Text),
    -- | Output only. Information about the user whose credentials are used to transfer data. Populated only for @transferConfigs.get@ requests. In case the user information is not available, this field will not be populated.
    ownerInfo :: (Core.Maybe UserInfo),
    -- | Parameters specific to each data source. For more information see the bq tab in the \'Setting up a data transfer\' section for each data source. For example the parameters for Cloud Storage transfers are listed here: https:\/\/cloud.google.com\/bigquery-transfer\/docs\/cloud-storage-transfer#bq
    params :: (Core.Maybe TransferConfig_Params),
    -- | Data transfer schedule. If the data source does not support a custom schedule, this should be empty. If it is empty, the default value for the data source will be used. The specified times are in UTC. Examples of valid format: @1st,3rd monday of month 15:30@, @every wed,fri of jan,jun 13:15@, and @first sunday of quarter 00:00@. See more explanation about the format here: https:\/\/cloud.google.com\/appengine\/docs\/flexible\/python\/scheduling-jobs-with-cron-yaml#the/schedule/format NOTE: The minimum interval time between recurring transfers depends on the data source; refer to the documentation for your data source.
    schedule :: (Core.Maybe Core.Text),
    -- | Options customizing the data transfer schedule.
    scheduleOptions :: (Core.Maybe ScheduleOptions),
    -- | Output only. State of the most recently updated transfer run.
    state :: (Core.Maybe TransferConfig_State),
    -- | Output only. Data transfer modification time. Ignored by server on input.
    updateTime :: (Core.Maybe Core.DateTime),
    -- | Deprecated. Unique ID of the user on whose behalf transfer is done.
    userId :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TransferConfig' with the minimum fields required to make a request.
newTransferConfig ::
  TransferConfig
newTransferConfig =
  TransferConfig
    { dataRefreshWindowDays = Core.Nothing,
      dataSourceId = Core.Nothing,
      datasetRegion = Core.Nothing,
      destinationDatasetId = Core.Nothing,
      disabled = Core.Nothing,
      displayName = Core.Nothing,
      emailPreferences = Core.Nothing,
      name = Core.Nothing,
      nextRunTime = Core.Nothing,
      notificationPubsubTopic = Core.Nothing,
      ownerInfo = Core.Nothing,
      params = Core.Nothing,
      schedule = Core.Nothing,
      scheduleOptions = Core.Nothing,
      state = Core.Nothing,
      updateTime = Core.Nothing,
      userId = Core.Nothing
    }

instance Core.FromJSON TransferConfig where
  parseJSON =
    Core.withObject
      "TransferConfig"
      ( \o ->
          TransferConfig
            Core.<$> (o Core..:? "dataRefreshWindowDays")
            Core.<*> (o Core..:? "dataSourceId")
            Core.<*> (o Core..:? "datasetRegion")
            Core.<*> (o Core..:? "destinationDatasetId")
            Core.<*> (o Core..:? "disabled")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "emailPreferences")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "nextRunTime")
            Core.<*> (o Core..:? "notificationPubsubTopic")
            Core.<*> (o Core..:? "ownerInfo")
            Core.<*> (o Core..:? "params")
            Core.<*> (o Core..:? "schedule")
            Core.<*> (o Core..:? "scheduleOptions")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "updateTime")
            Core.<*> (o Core..:? "userId")
      )

instance Core.ToJSON TransferConfig where
  toJSON TransferConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataRefreshWindowDays" Core..=)
              Core.<$> dataRefreshWindowDays,
            ("dataSourceId" Core..=) Core.<$> dataSourceId,
            ("datasetRegion" Core..=) Core.<$> datasetRegion,
            ("destinationDatasetId" Core..=)
              Core.<$> destinationDatasetId,
            ("disabled" Core..=) Core.<$> disabled,
            ("displayName" Core..=) Core.<$> displayName,
            ("emailPreferences" Core..=)
              Core.<$> emailPreferences,
            ("name" Core..=) Core.<$> name,
            ("nextRunTime" Core..=) Core.<$> nextRunTime,
            ("notificationPubsubTopic" Core..=)
              Core.<$> notificationPubsubTopic,
            ("ownerInfo" Core..=) Core.<$> ownerInfo,
            ("params" Core..=) Core.<$> params,
            ("schedule" Core..=) Core.<$> schedule,
            ("scheduleOptions" Core..=) Core.<$> scheduleOptions,
            ("state" Core..=) Core.<$> state,
            ("updateTime" Core..=) Core.<$> updateTime,
            ("userId" Core..=) Core.. Core.AsText
              Core.<$> userId
          ]
      )

-- | Parameters specific to each data source. For more information see the bq tab in the \'Setting up a data transfer\' section for each data source. For example the parameters for Cloud Storage transfers are listed here: https:\/\/cloud.google.com\/bigquery-transfer\/docs\/cloud-storage-transfer#bq
--
-- /See:/ 'newTransferConfig_Params' smart constructor.
newtype TransferConfig_Params = TransferConfig_Params
  { -- | Properties of the object.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TransferConfig_Params' with the minimum fields required to make a request.
newTransferConfig_Params ::
  -- |  Properties of the object. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  TransferConfig_Params
newTransferConfig_Params additional =
  TransferConfig_Params {additional = additional}

instance Core.FromJSON TransferConfig_Params where
  parseJSON =
    Core.withObject
      "TransferConfig_Params"
      ( \o ->
          TransferConfig_Params
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON TransferConfig_Params where
  toJSON TransferConfig_Params {..} =
    Core.toJSON additional

-- | Represents a user facing message for a particular data transfer run.
--
-- /See:/ 'newTransferMessage' smart constructor.
data TransferMessage = TransferMessage
  { -- | Message text.
    messageText :: (Core.Maybe Core.Text),
    -- | Time when message was logged.
    messageTime :: (Core.Maybe Core.DateTime),
    -- | Message severity.
    severity :: (Core.Maybe TransferMessage_Severity)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TransferMessage' with the minimum fields required to make a request.
newTransferMessage ::
  TransferMessage
newTransferMessage =
  TransferMessage
    { messageText = Core.Nothing,
      messageTime = Core.Nothing,
      severity = Core.Nothing
    }

instance Core.FromJSON TransferMessage where
  parseJSON =
    Core.withObject
      "TransferMessage"
      ( \o ->
          TransferMessage
            Core.<$> (o Core..:? "messageText")
            Core.<*> (o Core..:? "messageTime")
            Core.<*> (o Core..:? "severity")
      )

instance Core.ToJSON TransferMessage where
  toJSON TransferMessage {..} =
    Core.object
      ( Core.catMaybes
          [ ("messageText" Core..=) Core.<$> messageText,
            ("messageTime" Core..=) Core.<$> messageTime,
            ("severity" Core..=) Core.<$> severity
          ]
      )

-- | Represents a data transfer run.
--
-- /See:/ 'newTransferRun' smart constructor.
data TransferRun = TransferRun
  { -- | Output only. Data source id.
    dataSourceId :: (Core.Maybe Core.Text),
    -- | Output only. The BigQuery target dataset id.
    destinationDatasetId :: (Core.Maybe Core.Text),
    -- | Output only. Email notifications will be sent according to these preferences to the email address of the user who owns the transfer config this run was derived from.
    emailPreferences :: (Core.Maybe EmailPreferences),
    -- | Output only. Time when transfer run ended. Parameter ignored by server for input requests.
    endTime :: (Core.Maybe Core.DateTime),
    -- | Status of the transfer run.
    errorStatus :: (Core.Maybe Status),
    -- | The resource name of the transfer run. Transfer run names have the form @projects\/{project_id}\/locations\/{location}\/transferConfigs\/{config_id}\/runs\/{run_id}@. The name is ignored when creating a transfer run.
    name :: (Core.Maybe Core.Text),
    -- | Output only. Pub\/Sub topic where a notification will be sent after this transfer run finishes. The format for specifying a pubsub topic is: @projects\/{project}\/topics\/{topic}@
    notificationPubsubTopic :: (Core.Maybe Core.Text),
    -- | Output only. Parameters specific to each data source. For more information see the bq tab in the \'Setting up a data transfer\' section for each data source. For example the parameters for Cloud Storage transfers are listed here: https:\/\/cloud.google.com\/bigquery-transfer\/docs\/cloud-storage-transfer#bq
    params :: (Core.Maybe TransferRun_Params),
    -- | For batch transfer runs, specifies the date and time of the data should be ingested.
    runTime :: (Core.Maybe Core.DateTime),
    -- | Output only. Describes the schedule of this transfer run if it was created as part of a regular schedule. For batch transfer runs that are scheduled manually, this is empty. NOTE: the system might choose to delay the schedule depending on the current load, so @schedule_time@ doesn\'t always match this.
    schedule :: (Core.Maybe Core.Text),
    -- | Minimum time after which a transfer run can be started.
    scheduleTime :: (Core.Maybe Core.DateTime),
    -- | Output only. Time when transfer run was started. Parameter ignored by server for input requests.
    startTime :: (Core.Maybe Core.DateTime),
    -- | Data transfer run state. Ignored for input requests.
    state :: (Core.Maybe TransferRun_State),
    -- | Output only. Last time the data transfer run state was updated.
    updateTime :: (Core.Maybe Core.DateTime),
    -- | Deprecated. Unique ID of the user on whose behalf transfer is done.
    userId :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TransferRun' with the minimum fields required to make a request.
newTransferRun ::
  TransferRun
newTransferRun =
  TransferRun
    { dataSourceId = Core.Nothing,
      destinationDatasetId = Core.Nothing,
      emailPreferences = Core.Nothing,
      endTime = Core.Nothing,
      errorStatus = Core.Nothing,
      name = Core.Nothing,
      notificationPubsubTopic = Core.Nothing,
      params = Core.Nothing,
      runTime = Core.Nothing,
      schedule = Core.Nothing,
      scheduleTime = Core.Nothing,
      startTime = Core.Nothing,
      state = Core.Nothing,
      updateTime = Core.Nothing,
      userId = Core.Nothing
    }

instance Core.FromJSON TransferRun where
  parseJSON =
    Core.withObject
      "TransferRun"
      ( \o ->
          TransferRun
            Core.<$> (o Core..:? "dataSourceId")
            Core.<*> (o Core..:? "destinationDatasetId")
            Core.<*> (o Core..:? "emailPreferences")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "errorStatus")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "notificationPubsubTopic")
            Core.<*> (o Core..:? "params")
            Core.<*> (o Core..:? "runTime")
            Core.<*> (o Core..:? "schedule")
            Core.<*> (o Core..:? "scheduleTime")
            Core.<*> (o Core..:? "startTime")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "updateTime")
            Core.<*> (o Core..:? "userId")
      )

instance Core.ToJSON TransferRun where
  toJSON TransferRun {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataSourceId" Core..=) Core.<$> dataSourceId,
            ("destinationDatasetId" Core..=)
              Core.<$> destinationDatasetId,
            ("emailPreferences" Core..=)
              Core.<$> emailPreferences,
            ("endTime" Core..=) Core.<$> endTime,
            ("errorStatus" Core..=) Core.<$> errorStatus,
            ("name" Core..=) Core.<$> name,
            ("notificationPubsubTopic" Core..=)
              Core.<$> notificationPubsubTopic,
            ("params" Core..=) Core.<$> params,
            ("runTime" Core..=) Core.<$> runTime,
            ("schedule" Core..=) Core.<$> schedule,
            ("scheduleTime" Core..=) Core.<$> scheduleTime,
            ("startTime" Core..=) Core.<$> startTime,
            ("state" Core..=) Core.<$> state,
            ("updateTime" Core..=) Core.<$> updateTime,
            ("userId" Core..=) Core.. Core.AsText
              Core.<$> userId
          ]
      )

-- | Output only. Parameters specific to each data source. For more information see the bq tab in the \'Setting up a data transfer\' section for each data source. For example the parameters for Cloud Storage transfers are listed here: https:\/\/cloud.google.com\/bigquery-transfer\/docs\/cloud-storage-transfer#bq
--
-- /See:/ 'newTransferRun_Params' smart constructor.
newtype TransferRun_Params = TransferRun_Params
  { -- | Properties of the object.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TransferRun_Params' with the minimum fields required to make a request.
newTransferRun_Params ::
  -- |  Properties of the object. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  TransferRun_Params
newTransferRun_Params additional = TransferRun_Params {additional = additional}

instance Core.FromJSON TransferRun_Params where
  parseJSON =
    Core.withObject
      "TransferRun_Params"
      ( \o ->
          TransferRun_Params Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON TransferRun_Params where
  toJSON TransferRun_Params {..} =
    Core.toJSON additional

-- | Information about a user.
--
-- /See:/ 'newUserInfo' smart constructor.
newtype UserInfo = UserInfo
  { -- | E-mail address of the user.
    email :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserInfo' with the minimum fields required to make a request.
newUserInfo ::
  UserInfo
newUserInfo = UserInfo {email = Core.Nothing}

instance Core.FromJSON UserInfo where
  parseJSON =
    Core.withObject
      "UserInfo"
      (\o -> UserInfo Core.<$> (o Core..:? "email"))

instance Core.ToJSON UserInfo where
  toJSON UserInfo {..} =
    Core.object
      (Core.catMaybes [("email" Core..=) Core.<$> email])
