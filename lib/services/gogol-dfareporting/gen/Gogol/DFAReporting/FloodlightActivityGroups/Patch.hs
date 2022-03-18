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
-- Module      : Gogol.DFAReporting.FloodlightActivityGroups.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing floodlight activity group. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.floodlightActivityGroups.patch@.
module Gogol.DFAReporting.FloodlightActivityGroups.Patch
  ( -- * Resource
    DFAReportingFloodlightActivityGroupsPatchResource,

    -- ** Constructing a Request
    newDFAReportingFloodlightActivityGroupsPatch,
    DFAReportingFloodlightActivityGroupsPatch,
  )
where

import Gogol.DFAReporting.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dfareporting.floodlightActivityGroups.patch@ method which the
-- 'DFAReportingFloodlightActivityGroupsPatch' request conforms to.
type DFAReportingFloodlightActivityGroupsPatchResource =
  "dfareporting"
    Core.:> "v3.5"
    Core.:> "userprofiles"
    Core.:> Core.Capture "profileId" Core.Int64
    Core.:> "floodlightActivityGroups"
    Core.:> Core.QueryParam "id" Core.Int64
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] FloodlightActivityGroup
    Core.:> Core.Patch '[Core.JSON] FloodlightActivityGroup

-- | Updates an existing floodlight activity group. This method supports patch semantics.
--
-- /See:/ 'newDFAReportingFloodlightActivityGroupsPatch' smart constructor.
data DFAReportingFloodlightActivityGroupsPatch = DFAReportingFloodlightActivityGroupsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | FloodlightActivityGroup ID.
    id :: Core.Int64,
    -- | Multipart request metadata.
    payload :: FloodlightActivityGroup,
    -- | User profile ID associated with this request.
    profileId :: Core.Int64,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingFloodlightActivityGroupsPatch' with the minimum fields required to make a request.
newDFAReportingFloodlightActivityGroupsPatch ::
  -- |  FloodlightActivityGroup ID. See 'id'.
  Core.Int64 ->
  -- |  Multipart request metadata. See 'payload'.
  FloodlightActivityGroup ->
  -- |  User profile ID associated with this request. See 'profileId'.
  Core.Int64 ->
  DFAReportingFloodlightActivityGroupsPatch
newDFAReportingFloodlightActivityGroupsPatch id payload profileId =
  DFAReportingFloodlightActivityGroupsPatch
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
    DFAReportingFloodlightActivityGroupsPatch
  where
  type
    Rs DFAReportingFloodlightActivityGroupsPatch =
      FloodlightActivityGroup
  type
    Scopes DFAReportingFloodlightActivityGroupsPatch =
      '["https://www.googleapis.com/auth/dfatrafficking"]
  requestClient
    DFAReportingFloodlightActivityGroupsPatch {..} =
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
                Core.Proxy
                  DFAReportingFloodlightActivityGroupsPatchResource
            )
            Core.mempty
