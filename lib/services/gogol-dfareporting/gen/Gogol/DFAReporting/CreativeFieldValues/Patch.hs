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
-- Module      : Gogol.DFAReporting.CreativeFieldValues.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing creative field value. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.creativeFieldValues.patch@.
module Gogol.DFAReporting.CreativeFieldValues.Patch
  ( -- * Resource
    DFAReportingCreativeFieldValuesPatchResource,

    -- ** Constructing a Request
    DFAReportingCreativeFieldValuesPatch (..),
    newDFAReportingCreativeFieldValuesPatch,
  )
where

import Gogol.DFAReporting.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dfareporting.creativeFieldValues.patch@ method which the
-- 'DFAReportingCreativeFieldValuesPatch' request conforms to.
type DFAReportingCreativeFieldValuesPatchResource =
  "dfareporting"
    Core.:> "v4"
    Core.:> "userprofiles"
    Core.:> Core.Capture "profileId" Core.Int64
    Core.:> "creativeFields"
    Core.:> Core.Capture "creativeFieldId" Core.Int64
    Core.:> "creativeFieldValues"
    Core.:> Core.QueryParam "id" Core.Int64
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CreativeFieldValue
    Core.:> Core.Patch '[Core.JSON] CreativeFieldValue

-- | Updates an existing creative field value. This method supports patch semantics.
--
-- /See:/ 'newDFAReportingCreativeFieldValuesPatch' smart constructor.
data DFAReportingCreativeFieldValuesPatch = DFAReportingCreativeFieldValuesPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | CreativeField ID.
    creativeFieldId :: Core.Int64,
    -- | CreativeFieldValue ID.
    id :: Core.Int64,
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

-- | Creates a value of 'DFAReportingCreativeFieldValuesPatch' with the minimum fields required to make a request.
newDFAReportingCreativeFieldValuesPatch ::
  -- |  CreativeField ID. See 'creativeFieldId'.
  Core.Int64 ->
  -- |  CreativeFieldValue ID. See 'id'.
  Core.Int64 ->
  -- |  Multipart request metadata. See 'payload'.
  CreativeFieldValue ->
  -- |  User profile ID associated with this request. See 'profileId'.
  Core.Int64 ->
  DFAReportingCreativeFieldValuesPatch
newDFAReportingCreativeFieldValuesPatch
  creativeFieldId
  id
  payload
  profileId =
    DFAReportingCreativeFieldValuesPatch
      { xgafv = Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        creativeFieldId = creativeFieldId,
        id = id,
        payload = payload,
        profileId = profileId,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance Core.GoogleRequest DFAReportingCreativeFieldValuesPatch where
  type Rs DFAReportingCreativeFieldValuesPatch = CreativeFieldValue
  type
    Scopes DFAReportingCreativeFieldValuesPatch =
      '[Dfatrafficking'FullControl]
  requestClient DFAReportingCreativeFieldValuesPatch {..} =
    go
      profileId
      creativeFieldId
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
              Core.Proxy DFAReportingCreativeFieldValuesPatchResource
          )
          Core.mempty
