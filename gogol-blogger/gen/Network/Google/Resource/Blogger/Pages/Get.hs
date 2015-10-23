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
-- Module      : Network.Google.Resource.Blogger.Pages.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one blog page by ID.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @blogger.pages.get@.
module Network.Google.Resource.Blogger.Pages.Get
    (
    -- * REST Resource
      PagesGetResource

    -- * Creating a Request
    , pagesGet
    , PagesGet

    -- * Request Lenses
    , pgBlogId
    , pgPageId
    , pgView
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @blogger.pages.get@ method which the
-- 'PagesGet' request conforms to.
type PagesGetResource =
     "blogger" :>
       "v3" :>
         "blogs" :>
           Capture "blogId" Text :>
             "pages" :>
               Capture "pageId" Text :>
                 QueryParam "view" PagesGetView :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Page

-- | Gets one blog page by ID.
--
-- /See:/ 'pagesGet' smart constructor.
data PagesGet = PagesGet
    { _pgBlogId :: !Text
    , _pgPageId :: !Text
    , _pgView   :: !(Maybe PagesGetView)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PagesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgBlogId'
--
-- * 'pgPageId'
--
-- * 'pgView'
pagesGet
    :: Text -- ^ 'pgBlogId'
    -> Text -- ^ 'pgPageId'
    -> PagesGet
pagesGet pPgBlogId_ pPgPageId_ =
    PagesGet
    { _pgBlogId = pPgBlogId_
    , _pgPageId = pPgPageId_
    , _pgView = Nothing
    }

-- | ID of the blog containing the page.
pgBlogId :: Lens' PagesGet Text
pgBlogId = lens _pgBlogId (\ s a -> s{_pgBlogId = a})

-- | The ID of the page to get.
pgPageId :: Lens' PagesGet Text
pgPageId = lens _pgPageId (\ s a -> s{_pgPageId = a})

pgView :: Lens' PagesGet (Maybe PagesGetView)
pgView = lens _pgView (\ s a -> s{_pgView = a})

instance GoogleRequest PagesGet where
        type Rs PagesGet = Page
        requestClient PagesGet{..}
          = go _pgBlogId _pgPageId _pgView (Just AltJSON)
              bloggerService
          where go
                  = buildClient (Proxy :: Proxy PagesGetResource)
                      mempty
