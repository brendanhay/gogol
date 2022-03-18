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
-- Module      : Gogol.Blogger.Posts.Publish
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Publishes a post.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API v3 Reference> for @blogger.posts.publish@.
module Gogol.Blogger.Posts.Publish
    (
    -- * Resource
      BloggerPostsPublishResource

    -- ** Constructing a Request
    , newBloggerPostsPublish
    , BloggerPostsPublish
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Blogger.Types

-- | A resource alias for @blogger.posts.publish@ method which the
-- 'BloggerPostsPublish' request conforms to.
type BloggerPostsPublishResource =
     "v3" Core.:>
       "blogs" Core.:>
         Core.Capture "blogId" Core.Text Core.:>
           "posts" Core.:>
             Core.Capture "postId" Core.Text Core.:>
               "publish" Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "publishDate" Core.Text Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.Post '[Core.JSON] Post'

-- | Publishes a post.
--
-- /See:/ 'newBloggerPostsPublish' smart constructor.
data BloggerPostsPublish = BloggerPostsPublish
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
    , postId :: Core.Text
      -- | 
    , publishDate :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BloggerPostsPublish' with the minimum fields required to make a request.
newBloggerPostsPublish 
    ::  Core.Text
       -- ^  See 'blogId'.
    -> Core.Text
       -- ^  See 'postId'.
    -> BloggerPostsPublish
newBloggerPostsPublish blogId postId =
  BloggerPostsPublish
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , blogId = blogId
    , callback = Core.Nothing
    , postId = postId
    , publishDate = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest BloggerPostsPublish where
        type Rs BloggerPostsPublish = Post'
        type Scopes BloggerPostsPublish =
             '["https://www.googleapis.com/auth/blogger"]
        requestClient BloggerPostsPublish{..}
          = go blogId postId xgafv accessToken callback
              publishDate
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              bloggerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy BloggerPostsPublishResource)
                      Core.mempty

