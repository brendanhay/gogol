{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AdSense.Accounts.Adclients.Adunits.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an ad unit. This method can be called only by a restricted set of projects, which are usually owned by <https://developers.google.com/adsense/platforms/ AdSense for Platforms> publishers. Contact your account manager if you need to use this method. For now, this method can only be used to update @DISPLAY@ ad units. See: https:\/\/support.google.com\/adsense\/answer\/9183566
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @adsense.accounts.adclients.adunits.patch@.
module Gogol.AdSense.Accounts.Adclients.Adunits.Patch
    (
    -- * Resource
      AdSenseAccountsAdclientsAdunitsPatchResource

    -- ** Constructing a Request
    , AdSenseAccountsAdclientsAdunitsPatch (..)
    , newAdSenseAccountsAdclientsAdunitsPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AdSense.Types

-- | A resource alias for @adsense.accounts.adclients.adunits.patch@ method which the
-- 'AdSenseAccountsAdclientsAdunitsPatch' request conforms to.
type AdSenseAccountsAdclientsAdunitsPatchResource =
     "v2" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "updateMask" Core.FieldMask Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] AdUnit Core.:>
                         Core.Patch '[Core.JSON] AdUnit

-- | Updates an ad unit. This method can be called only by a restricted set of projects, which are usually owned by <https://developers.google.com/adsense/platforms/ AdSense for Platforms> publishers. Contact your account manager if you need to use this method. For now, this method can only be used to update @DISPLAY@ ad units. See: https:\/\/support.google.com\/adsense\/answer\/9183566
--
-- /See:/ 'newAdSenseAccountsAdclientsAdunitsPatch' smart constructor.
data AdSenseAccountsAdclientsAdunitsPatch = AdSenseAccountsAdclientsAdunitsPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Output only. Resource name of the ad unit. Format: accounts\/{account}\/adclients\/{adclient}\/adunits\/{adunit}
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: AdUnit
      -- | The list of fields to update. If empty, a full update is performed.
    , updateMask :: (Core.Maybe Core.FieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdSenseAccountsAdclientsAdunitsPatch' with the minimum fields required to make a request.
newAdSenseAccountsAdclientsAdunitsPatch 
    ::  Core.Text
       -- ^  Output only. Resource name of the ad unit. Format: accounts\/{account}\/adclients\/{adclient}\/adunits\/{adunit} See 'name'.
    -> AdUnit
       -- ^  Multipart request metadata. See 'payload'.
    -> AdSenseAccountsAdclientsAdunitsPatch
newAdSenseAccountsAdclientsAdunitsPatch name payload =
  AdSenseAccountsAdclientsAdunitsPatch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , updateMask = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AdSenseAccountsAdclientsAdunitsPatch
         where
        type Rs AdSenseAccountsAdclientsAdunitsPatch = AdUnit
        type Scopes AdSenseAccountsAdclientsAdunitsPatch =
             '[Adsense'FullControl]
        requestClient
          AdSenseAccountsAdclientsAdunitsPatch{..}
          = go name xgafv accessToken callback updateMask
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              adSenseService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AdSenseAccountsAdclientsAdunitsPatchResource)
                      Core.mempty

