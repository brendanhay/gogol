{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Blogger.Blogs.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one blog by ID.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @blogger.blogs.get@.
module Network.Google.Resource.Blogger.Blogs.Get
    (
    -- * REST Resource
      BlogsGetResource

    -- * Creating a Request
    , blogsGet
    , BlogsGet

    -- * Request Lenses
    , bgBlogId
    , bgMaxPosts
    , bgView
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @blogger.blogs.get@ method which the
-- 'BlogsGet' request conforms to.
type BlogsGetResource =
     "blogger" :>
       "v3" :>
         "blogs" :>
           Capture "blogId" Text :>
             QueryParam "maxPosts" (Textual Word32) :>
               QueryParam "view" BlogsGetView :>
                 QueryParam "alt" AltJSON :> Get '[JSON] Blog

-- | Gets one blog by ID.
--
-- /See:/ 'blogsGet' smart constructor.
data BlogsGet = BlogsGet
    { _bgBlogId   :: !Text
    , _bgMaxPosts :: !(Maybe (Textual Word32))
    , _bgView     :: !(Maybe BlogsGetView)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BlogsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgBlogId'
--
-- * 'bgMaxPosts'
--
-- * 'bgView'
blogsGet
    :: Text -- ^ 'bgBlogId'
    -> BlogsGet
blogsGet pBgBlogId_ =
    BlogsGet
    { _bgBlogId = pBgBlogId_
    , _bgMaxPosts = Nothing
    , _bgView = Nothing
    }

-- | The ID of the blog to get.
bgBlogId :: Lens' BlogsGet Text
bgBlogId = lens _bgBlogId (\ s a -> s{_bgBlogId = a})

-- | Maximum number of posts to pull back with the blog.
bgMaxPosts :: Lens' BlogsGet (Maybe Word32)
bgMaxPosts
  = lens _bgMaxPosts (\ s a -> s{_bgMaxPosts = a}) .
      mapping _Coerce

-- | Access level with which to view the blog. Note that some fields require
-- elevated access.
bgView :: Lens' BlogsGet (Maybe BlogsGetView)
bgView = lens _bgView (\ s a -> s{_bgView = a})

instance GoogleRequest BlogsGet where
        type Rs BlogsGet = Blog
        requestClient BlogsGet{..}
          = go _bgBlogId _bgMaxPosts _bgView (Just AltJSON)
              bloggerService
          where go
                  = buildClient (Proxy :: Proxy BlogsGetResource)
                      mempty
