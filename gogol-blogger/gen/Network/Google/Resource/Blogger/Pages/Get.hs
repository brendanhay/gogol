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
-- | Gets one blog page by ID.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @BloggerPagesGet@.
module Network.Google.Resource.Blogger.Pages.Get
    (
    -- * REST Resource
      PagesGetResource

    -- * Creating a Request
    , pagesGet'
    , PagesGet'

    -- * Request Lenses
    , pggBlogId
    , pggPageId
    , pggView
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerPagesGet@ method which the
-- 'PagesGet'' request conforms to.
type PagesGetResource =
     "blogs" :>
       Capture "blogId" Text :>
         "pages" :>
           Capture "pageId" Text :>
             QueryParam "view" PagesGetView :>
               QueryParam "alt" AltJSON :> Get '[JSON] Page

-- | Gets one blog page by ID.
--
-- /See:/ 'pagesGet'' smart constructor.
data PagesGet' = PagesGet'
    { _pggBlogId :: !Text
    , _pggPageId :: !Text
    , _pggView   :: !(Maybe PagesGetView)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PagesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pggBlogId'
--
-- * 'pggPageId'
--
-- * 'pggView'
pagesGet'
    :: Text -- ^ 'blogId'
    -> Text -- ^ 'pageId'
    -> PagesGet'
pagesGet' pPggBlogId_ pPggPageId_ =
    PagesGet'
    { _pggBlogId = pPggBlogId_
    , _pggPageId = pPggPageId_
    , _pggView = Nothing
    }

-- | ID of the blog containing the page.
pggBlogId :: Lens' PagesGet' Text
pggBlogId
  = lens _pggBlogId (\ s a -> s{_pggBlogId = a})

-- | The ID of the page to get.
pggPageId :: Lens' PagesGet' Text
pggPageId
  = lens _pggPageId (\ s a -> s{_pggPageId = a})

pggView :: Lens' PagesGet' (Maybe PagesGetView)
pggView = lens _pggView (\ s a -> s{_pggView = a})

instance GoogleRequest PagesGet' where
        type Rs PagesGet' = Page
        requestClient PagesGet'{..}
          = go _pggBlogId _pggPageId _pggView (Just AltJSON)
              blogger
          where go
                  = buildClient (Proxy :: Proxy PagesGetResource)
                      mempty
