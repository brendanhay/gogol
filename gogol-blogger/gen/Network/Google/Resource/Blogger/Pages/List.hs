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
-- Module      : Network.Google.Resource.Blogger.Pages.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the pages for a blog, optionally including non-LIVE statuses.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @blogger.pages.list@.
module Network.Google.Resource.Blogger.Pages.List
    (
    -- * REST Resource
      PagesListResource

    -- * Creating a Request
    , pagesList
    , PagesList

    -- * Request Lenses
    , plStatus
    , plBlogId
    , plFetchBodies
    , plView
    , plPageToken
    , plMaxResults
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @blogger.pages.list@ method which the
-- 'PagesList' request conforms to.
type PagesListResource =
     "blogger" :>
       "v3" :>
         "blogs" :>
           Capture "blogId" Text :>
             "pages" :>
               QueryParams "status" PagesListStatus :>
                 QueryParam "fetchBodies" Bool :>
                   QueryParam "view" PagesListView :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" Word32 :>
                         QueryParam "alt" AltJSON :> Get '[JSON] PageList

-- | Retrieves the pages for a blog, optionally including non-LIVE statuses.
--
-- /See:/ 'pagesList' smart constructor.
data PagesList = PagesList
    { _plStatus      :: !(Maybe [PagesListStatus])
    , _plBlogId      :: !Text
    , _plFetchBodies :: !(Maybe Bool)
    , _plView        :: !(Maybe PagesListView)
    , _plPageToken   :: !(Maybe Text)
    , _plMaxResults  :: !(Maybe Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PagesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plStatus'
--
-- * 'plBlogId'
--
-- * 'plFetchBodies'
--
-- * 'plView'
--
-- * 'plPageToken'
--
-- * 'plMaxResults'
pagesList
    :: Text -- ^ 'plBlogId'
    -> PagesList
pagesList pPlBlogId_ =
    PagesList
    { _plStatus = Nothing
    , _plBlogId = pPlBlogId_
    , _plFetchBodies = Nothing
    , _plView = Nothing
    , _plPageToken = Nothing
    , _plMaxResults = Nothing
    }

plStatus :: Lens' PagesList [PagesListStatus]
plStatus
  = lens _plStatus (\ s a -> s{_plStatus = a}) .
      _Default
      . _Coerce

-- | ID of the blog to fetch Pages from.
plBlogId :: Lens' PagesList Text
plBlogId = lens _plBlogId (\ s a -> s{_plBlogId = a})

-- | Whether to retrieve the Page bodies.
plFetchBodies :: Lens' PagesList (Maybe Bool)
plFetchBodies
  = lens _plFetchBodies
      (\ s a -> s{_plFetchBodies = a})

-- | Access level with which to view the returned result. Note that some
-- fields require elevated access.
plView :: Lens' PagesList (Maybe PagesListView)
plView = lens _plView (\ s a -> s{_plView = a})

-- | Continuation token if the request is paged.
plPageToken :: Lens' PagesList (Maybe Text)
plPageToken
  = lens _plPageToken (\ s a -> s{_plPageToken = a})

-- | Maximum number of Pages to fetch.
plMaxResults :: Lens' PagesList (Maybe Word32)
plMaxResults
  = lens _plMaxResults (\ s a -> s{_plMaxResults = a})

instance GoogleRequest PagesList where
        type Rs PagesList = PageList
        requestClient PagesList{..}
          = go _plBlogId (_plStatus ^. _Default) _plFetchBodies
              _plView
              _plPageToken
              _plMaxResults
              (Just AltJSON)
              bloggerService
          where go
                  = buildClient (Proxy :: Proxy PagesListResource)
                      mempty
