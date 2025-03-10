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
-- Module      : Gogol.DFAReporting.CreativeFieldValues.Update
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing creative field value.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.creativeFieldValues.update@.
module Gogol.DFAReporting.CreativeFieldValues.Update
  ( -- * Resource
    DFAReportingCreativeFieldValuesUpdateResource,

    -- ** Constructing a Request
    DFAReportingCreativeFieldValuesUpdate (..),
    newDFAReportingCreativeFieldValuesUpdate,
  )
where

import Gogol.DFAReporting.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dfareporting.creativeFieldValues.update@ method which the
-- 'DFAReportingCreativeFieldValuesUpdate' request conforms to.
type DFAReportingCreativeFieldValuesUpdateResource =
  "dfareporting"
    Core.:> "v4"
    Core.:> "userprofiles"
    Core.:> Core.Capture "profileId" Core.Int64
    Core.:> "creativeFields"
    Core.:> Core.Capture "creativeFieldId" Core.Int64
    Core.:> "creativeFieldValues"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CreativeFieldValue
    Core.:> Core.Put '[Core.JSON] CreativeFieldValue

-- | Updates an existing creative field value.
--
-- /See:/ 'newDFAReportingCreativeFieldValuesUpdate' smart constructor.
data DFAReportingCreativeFieldValuesUpdate = DFAReportingCreativeFieldValuesUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Creative field ID for this creative field value.
    creativeFieldId :: Core.Int64,
    -- | Multipart request metadata.
    payload :: CreativeFieldValue,
    -- | User profile ID associated with this request.
    profileId :: Core.Int64,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingCreativeFieldValuesUpdate' with the minimum fields required to make a request.
newDFAReportingCreativeFieldValuesUpdate ::
  -- |  Creative field ID for this creative field value. See 'creativeFieldId'.
  Core.Int64 ->
  -- |  Multipart request metadata. See 'payload'.
  CreativeFieldValue ->
  -- |  User profile ID associated with this request. See 'profileId'.
  Core.Int64 ->
  DFAReportingCreativeFieldValuesUpdate
newDFAReportingCreativeFieldValuesUpdate
  creativeFieldId
  payload
  profileId =
    DFAReportingCreativeFieldValuesUpdate
      { xgafv = Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        creativeFieldId = creativeFieldId,
        payload = payload,
        profileId = profileId,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance Core.GoogleRequest DFAReportingCreativeFieldValuesUpdate where
  type Rs DFAReportingCreativeFieldValuesUpdate = CreativeFieldValue
  type
    Scopes DFAReportingCreativeFieldValuesUpdate =
      '[Dfatrafficking'FullControl]
  requestClient DFAReportingCreativeFieldValuesUpdate {..} =
    go
      profileId
      creativeFieldId
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
              Core.Proxy DFAReportingCreativeFieldValuesUpdateResource
          )
          Core.mempty
