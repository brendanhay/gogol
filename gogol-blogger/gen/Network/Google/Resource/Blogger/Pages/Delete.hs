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
-- Module      : Network.Google.Resource.Blogger.Pages.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a page by ID.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @blogger.pages.delete@.
module Network.Google.Resource.Blogger.Pages.Delete
    (
    -- * REST Resource
      PagesDeleteResource

    -- * Creating a Request
    , pagesDelete
    , PagesDelete

    -- * Request Lenses
    , pddBlogId
    , pddPageId
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @blogger.pages.delete@ method which the
-- 'PagesDelete' request conforms to.
type PagesDeleteResource =
     "blogger" :>
       "v3" :>
         "blogs" :>
           Capture "blogId" Text :>
             "pages" :>
               Capture "pageId" Text :>
                 QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Delete a page by ID.
--
-- /See:/ 'pagesDelete' smart constructor.
data PagesDelete =
  PagesDelete'
    { _pddBlogId :: !Text
    , _pddPageId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'PagesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pddBlogId'
--
-- * 'pddPageId'
pagesDelete
    :: Text -- ^ 'pddBlogId'
    -> Text -- ^ 'pddPageId'
    -> PagesDelete
pagesDelete pPddBlogId_ pPddPageId_ =
  PagesDelete' {_pddBlogId = pPddBlogId_, _pddPageId = pPddPageId_}

-- | The ID of the Blog.
pddBlogId :: Lens' PagesDelete Text
pddBlogId
  = lens _pddBlogId (\ s a -> s{_pddBlogId = a})

-- | The ID of the Page.
pddPageId :: Lens' PagesDelete Text
pddPageId
  = lens _pddPageId (\ s a -> s{_pddPageId = a})

instance GoogleRequest PagesDelete where
        type Rs PagesDelete = ()
        type Scopes PagesDelete =
             '["https://www.googleapis.com/auth/blogger"]
        requestClient PagesDelete'{..}
          = go _pddBlogId _pddPageId (Just AltJSON)
              bloggerService
          where go
                  = buildClient (Proxy :: Proxy PagesDeleteResource)
                      mempty
