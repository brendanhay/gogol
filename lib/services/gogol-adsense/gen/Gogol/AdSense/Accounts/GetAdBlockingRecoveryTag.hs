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
-- Module      : Gogol.AdSense.Accounts.GetAdBlockingRecoveryTag
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the ad blocking recovery tag of an account.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @adsense.accounts.getAdBlockingRecoveryTag@.
module Gogol.AdSense.Accounts.GetAdBlockingRecoveryTag
  ( -- * Resource
    AdSenseAccountsGetAdBlockingRecoveryTagResource,

    -- ** Constructing a Request
    AdSenseAccountsGetAdBlockingRecoveryTag (..),
    newAdSenseAccountsGetAdBlockingRecoveryTag,
  )
where

import Gogol.AdSense.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @adsense.accounts.getAdBlockingRecoveryTag@ method which the
-- 'AdSenseAccountsGetAdBlockingRecoveryTag' request conforms to.
type AdSenseAccountsGetAdBlockingRecoveryTagResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> "adBlockingRecoveryTag"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] AdBlockingRecoveryTag

-- | Gets the ad blocking recovery tag of an account.
--
-- /See:/ 'newAdSenseAccountsGetAdBlockingRecoveryTag' smart constructor.
data AdSenseAccountsGetAdBlockingRecoveryTag = AdSenseAccountsGetAdBlockingRecoveryTag
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the account to get the tag for. Format: accounts\/{account}
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdSenseAccountsGetAdBlockingRecoveryTag' with the minimum fields required to make a request.
newAdSenseAccountsGetAdBlockingRecoveryTag ::
  -- |  Required. The name of the account to get the tag for. Format: accounts\/{account} See 'name'.
  Core.Text ->
  AdSenseAccountsGetAdBlockingRecoveryTag
newAdSenseAccountsGetAdBlockingRecoveryTag name =
  AdSenseAccountsGetAdBlockingRecoveryTag
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AdSenseAccountsGetAdBlockingRecoveryTag
  where
  type
    Rs AdSenseAccountsGetAdBlockingRecoveryTag =
      AdBlockingRecoveryTag
  type
    Scopes AdSenseAccountsGetAdBlockingRecoveryTag =
      '[Adsense'FullControl, Adsense'Readonly]
  requestClient
    AdSenseAccountsGetAdBlockingRecoveryTag {..} =
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
                Core.Proxy
                  AdSenseAccountsGetAdBlockingRecoveryTagResource
            )
            Core.mempty
