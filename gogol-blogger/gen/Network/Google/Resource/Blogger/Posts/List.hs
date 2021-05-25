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
-- Module      : Network.Google.Resource.Blogger.Posts.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists posts.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API v3 Reference> for @blogger.posts.list@.
module Network.Google.Resource.Blogger.Posts.List
    (
    -- * REST Resource
      PostsListResource

    -- * Creating a Request
    , postsList
    , PostsList

    -- * Request Lenses
    , pllStatus
    , pllXgafv
    , pllUploadProtocol
    , pllOrderBy
    , pllAccessToken
    , pllFetchImages
    , pllEndDate
    , pllUploadType
    , pllBlogId
    , pllStartDate
    , pllFetchBodies
    , pllView
    , pllLabels
    , pllPageToken
    , pllMaxResults
    , pllCallback
    ) where

import Network.Google.Blogger.Types
import Network.Google.Prelude

-- | A resource alias for @blogger.posts.list@ method which the
-- 'PostsList' request conforms to.
type PostsListResource =
     "v3" :>
       "blogs" :>
         Capture "blogId" Text :>
           "posts" :>
             QueryParams "status" PostsListStatus :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "orderBy" PostsListOrderBy :>
                     QueryParam "access_token" Text :>
                       QueryParam "fetchImages" Bool :>
                         QueryParam "endDate" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "startDate" Text :>
                               QueryParam "fetchBodies" Bool :>
                                 QueryParam "view" PostsListView :>
                                   QueryParam "labels" Text :>
                                     QueryParam "pageToken" Text :>
                                       QueryParam "maxResults" (Textual Word32)
                                         :>
                                         QueryParam "callback" Text :>
                                           QueryParam "alt" AltJSON :>
                                             Get '[JSON] PostList

-- | Lists posts.
--
-- /See:/ 'postsList' smart constructor.
data PostsList =
  PostsList'
    { _pllStatus :: !(Maybe [PostsListStatus])
    , _pllXgafv :: !(Maybe Xgafv)
    , _pllUploadProtocol :: !(Maybe Text)
    , _pllOrderBy :: !PostsListOrderBy
    , _pllAccessToken :: !(Maybe Text)
    , _pllFetchImages :: !(Maybe Bool)
    , _pllEndDate :: !(Maybe Text)
    , _pllUploadType :: !(Maybe Text)
    , _pllBlogId :: !Text
    , _pllStartDate :: !(Maybe Text)
    , _pllFetchBodies :: !Bool
    , _pllView :: !(Maybe PostsListView)
    , _pllLabels :: !(Maybe Text)
    , _pllPageToken :: !(Maybe Text)
    , _pllMaxResults :: !(Maybe (Textual Word32))
    , _pllCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PostsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pllStatus'
--
-- * 'pllXgafv'
--
-- * 'pllUploadProtocol'
--
-- * 'pllOrderBy'
--
-- * 'pllAccessToken'
--
-- * 'pllFetchImages'
--
-- * 'pllEndDate'
--
-- * 'pllUploadType'
--
-- * 'pllBlogId'
--
-- * 'pllStartDate'
--
-- * 'pllFetchBodies'
--
-- * 'pllView'
--
-- * 'pllLabels'
--
-- * 'pllPageToken'
--
-- * 'pllMaxResults'
--
-- * 'pllCallback'
postsList
    :: Text -- ^ 'pllBlogId'
    -> PostsList
postsList pPllBlogId_ =
  PostsList'
    { _pllStatus = Nothing
    , _pllXgafv = Nothing
    , _pllUploadProtocol = Nothing
    , _pllOrderBy = Published
    , _pllAccessToken = Nothing
    , _pllFetchImages = Nothing
    , _pllEndDate = Nothing
    , _pllUploadType = Nothing
    , _pllBlogId = pPllBlogId_
    , _pllStartDate = Nothing
    , _pllFetchBodies = True
    , _pllView = Nothing
    , _pllLabels = Nothing
    , _pllPageToken = Nothing
    , _pllMaxResults = Nothing
    , _pllCallback = Nothing
    }


pllStatus :: Lens' PostsList [PostsListStatus]
pllStatus
  = lens _pllStatus (\ s a -> s{_pllStatus = a}) .
      _Default
      . _Coerce

-- | V1 error format.
pllXgafv :: Lens' PostsList (Maybe Xgafv)
pllXgafv = lens _pllXgafv (\ s a -> s{_pllXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pllUploadProtocol :: Lens' PostsList (Maybe Text)
pllUploadProtocol
  = lens _pllUploadProtocol
      (\ s a -> s{_pllUploadProtocol = a})

pllOrderBy :: Lens' PostsList PostsListOrderBy
pllOrderBy
  = lens _pllOrderBy (\ s a -> s{_pllOrderBy = a})

-- | OAuth access token.
pllAccessToken :: Lens' PostsList (Maybe Text)
pllAccessToken
  = lens _pllAccessToken
      (\ s a -> s{_pllAccessToken = a})

pllFetchImages :: Lens' PostsList (Maybe Bool)
pllFetchImages
  = lens _pllFetchImages
      (\ s a -> s{_pllFetchImages = a})

pllEndDate :: Lens' PostsList (Maybe Text)
pllEndDate
  = lens _pllEndDate (\ s a -> s{_pllEndDate = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pllUploadType :: Lens' PostsList (Maybe Text)
pllUploadType
  = lens _pllUploadType
      (\ s a -> s{_pllUploadType = a})

pllBlogId :: Lens' PostsList Text
pllBlogId
  = lens _pllBlogId (\ s a -> s{_pllBlogId = a})

pllStartDate :: Lens' PostsList (Maybe Text)
pllStartDate
  = lens _pllStartDate (\ s a -> s{_pllStartDate = a})

pllFetchBodies :: Lens' PostsList Bool
pllFetchBodies
  = lens _pllFetchBodies
      (\ s a -> s{_pllFetchBodies = a})

pllView :: Lens' PostsList (Maybe PostsListView)
pllView = lens _pllView (\ s a -> s{_pllView = a})

pllLabels :: Lens' PostsList (Maybe Text)
pllLabels
  = lens _pllLabels (\ s a -> s{_pllLabels = a})

pllPageToken :: Lens' PostsList (Maybe Text)
pllPageToken
  = lens _pllPageToken (\ s a -> s{_pllPageToken = a})

pllMaxResults :: Lens' PostsList (Maybe Word32)
pllMaxResults
  = lens _pllMaxResults
      (\ s a -> s{_pllMaxResults = a})
      . mapping _Coerce

-- | JSONP
pllCallback :: Lens' PostsList (Maybe Text)
pllCallback
  = lens _pllCallback (\ s a -> s{_pllCallback = a})

instance GoogleRequest PostsList where
        type Rs PostsList = PostList
        type Scopes PostsList =
             '["https://www.googleapis.com/auth/blogger",
               "https://www.googleapis.com/auth/blogger.readonly"]
        requestClient PostsList'{..}
          = go _pllBlogId (_pllStatus ^. _Default) _pllXgafv
              _pllUploadProtocol
              (Just _pllOrderBy)
              _pllAccessToken
              _pllFetchImages
              _pllEndDate
              _pllUploadType
              _pllStartDate
              (Just _pllFetchBodies)
              _pllView
              _pllLabels
              _pllPageToken
              _pllMaxResults
              _pllCallback
              (Just AltJSON)
              bloggerService
          where go
                  = buildClient (Proxy :: Proxy PostsListResource)
                      mempty
