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
-- Module      : Network.Google.Resource.Blogger.Pages.Publish
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Publishes a draft page.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @BloggerPagesPublish@.
module Network.Google.Resource.Blogger.Pages.Publish
    (
    -- * REST Resource
      PagesPublishResource

    -- * Creating a Request
    , pagesPublish'
    , PagesPublish'

    -- * Request Lenses
    , pppBlogId
    , pppPageId
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerPagesPublish@ method which the
-- 'PagesPublish'' request conforms to.
type PagesPublishResource =
     "blogs" :>
       Capture "blogId" Text :>
         "pages" :>
           Capture "pageId" Text :>
             "publish" :>
               QueryParam "alt" AltJSON :> Post '[JSON] Page

-- | Publishes a draft page.
--
-- /See:/ 'pagesPublish'' smart constructor.
data PagesPublish' = PagesPublish'
    { _pppBlogId :: !Text
    , _pppPageId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PagesPublish'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pppBlogId'
--
-- * 'pppPageId'
pagesPublish'
    :: Text -- ^ 'blogId'
    -> Text -- ^ 'pageId'
    -> PagesPublish'
pagesPublish' pPppBlogId_ pPppPageId_ =
    PagesPublish'
    { _pppBlogId = pPppBlogId_
    , _pppPageId = pPppPageId_
    }

-- | The ID of the blog.
pppBlogId :: Lens' PagesPublish' Text
pppBlogId
  = lens _pppBlogId (\ s a -> s{_pppBlogId = a})

-- | The ID of the page.
pppPageId :: Lens' PagesPublish' Text
pppPageId
  = lens _pppPageId (\ s a -> s{_pppPageId = a})

instance GoogleRequest PagesPublish' where
        type Rs PagesPublish' = Page
        requestClient PagesPublish'{..}
          = go _pppBlogId _pppPageId (Just AltJSON)
              bloggerService
          where go
                  = buildClient (Proxy :: Proxy PagesPublishResource)
                      mempty
