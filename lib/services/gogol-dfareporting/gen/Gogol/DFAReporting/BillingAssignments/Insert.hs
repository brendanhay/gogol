{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.DFAReporting.BillingAssignments.Insert
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new billing assignment and returns the new assignment. Only one of advertiser/id or campaign/id is support per request. If the new assignment has no effect (assigning a campaign to the parent advertiser billing profile or assigning an advertiser to the account billing profile), no assignment will be returned.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.billingAssignments.insert@.
module Gogol.DFAReporting.BillingAssignments.Insert
  ( -- * Resource
    DFAReportingBillingAssignmentsInsertResource,

    -- ** Constructing a Request
    DFAReportingBillingAssignmentsInsert (..),
    newDFAReportingBillingAssignmentsInsert,
  )
where

import Gogol.DFAReporting.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dfareporting.billingAssignments.insert@ method which the
-- 'DFAReportingBillingAssignmentsInsert' request conforms to.
type DFAReportingBillingAssignmentsInsertResource =
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
    Core.:> Core.ReqBody '[Core.JSON] BillingAssignment
    Core.:> Core.Post '[Core.JSON] BillingAssignment

-- | Inserts a new billing assignment and returns the new assignment. Only one of advertiser/id or campaign/id is support per request. If the new assignment has no effect (assigning a campaign to the parent advertiser billing profile or assigning an advertiser to the account billing profile), no assignment will be returned.
--
-- /See:/ 'newDFAReportingBillingAssignmentsInsert' smart constructor.
data DFAReportingBillingAssignmentsInsert = DFAReportingBillingAssignmentsInsert
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Billing profile ID of this billing assignment.
    billingProfileId :: Core.Int64,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: BillingAssignment,
    -- | User profile ID associated with this request.
    profileId :: Core.Int64,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingBillingAssignmentsInsert' with the minimum fields required to make a request.
newDFAReportingBillingAssignmentsInsert ::
  -- |  Billing profile ID of this billing assignment. See 'billingProfileId'.
  Core.Int64 ->
  -- |  Multipart request metadata. See 'payload'.
  BillingAssignment ->
  -- |  User profile ID associated with this request. See 'profileId'.
  Core.Int64 ->
  DFAReportingBillingAssignmentsInsert
newDFAReportingBillingAssignmentsInsert
  billingProfileId
  payload
  profileId =
    DFAReportingBillingAssignmentsInsert
      { xgafv = Core.Nothing,
        accessToken = Core.Nothing,
        billingProfileId = billingProfileId,
        callback = Core.Nothing,
        payload = payload,
        profileId = profileId,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance Core.GoogleRequest DFAReportingBillingAssignmentsInsert where
  type Rs DFAReportingBillingAssignmentsInsert = BillingAssignment
  type
    Scopes DFAReportingBillingAssignmentsInsert =
      '[Dfatrafficking'FullControl]
  requestClient DFAReportingBillingAssignmentsInsert {..} =
    go
      profileId
      billingProfileId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      dFAReportingService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DFAReportingBillingAssignmentsInsertResource
          )
          Core.mempty
