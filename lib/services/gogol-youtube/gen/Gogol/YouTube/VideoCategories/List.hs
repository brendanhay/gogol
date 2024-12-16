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
-- Module      : Gogol.YouTube.VideoCategories.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of resources, possibly filtered.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.videoCategories.list@.
module Gogol.YouTube.VideoCategories.List
    (
    -- * Resource
      YouTubeVideoCategoriesListResource

    -- ** Constructing a Request
    , YouTubeVideoCategoriesList (..)
    , newYouTubeVideoCategoriesList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.YouTube.Types

-- | A resource alias for @youtube.videoCategories.list@ method which the
-- 'YouTubeVideoCategoriesList' request conforms to.
type YouTubeVideoCategoriesListResource =
     "youtube" Core.:>
       "v3" Core.:>
         "videoCategories" Core.:>
           Core.QueryParams "part" Core.Text Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "hl" Core.Text Core.:>
                     Core.QueryParams "id" Core.Text Core.:>
                       Core.QueryParam "regionCode" Core.Text Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.Get '[Core.JSON] VideoCategoryListResponse

-- | Retrieves a list of resources, possibly filtered.
--
-- /See:/ 'newYouTubeVideoCategoriesList' smart constructor.
data YouTubeVideoCategoriesList = YouTubeVideoCategoriesList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | 
    , hl :: Core.Text
      -- | Returns the video categories with the given IDs for Stubby or Apiary.
    , id :: (Core.Maybe [Core.Text])
      -- | The /part/ parameter specifies the videoCategory resource properties that the API response will include. Set the parameter value to snippet.
    , part :: [Core.Text]
      -- | 
    , regionCode :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeVideoCategoriesList' with the minimum fields required to make a request.
newYouTubeVideoCategoriesList 
    ::  [Core.Text]
       -- ^  The /part/ parameter specifies the videoCategory resource properties that the API response will include. Set the parameter value to snippet. See 'part'.
    -> YouTubeVideoCategoriesList
newYouTubeVideoCategoriesList part =
  YouTubeVideoCategoriesList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , hl = "en-US"
    , id = Core.Nothing
    , part = part
    , regionCode = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           YouTubeVideoCategoriesList
         where
        type Rs YouTubeVideoCategoriesList =
             VideoCategoryListResponse
        type Scopes YouTubeVideoCategoriesList =
             '[Youtube'FullControl, Youtube'ForceSsl,
               Youtube'Readonly, Youtubepartner'FullControl]
        requestClient YouTubeVideoCategoriesList{..}
          = go part xgafv accessToken callback (Core.Just hl)
              (id Core.^. Core._Default)
              regionCode
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              youTubeService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy YouTubeVideoCategoriesListResource)
                      Core.mempty

