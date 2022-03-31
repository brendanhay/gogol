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
-- Module      : Gogol.DFAReporting.CreativeAssets.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new creative asset.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.creativeAssets.insert@.
module Gogol.DFAReporting.CreativeAssets.Insert
  ( -- * Resource
    DFAReportingCreativeAssetsInsertResource,

    -- ** Constructing a Request
    newDFAReportingCreativeAssetsInsert,
    DFAReportingCreativeAssetsInsert,
  )
where

import Gogol.DFAReporting.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dfareporting.creativeAssets.insert@ method which the
-- 'DFAReportingCreativeAssetsInsert' request conforms to.
type DFAReportingCreativeAssetsInsertResource =
  "dfareporting"
    Core.:> "v3.5"
    Core.:> "userprofiles"
    Core.:> Core.Capture "profileId" Core.Int64
    Core.:> "creativeAssets"
    Core.:> Core.Capture "advertiserId" Core.Int64
    Core.:> "creativeAssets"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CreativeAssetMetadata
    Core.:> Core.Post '[Core.JSON] CreativeAssetMetadata
    Core.:<|> "upload"
      Core.:> "dfareporting"
      Core.:> "v3.5"
      Core.:> "userprofiles"
      Core.:> Core.Capture "profileId" Core.Int64
      Core.:> "creativeAssets"
      Core.:> Core.Capture "advertiserId" Core.Int64
      Core.:> "creativeAssets"
      Core.:> Core.QueryParam "$.xgafv" Xgafv
      Core.:> Core.QueryParam "access_token" Core.Text
      Core.:> Core.QueryParam "callback" Core.Text
      Core.:> Core.QueryParam "uploadType" Core.Text
      Core.:> Core.QueryParam "upload_protocol" Core.Text
      Core.:> Core.QueryParam "alt" Core.AltJSON
      Core.:> Core.QueryParam "uploadType" Core.Multipart
      Core.:> Core.MultipartRelated
                '[Core.JSON]
                CreativeAssetMetadata
      Core.:> Core.Post
                '[Core.JSON]
                CreativeAssetMetadata

-- | Inserts a new creative asset.
--
-- /See:/ 'newDFAReportingCreativeAssetsInsert' smart constructor.
data DFAReportingCreativeAssetsInsert = DFAReportingCreativeAssetsInsert
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Advertiser ID of this creative. This is a required field.
    advertiserId :: Core.Int64,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: CreativeAssetMetadata,
    -- | User profile ID associated with this request.
    profileId :: Core.Int64,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingCreativeAssetsInsert' with the minimum fields required to make a request.
newDFAReportingCreativeAssetsInsert ::
  -- |  Advertiser ID of this creative. This is a required field. See 'advertiserId'.
  Core.Int64 ->
  -- |  Multipart request metadata. See 'payload'.
  CreativeAssetMetadata ->
  -- |  User profile ID associated with this request. See 'profileId'.
  Core.Int64 ->
  DFAReportingCreativeAssetsInsert
newDFAReportingCreativeAssetsInsert advertiserId payload profileId =
  DFAReportingCreativeAssetsInsert
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      advertiserId = advertiserId,
      callback = Core.Nothing,
      payload = payload,
      profileId = profileId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DFAReportingCreativeAssetsInsert
  where
  type
    Rs DFAReportingCreativeAssetsInsert =
      CreativeAssetMetadata
  type
    Scopes DFAReportingCreativeAssetsInsert =
      '[Dfatrafficking'FullControl]
  requestClient DFAReportingCreativeAssetsInsert {..} =
    go
      profileId
      advertiserId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      dFAReportingService
    where
      go Core.:<|> _ =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DFAReportingCreativeAssetsInsertResource
          )
          Core.mempty

instance
  Core.GoogleRequest
    (Core.MediaUpload DFAReportingCreativeAssetsInsert)
  where
  type
    Rs
      (Core.MediaUpload DFAReportingCreativeAssetsInsert) =
      CreativeAssetMetadata
  type
    Scopes
      (Core.MediaUpload DFAReportingCreativeAssetsInsert) =
      Core.Scopes DFAReportingCreativeAssetsInsert
  requestClient
    ( Core.MediaUpload
        DFAReportingCreativeAssetsInsert {..}
        body
      ) =
      go
        profileId
        advertiserId
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        (Core.Just Core.Multipart)
        payload
        body
        dFAReportingService
      where
        _ Core.:<|> go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy DFAReportingCreativeAssetsInsertResource
            )
            Core.mempty
