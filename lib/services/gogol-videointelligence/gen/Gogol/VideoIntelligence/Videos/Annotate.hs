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
-- Module      : Gogol.VideoIntelligence.Videos.Annotate
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Performs asynchronous video annotation. Progress and results can be retrieved through the @google.longrunning.Operations@ interface. @Operation.metadata@ contains @AnnotateVideoProgress@ (progress). @Operation.response@ contains @AnnotateVideoResponse@ (results).
--
-- /See:/ <https://cloud.google.com/video-intelligence/docs/ Cloud Video Intelligence API Reference> for @videointelligence.videos.annotate@.
module Gogol.VideoIntelligence.Videos.Annotate
  ( -- * Resource
    VideoIntelligenceVideosAnnotateResource,

    -- ** Constructing a Request
    newVideoIntelligenceVideosAnnotate,
    VideoIntelligenceVideosAnnotate,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.VideoIntelligence.Types

-- | A resource alias for @videointelligence.videos.annotate@ method which the
-- 'VideoIntelligenceVideosAnnotate' request conforms to.
type VideoIntelligenceVideosAnnotateResource =
  "v1p3beta1"
    Core.:> "videos:annotate"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest
    Core.:> Core.Post '[Core.JSON] GoogleLongrunning_Operation

-- | Performs asynchronous video annotation. Progress and results can be retrieved through the @google.longrunning.Operations@ interface. @Operation.metadata@ contains @AnnotateVideoProgress@ (progress). @Operation.response@ contains @AnnotateVideoResponse@ (results).
--
-- /See:/ 'newVideoIntelligenceVideosAnnotate' smart constructor.
data VideoIntelligenceVideosAnnotate = VideoIntelligenceVideosAnnotate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VideoIntelligenceVideosAnnotate' with the minimum fields required to make a request.
newVideoIntelligenceVideosAnnotate ::
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest ->
  VideoIntelligenceVideosAnnotate
newVideoIntelligenceVideosAnnotate payload =
  VideoIntelligenceVideosAnnotate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    VideoIntelligenceVideosAnnotate
  where
  type
    Rs VideoIntelligenceVideosAnnotate =
      GoogleLongrunning_Operation
  type
    Scopes VideoIntelligenceVideosAnnotate =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient VideoIntelligenceVideosAnnotate {..} =
    go
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      videoIntelligenceService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy VideoIntelligenceVideosAnnotateResource
          )
          Core.mempty
