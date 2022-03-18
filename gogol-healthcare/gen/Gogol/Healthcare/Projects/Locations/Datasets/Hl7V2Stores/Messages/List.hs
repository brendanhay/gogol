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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.Hl7V2Stores.Messages.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the messages in the given HL7v2 store with support for filtering. Note: HL7v2 messages are indexed asynchronously, so there might be a slight delay between the time a message is created and when it can be found through a filter.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.hl7V2Stores.messages.list@.
module Gogol.Healthcare.Projects.Locations.Datasets.Hl7V2Stores.Messages.List
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesListResource,

    -- ** Constructing a Request
    newHealthcareProjectsLocationsDatasetsHl7V2StoresMessagesList,
    HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesList,
  )
where

import Gogol.Healthcare.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @healthcare.projects.locations.datasets.hl7V2Stores.messages.list@ method which the
-- 'HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesList' request conforms to.
type HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "messages"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "orderBy" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam
              "view"
              ProjectsLocationsDatasetsHl7V2StoresMessagesListView
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListMessagesResponse

-- | Lists all the messages in the given HL7v2 store with support for filtering. Note: HL7v2 messages are indexed asynchronously, so there might be a slight delay between the time a message is created and when it can be found through a filter.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsHl7V2StoresMessagesList' smart constructor.
data HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesList = HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Restricts messages returned to those matching a filter. The following syntax is available: * A string field value can be written as text inside quotation marks, for example @\"query text\"@. The only valid relational operation for text fields is equality (@=@), where text is searched within the field, rather than having the field be equal to the text. For example, @\"Comment = great\"@ returns messages with @great@ in the comment field. * A number field value can be written as an integer, a decimal, or an exponential. The valid relational operators for number fields are the equality operator (@=@), along with the less than\/greater than operators (@\<@, @\<=@, @>@, @>=@). Note that there is no inequality (@!=@) operator. You can prepend the @NOT@ operator to an expression to negate it. * A date field value must be written in @yyyy-mm-dd@ form. Fields with date and time use the RFC3339 time format. Leading zeros are required for one-digit months and days. The valid relational operators for date fields are the
    -- equality operator (@=@) , along with the less than\/greater than operators (@\<@, @\<=@, @>@, @>=@). Note that there is no inequality (@!=@) operator. You can prepend the @NOT@ operator to an expression to negate it. * Multiple field query expressions can be combined in one query by adding @AND@ or @OR@ operators between the expressions. If a boolean operator appears within a quoted string, it is not treated as special, it\'s just another part of the character string to be matched. You can prepend the @NOT@ operator to an expression to negate it. Fields\/functions available for filtering are: * @message_type@, from the MSH-9.1 field. For example, @NOT message_type = \"ADT\"@. * @send_date@ or @sendDate@, the YYYY-MM-DD date the message was sent in the dataset\'s time_zone, from the MSH-7 segment. For example, @send_date \< \"2017-01-02\"@. * @send_time@, the timestamp when the message was sent, using the RFC3339 time format for comparisons, from the MSH-7 segment. For example,
    -- @send_time \< \"2017-01-02T00:00:00-05:00\"@. * @create_time@, the timestamp when the message was created in the HL7v2 store. Use the RFC3339 time format for comparisons. For example, @create_time \< \"2017-01-02T00:00:00-05:00\"@. * @send_facility@, the care center that the message came from, from the MSH-4 segment. For example, @send_facility = \"ABC\"@. * @PatientId(value, type)@, which matches if the message lists a patient having an ID of the given value and type in the PID-2, PID-3, or PID-4 segments. For example, @PatientId(\"123456\", \"MRN\")@. * @labels.x@, a string value of the label with key @x@ as set using the Message.labels map. For example, @labels.\"priority\"=\"high\"@. The operator @:*@ can be used to assert the existence of a label. For example, @labels.\"priority\":*@.
    filter :: (Core.Maybe Core.Text),
    -- | Orders messages returned by the specified order/by clause. Syntax: https:\/\/cloud.google.com\/apis\/design\/design/patterns#sorting_order Fields available for ordering are: * @send_time@
    orderBy :: (Core.Maybe Core.Text),
    -- | Limit on the number of messages to return in a single response. If not specified, 100 is used. May not be larger than 1000.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The next/page/token value returned from the previous List request, if any.
    pageToken :: (Core.Maybe Core.Text),
    -- | Name of the HL7v2 store to retrieve messages from.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Specifies the parts of the Message to return in the response. When unspecified, equivalent to BASIC. Setting this to anything other than BASIC with a @page_size@ larger than the default can generate a large response, which impacts the performance of this method.
    view :: (Core.Maybe ProjectsLocationsDatasetsHl7V2StoresMessagesListView)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesList' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsHl7V2StoresMessagesList ::
  -- |  Name of the HL7v2 store to retrieve messages from. See 'parent'.
  Core.Text ->
  HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesList
newHealthcareProjectsLocationsDatasetsHl7V2StoresMessagesList parent =
  HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      orderBy = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      view = Core.Nothing
    }

instance
  Core.GoogleRequest
    HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesList
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesList =
      ListMessagesResponse
  type
    Scopes
      HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesList =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesList {..} =
      go
        parent
        xgafv
        accessToken
        callback
        filter
        orderBy
        pageSize
        pageToken
        uploadType
        uploadProtocol
        view
        (Core.Just Core.AltJSON)
        healthcareService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesListResource
            )
            Core.mempty
