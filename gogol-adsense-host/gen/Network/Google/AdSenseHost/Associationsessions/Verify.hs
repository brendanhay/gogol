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
-- Module      : Network.Google.AdSenseHost.Associationsessions.Verify
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Verify an association session after the association callback returns from AdSense signup.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @adsensehost.associationsessions.verify@.
module Network.Google.AdSenseHost.Associationsessions.Verify
  ( -- * Resource
    AdSenseHostAssociationsessionsVerifyResource,

    -- ** Constructing a Request
    newAdSenseHostAssociationsessionsVerify,
    AdSenseHostAssociationsessionsVerify,
  )
where

import Network.Google.AdSenseHost.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @adsensehost.associationsessions.verify@ method which the
-- 'AdSenseHostAssociationsessionsVerify' request conforms to.
type AdSenseHostAssociationsessionsVerifyResource =
  "adsensehost"
    Core.:> "v4.1"
    Core.:> "associationsessions"
    Core.:> "verify"
    Core.:> Core.QueryParam "token" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] AssociationSession

-- | Verify an association session after the association callback returns from AdSense signup.
--
-- /See:/ 'newAdSenseHostAssociationsessionsVerify' smart constructor.
newtype AdSenseHostAssociationsessionsVerify = AdSenseHostAssociationsessionsVerify
  { -- | The token returned to the association callback URL.
    token :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdSenseHostAssociationsessionsVerify' with the minimum fields required to make a request.
newAdSenseHostAssociationsessionsVerify ::
  -- |  The token returned to the association callback URL. See 'token'.
  Core.Text ->
  AdSenseHostAssociationsessionsVerify
newAdSenseHostAssociationsessionsVerify token =
  AdSenseHostAssociationsessionsVerify {token = token}

instance
  Core.GoogleRequest
    AdSenseHostAssociationsessionsVerify
  where
  type
    Rs AdSenseHostAssociationsessionsVerify =
      AssociationSession
  type
    Scopes AdSenseHostAssociationsessionsVerify =
      '["https://www.googleapis.com/auth/adsensehost"]
  requestClient
    AdSenseHostAssociationsessionsVerify {..} =
      go
        (Core.Just token)
        (Core.Just Core.AltJSON)
        adSenseHostService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AdSenseHostAssociationsessionsVerifyResource
            )
            Core.mempty
