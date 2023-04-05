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
-- Module      : Gogol.StreetViewPublish.PhotoSequence.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a PhotoSequence and its metadata. This method returns the following error codes: * google.rpc.Code.PERMISSION/DENIED if the requesting user did not create the requested photo sequence. * google.rpc.Code.NOT/FOUND if the photo sequence ID does not exist. * google.rpc.Code.FAILED_PRECONDITION if the photo sequence ID is not yet finished processing.
--
-- /See:/ <https://developers.google.com/streetview/publish/ Street View Publish API Reference> for @streetviewpublish.photoSequence.delete@.
module Gogol.StreetViewPublish.PhotoSequence.Delete
  ( -- * Resource
    StreetViewPublishPhotoSequenceDeleteResource,

    -- ** Constructing a Request
    StreetViewPublishPhotoSequenceDelete (..),
    newStreetViewPublishPhotoSequenceDelete,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.StreetViewPublish.Types

-- | A resource alias for @streetviewpublish.photoSequence.delete@ method which the
-- 'StreetViewPublishPhotoSequenceDelete' request conforms to.
type StreetViewPublishPhotoSequenceDeleteResource =
  "v1"
    Core.:> "photoSequence"
    Core.:> Core.Capture "sequenceId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes a PhotoSequence and its metadata. This method returns the following error codes: * google.rpc.Code.PERMISSION/DENIED if the requesting user did not create the requested photo sequence. * google.rpc.Code.NOT/FOUND if the photo sequence ID does not exist. * google.rpc.Code.FAILED_PRECONDITION if the photo sequence ID is not yet finished processing.
--
-- /See:/ 'newStreetViewPublishPhotoSequenceDelete' smart constructor.
data StreetViewPublishPhotoSequenceDelete = StreetViewPublishPhotoSequenceDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. ID of the PhotoSequence.
    sequenceId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StreetViewPublishPhotoSequenceDelete' with the minimum fields required to make a request.
newStreetViewPublishPhotoSequenceDelete ::
  -- |  Required. ID of the PhotoSequence. See 'sequenceId'.
  Core.Text ->
  StreetViewPublishPhotoSequenceDelete
newStreetViewPublishPhotoSequenceDelete sequenceId =
  StreetViewPublishPhotoSequenceDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      sequenceId = sequenceId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    StreetViewPublishPhotoSequenceDelete
  where
  type Rs StreetViewPublishPhotoSequenceDelete = Empty
  type
    Scopes StreetViewPublishPhotoSequenceDelete =
      '[Streetviewpublish'FullControl]
  requestClient
    StreetViewPublishPhotoSequenceDelete {..} =
      go
        sequenceId
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        streetViewPublishService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  StreetViewPublishPhotoSequenceDeleteResource
            )
            Core.mempty
