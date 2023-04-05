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
-- Module      : Gogol.StreetViewPublish.PhotoSequence.StartUpload
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an upload session to start uploading photo sequence data. The upload URL of the returned UploadRef is used to upload the data for the @photoSequence@. After the upload is complete, the UploadRef is used with CreatePhotoSequence to create the PhotoSequence object entry.
--
-- /See:/ <https://developers.google.com/streetview/publish/ Street View Publish API Reference> for @streetviewpublish.photoSequence.startUpload@.
module Gogol.StreetViewPublish.PhotoSequence.StartUpload
  ( -- * Resource
    StreetViewPublishPhotoSequenceStartUploadResource,

    -- ** Constructing a Request
    StreetViewPublishPhotoSequenceStartUpload (..),
    newStreetViewPublishPhotoSequenceStartUpload,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.StreetViewPublish.Types

-- | A resource alias for @streetviewpublish.photoSequence.startUpload@ method which the
-- 'StreetViewPublishPhotoSequenceStartUpload' request conforms to.
type StreetViewPublishPhotoSequenceStartUploadResource =
  "v1"
    Core.:> "photoSequence:startUpload"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Empty
    Core.:> Core.Post '[Core.JSON] UploadRef

-- | Creates an upload session to start uploading photo sequence data. The upload URL of the returned UploadRef is used to upload the data for the @photoSequence@. After the upload is complete, the UploadRef is used with CreatePhotoSequence to create the PhotoSequence object entry.
--
-- /See:/ 'newStreetViewPublishPhotoSequenceStartUpload' smart constructor.
data StreetViewPublishPhotoSequenceStartUpload = StreetViewPublishPhotoSequenceStartUpload
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: Empty,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StreetViewPublishPhotoSequenceStartUpload' with the minimum fields required to make a request.
newStreetViewPublishPhotoSequenceStartUpload ::
  -- |  Multipart request metadata. See 'payload'.
  Empty ->
  StreetViewPublishPhotoSequenceStartUpload
newStreetViewPublishPhotoSequenceStartUpload payload =
  StreetViewPublishPhotoSequenceStartUpload
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    StreetViewPublishPhotoSequenceStartUpload
  where
  type
    Rs StreetViewPublishPhotoSequenceStartUpload =
      UploadRef
  type
    Scopes StreetViewPublishPhotoSequenceStartUpload =
      '[Streetviewpublish'FullControl]
  requestClient
    StreetViewPublishPhotoSequenceStartUpload {..} =
      go
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        streetViewPublishService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  StreetViewPublishPhotoSequenceStartUploadResource
            )
            Core.mempty
