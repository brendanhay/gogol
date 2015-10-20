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
-- Module      : Network.Google.Resource.Blogger.Blogs.GetByURL
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve a Blog by URL.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @blogger.blogs.getByUrl@.
module Network.Google.Resource.Blogger.Blogs.GetByURL
    (
    -- * REST Resource
      BlogsGetByURLResource

    -- * Creating a Request
    , blogsGetByURL
    , BlogsGetByURL

    -- * Request Lenses
    , bgbuURL
    , bgbuView
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @blogger.blogs.getByUrl@ method which the
-- 'BlogsGetByURL' request conforms to.
type BlogsGetByURLResource =
     "blogs" :>
       "byurl" :>
         QueryParam "url" Text :>
           QueryParam "view" BlogsGetByURLView :>
             QueryParam "alt" AltJSON :> Get '[JSON] Blog

-- | Retrieve a Blog by URL.
--
-- /See:/ 'blogsGetByURL' smart constructor.
data BlogsGetByURL = BlogsGetByURL
    { _bgbuURL  :: !Text
    , _bgbuView :: !(Maybe BlogsGetByURLView)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BlogsGetByURL' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgbuURL'
--
-- * 'bgbuView'
blogsGetByURL
    :: Text -- ^ 'bgbuURL'
    -> BlogsGetByURL
blogsGetByURL pBgbuURL_ =
    BlogsGetByURL
    { _bgbuURL = pBgbuURL_
    , _bgbuView = Nothing
    }

-- | The URL of the blog to retrieve.
bgbuURL :: Lens' BlogsGetByURL Text
bgbuURL = lens _bgbuURL (\ s a -> s{_bgbuURL = a})

-- | Access level with which to view the blog. Note that some fields require
-- elevated access.
bgbuView :: Lens' BlogsGetByURL (Maybe BlogsGetByURLView)
bgbuView = lens _bgbuView (\ s a -> s{_bgbuView = a})

instance GoogleRequest BlogsGetByURL where
        type Rs BlogsGetByURL = Blog
        requestClient BlogsGetByURL{..}
          = go (Just _bgbuURL) _bgbuView (Just AltJSON)
              bloggerService
          where go
                  = buildClient (Proxy :: Proxy BlogsGetByURLResource)
                      mempty
