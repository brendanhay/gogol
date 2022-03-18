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
-- Module      : Network.Google.AdSense.Accounts.Sites.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about the selected site.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @adsense.accounts.sites.get@.
module Network.Google.AdSense.Accounts.Sites.Get
  ( -- * Resource
    AdSenseAccountsSitesGetResource,

    -- ** Constructing a Request
    newAdSenseAccountsSitesGet,
    AdSenseAccountsSitesGet,
  )
where

import Network.Google.AdSense.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @adsense.accounts.sites.get@ method which the
-- 'AdSenseAccountsSitesGet' request conforms to.
type AdSenseAccountsSitesGetResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Site

-- | Gets information about the selected site.
--
-- /See:/ 'newAdSenseAccountsSitesGet' smart constructor.
data AdSenseAccountsSitesGet = AdSenseAccountsSitesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Name of the site. Format: accounts\/{account}\/sites\/{site}
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdSenseAccountsSitesGet' with the minimum fields required to make a request.
newAdSenseAccountsSitesGet ::
  -- |  Required. Name of the site. Format: accounts\/{account}\/sites\/{site} See 'name'.
  Core.Text ->
  AdSenseAccountsSitesGet
newAdSenseAccountsSitesGet name =
  AdSenseAccountsSitesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest AdSenseAccountsSitesGet where
  type Rs AdSenseAccountsSitesGet = Site
  type
    Scopes AdSenseAccountsSitesGet =
      '[ "https://www.googleapis.com/auth/adsense",
         "https://www.googleapis.com/auth/adsense.readonly"
       ]
  requestClient AdSenseAccountsSitesGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      adSenseService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AdSenseAccountsSitesGetResource
          )
          Core.mempty
