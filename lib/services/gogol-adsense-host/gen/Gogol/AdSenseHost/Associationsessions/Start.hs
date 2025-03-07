{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AdSenseHost.Associationsessions.Start
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create an association session for initiating an association with an AdSense user.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @adsensehost.associationsessions.start@.
module Gogol.AdSenseHost.Associationsessions.Start
  ( -- * Resource
    AdSenseHostAssociationsessionsStartResource,

    -- ** Constructing a Request
    AdSenseHostAssociationsessionsStart (..),
    newAdSenseHostAssociationsessionsStart,
  )
where

import Gogol.AdSenseHost.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @adsensehost.associationsessions.start@ method which the
-- 'AdSenseHostAssociationsessionsStart' request conforms to.
type AdSenseHostAssociationsessionsStartResource =
  "adsensehost"
    Core.:> "v4.1"
    Core.:> "associationsessions"
    Core.:> "start"
    Core.:> Core.QueryParams "productCode" AssociationsessionsStartProductCode
    Core.:> Core.QueryParam "websiteUrl" Core.Text
    Core.:> Core.QueryParam "callbackUrl" Core.Text
    Core.:> Core.QueryParam "userLocale" Core.Text
    Core.:> Core.QueryParam "websiteLocale" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] AssociationSession

-- | Create an association session for initiating an association with an AdSense user.
--
-- /See:/ 'newAdSenseHostAssociationsessionsStart' smart constructor.
data AdSenseHostAssociationsessionsStart = AdSenseHostAssociationsessionsStart
  { -- | The URL to redirect the user to once association is completed. It receives a token parameter that can then be used to retrieve the associated account.
    callbackUrl :: (Core.Maybe Core.Text),
    -- | Products to associate with the user.
    productCode :: [AssociationsessionsStartProductCode],
    -- | The preferred locale of the user.
    userLocale :: (Core.Maybe Core.Text),
    -- | The locale of the user\'s hosted website.
    websiteLocale :: (Core.Maybe Core.Text),
    -- | The URL of the user\'s hosted website.
    websiteUrl :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdSenseHostAssociationsessionsStart' with the minimum fields required to make a request.
newAdSenseHostAssociationsessionsStart ::
  -- |  Products to associate with the user. See 'productCode'.
  [AssociationsessionsStartProductCode] ->
  -- |  The URL of the user\'s hosted website. See 'websiteUrl'.
  Core.Text ->
  AdSenseHostAssociationsessionsStart
newAdSenseHostAssociationsessionsStart productCode websiteUrl =
  AdSenseHostAssociationsessionsStart
    { callbackUrl = Core.Nothing,
      productCode = productCode,
      userLocale = Core.Nothing,
      websiteLocale = Core.Nothing,
      websiteUrl = websiteUrl
    }

instance Core.GoogleRequest AdSenseHostAssociationsessionsStart where
  type Rs AdSenseHostAssociationsessionsStart = AssociationSession
  type
    Scopes AdSenseHostAssociationsessionsStart =
      '[Adsensehost'FullControl]
  requestClient AdSenseHostAssociationsessionsStart {..} =
    go
      productCode
      (Core.Just websiteUrl)
      callbackUrl
      userLocale
      websiteLocale
      (Core.Just Core.AltJSON)
      adSenseHostService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AdSenseHostAssociationsessionsStartResource
          )
          Core.mempty
