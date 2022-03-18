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
-- Module      : Network.Google.CloudSearch.Media.Upload
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Uploads media for indexing. The upload endpoint supports direct and resumable upload protocols and is intended for large items that can not be <https://developers.google.com/cloud-search/docs/reference/rest/v1/indexing.datasources.items#itemcontent inlined during index requests>. To index large content: 1. Call indexing.datasources.items.upload with the item name to begin an upload session and retrieve the UploadItemRef. 1. Call media.upload to upload the content, as a streaming request, using the same resource name from the UploadItemRef from step 1. 1. Call indexing.datasources.items.index to index the item. Populate the </cloud-search/docs/reference/rest/v1/indexing.datasources.items#ItemContent ItemContent> with the UploadItemRef from step 1. For additional information, see <https://developers.google.com/cloud-search/docs/guides/content-connector#rest Create a content connector using the REST API>. __Note:__ This API requires a service account to execute.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.media.upload@.
module Network.Google.CloudSearch.Media.Upload
  ( -- * Resource
    CloudSearchMediaUploadResource,

    -- ** Constructing a Request
    newCloudSearchMediaUpload,
    CloudSearchMediaUpload,
  )
where

import Network.Google.CloudSearch.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @cloudsearch.media.upload@ method which the
-- 'CloudSearchMediaUpload' request conforms to.
type CloudSearchMediaUploadResource =
  "v1"
    Core.:> "media"
    Core.:> Core.Capture "resourceName" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Media
    Core.:> Core.Post '[Core.JSON] Media
    Core.:<|> "upload"
      Core.:> "v1"
      Core.:> "media"
      Core.:> Core.Capture "resourceName" Core.Text
      Core.:> Core.QueryParam "$.xgafv" Xgafv
      Core.:> Core.QueryParam "access_token" Core.Text
      Core.:> Core.QueryParam "callback" Core.Text
      Core.:> Core.QueryParam "uploadType" Core.Text
      Core.:> Core.QueryParam "upload_protocol" Core.Text
      Core.:> Core.QueryParam "alt" Core.AltJSON
      Core.:> Core.QueryParam "uploadType" Core.Multipart
      Core.:> Core.MultipartRelated '[Core.JSON] Media
      Core.:> Core.Post '[Core.JSON] Media

-- | Uploads media for indexing. The upload endpoint supports direct and resumable upload protocols and is intended for large items that can not be <https://developers.google.com/cloud-search/docs/reference/rest/v1/indexing.datasources.items#itemcontent inlined during index requests>. To index large content: 1. Call indexing.datasources.items.upload with the item name to begin an upload session and retrieve the UploadItemRef. 1. Call media.upload to upload the content, as a streaming request, using the same resource name from the UploadItemRef from step 1. 1. Call indexing.datasources.items.index to index the item. Populate the </cloud-search/docs/reference/rest/v1/indexing.datasources.items#ItemContent ItemContent> with the UploadItemRef from step 1. For additional information, see <https://developers.google.com/cloud-search/docs/guides/content-connector#rest Create a content connector using the REST API>. __Note:__ This API requires a service account to execute.
--
-- /See:/ 'newCloudSearchMediaUpload' smart constructor.
data CloudSearchMediaUpload = CloudSearchMediaUpload
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: Media,
    -- | Name of the media that is being downloaded. See ReadRequest.resource_name.
    resourceName :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudSearchMediaUpload' with the minimum fields required to make a request.
newCloudSearchMediaUpload ::
  -- |  Multipart request metadata. See 'payload'.
  Media ->
  -- |  Name of the media that is being downloaded. See ReadRequest.resource_name. See 'resourceName'.
  Core.Text ->
  CloudSearchMediaUpload
newCloudSearchMediaUpload payload resourceName =
  CloudSearchMediaUpload
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      resourceName = resourceName,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest CloudSearchMediaUpload where
  type Rs CloudSearchMediaUpload = Media
  type
    Scopes CloudSearchMediaUpload =
      '[ "https://www.googleapis.com/auth/cloud_search",
         "https://www.googleapis.com/auth/cloud_search.indexing"
       ]
  requestClient CloudSearchMediaUpload {..} =
    go
      resourceName
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      cloudSearchService
    where
      go Core.:<|> _ =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudSearchMediaUploadResource
          )
          Core.mempty

instance
  Core.GoogleRequest
    (Core.MediaUpload CloudSearchMediaUpload)
  where
  type
    Rs (Core.MediaUpload CloudSearchMediaUpload) =
      Media
  type
    Scopes (Core.MediaUpload CloudSearchMediaUpload) =
      Core.Scopes CloudSearchMediaUpload
  requestClient
    (Core.MediaUpload CloudSearchMediaUpload {..} body) =
      go
        resourceName
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        (Core.Just Core.Multipart)
        payload
        body
        cloudSearchService
      where
        _ Core.:<|> go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy CloudSearchMediaUploadResource
            )
            Core.mempty
