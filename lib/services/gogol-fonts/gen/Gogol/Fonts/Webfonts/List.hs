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
-- Module      : Gogol.Fonts.Webfonts.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of fonts currently served by the Google Fonts Developer API.
--
-- /See:/ <https://developers.google.com/fonts/docs/developer_api Web Fonts Developer API Reference> for @webfonts.webfonts.list@.
module Gogol.Fonts.Webfonts.List
    (
    -- * Resource
      WebfontsWebfontsListResource

    -- ** Constructing a Request
    , newWebfontsWebfontsList
    , WebfontsWebfontsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Fonts.Types

-- | A resource alias for @webfonts.webfonts.list@ method which the
-- 'WebfontsWebfontsList' request conforms to.
type WebfontsWebfontsListResource =
     "v1" Core.:>
       "webfonts" Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "sort" WebfontsListSort Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.Get '[Core.JSON] WebfontList

-- | Retrieves the list of fonts currently served by the Google Fonts Developer API.
--
-- /See:/ 'newWebfontsWebfontsList' smart constructor.
data WebfontsWebfontsList = WebfontsWebfontsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Enables sorting of the list.
    , sort :: (Core.Maybe WebfontsListSort)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WebfontsWebfontsList' with the minimum fields required to make a request.
newWebfontsWebfontsList 
    ::  WebfontsWebfontsList
newWebfontsWebfontsList =
  WebfontsWebfontsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , sort = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest WebfontsWebfontsList
         where
        type Rs WebfontsWebfontsList = WebfontList
        type Scopes WebfontsWebfontsList = '[]
        requestClient WebfontsWebfontsList{..}
          = go xgafv accessToken callback sort uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              fontsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy WebfontsWebfontsListResource)
                      Core.mempty

