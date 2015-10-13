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
-- Module      : Network.Google.Resource.Blogger.Pages.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update a page. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @BloggerPagesPatch@.
module Network.Google.Resource.Blogger.Pages.Patch
    (
    -- * REST Resource
      PagesPatchResource

    -- * Creating a Request
    , pagesPatch'
    , PagesPatch'

    -- * Request Lenses
    , pagaBlogId
    , pagaPageId
    , pagaPayload
    , pagaRevert
    , pagaPublish
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerPagesPatch@ method which the
-- 'PagesPatch'' request conforms to.
type PagesPatchResource =
     "blogs" :>
       Capture "blogId" Text :>
         "pages" :>
           Capture "pageId" Text :>
             QueryParam "revert" Bool :>
               QueryParam "publish" Bool :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] Page :> Patch '[JSON] Page

-- | Update a page. This method supports patch semantics.
--
-- /See:/ 'pagesPatch'' smart constructor.
data PagesPatch' = PagesPatch'
    { _pagaBlogId  :: !Text
    , _pagaPageId  :: !Text
    , _pagaPayload :: !Page
    , _pagaRevert  :: !(Maybe Bool)
    , _pagaPublish :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PagesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pagaBlogId'
--
-- * 'pagaPageId'
--
-- * 'pagaPayload'
--
-- * 'pagaRevert'
--
-- * 'pagaPublish'
pagesPatch'
    :: Text -- ^ 'blogId'
    -> Text -- ^ 'pageId'
    -> Page -- ^ 'payload'
    -> PagesPatch'
pagesPatch' pPagaBlogId_ pPagaPageId_ pPagaPayload_ =
    PagesPatch'
    { _pagaBlogId = pPagaBlogId_
    , _pagaPageId = pPagaPageId_
    , _pagaPayload = pPagaPayload_
    , _pagaRevert = Nothing
    , _pagaPublish = Nothing
    }

-- | The ID of the Blog.
pagaBlogId :: Lens' PagesPatch' Text
pagaBlogId
  = lens _pagaBlogId (\ s a -> s{_pagaBlogId = a})

-- | The ID of the Page.
pagaPageId :: Lens' PagesPatch' Text
pagaPageId
  = lens _pagaPageId (\ s a -> s{_pagaPageId = a})

-- | Multipart request metadata.
pagaPayload :: Lens' PagesPatch' Page
pagaPayload
  = lens _pagaPayload (\ s a -> s{_pagaPayload = a})

-- | Whether a revert action should be performed when the page is updated
-- (default: false).
pagaRevert :: Lens' PagesPatch' (Maybe Bool)
pagaRevert
  = lens _pagaRevert (\ s a -> s{_pagaRevert = a})

-- | Whether a publish action should be performed when the page is updated
-- (default: false).
pagaPublish :: Lens' PagesPatch' (Maybe Bool)
pagaPublish
  = lens _pagaPublish (\ s a -> s{_pagaPublish = a})

instance GoogleRequest PagesPatch' where
        type Rs PagesPatch' = Page
        requestClient PagesPatch'{..}
          = go _pagaBlogId _pagaPageId _pagaRevert _pagaPublish
              (Just AltJSON)
              _pagaPayload
              bloggerService
          where go
                  = buildClient (Proxy :: Proxy PagesPatchResource)
                      mempty
