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
-- Module      : Gogol.Slides.Presentations.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the latest version of the specified presentation.
--
-- /See:/ <https://developers.google.com/slides/ Google Slides API Reference> for @slides.presentations.get@.
module Gogol.Slides.Presentations.Get
  ( -- * Resource
    SlidesPresentationsGetResource,

    -- ** Constructing a Request
    newSlidesPresentationsGet,
    SlidesPresentationsGet,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Slides.Types

-- | A resource alias for @slides.presentations.get@ method which the
-- 'SlidesPresentationsGet' request conforms to.
type SlidesPresentationsGetResource =
  "v1"
    Core.:> "presentations"
    Core.:> Core.Capture "presentationId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Presentation

-- | Gets the latest version of the specified presentation.
--
-- /See:/ 'newSlidesPresentationsGet' smart constructor.
data SlidesPresentationsGet = SlidesPresentationsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the presentation to retrieve.
    presentationId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SlidesPresentationsGet' with the minimum fields required to make a request.
newSlidesPresentationsGet ::
  -- |  The ID of the presentation to retrieve. See 'presentationId'.
  Core.Text ->
  SlidesPresentationsGet
newSlidesPresentationsGet presentationId =
  SlidesPresentationsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      presentationId = presentationId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest SlidesPresentationsGet where
  type Rs SlidesPresentationsGet = Presentation
  type
    Scopes SlidesPresentationsGet =
      '[ Drive'FullControl,
         Drive'File,
         Drive'Readonly,
         Presentations'FullControl,
         Presentations'Readonly
       ]
  requestClient SlidesPresentationsGet {..} =
    go
      presentationId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      slidesService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy SlidesPresentationsGetResource
          )
          Core.mempty
