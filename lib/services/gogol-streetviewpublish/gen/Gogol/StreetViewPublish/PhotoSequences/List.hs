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
-- Module      : Gogol.StreetViewPublish.PhotoSequences.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the PhotoSequences that belong to the user, in descending CreatePhotoSequence timestamp order.
--
-- /See:/ <https://developers.google.com/streetview/publish/ Street View Publish API Reference> for @streetviewpublish.photoSequences.list@.
module Gogol.StreetViewPublish.PhotoSequences.List
  ( -- * Resource
    StreetViewPublishPhotoSequencesListResource,

    -- ** Constructing a Request
    StreetViewPublishPhotoSequencesList (..),
    newStreetViewPublishPhotoSequencesList,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.StreetViewPublish.Types

-- | A resource alias for @streetviewpublish.photoSequences.list@ method which the
-- 'StreetViewPublishPhotoSequencesList' request conforms to.
type StreetViewPublishPhotoSequencesListResource =
  "v1"
    Core.:> "photoSequences"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListPhotoSequencesResponse

-- | Lists all the PhotoSequences that belong to the user, in descending CreatePhotoSequence timestamp order.
--
-- /See:/ 'newStreetViewPublishPhotoSequencesList' smart constructor.
data StreetViewPublishPhotoSequencesList = StreetViewPublishPhotoSequencesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. The filter expression. For example: @imagery_type=SPHERICAL@. The filters supported are: @imagery_type@, @processing_state@, @min_latitude@, @max_latitude@, @min_longitude@, @max_longitude@, @filename_query@, @min_capture_time_seconds@, \`max/capture/time/seconds. See https:\/\/google.aip.dev\/160 for more information. Filename queries should sent as a Phrase in order to support multiple words and special characters by adding escaped quotes. Ex: filename/query=\"example of a phrase.mp4\"
    filter :: (Core.Maybe Core.Text),
    -- | Optional. The maximum number of photo sequences to return. @pageSize@ must be non-negative. If @pageSize@ is zero or is not provided, the default page size of 100 is used. The number of photo sequences returned in the response may be less than @pageSize@ if the number of matches is less than @pageSize@. This is currently unimplemented but is in process.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. The nextPageToken value returned from a previous ListPhotoSequences request, if any.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StreetViewPublishPhotoSequencesList' with the minimum fields required to make a request.
newStreetViewPublishPhotoSequencesList ::
  StreetViewPublishPhotoSequencesList
newStreetViewPublishPhotoSequencesList =
  StreetViewPublishPhotoSequencesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest StreetViewPublishPhotoSequencesList where
  type
    Rs StreetViewPublishPhotoSequencesList =
      ListPhotoSequencesResponse
  type
    Scopes StreetViewPublishPhotoSequencesList =
      '[Streetviewpublish'FullControl]
  requestClient StreetViewPublishPhotoSequencesList {..} =
    go
      xgafv
      accessToken
      callback
      filter
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      streetViewPublishService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy StreetViewPublishPhotoSequencesListResource
          )
          Core.mempty
