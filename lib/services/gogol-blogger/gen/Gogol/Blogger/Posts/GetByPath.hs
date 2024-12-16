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
-- Module      : Gogol.Blogger.Posts.GetByPath
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a post by path.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @blogger.posts.getByPath@.
module Gogol.Blogger.Posts.GetByPath
    (
    -- * Resource
      BloggerPostsGetByPathResource

    -- ** Constructing a Request
    , BloggerPostsGetByPath (..)
    , newBloggerPostsGetByPath
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Blogger.Types

-- | A resource alias for @blogger.posts.getByPath@ method which the
-- 'BloggerPostsGetByPath' request conforms to.
type BloggerPostsGetByPathResource =
     "v3" Core.:>
       "blogs" Core.:>
         Core.Capture "blogId" Core.Text Core.:>
           "posts" Core.:>
             "bypath" Core.:>
               Core.QueryParam "path" Core.Text Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "maxComments" Core.Word32 Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "view" PostsGetByPathView Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.Get '[Core.JSON] Post'

-- | Gets a post by path.
--
-- /See:/ 'newBloggerPostsGetByPath' smart constructor.
data BloggerPostsGetByPath = BloggerPostsGetByPath
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | 
    , blogId :: Core.Text
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | 
    , maxComments :: (Core.Maybe Core.Word32)
      -- | 
    , path :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | 
    , view :: (Core.Maybe PostsGetByPathView)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BloggerPostsGetByPath' with the minimum fields required to make a request.
newBloggerPostsGetByPath 
    ::  Core.Text
       -- ^  See 'blogId'.
    -> Core.Text
       -- ^  See 'path'.
    -> BloggerPostsGetByPath
newBloggerPostsGetByPath blogId path =
  BloggerPostsGetByPath
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , blogId = blogId
    , callback = Core.Nothing
    , maxComments = Core.Nothing
    , path = path
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , view = Core.Nothing
    }

instance Core.GoogleRequest BloggerPostsGetByPath
         where
        type Rs BloggerPostsGetByPath = Post'
        type Scopes BloggerPostsGetByPath =
             '[Blogger'FullControl, Blogger'Readonly]
        requestClient BloggerPostsGetByPath{..}
          = go blogId (Core.Just path) xgafv accessToken
              callback
              maxComments
              uploadType
              uploadProtocol
              view
              (Core.Just Core.AltJSON)
              bloggerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy BloggerPostsGetByPathResource)
                      Core.mempty

