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
-- Module      : Gogol.PlusDomains.Circles.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Shut down. See https:\/\/developers.google.com\/+\/api-shutdown for more details.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @plusDomains.circles.list@.
module Gogol.PlusDomains.Circles.List
    (
    -- * Resource
      PlusDomainsCirclesListResource

    -- ** Constructing a Request
    , newPlusDomainsCirclesList
    , PlusDomainsCirclesList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.PlusDomains.Types

-- | A resource alias for @plusDomains.circles.list@ method which the
-- 'PlusDomainsCirclesList' request conforms to.
type PlusDomainsCirclesListResource =
     "plusDomains" Core.:>
       "v1" Core.:>
         "people" Core.:>
           Core.Capture "userId" Core.Text Core.:>
             "circles" Core.:>
               Core.QueryParam "maxResults" Core.Word32 Core.:>
                 Core.QueryParam "pageToken" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] CircleFeed

-- | Shut down. See https:\/\/developers.google.com\/+\/api-shutdown for more details.
--
-- /See:/ 'newPlusDomainsCirclesList' smart constructor.
data PlusDomainsCirclesList = PlusDomainsCirclesList
    {
      -- | The maximum number of circles to include in the response, which is used for paging. For any response, the actual number returned might be less than the specified maxResults.
      maxResults :: Core.Word32
      -- | The continuation token, which is used to page through large result sets. To get the next page of results, set this parameter to the value of \"nextPageToken\" from the previous response.
    , pageToken :: (Core.Maybe Core.Text)
      -- | The ID of the user to get circles for. The special value \"me\" can be used to indicate the authenticated user.
    , userId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlusDomainsCirclesList' with the minimum fields required to make a request.
newPlusDomainsCirclesList 
    ::  Core.Text
       -- ^  The ID of the user to get circles for. The special value \"me\" can be used to indicate the authenticated user. See 'userId'.
    -> PlusDomainsCirclesList
newPlusDomainsCirclesList userId =
  PlusDomainsCirclesList
    {maxResults = 20, pageToken = Core.Nothing, userId = userId}

instance Core.GoogleRequest PlusDomainsCirclesList
         where
        type Rs PlusDomainsCirclesList = CircleFeed
        type Scopes PlusDomainsCirclesList =
             '["https://www.googleapis.com/auth/plus.circles.read",
               "https://www.googleapis.com/auth/plus.login",
               "https://www.googleapis.com/auth/plus.me"]
        requestClient PlusDomainsCirclesList{..}
          = go userId (Core.Just maxResults) pageToken
              (Core.Just Core.AltJSON)
              plusDomainsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy PlusDomainsCirclesListResource)
                      Core.mempty

