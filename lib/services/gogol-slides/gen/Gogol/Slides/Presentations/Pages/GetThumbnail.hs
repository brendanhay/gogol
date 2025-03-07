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
-- Module      : Gogol.Slides.Presentations.Pages.GetThumbnail
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates a thumbnail of the latest version of the specified page in the presentation and returns a URL to the thumbnail image. This request counts as an </slides/limits expensive read request> for quota purposes.
--
-- /See:/ <https://developers.google.com/slides/ Google Slides API Reference> for @slides.presentations.pages.getThumbnail@.
module Gogol.Slides.Presentations.Pages.GetThumbnail
  ( -- * Resource
    SlidesPresentationsPagesGetThumbnailResource,

    -- ** Constructing a Request
    SlidesPresentationsPagesGetThumbnail (..),
    newSlidesPresentationsPagesGetThumbnail,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Slides.Types

-- | A resource alias for @slides.presentations.pages.getThumbnail@ method which the
-- 'SlidesPresentationsPagesGetThumbnail' request conforms to.
type SlidesPresentationsPagesGetThumbnailResource =
  "v1"
    Core.:> "presentations"
    Core.:> Core.Capture "presentationId" Core.Text
    Core.:> "pages"
    Core.:> Core.Capture "pageObjectId" Core.Text
    Core.:> "thumbnail"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam
              "thumbnailProperties.mimeType"
              PresentationsPagesGetThumbnailThumbnailPropertiesMimeType
    Core.:> Core.QueryParam
              "thumbnailProperties.thumbnailSize"
              PresentationsPagesGetThumbnailThumbnailPropertiesThumbnailSize
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Thumbnail

-- | Generates a thumbnail of the latest version of the specified page in the presentation and returns a URL to the thumbnail image. This request counts as an </slides/limits expensive read request> for quota purposes.
--
-- /See:/ 'newSlidesPresentationsPagesGetThumbnail' smart constructor.
data SlidesPresentationsPagesGetThumbnail = SlidesPresentationsPagesGetThumbnail
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The object ID of the page whose thumbnail to retrieve.
    pageObjectId :: Core.Text,
    -- | The ID of the presentation to retrieve.
    presentationId :: Core.Text,
    -- | The optional mime type of the thumbnail image. If you don\'t specify the mime type, the mime type defaults to PNG.
    thumbnailPropertiesMimeType ::
      ( Core.Maybe
          PresentationsPagesGetThumbnailThumbnailPropertiesMimeType
      ),
    -- | The optional thumbnail image size. If you don\'t specify the size, the server chooses a default size of the image.
    thumbnailPropertiesThumbnailSize ::
      ( Core.Maybe
          PresentationsPagesGetThumbnailThumbnailPropertiesThumbnailSize
      ),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SlidesPresentationsPagesGetThumbnail' with the minimum fields required to make a request.
newSlidesPresentationsPagesGetThumbnail ::
  -- |  The object ID of the page whose thumbnail to retrieve. See 'pageObjectId'.
  Core.Text ->
  -- |  The ID of the presentation to retrieve. See 'presentationId'.
  Core.Text ->
  SlidesPresentationsPagesGetThumbnail
newSlidesPresentationsPagesGetThumbnail pageObjectId presentationId =
  SlidesPresentationsPagesGetThumbnail
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageObjectId = pageObjectId,
      presentationId = presentationId,
      thumbnailPropertiesMimeType = Core.Nothing,
      thumbnailPropertiesThumbnailSize = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest SlidesPresentationsPagesGetThumbnail where
  type Rs SlidesPresentationsPagesGetThumbnail = Thumbnail
  type
    Scopes SlidesPresentationsPagesGetThumbnail =
      '[ Drive'FullControl,
         Drive'File,
         Drive'Readonly,
         Presentations'FullControl,
         Presentations'Readonly
       ]
  requestClient SlidesPresentationsPagesGetThumbnail {..} =
    go
      presentationId
      pageObjectId
      xgafv
      accessToken
      callback
      thumbnailPropertiesMimeType
      thumbnailPropertiesThumbnailSize
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      slidesService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy SlidesPresentationsPagesGetThumbnailResource
          )
          Core.mempty
