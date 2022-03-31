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
-- Module      : Gogol.Slides.Presentations.BatchUpdate
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Applies one or more updates to the presentation. Each request is validated before being applied. If any request is not valid, then the entire request will fail and nothing will be applied. Some requests have replies to give you some information about how they are applied. Other requests do not need to return information; these each return an empty reply. The order of replies matches that of the requests. For example, suppose you call batchUpdate with four updates, and only the third one returns information. The response would have two empty replies: the reply to the third request, and another empty reply, in that order. Because other users may be editing the presentation, the presentation might not exactly reflect your changes: your changes may be altered with respect to collaborator changes. If there are no collaborators, the presentation should reflect your changes. In any case, the updates in your request are guaranteed to be applied together atomically.
--
-- /See:/ <https://developers.google.com/slides/ Google Slides API Reference> for @slides.presentations.batchUpdate@.
module Gogol.Slides.Presentations.BatchUpdate
  ( -- * Resource
    SlidesPresentationsBatchUpdateResource,

    -- ** Constructing a Request
    newSlidesPresentationsBatchUpdate,
    SlidesPresentationsBatchUpdate,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Slides.Types

-- | A resource alias for @slides.presentations.batchUpdate@ method which the
-- 'SlidesPresentationsBatchUpdate' request conforms to.
type SlidesPresentationsBatchUpdateResource =
  "v1"
    Core.:> "presentations"
    Core.:> Core.CaptureMode
              "presentationId"
              "batchUpdate"
              Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              BatchUpdatePresentationRequest
    Core.:> Core.Post
              '[Core.JSON]
              BatchUpdatePresentationResponse

-- | Applies one or more updates to the presentation. Each request is validated before being applied. If any request is not valid, then the entire request will fail and nothing will be applied. Some requests have replies to give you some information about how they are applied. Other requests do not need to return information; these each return an empty reply. The order of replies matches that of the requests. For example, suppose you call batchUpdate with four updates, and only the third one returns information. The response would have two empty replies: the reply to the third request, and another empty reply, in that order. Because other users may be editing the presentation, the presentation might not exactly reflect your changes: your changes may be altered with respect to collaborator changes. If there are no collaborators, the presentation should reflect your changes. In any case, the updates in your request are guaranteed to be applied together atomically.
--
-- /See:/ 'newSlidesPresentationsBatchUpdate' smart constructor.
data SlidesPresentationsBatchUpdate = SlidesPresentationsBatchUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: BatchUpdatePresentationRequest,
    -- | The presentation to apply the updates to.
    presentationId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SlidesPresentationsBatchUpdate' with the minimum fields required to make a request.
newSlidesPresentationsBatchUpdate ::
  -- |  Multipart request metadata. See 'payload'.
  BatchUpdatePresentationRequest ->
  -- |  The presentation to apply the updates to. See 'presentationId'.
  Core.Text ->
  SlidesPresentationsBatchUpdate
newSlidesPresentationsBatchUpdate payload presentationId =
  SlidesPresentationsBatchUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      presentationId = presentationId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    SlidesPresentationsBatchUpdate
  where
  type
    Rs SlidesPresentationsBatchUpdate =
      BatchUpdatePresentationResponse
  type
    Scopes SlidesPresentationsBatchUpdate =
      '[ Drive'FullControl,
         Drive'File,
         Drive'Readonly,
         Presentations'FullControl,
         Spreadsheets'FullControl,
         Spreadsheets'Readonly
       ]
  requestClient SlidesPresentationsBatchUpdate {..} =
    go
      presentationId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      slidesService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy SlidesPresentationsBatchUpdateResource
          )
          Core.mempty
