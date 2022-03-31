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
-- Module      : Gogol.Books.Layers.VolumeAnnotations.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the volume annotations for a volume and layer.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.layers.volumeAnnotations.list@.
module Gogol.Books.Layers.VolumeAnnotations.List
  ( -- * Resource
    BooksLayersVolumeAnnotationsListResource,

    -- ** Constructing a Request
    newBooksLayersVolumeAnnotationsList,
    BooksLayersVolumeAnnotationsList,
  )
where

import Gogol.Books.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @books.layers.volumeAnnotations.list@ method which the
-- 'BooksLayersVolumeAnnotationsList' request conforms to.
type BooksLayersVolumeAnnotationsListResource =
  "books"
    Core.:> "v1"
    Core.:> "volumes"
    Core.:> Core.Capture "volumeId" Core.Text
    Core.:> "layers"
    Core.:> Core.Capture "layerId" Core.Text
    Core.:> Core.QueryParam "contentVersion" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "endOffset" Core.Text
    Core.:> Core.QueryParam "endPosition" Core.Text
    Core.:> Core.QueryParam "locale" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "showDeleted" Core.Bool
    Core.:> Core.QueryParam "source" Core.Text
    Core.:> Core.QueryParam "startOffset" Core.Text
    Core.:> Core.QueryParam
              "startPosition"
              Core.Text
    Core.:> Core.QueryParam
              "updatedMax"
              Core.Text
    Core.:> Core.QueryParam
              "updatedMin"
              Core.Text
    Core.:> Core.QueryParam
              "uploadType"
              Core.Text
    Core.:> Core.QueryParam
              "upload_protocol"
              Core.Text
    Core.:> Core.QueryParam
              "volumeAnnotationsVersion"
              Core.Text
    Core.:> Core.QueryParam
              "alt"
              Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              Volumeannotations

-- | Gets the volume annotations for a volume and layer.
--
-- /See:/ 'newBooksLayersVolumeAnnotationsList' smart constructor.
data BooksLayersVolumeAnnotationsList = BooksLayersVolumeAnnotationsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The content version for the requested volume.
    contentVersion :: Core.Text,
    -- | The end offset to end retrieving data from.
    endOffset :: (Core.Maybe Core.Text),
    -- | The end position to end retrieving data from.
    endPosition :: (Core.Maybe Core.Text),
    -- | The ID for the layer to get the annotations.
    layerId :: Core.Text,
    -- | The locale information for the data. ISO-639-1 language and ISO-3166-1 country code. Ex: \'en_US\'.
    locale :: (Core.Maybe Core.Text),
    -- | Maximum number of results to return
    maxResults :: (Core.Maybe Core.Word32),
    -- | The value of the nextToken from the previous page.
    pageToken :: (Core.Maybe Core.Text),
    -- | Set to true to return deleted annotations. updatedMin must be in the request to use this. Defaults to false.
    showDeleted :: (Core.Maybe Core.Bool),
    -- | String to identify the originator of this request.
    source :: (Core.Maybe Core.Text),
    -- | The start offset to start retrieving data from.
    startOffset :: (Core.Maybe Core.Text),
    -- | The start position to start retrieving data from.
    startPosition :: (Core.Maybe Core.Text),
    -- | RFC 3339 timestamp to restrict to items updated prior to this timestamp (exclusive).
    updatedMax :: (Core.Maybe Core.Text),
    -- | RFC 3339 timestamp to restrict to items updated since this timestamp (inclusive).
    updatedMin :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The version of the volume annotations that you are requesting.
    volumeAnnotationsVersion :: (Core.Maybe Core.Text),
    -- | The volume to retrieve annotations for.
    volumeId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BooksLayersVolumeAnnotationsList' with the minimum fields required to make a request.
newBooksLayersVolumeAnnotationsList ::
  -- |  The content version for the requested volume. See 'contentVersion'.
  Core.Text ->
  -- |  The ID for the layer to get the annotations. See 'layerId'.
  Core.Text ->
  -- |  The volume to retrieve annotations for. See 'volumeId'.
  Core.Text ->
  BooksLayersVolumeAnnotationsList
newBooksLayersVolumeAnnotationsList contentVersion layerId volumeId =
  BooksLayersVolumeAnnotationsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      contentVersion = contentVersion,
      endOffset = Core.Nothing,
      endPosition = Core.Nothing,
      layerId = layerId,
      locale = Core.Nothing,
      maxResults = Core.Nothing,
      pageToken = Core.Nothing,
      showDeleted = Core.Nothing,
      source = Core.Nothing,
      startOffset = Core.Nothing,
      startPosition = Core.Nothing,
      updatedMax = Core.Nothing,
      updatedMin = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      volumeAnnotationsVersion = Core.Nothing,
      volumeId = volumeId
    }

instance
  Core.GoogleRequest
    BooksLayersVolumeAnnotationsList
  where
  type
    Rs BooksLayersVolumeAnnotationsList =
      Volumeannotations
  type
    Scopes BooksLayersVolumeAnnotationsList =
      '[Books'FullControl]
  requestClient BooksLayersVolumeAnnotationsList {..} =
    go
      volumeId
      layerId
      (Core.Just contentVersion)
      xgafv
      accessToken
      callback
      endOffset
      endPosition
      locale
      maxResults
      pageToken
      showDeleted
      source
      startOffset
      startPosition
      updatedMax
      updatedMin
      uploadType
      uploadProtocol
      volumeAnnotationsVersion
      (Core.Just Core.AltJSON)
      booksService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy BooksLayersVolumeAnnotationsListResource
          )
          Core.mempty
