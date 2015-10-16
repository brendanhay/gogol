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
-- Module      : Network.Google.Resource.Blogger.Pages.Revert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Revert a published or scheduled page to draft state.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @BloggerPagesRevert@.
module Network.Google.Resource.Blogger.Pages.Revert
    (
    -- * REST Resource
      PagesRevertResource

    -- * Creating a Request
    , pagesRevert'
    , PagesRevert'

    -- * Request Lenses
    , pagBlogId
    , pagPageId
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerPagesRevert@ method which the
-- 'PagesRevert'' request conforms to.
type PagesRevertResource =
     "blogs" :>
       Capture "blogId" Text :>
         "pages" :>
           Capture "pageId" Text :>
             "revert" :>
               QueryParam "alt" AltJSON :> Post '[JSON] Page

-- | Revert a published or scheduled page to draft state.
--
-- /See:/ 'pagesRevert'' smart constructor.
data PagesRevert' = PagesRevert'
    { _pagBlogId :: !Text
    , _pagPageId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PagesRevert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pagBlogId'
--
-- * 'pagPageId'
pagesRevert'
    :: Text -- ^ 'blogId'
    -> Text -- ^ 'pageId'
    -> PagesRevert'
pagesRevert' pPagBlogId_ pPagPageId_ =
    PagesRevert'
    { _pagBlogId = pPagBlogId_
    , _pagPageId = pPagPageId_
    }

-- | The ID of the blog.
pagBlogId :: Lens' PagesRevert' Text
pagBlogId
  = lens _pagBlogId (\ s a -> s{_pagBlogId = a})

-- | The ID of the page.
pagPageId :: Lens' PagesRevert' Text
pagPageId
  = lens _pagPageId (\ s a -> s{_pagPageId = a})

instance GoogleRequest PagesRevert' where
        type Rs PagesRevert' = Page
        requestClient PagesRevert'{..}
          = go _pagBlogId _pagPageId (Just AltJSON)
              bloggerService
          where go
                  = buildClient (Proxy :: Proxy PagesRevertResource)
                      mempty
