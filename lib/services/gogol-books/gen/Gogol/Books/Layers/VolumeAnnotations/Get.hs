{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Books.Layers.VolumeAnnotations.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the volume annotation.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.layers.volumeAnnotations.get@.
module Gogol.Books.Layers.VolumeAnnotations.Get
    (
    -- * Resource
      BooksLayersVolumeAnnotationsGetResource

    -- ** Constructing a Request
    , newBooksLayersVolumeAnnotationsGet
    , BooksLayersVolumeAnnotationsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Books.Types

-- | A resource alias for @books.layers.volumeAnnotations.get@ method which the
-- 'BooksLayersVolumeAnnotationsGet' request conforms to.
type BooksLayersVolumeAnnotationsGetResource =
     "books" Core.:>
       "v1" Core.:>
         "volumes" Core.:>
           Core.Capture "volumeId" Core.Text Core.:>
             "layers" Core.:>
               Core.Capture "layerId" Core.Text Core.:>
                 "annotations" Core.:>
                   Core.Capture "annotationId" Core.Text Core.:>
                     Core.QueryParam "$.xgafv" Xgafv Core.:>
                       Core.QueryParam "access_token" Core.Text Core.:>
                         Core.QueryParam "callback" Core.Text Core.:>
                           Core.QueryParam "locale" Core.Text Core.:>
                             Core.QueryParam "source" Core.Text Core.:>
                               Core.QueryParam "uploadType" Core.Text Core.:>
                                 Core.QueryParam "upload_protocol" Core.Text
                                   Core.:>
                                   Core.QueryParam "alt" Core.AltJSON Core.:>
                                     Core.Get '[Core.JSON] Volumeannotation

-- | Gets the volume annotation.
--
-- /See:/ 'newBooksLayersVolumeAnnotationsGet' smart constructor.
data BooksLayersVolumeAnnotationsGet = BooksLayersVolumeAnnotationsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | The ID of the volume annotation to retrieve.
    , annotationId :: Core.Text
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The ID for the layer to get the annotations.
    , layerId :: Core.Text
      -- | The locale information for the data. ISO-639-1 language and ISO-3166-1 country code. Ex: \'en_US\'.
    , locale :: (Core.Maybe Core.Text)
      -- | String to identify the originator of this request.
    , source :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | The volume to retrieve annotations for.
    , volumeId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BooksLayersVolumeAnnotationsGet' with the minimum fields required to make a request.
newBooksLayersVolumeAnnotationsGet 
    ::  Core.Text
       -- ^  The ID of the volume annotation to retrieve. See 'annotationId'.
    -> Core.Text
       -- ^  The ID for the layer to get the annotations. See 'layerId'.
    -> Core.Text
       -- ^  The volume to retrieve annotations for. See 'volumeId'.
    -> BooksLayersVolumeAnnotationsGet
newBooksLayersVolumeAnnotationsGet annotationId layerId volumeId =
  BooksLayersVolumeAnnotationsGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , annotationId = annotationId
    , callback = Core.Nothing
    , layerId = layerId
    , locale = Core.Nothing
    , source = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , volumeId = volumeId
    }

instance Core.GoogleRequest
           BooksLayersVolumeAnnotationsGet
         where
        type Rs BooksLayersVolumeAnnotationsGet =
             Volumeannotation
        type Scopes BooksLayersVolumeAnnotationsGet =
             '["https://www.googleapis.com/auth/books"]
        requestClient BooksLayersVolumeAnnotationsGet{..}
          = go volumeId layerId annotationId xgafv accessToken
              callback
              locale
              source
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              booksService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy BooksLayersVolumeAnnotationsGetResource)
                      Core.mempty

