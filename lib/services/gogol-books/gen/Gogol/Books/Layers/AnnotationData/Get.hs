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
-- Module      : Gogol.Books.Layers.AnnotationData.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the annotation data.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.layers.annotationData.get@.
module Gogol.Books.Layers.AnnotationData.Get
  ( -- * Resource
    BooksLayersAnnotationDataGetResource,

    -- ** Constructing a Request
    BooksLayersAnnotationDataGet (..),
    newBooksLayersAnnotationDataGet,
  )
where

import Gogol.Books.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @books.layers.annotationData.get@ method which the
-- 'BooksLayersAnnotationDataGet' request conforms to.
type BooksLayersAnnotationDataGetResource =
  "books"
    Core.:> "v1"
    Core.:> "volumes"
    Core.:> Core.Capture "volumeId" Core.Text
    Core.:> "layers"
    Core.:> Core.Capture "layerId" Core.Text
    Core.:> "data"
    Core.:> Core.Capture "annotationDataId" Core.Text
    Core.:> Core.QueryParam "contentVersion" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "allowWebDefinitions" Core.Bool
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "h" Core.Int32
    Core.:> Core.QueryParam "locale" Core.Text
    Core.:> Core.QueryParam "scale" Core.Int32
    Core.:> Core.QueryParam "source" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "w" Core.Int32
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] DictionaryAnnotationdata

-- | Gets the annotation data.
--
-- /See:/ 'newBooksLayersAnnotationDataGet' smart constructor.
data BooksLayersAnnotationDataGet = BooksLayersAnnotationDataGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | For the dictionary layer. Whether or not to allow web definitions.
    allowWebDefinitions :: (Core.Maybe Core.Bool),
    -- | The ID of the annotation data to retrieve.
    annotationDataId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The content version for the volume you are trying to retrieve.
    contentVersion :: Core.Text,
    -- | The requested pixel height for any images. If height is provided width must also be provided.
    h :: (Core.Maybe Core.Int32),
    -- | The ID for the layer to get the annotations.
    layerId :: Core.Text,
    -- | The locale information for the data. ISO-639-1 language and ISO-3166-1 country code. Ex: \'en_US\'.
    locale :: (Core.Maybe Core.Text),
    -- | The requested scale for the image.
    scale :: (Core.Maybe Core.Int32),
    -- | String to identify the originator of this request.
    source :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The volume to retrieve annotations for.
    volumeId :: Core.Text,
    -- | The requested pixel width for any images. If width is provided height must also be provided.
    w :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BooksLayersAnnotationDataGet' with the minimum fields required to make a request.
newBooksLayersAnnotationDataGet ::
  -- |  The ID of the annotation data to retrieve. See 'annotationDataId'.
  Core.Text ->
  -- |  The content version for the volume you are trying to retrieve. See 'contentVersion'.
  Core.Text ->
  -- |  The ID for the layer to get the annotations. See 'layerId'.
  Core.Text ->
  -- |  The volume to retrieve annotations for. See 'volumeId'.
  Core.Text ->
  BooksLayersAnnotationDataGet
newBooksLayersAnnotationDataGet
  annotationDataId
  contentVersion
  layerId
  volumeId =
    BooksLayersAnnotationDataGet
      { xgafv = Core.Nothing,
        accessToken = Core.Nothing,
        allowWebDefinitions = Core.Nothing,
        annotationDataId = annotationDataId,
        callback = Core.Nothing,
        contentVersion = contentVersion,
        h = Core.Nothing,
        layerId = layerId,
        locale = Core.Nothing,
        scale = Core.Nothing,
        source = Core.Nothing,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing,
        volumeId = volumeId,
        w = Core.Nothing
      }

instance Core.GoogleRequest BooksLayersAnnotationDataGet where
  type Rs BooksLayersAnnotationDataGet = DictionaryAnnotationdata
  type Scopes BooksLayersAnnotationDataGet = '[Books'FullControl]
  requestClient BooksLayersAnnotationDataGet {..} =
    go
      volumeId
      layerId
      annotationDataId
      (Core.Just contentVersion)
      xgafv
      accessToken
      allowWebDefinitions
      callback
      h
      locale
      scale
      source
      uploadType
      uploadProtocol
      w
      (Core.Just Core.AltJSON)
      booksService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy BooksLayersAnnotationDataGetResource)
          Core.mempty
