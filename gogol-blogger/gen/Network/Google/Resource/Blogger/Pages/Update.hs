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
-- Module      : Network.Google.Resource.Blogger.Pages.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update a page.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @blogger.pages.update@.
module Network.Google.Resource.Blogger.Pages.Update
    (
    -- * REST Resource
      PagesUpdateResource

    -- * Creating a Request
    , pagesUpdate
    , PagesUpdate

    -- * Request Lenses
    , puuBlogId
    , puuPageId
    , puuPayload
    , puuRevert
    , puuPublish
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @blogger.pages.update@ method which the
-- 'PagesUpdate' request conforms to.
type PagesUpdateResource =
     "blogs" :>
       Capture "blogId" Text :>
         "pages" :>
           Capture "pageId" Text :>
             QueryParam "revert" Bool :>
               QueryParam "publish" Bool :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] Page :> Put '[JSON] Page

-- | Update a page.
--
-- /See:/ 'pagesUpdate' smart constructor.
data PagesUpdate = PagesUpdate
    { _puuBlogId  :: !Text
    , _puuPageId  :: !Text
    , _puuPayload :: !Page
    , _puuRevert  :: !(Maybe Bool)
    , _puuPublish :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PagesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puuBlogId'
--
-- * 'puuPageId'
--
-- * 'puuPayload'
--
-- * 'puuRevert'
--
-- * 'puuPublish'
pagesUpdate
    :: Text -- ^ 'puuBlogId'
    -> Text -- ^ 'puuPageId'
    -> Page -- ^ 'puuPayload'
    -> PagesUpdate
pagesUpdate pPuuBlogId_ pPuuPageId_ pPuuPayload_ =
    PagesUpdate
    { _puuBlogId = pPuuBlogId_
    , _puuPageId = pPuuPageId_
    , _puuPayload = pPuuPayload_
    , _puuRevert = Nothing
    , _puuPublish = Nothing
    }

-- | The ID of the Blog.
puuBlogId :: Lens' PagesUpdate Text
puuBlogId
  = lens _puuBlogId (\ s a -> s{_puuBlogId = a})

-- | The ID of the Page.
puuPageId :: Lens' PagesUpdate Text
puuPageId
  = lens _puuPageId (\ s a -> s{_puuPageId = a})

-- | Multipart request metadata.
puuPayload :: Lens' PagesUpdate Page
puuPayload
  = lens _puuPayload (\ s a -> s{_puuPayload = a})

-- | Whether a revert action should be performed when the page is updated
-- (default: false).
puuRevert :: Lens' PagesUpdate (Maybe Bool)
puuRevert
  = lens _puuRevert (\ s a -> s{_puuRevert = a})

-- | Whether a publish action should be performed when the page is updated
-- (default: false).
puuPublish :: Lens' PagesUpdate (Maybe Bool)
puuPublish
  = lens _puuPublish (\ s a -> s{_puuPublish = a})

instance GoogleRequest PagesUpdate where
        type Rs PagesUpdate = Page
        requestClient PagesUpdate{..}
          = go _puuBlogId _puuPageId _puuRevert _puuPublish
              (Just AltJSON)
              _puuPayload
              bloggerService
          where go
                  = buildClient (Proxy :: Proxy PagesUpdateResource)
                      mempty
