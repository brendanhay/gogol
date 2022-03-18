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
-- Module      : Gogol.Books.Layers.AnnotationData.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the annotation data for a volume and layer.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.layers.annotationData.list@.
module Gogol.Books.Layers.AnnotationData.List
  ( -- * Resource
    BooksLayersAnnotationDataListResource,

    -- ** Constructing a Request
    newBooksLayersAnnotationDataList,
    BooksLayersAnnotationDataList,
  )
where

import Gogol.Books.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @books.layers.annotationData.list@ method which the
-- 'BooksLayersAnnotationDataList' request conforms to.
type BooksLayersAnnotationDataListResource =
  "books"
    Core.:> "v1"
    Core.:> "volumes"
    Core.:> Core.Capture "volumeId" Core.Text
    Core.:> "layers"
    Core.:> Core.Capture "layerId" Core.Text
    Core.:> "data"
    Core.:> Core.QueryParam "contentVersion" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParams "annotationDataId" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "h" Core.Int32
    Core.:> Core.QueryParam "locale" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "scale" Core.Int32
    Core.:> Core.QueryParam "source" Core.Text
    Core.:> Core.QueryParam "updatedMax" Core.Text
    Core.:> Core.QueryParam
              "updatedMin"
              Core.Text
    Core.:> Core.QueryParam
              "uploadType"
              Core.Text
    Core.:> Core.QueryParam
              "upload_protocol"
              Core.Text
    Core.:> Core.QueryParam "w" Core.Int32
    Core.:> Core.QueryParam
              "alt"
              Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              Annotationsdata

-- | Gets the annotation data for a volume and layer.
--
-- /See:/ 'newBooksLayersAnnotationDataList' smart constructor.
data BooksLayersAnnotationDataList = BooksLayersAnnotationDataList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | The list of Annotation Data Ids to retrieve. Pagination is ignored if this is set.
    annotationDataId :: (Core.Maybe [Core.Text]),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The content version for the requested volume.
    contentVersion :: Core.Text,
    -- | The requested pixel height for any images. If height is provided width must also be provided.
    h :: (Core.Maybe Core.Int32),
    -- | The ID for the layer to get the annotation data.
    layerId :: Core.Text,
    -- | The locale information for the data. ISO-639-1 language and ISO-3166-1 country code. Ex: \'en_US\'.
    locale :: (Core.Maybe Core.Text),
    -- | Maximum number of results to return
    maxResults :: (Core.Maybe Core.Word32),
    -- | The value of the nextToken from the previous page.
    pageToken :: (Core.Maybe Core.Text),
    -- | The requested scale for the image.
    scale :: (Core.Maybe Core.Int32),
    -- | String to identify the originator of this request.
    source :: (Core.Maybe Core.Text),
    -- | RFC 3339 timestamp to restrict to items updated prior to this timestamp (exclusive).
    updatedMax :: (Core.Maybe Core.Text),
    -- | RFC 3339 timestamp to restrict to items updated since this timestamp (inclusive).
    updatedMin :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The volume to retrieve annotation data for.
    volumeId :: Core.Text,
    -- | The requested pixel width for any images. If width is provided height must also be provided.
    w :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BooksLayersAnnotationDataList' with the minimum fields required to make a request.
newBooksLayersAnnotationDataList ::
  -- |  The content version for the requested volume. See 'contentVersion'.
  Core.Text ->
  -- |  The ID for the layer to get the annotation data. See 'layerId'.
  Core.Text ->
  -- |  The volume to retrieve annotation data for. See 'volumeId'.
  Core.Text ->
  BooksLayersAnnotationDataList
newBooksLayersAnnotationDataList contentVersion layerId volumeId =
  BooksLayersAnnotationDataList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      annotationDataId = Core.Nothing,
      callback = Core.Nothing,
      contentVersion = contentVersion,
      h = Core.Nothing,
      layerId = layerId,
      locale = Core.Nothing,
      maxResults = Core.Nothing,
      pageToken = Core.Nothing,
      scale = Core.Nothing,
      source = Core.Nothing,
      updatedMax = Core.Nothing,
      updatedMin = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      volumeId = volumeId,
      w = Core.Nothing
    }

instance
  Core.GoogleRequest
    BooksLayersAnnotationDataList
  where
  type
    Rs BooksLayersAnnotationDataList =
      Annotationsdata
  type
    Scopes BooksLayersAnnotationDataList =
      '["https://www.googleapis.com/auth/books"]
  requestClient BooksLayersAnnotationDataList {..} =
    go
      volumeId
      layerId
      (Core.Just contentVersion)
      xgafv
      accessToken
      (annotationDataId Core.^. Core._Default)
      callback
      h
      locale
      maxResults
      pageToken
      scale
      source
      updatedMax
      updatedMin
      uploadType
      uploadProtocol
      w
      (Core.Just Core.AltJSON)
      booksService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy BooksLayersAnnotationDataListResource
          )
          Core.mempty
