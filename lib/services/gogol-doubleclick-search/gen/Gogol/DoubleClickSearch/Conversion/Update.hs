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
-- Module      : Gogol.DoubleClickSearch.Conversion.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a batch of conversions in DoubleClick Search.
--
-- /See:/ <https://developers.google.com/search-ads Search Ads 360 API Reference> for @doubleclicksearch.conversion.update@.
module Gogol.DoubleClickSearch.Conversion.Update
    (
    -- * Resource
      DoubleClickSearchConversionUpdateResource

    -- ** Constructing a Request
    , DoubleClickSearchConversionUpdate (..)
    , newDoubleClickSearchConversionUpdate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DoubleClickSearch.Types

-- | A resource alias for @doubleclicksearch.conversion.update@ method which the
-- 'DoubleClickSearchConversionUpdate' request conforms to.
type DoubleClickSearchConversionUpdateResource =
     "doubleclicksearch" Core.:>
       "v2" Core.:>
         "conversion" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] ConversionList Core.:>
                         Core.Put '[Core.JSON] ConversionList

-- | Updates a batch of conversions in DoubleClick Search.
--
-- /See:/ 'newDoubleClickSearchConversionUpdate' smart constructor.
data DoubleClickSearchConversionUpdate = DoubleClickSearchConversionUpdate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: ConversionList
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DoubleClickSearchConversionUpdate' with the minimum fields required to make a request.
newDoubleClickSearchConversionUpdate 
    ::  ConversionList
       -- ^  Multipart request metadata. See 'payload'.
    -> DoubleClickSearchConversionUpdate
newDoubleClickSearchConversionUpdate payload =
  DoubleClickSearchConversionUpdate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DoubleClickSearchConversionUpdate
         where
        type Rs DoubleClickSearchConversionUpdate =
             ConversionList
        type Scopes DoubleClickSearchConversionUpdate =
             '[Doubleclicksearch'FullControl]
        requestClient DoubleClickSearchConversionUpdate{..}
          = go xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              doubleClickSearchService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DoubleClickSearchConversionUpdateResource)
                      Core.mempty

