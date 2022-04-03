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
-- Module      : Gogol.AndroidPublisher.Grants.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Grant access for a user to the given package.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.grants.create@.
module Gogol.AndroidPublisher.Grants.Create
  ( -- * Resource
    AndroidPublisherGrantsCreateResource,

    -- ** Constructing a Request
    AndroidPublisherGrantsCreate (..),
    newAndroidPublisherGrantsCreate,
  )
where

import Gogol.AndroidPublisher.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androidpublisher.grants.create@ method which the
-- 'AndroidPublisherGrantsCreate' request conforms to.
type AndroidPublisherGrantsCreateResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "grants"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Grant
    Core.:> Core.Post '[Core.JSON] Grant

-- | Grant access for a user to the given package.
--
-- /See:/ 'newAndroidPublisherGrantsCreate' smart constructor.
data AndroidPublisherGrantsCreate = AndroidPublisherGrantsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The user which needs permission. Format: developers\/{developer}\/users\/{user}
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: Grant,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherGrantsCreate' with the minimum fields required to make a request.
newAndroidPublisherGrantsCreate ::
  -- |  Required. The user which needs permission. Format: developers\/{developer}\/users\/{user} See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Grant ->
  AndroidPublisherGrantsCreate
newAndroidPublisherGrantsCreate parent payload =
  AndroidPublisherGrantsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidPublisherGrantsCreate
  where
  type Rs AndroidPublisherGrantsCreate = Grant
  type
    Scopes AndroidPublisherGrantsCreate =
      '[Androidpublisher'FullControl]
  requestClient AndroidPublisherGrantsCreate {..} =
    go
      parent
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      androidPublisherService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AndroidPublisherGrantsCreateResource
          )
          Core.mempty
