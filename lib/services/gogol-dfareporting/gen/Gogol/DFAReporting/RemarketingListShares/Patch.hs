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
-- Module      : Gogol.DFAReporting.RemarketingListShares.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing remarketing list share. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.remarketingListShares.patch@.
module Gogol.DFAReporting.RemarketingListShares.Patch
  ( -- * Resource
    DFAReportingRemarketingListSharesPatchResource,

    -- ** Constructing a Request
    DFAReportingRemarketingListSharesPatch (..),
    newDFAReportingRemarketingListSharesPatch,
  )
where

import Gogol.DFAReporting.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dfareporting.remarketingListShares.patch@ method which the
-- 'DFAReportingRemarketingListSharesPatch' request conforms to.
type DFAReportingRemarketingListSharesPatchResource =
  "dfareporting"
    Core.:> "v3.5"
    Core.:> "userprofiles"
    Core.:> Core.Capture "profileId" Core.Int64
    Core.:> "remarketingListShares"
    Core.:> Core.QueryParam "id" Core.Int64
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] RemarketingListShare
    Core.:> Core.Patch '[Core.JSON] RemarketingListShare

-- | Updates an existing remarketing list share. This method supports patch semantics.
--
-- /See:/ 'newDFAReportingRemarketingListSharesPatch' smart constructor.
data DFAReportingRemarketingListSharesPatch = DFAReportingRemarketingListSharesPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | RemarketingList ID.
    id :: Core.Int64,
    -- | Multipart request metadata.
    payload :: RemarketingListShare,
    -- | User profile ID associated with this request.
    profileId :: Core.Int64,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingRemarketingListSharesPatch' with the minimum fields required to make a request.
newDFAReportingRemarketingListSharesPatch ::
  -- |  RemarketingList ID. See 'id'.
  Core.Int64 ->
  -- |  Multipart request metadata. See 'payload'.
  RemarketingListShare ->
  -- |  User profile ID associated with this request. See 'profileId'.
  Core.Int64 ->
  DFAReportingRemarketingListSharesPatch
newDFAReportingRemarketingListSharesPatch id payload profileId =
  DFAReportingRemarketingListSharesPatch
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
    DFAReportingRemarketingListSharesPatch
  where
  type
    Rs DFAReportingRemarketingListSharesPatch =
      RemarketingListShare
  type
    Scopes DFAReportingRemarketingListSharesPatch =
      '[Dfatrafficking'FullControl]
  requestClient
    DFAReportingRemarketingListSharesPatch {..} =
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
                  DFAReportingRemarketingListSharesPatchResource
            )
            Core.mempty
