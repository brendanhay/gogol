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
-- Module      : Gogol.PlayCustomApp.Accounts.CustomApps.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new custom app.
--
-- /See:/ <https://developers.google.com/android/work/play/custom-app-api/ Google Play Custom App Publishing API Reference> for @playcustomapp.accounts.customApps.create@.
module Gogol.PlayCustomApp.Accounts.CustomApps.Create
  ( -- * Resource
    PlayCustomAppAccountsCustomAppsCreateResource,

    -- ** Constructing a Request
    newPlayCustomAppAccountsCustomAppsCreate,
    PlayCustomAppAccountsCustomAppsCreate,
  )
where

import Gogol.PlayCustomApp.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @playcustomapp.accounts.customApps.create@ method which the
-- 'PlayCustomAppAccountsCustomAppsCreate' request conforms to.
type PlayCustomAppAccountsCustomAppsCreateResource =
  "playcustomapp"
    Core.:> "v1"
    Core.:> "accounts"
    Core.:> Core.Capture "account" Core.Int64
    Core.:> "customApps"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CustomApp
    Core.:> Core.Post '[Core.JSON] CustomApp
    Core.:<|> "upload"
      Core.:> "playcustomapp"
      Core.:> "v1"
      Core.:> "accounts"
      Core.:> Core.Capture "account" Core.Int64
      Core.:> "customApps"
      Core.:> Core.QueryParam "$.xgafv" Xgafv
      Core.:> Core.QueryParam "access_token" Core.Text
      Core.:> Core.QueryParam "callback" Core.Text
      Core.:> Core.QueryParam "uploadType" Core.Text
      Core.:> Core.QueryParam "upload_protocol" Core.Text
      Core.:> Core.QueryParam "alt" Core.AltJSON
      Core.:> Core.QueryParam "uploadType" Core.Multipart
      Core.:> Core.MultipartRelated '[Core.JSON] CustomApp
      Core.:> Core.Post '[Core.JSON] CustomApp

-- | Creates a new custom app.
--
-- /See:/ 'newPlayCustomAppAccountsCustomAppsCreate' smart constructor.
data PlayCustomAppAccountsCustomAppsCreate = PlayCustomAppAccountsCustomAppsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Developer account ID.
    account :: Core.Int64,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: CustomApp,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlayCustomAppAccountsCustomAppsCreate' with the minimum fields required to make a request.
newPlayCustomAppAccountsCustomAppsCreate ::
  -- |  Developer account ID. See 'account'.
  Core.Int64 ->
  -- |  Multipart request metadata. See 'payload'.
  CustomApp ->
  PlayCustomAppAccountsCustomAppsCreate
newPlayCustomAppAccountsCustomAppsCreate account payload =
  PlayCustomAppAccountsCustomAppsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      account = account,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    PlayCustomAppAccountsCustomAppsCreate
  where
  type
    Rs PlayCustomAppAccountsCustomAppsCreate =
      CustomApp
  type
    Scopes PlayCustomAppAccountsCustomAppsCreate =
      '["https://www.googleapis.com/auth/androidpublisher"]
  requestClient
    PlayCustomAppAccountsCustomAppsCreate {..} =
      go
        account
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        playCustomAppService
      where
        go Core.:<|> _ =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  PlayCustomAppAccountsCustomAppsCreateResource
            )
            Core.mempty

instance
  Core.GoogleRequest
    ( Core.MediaUpload
        PlayCustomAppAccountsCustomAppsCreate
    )
  where
  type
    Rs
      ( Core.MediaUpload
          PlayCustomAppAccountsCustomAppsCreate
      ) =
      CustomApp
  type
    Scopes
      ( Core.MediaUpload
          PlayCustomAppAccountsCustomAppsCreate
      ) =
      Core.Scopes PlayCustomAppAccountsCustomAppsCreate
  requestClient
    ( Core.MediaUpload
        PlayCustomAppAccountsCustomAppsCreate {..}
        body
      ) =
      go
        account
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        (Core.Just Core.Multipart)
        payload
        body
        playCustomAppService
      where
        _ Core.:<|> go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  PlayCustomAppAccountsCustomAppsCreateResource
            )
            Core.mempty
