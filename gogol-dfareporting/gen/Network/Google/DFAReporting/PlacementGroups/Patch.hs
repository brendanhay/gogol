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
-- Module      : Network.Google.DFAReporting.PlacementGroups.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing placement group. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.placementGroups.patch@.
module Network.Google.DFAReporting.PlacementGroups.Patch
  ( -- * Resource
    DFAReportingPlacementGroupsPatchResource,

    -- ** Constructing a Request
    newDFAReportingPlacementGroupsPatch,
    DFAReportingPlacementGroupsPatch,
  )
where

import Network.Google.DFAReporting.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @dfareporting.placementGroups.patch@ method which the
-- 'DFAReportingPlacementGroupsPatch' request conforms to.
type DFAReportingPlacementGroupsPatchResource =
  "dfareporting"
    Core.:> "v3.5"
    Core.:> "userprofiles"
    Core.:> Core.Capture "profileId" Core.Int64
    Core.:> "placementGroups"
    Core.:> Core.QueryParam "id" Core.Int64
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] PlacementGroup
    Core.:> Core.Patch '[Core.JSON] PlacementGroup

-- | Updates an existing placement group. This method supports patch semantics.
--
-- /See:/ 'newDFAReportingPlacementGroupsPatch' smart constructor.
data DFAReportingPlacementGroupsPatch = DFAReportingPlacementGroupsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | PlacementGroup ID.
    id :: Core.Int64,
    -- | Multipart request metadata.
    payload :: PlacementGroup,
    -- | User profile ID associated with this request.
    profileId :: Core.Int64,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingPlacementGroupsPatch' with the minimum fields required to make a request.
newDFAReportingPlacementGroupsPatch ::
  -- |  PlacementGroup ID. See 'id'.
  Core.Int64 ->
  -- |  Multipart request metadata. See 'payload'.
  PlacementGroup ->
  -- |  User profile ID associated with this request. See 'profileId'.
  Core.Int64 ->
  DFAReportingPlacementGroupsPatch
newDFAReportingPlacementGroupsPatch id payload profileId =
  DFAReportingPlacementGroupsPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      id = id,
      payload = payload,
      profileId = profileId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DFAReportingPlacementGroupsPatch
  where
  type
    Rs DFAReportingPlacementGroupsPatch =
      PlacementGroup
  type
    Scopes DFAReportingPlacementGroupsPatch =
      '["https://www.googleapis.com/auth/dfatrafficking"]
  requestClient DFAReportingPlacementGroupsPatch {..} =
    go
      profileId
      (Core.Just id)
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
              Core.Proxy DFAReportingPlacementGroupsPatchResource
          )
          Core.mempty
