{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.DFAReporting.BillingAssignments.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of billing assignments.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.billingAssignments.list@.
module Gogol.DFAReporting.BillingAssignments.List
  ( -- * Resource
    DFAReportingBillingAssignmentsListResource,

    -- ** Constructing a Request
    DFAReportingBillingAssignmentsList (..),
    newDFAReportingBillingAssignmentsList,
  )
where

import Gogol.DFAReporting.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dfareporting.billingAssignments.list@ method which the
-- 'DFAReportingBillingAssignmentsList' request conforms to.
type DFAReportingBillingAssignmentsListResource =
  "dfareporting"
    Core.:> "v4"
    Core.:> "userprofiles"
    Core.:> Core.Capture "profileId" Core.Int64
    Core.:> "billingProfiles"
    Core.:> Core.Capture "billingProfileId" Core.Int64
    Core.:> "billingAssignments"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] BillingAssignmentsListResponse

-- | Retrieves a list of billing assignments.
--
-- /See:/ 'newDFAReportingBillingAssignmentsList' smart constructor.
data DFAReportingBillingAssignmentsList = DFAReportingBillingAssignmentsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Billing profile ID of this billing assignment.
    billingProfileId :: Core.Int64,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | User profile ID associated with this request.
    profileId :: Core.Int64,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingBillingAssignmentsList' with the minimum fields required to make a request.
newDFAReportingBillingAssignmentsList ::
  -- |  Billing profile ID of this billing assignment. See 'billingProfileId'.
  Core.Int64 ->
  -- |  User profile ID associated with this request. See 'profileId'.
  Core.Int64 ->
  DFAReportingBillingAssignmentsList
newDFAReportingBillingAssignmentsList billingProfileId profileId =
  DFAReportingBillingAssignmentsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      billingProfileId = billingProfileId,
      callback = Core.Nothing,
      profileId = profileId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DFAReportingBillingAssignmentsList where
  type
    Rs DFAReportingBillingAssignmentsList =
      BillingAssignmentsListResponse
  type
    Scopes DFAReportingBillingAssignmentsList =
      '[Dfatrafficking'FullControl]
  requestClient DFAReportingBillingAssignmentsList {..} =
    go
      profileId
      billingProfileId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      dFAReportingService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DFAReportingBillingAssignmentsListResource
          )
          Core.mempty
