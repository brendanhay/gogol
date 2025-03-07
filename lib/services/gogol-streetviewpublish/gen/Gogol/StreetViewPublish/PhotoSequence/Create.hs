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
-- Module      : Gogol.StreetViewPublish.PhotoSequence.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- After the client finishes uploading the PhotoSequence with the returned UploadRef, CreatePhotoSequence extracts a sequence of 360 photos from a video or Extensible Device Metadata (XDM, http:\/\/www.xdm.org\/) to be published to Street View on Google Maps. @CreatePhotoSequence@ returns an Operation, with the PhotoSequence Id set in the @Operation.name@ field. This method returns the following error codes: * google.rpc.Code.INVALID/ARGUMENT if the request is malformed. * google.rpc.Code.NOT/FOUND if the upload reference does not exist.
--
-- /See:/ <https://developers.google.com/streetview/publish/ Street View Publish API Reference> for @streetviewpublish.photoSequence.create@.
module Gogol.StreetViewPublish.PhotoSequence.Create
  ( -- * Resource
    StreetViewPublishPhotoSequenceCreateResource,

    -- ** Constructing a Request
    StreetViewPublishPhotoSequenceCreate (..),
    newStreetViewPublishPhotoSequenceCreate,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.StreetViewPublish.Types

-- | A resource alias for @streetviewpublish.photoSequence.create@ method which the
-- 'StreetViewPublishPhotoSequenceCreate' request conforms to.
type StreetViewPublishPhotoSequenceCreateResource =
  "v1"
    Core.:> "photoSequence"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "inputType" PhotoSequenceCreateInputType
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] PhotoSequence
    Core.:> Core.Post '[Core.JSON] Operation

-- | After the client finishes uploading the PhotoSequence with the returned UploadRef, CreatePhotoSequence extracts a sequence of 360 photos from a video or Extensible Device Metadata (XDM, http:\/\/www.xdm.org\/) to be published to Street View on Google Maps. @CreatePhotoSequence@ returns an Operation, with the PhotoSequence Id set in the @Operation.name@ field. This method returns the following error codes: * google.rpc.Code.INVALID/ARGUMENT if the request is malformed. * google.rpc.Code.NOT/FOUND if the upload reference does not exist.
--
-- /See:/ 'newStreetViewPublishPhotoSequenceCreate' smart constructor.
data StreetViewPublishPhotoSequenceCreate = StreetViewPublishPhotoSequenceCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The input form of PhotoSequence.
    inputType :: (Core.Maybe PhotoSequenceCreateInputType),
    -- | Multipart request metadata.
    payload :: PhotoSequence,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StreetViewPublishPhotoSequenceCreate' with the minimum fields required to make a request.
newStreetViewPublishPhotoSequenceCreate ::
  -- |  Multipart request metadata. See 'payload'.
  PhotoSequence ->
  StreetViewPublishPhotoSequenceCreate
newStreetViewPublishPhotoSequenceCreate payload =
  StreetViewPublishPhotoSequenceCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      inputType = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest StreetViewPublishPhotoSequenceCreate where
  type Rs StreetViewPublishPhotoSequenceCreate = Operation
  type
    Scopes StreetViewPublishPhotoSequenceCreate =
      '[Streetviewpublish'FullControl]
  requestClient StreetViewPublishPhotoSequenceCreate {..} =
    go
      xgafv
      accessToken
      callback
      inputType
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      streetViewPublishService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy StreetViewPublishPhotoSequenceCreateResource
          )
          Core.mempty
