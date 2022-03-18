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
-- Module      : Gogol.Slides.Presentations.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a blank presentation using the title given in the request. If a @presentationId@ is provided, it is used as the ID of the new presentation. Otherwise, a new ID is generated. Other fields in the request, including any provided content, are ignored. Returns the created presentation.
--
-- /See:/ <https://developers.google.com/slides/ Google Slides API Reference> for @slides.presentations.create@.
module Gogol.Slides.Presentations.Create
    (
    -- * Resource
      SlidesPresentationsCreateResource

    -- ** Constructing a Request
    , newSlidesPresentationsCreate
    , SlidesPresentationsCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Slides.Types

-- | A resource alias for @slides.presentations.create@ method which the
-- 'SlidesPresentationsCreate' request conforms to.
type SlidesPresentationsCreateResource =
     "v1" Core.:>
       "presentations" Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] Presentation Core.:>
                       Core.Post '[Core.JSON] Presentation

-- | Creates a blank presentation using the title given in the request. If a @presentationId@ is provided, it is used as the ID of the new presentation. Otherwise, a new ID is generated. Other fields in the request, including any provided content, are ignored. Returns the created presentation.
--
-- /See:/ 'newSlidesPresentationsCreate' smart constructor.
data SlidesPresentationsCreate = SlidesPresentationsCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: Presentation
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SlidesPresentationsCreate' with the minimum fields required to make a request.
newSlidesPresentationsCreate 
    ::  Presentation
       -- ^  Multipart request metadata. See 'payload'.
    -> SlidesPresentationsCreate
newSlidesPresentationsCreate payload =
  SlidesPresentationsCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest SlidesPresentationsCreate
         where
        type Rs SlidesPresentationsCreate = Presentation
        type Scopes SlidesPresentationsCreate =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.file",
               "https://www.googleapis.com/auth/presentations"]
        requestClient SlidesPresentationsCreate{..}
          = go xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              slidesService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy SlidesPresentationsCreateResource)
                      Core.mempty

