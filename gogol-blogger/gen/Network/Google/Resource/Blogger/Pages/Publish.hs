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
-- Publishes a draft page.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @blogger.pages.publish@.
module Network.Google.Resource.Blogger.Pages.Publish
    (
    -- * REST Resource
      PagesPublishResource

    -- * Creating a Request
    , pagesPublish
    , PagesPublish

    -- * Request Lenses
    , pagaBlogId
    , pagaPageId
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @blogger.pages.publish@ method which the
-- 'PagesPublish' request conforms to.
type PagesPublishResource =
     "blogs" :>
       Capture "blogId" Text :>
         "pages" :>
           Capture "pageId" Text :>
             "publish" :>
               QueryParam "alt" AltJSON :> Post '[JSON] Page

-- | Publishes a draft page.
--
-- /See:/ 'pagesPublish' smart constructor.
data PagesPublish = PagesPublish
    { _pagaBlogId :: !Text
    , _pagaPageId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PagesPublish' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pagaBlogId'
--
-- * 'pagaPageId'
pagesPublish
    :: Text -- ^ 'pagaBlogId'
    -> Text -- ^ 'pagaPageId'
    -> PagesPublish
pagesPublish pPagaBlogId_ pPagaPageId_ =
    PagesPublish
    { _pagaBlogId = pPagaBlogId_
    , _pagaPageId = pPagaPageId_
    }

-- | The ID of the blog.
pagaBlogId :: Lens' PagesPublish Text
pagaBlogId
  = lens _pagaBlogId (\ s a -> s{_pagaBlogId = a})

-- | The ID of the page.
pagaPageId :: Lens' PagesPublish Text
pagaPageId
  = lens _pagaPageId (\ s a -> s{_pagaPageId = a})

instance GoogleRequest PagesPublish where
        type Rs PagesPublish = Page
        requestClient PagesPublish{..}
          = go _pagaBlogId _pagaPageId (Just AltJSON)
              bloggerService
          where go
                  = buildClient (Proxy :: Proxy PagesPublishResource)
                      mempty
