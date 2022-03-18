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
-- Module      : Gogol.FirebaseDynamicLinks.ShortLinks.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a short Dynamic Link given either a valid long Dynamic Link or details such as Dynamic Link domain, Android and iOS app information. The created short Dynamic Link will not expire. Repeated calls with the same long Dynamic Link or Dynamic Link information will produce the same short Dynamic Link. The Dynamic Link domain in the request must be owned by requester\'s Firebase project.
--
-- /See:/ <https://firebase.google.com/docs/dynamic-links/ Firebase Dynamic Links API Reference> for @firebasedynamiclinks.shortLinks.create@.
module Gogol.FirebaseDynamicLinks.ShortLinks.Create
  ( -- * Resource
    FirebaseDynamicLinksShortLinksCreateResource,

    -- ** Constructing a Request
    newFirebaseDynamicLinksShortLinksCreate,
    FirebaseDynamicLinksShortLinksCreate,
  )
where

import Gogol.FirebaseDynamicLinks.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @firebasedynamiclinks.shortLinks.create@ method which the
-- 'FirebaseDynamicLinksShortLinksCreate' request conforms to.
type FirebaseDynamicLinksShortLinksCreateResource =
  "v1"
    Core.:> "shortLinks"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              CreateShortDynamicLinkRequest
    Core.:> Core.Post '[Core.JSON] CreateShortDynamicLinkResponse

-- | Creates a short Dynamic Link given either a valid long Dynamic Link or details such as Dynamic Link domain, Android and iOS app information. The created short Dynamic Link will not expire. Repeated calls with the same long Dynamic Link or Dynamic Link information will produce the same short Dynamic Link. The Dynamic Link domain in the request must be owned by requester\'s Firebase project.
--
-- /See:/ 'newFirebaseDynamicLinksShortLinksCreate' smart constructor.
data FirebaseDynamicLinksShortLinksCreate = FirebaseDynamicLinksShortLinksCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: CreateShortDynamicLinkRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FirebaseDynamicLinksShortLinksCreate' with the minimum fields required to make a request.
newFirebaseDynamicLinksShortLinksCreate ::
  -- |  Multipart request metadata. See 'payload'.
  CreateShortDynamicLinkRequest ->
  FirebaseDynamicLinksShortLinksCreate
newFirebaseDynamicLinksShortLinksCreate payload =
  FirebaseDynamicLinksShortLinksCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    FirebaseDynamicLinksShortLinksCreate
  where
  type
    Rs FirebaseDynamicLinksShortLinksCreate =
      CreateShortDynamicLinkResponse
  type
    Scopes FirebaseDynamicLinksShortLinksCreate =
      '["https://www.googleapis.com/auth/firebase"]
  requestClient
    FirebaseDynamicLinksShortLinksCreate {..} =
      go
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        firebaseDynamicLinksService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  FirebaseDynamicLinksShortLinksCreateResource
            )
            Core.mempty
