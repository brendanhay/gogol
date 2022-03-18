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
-- Module      : Network.Google.Healthcare.Projects.Locations.Datasets.ConsentStores.Consents.ListRevisions
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the revisions of the specified Consent in reverse chronological order.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.consents.listRevisions@.
module Network.Google.Healthcare.Projects.Locations.Datasets.ConsentStores.Consents.ListRevisions
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsConsentStoresConsentsListRevisionsResource,

    -- ** Constructing a Request
    newHealthcareProjectsLocationsDatasetsConsentStoresConsentsListRevisions,
    HealthcareProjectsLocationsDatasetsConsentStoresConsentsListRevisions,
  )
where

import Network.Google.Healthcare.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.consents.listRevisions@ method which the
-- 'HealthcareProjectsLocationsDatasetsConsentStoresConsentsListRevisions' request conforms to.
type HealthcareProjectsLocationsDatasetsConsentStoresConsentsListRevisionsResource =
  "v1"
    Core.:> Core.CaptureMode "name" "listRevisions" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListConsentRevisionsResponse

-- | Lists the revisions of the specified Consent in reverse chronological order.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsConsentStoresConsentsListRevisions' smart constructor.
data HealthcareProjectsLocationsDatasetsConsentStoresConsentsListRevisions = HealthcareProjectsLocationsDatasetsConsentStoresConsentsListRevisions
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. Restricts the revisions returned to those matching a filter. The following syntax is available: * A string field value can be written as text inside quotation marks, for example @\"query text\"@. The only valid relational operation for text fields is equality (@=@), where text is searched within the field, rather than having the field be equal to the text. For example, @\"Comment = great\"@ returns messages with @great@ in the comment field. * A number field value can be written as an integer, a decimal, or an exponential. The valid relational operators for number fields are the equality operator (@=@), along with the less than\/greater than operators (@\<@, @\<=@, @>@, @>=@). Note that there is no inequality (@!=@) operator. You can prepend the @NOT@ operator to an expression to negate it. * A date field value must be written in @yyyy-mm-dd@ form. Fields with date and time use the RFC3339 time format. Leading zeros are required for one-digit months and days. The valid relational operators for date
    -- fields are the equality operator (@=@) , along with the less than\/greater than operators (@\<@, @\<=@, @>@, @>=@). Note that there is no inequality (@!=@) operator. You can prepend the @NOT@ operator to an expression to negate it. * Multiple field query expressions can be combined in one query by adding @AND@ or @OR@ operators between the expressions. If a boolean operator appears within a quoted string, it is not treated as special, it\'s just another part of the character string to be matched. You can prepend the @NOT@ operator to an expression to negate it. Fields available for filtering are: - user/id. For example, @filter=\'user_id=\"user123\"\'@. - consent/artifact - state - revision/create/time - metadata. For example, @filter=Metadata(\\\"testkey\\\")=\\\"value\\\"@ or @filter=HasMetadata(\\\"testkey\\\")@.
    filter :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the Consent to retrieve revisions for.
    name :: Core.Text,
    -- | Optional. Limit on the number of revisions to return in a single response. If not specified, 100 is used. May not be larger than 1000.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. Token to retrieve the next page of results or empty if there are no more results in the list.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsConsentStoresConsentsListRevisions' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsConsentStoresConsentsListRevisions ::
  -- |  Required. The resource name of the Consent to retrieve revisions for. See 'name'.
  Core.Text ->
  HealthcareProjectsLocationsDatasetsConsentStoresConsentsListRevisions
newHealthcareProjectsLocationsDatasetsConsentStoresConsentsListRevisions name =
  HealthcareProjectsLocationsDatasetsConsentStoresConsentsListRevisions
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      name = name,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    HealthcareProjectsLocationsDatasetsConsentStoresConsentsListRevisions
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsConsentStoresConsentsListRevisions =
      ListConsentRevisionsResponse
  type
    Scopes
      HealthcareProjectsLocationsDatasetsConsentStoresConsentsListRevisions =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    HealthcareProjectsLocationsDatasetsConsentStoresConsentsListRevisions {..} =
      go
        name
        xgafv
        accessToken
        callback
        filter
        pageSize
        pageToken
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        healthcareService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  HealthcareProjectsLocationsDatasetsConsentStoresConsentsListRevisionsResource
            )
            Core.mempty
