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
-- Module      : Network.Google.Resource.Blogger.PageViews.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve pageview stats for a Blog.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @blogger.pageViews.get@.
module Network.Google.Resource.Blogger.PageViews.Get
    (
    -- * REST Resource
      PageViewsGetResource

    -- * Creating a Request
    , pageViewsGet
    , PageViewsGet

    -- * Request Lenses
    , pvgBlogId
    , pvgRange
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @blogger.pageViews.get@ method which the
-- 'PageViewsGet' request conforms to.
type PageViewsGetResource =
     "blogger" :>
       "v3" :>
         "blogs" :>
           Capture "blogId" Text :>
             "pageviews" :>
               QueryParams "range" PageViewsGetRange :>
                 QueryParam "alt" AltJSON :> Get '[JSON] Pageviews

-- | Retrieve pageview stats for a Blog.
--
-- /See:/ 'pageViewsGet' smart constructor.
data PageViewsGet = PageViewsGet
    { _pvgBlogId :: !Text
    , _pvgRange  :: !(Maybe [PageViewsGetRange])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PageViewsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pvgBlogId'
--
-- * 'pvgRange'
pageViewsGet
    :: Text -- ^ 'pvgBlogId'
    -> PageViewsGet
pageViewsGet pPvgBlogId_ =
    PageViewsGet
    { _pvgBlogId = pPvgBlogId_
    , _pvgRange = Nothing
    }

-- | The ID of the blog to get.
pvgBlogId :: Lens' PageViewsGet Text
pvgBlogId
  = lens _pvgBlogId (\ s a -> s{_pvgBlogId = a})

pvgRange :: Lens' PageViewsGet [PageViewsGetRange]
pvgRange
  = lens _pvgRange (\ s a -> s{_pvgRange = a}) .
      _Default
      . _Coerce

instance GoogleRequest PageViewsGet where
        type Rs PageViewsGet = Pageviews
        type Scopes PageViewsGet =
             '["https://www.googleapis.com/auth/blogger"]
        requestClient PageViewsGet{..}
          = go _pvgBlogId (_pvgRange ^. _Default)
              (Just AltJSON)
              bloggerService
          where go
                  = buildClient (Proxy :: Proxy PageViewsGetResource)
                      mempty
