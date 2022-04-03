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
-- Module      : Gogol.DFAReporting.AdvertiserLandingPages.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing landing page.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.advertiserLandingPages.update@.
module Gogol.DFAReporting.AdvertiserLandingPages.Update
  ( -- * Resource
    DFAReportingAdvertiserLandingPagesUpdateResource,

    -- ** Constructing a Request
    DFAReportingAdvertiserLandingPagesUpdate (..),
    newDFAReportingAdvertiserLandingPagesUpdate,
  )
where

import Gogol.DFAReporting.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dfareporting.advertiserLandingPages.update@ method which the
-- 'DFAReportingAdvertiserLandingPagesUpdate' request conforms to.
type DFAReportingAdvertiserLandingPagesUpdateResource =
  "dfareporting"
    Core.:> "v3.5"
    Core.:> "userprofiles"
    Core.:> Core.Capture "profileId" Core.Int64
    Core.:> "advertiserLandingPages"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] LandingPage
    Core.:> Core.Put '[Core.JSON] LandingPage

-- | Updates an existing landing page.
--
-- /See:/ 'newDFAReportingAdvertiserLandingPagesUpdate' smart constructor.
data DFAReportingAdvertiserLandingPagesUpdate = DFAReportingAdvertiserLandingPagesUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: LandingPage,
    -- | User profile ID associated with this request.
    profileId :: Core.Int64,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingAdvertiserLandingPagesUpdate' with the minimum fields required to make a request.
newDFAReportingAdvertiserLandingPagesUpdate ::
  -- |  Multipart request metadata. See 'payload'.
  LandingPage ->
  -- |  User profile ID associated with this request. See 'profileId'.
  Core.Int64 ->
  DFAReportingAdvertiserLandingPagesUpdate
newDFAReportingAdvertiserLandingPagesUpdate payload profileId =
  DFAReportingAdvertiserLandingPagesUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      profileId = profileId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DFAReportingAdvertiserLandingPagesUpdate
  where
  type
    Rs DFAReportingAdvertiserLandingPagesUpdate =
      LandingPage
  type
    Scopes DFAReportingAdvertiserLandingPagesUpdate =
      '[Dfatrafficking'FullControl]
  requestClient
    DFAReportingAdvertiserLandingPagesUpdate {..} =
      go
        profileId
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
                  DFAReportingAdvertiserLandingPagesUpdateResource
            )
            Core.mempty
