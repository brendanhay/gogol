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
-- Module      : Gogol.DFAReporting.CampaignCreativeAssociations.Insert
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Associates a creative with the specified campaign. This method creates a default ad with dimensions matching the creative in the campaign if such a default ad does not exist already.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.campaignCreativeAssociations.insert@.
module Gogol.DFAReporting.CampaignCreativeAssociations.Insert
  ( -- * Resource
    DFAReportingCampaignCreativeAssociationsInsertResource,

    -- ** Constructing a Request
    DFAReportingCampaignCreativeAssociationsInsert (..),
    newDFAReportingCampaignCreativeAssociationsInsert,
  )
where

import Gogol.DFAReporting.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dfareporting.campaignCreativeAssociations.insert@ method which the
-- 'DFAReportingCampaignCreativeAssociationsInsert' request conforms to.
type DFAReportingCampaignCreativeAssociationsInsertResource =
  "dfareporting"
    Core.:> "v4"
    Core.:> "userprofiles"
    Core.:> Core.Capture "profileId" Core.Int64
    Core.:> "campaigns"
    Core.:> Core.Capture "campaignId" Core.Int64
    Core.:> "campaignCreativeAssociations"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CampaignCreativeAssociation
    Core.:> Core.Post '[Core.JSON] CampaignCreativeAssociation

-- | Associates a creative with the specified campaign. This method creates a default ad with dimensions matching the creative in the campaign if such a default ad does not exist already.
--
-- /See:/ 'newDFAReportingCampaignCreativeAssociationsInsert' smart constructor.
data DFAReportingCampaignCreativeAssociationsInsert = DFAReportingCampaignCreativeAssociationsInsert
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Campaign ID in this association.
    campaignId :: Core.Int64,
    -- | Multipart request metadata.
    payload :: CampaignCreativeAssociation,
    -- | User profile ID associated with this request.
    profileId :: Core.Int64,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingCampaignCreativeAssociationsInsert' with the minimum fields required to make a request.
newDFAReportingCampaignCreativeAssociationsInsert ::
  -- |  Campaign ID in this association. See 'campaignId'.
  Core.Int64 ->
  -- |  Multipart request metadata. See 'payload'.
  CampaignCreativeAssociation ->
  -- |  User profile ID associated with this request. See 'profileId'.
  Core.Int64 ->
  DFAReportingCampaignCreativeAssociationsInsert
newDFAReportingCampaignCreativeAssociationsInsert
  campaignId
  payload
  profileId =
    DFAReportingCampaignCreativeAssociationsInsert
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        campaignId = campaignId,
        payload = payload,
        profileId = profileId,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    DFAReportingCampaignCreativeAssociationsInsert
  where
  type
    Rs DFAReportingCampaignCreativeAssociationsInsert =
      CampaignCreativeAssociation
  type
    Scopes DFAReportingCampaignCreativeAssociationsInsert =
      '[Dfatrafficking'FullControl]
  requestClient DFAReportingCampaignCreativeAssociationsInsert {..} =
    go
      profileId
      campaignId
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
              Core.Proxy DFAReportingCampaignCreativeAssociationsInsertResource
          )
          Core.mempty
