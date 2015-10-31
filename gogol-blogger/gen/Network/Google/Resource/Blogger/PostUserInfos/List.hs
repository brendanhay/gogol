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
-- Module      : Network.Google.Resource.Blogger.PostUserInfos.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of post and post user info pairs, possibly filtered.
-- The post user info contains per-user information about the post, such as
-- access rights, specific to the user.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @blogger.postUserInfos.list@.
module Network.Google.Resource.Blogger.PostUserInfos.List
    (
    -- * REST Resource
      PostUserInfosListResource

    -- * Creating a Request
    , postUserInfosList'
    , PostUserInfosList'

    -- * Request Lenses
    , puilStatus
    , puilOrderBy
    , puilEndDate
    , puilBlogId
    , puilUserId
    , puilStartDate
    , puilFetchBodies
    , puilView
    , puilLabels
    , puilPageToken
    , puilMaxResults
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @blogger.postUserInfos.list@ method which the
-- 'PostUserInfosList'' request conforms to.
type PostUserInfosListResource =
     "blogger" :>
       "v3" :>
         "users" :>
           Capture "userId" Text :>
             "blogs" :>
               Capture "blogId" Text :>
                 "posts" :>
                   QueryParams "status" PostUserInfosListStatus :>
                     QueryParam "orderBy" PostUserInfosListOrderBy :>
                       QueryParam "endDate" DateTime' :>
                         QueryParam "startDate" DateTime' :>
                           QueryParam "fetchBodies" Bool :>
                             QueryParam "view" PostUserInfosListView :>
                               QueryParam "labels" Text :>
                                 QueryParam "pageToken" Text :>
                                   QueryParam "maxResults" (Textual Word32) :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON] PostUserInfosList

-- | Retrieves a list of post and post user info pairs, possibly filtered.
-- The post user info contains per-user information about the post, such as
-- access rights, specific to the user.
--
-- /See:/ 'postUserInfosList'' smart constructor.
data PostUserInfosList' = PostUserInfosList'
    { _puilStatus      :: !(Maybe [PostUserInfosListStatus])
    , _puilOrderBy     :: !PostUserInfosListOrderBy
    , _puilEndDate     :: !(Maybe DateTime')
    , _puilBlogId      :: !Text
    , _puilUserId      :: !Text
    , _puilStartDate   :: !(Maybe DateTime')
    , _puilFetchBodies :: !Bool
    , _puilView        :: !(Maybe PostUserInfosListView)
    , _puilLabels      :: !(Maybe Text)
    , _puilPageToken   :: !(Maybe Text)
    , _puilMaxResults  :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostUserInfosList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puilStatus'
--
-- * 'puilOrderBy'
--
-- * 'puilEndDate'
--
-- * 'puilBlogId'
--
-- * 'puilUserId'
--
-- * 'puilStartDate'
--
-- * 'puilFetchBodies'
--
-- * 'puilView'
--
-- * 'puilLabels'
--
-- * 'puilPageToken'
--
-- * 'puilMaxResults'
postUserInfosList'
    :: Text -- ^ 'puilBlogId'
    -> Text -- ^ 'puilUserId'
    -> PostUserInfosList'
postUserInfosList' pPuilBlogId_ pPuilUserId_ =
    PostUserInfosList'
    { _puilStatus = Nothing
    , _puilOrderBy = PUILOBPublished
    , _puilEndDate = Nothing
    , _puilBlogId = pPuilBlogId_
    , _puilUserId = pPuilUserId_
    , _puilStartDate = Nothing
    , _puilFetchBodies = False
    , _puilView = Nothing
    , _puilLabels = Nothing
    , _puilPageToken = Nothing
    , _puilMaxResults = Nothing
    }

puilStatus :: Lens' PostUserInfosList' [PostUserInfosListStatus]
puilStatus
  = lens _puilStatus (\ s a -> s{_puilStatus = a}) .
      _Default
      . _Coerce

-- | Sort order applied to search results. Default is published.
puilOrderBy :: Lens' PostUserInfosList' PostUserInfosListOrderBy
puilOrderBy
  = lens _puilOrderBy (\ s a -> s{_puilOrderBy = a})

-- | Latest post date to fetch, a date-time with RFC 3339 formatting.
puilEndDate :: Lens' PostUserInfosList' (Maybe UTCTime)
puilEndDate
  = lens _puilEndDate (\ s a -> s{_puilEndDate = a}) .
      mapping _DateTime

-- | ID of the blog to fetch posts from.
puilBlogId :: Lens' PostUserInfosList' Text
puilBlogId
  = lens _puilBlogId (\ s a -> s{_puilBlogId = a})

-- | ID of the user for the per-user information to be fetched. Either the
-- word \'self\' (sans quote marks) or the user\'s profile identifier.
puilUserId :: Lens' PostUserInfosList' Text
puilUserId
  = lens _puilUserId (\ s a -> s{_puilUserId = a})

-- | Earliest post date to fetch, a date-time with RFC 3339 formatting.
puilStartDate :: Lens' PostUserInfosList' (Maybe UTCTime)
puilStartDate
  = lens _puilStartDate
      (\ s a -> s{_puilStartDate = a})
      . mapping _DateTime

-- | Whether the body content of posts is included. Default is false.
puilFetchBodies :: Lens' PostUserInfosList' Bool
puilFetchBodies
  = lens _puilFetchBodies
      (\ s a -> s{_puilFetchBodies = a})

-- | Access level with which to view the returned result. Note that some
-- fields require elevated access.
puilView :: Lens' PostUserInfosList' (Maybe PostUserInfosListView)
puilView = lens _puilView (\ s a -> s{_puilView = a})

-- | Comma-separated list of labels to search for.
puilLabels :: Lens' PostUserInfosList' (Maybe Text)
puilLabels
  = lens _puilLabels (\ s a -> s{_puilLabels = a})

-- | Continuation token if the request is paged.
puilPageToken :: Lens' PostUserInfosList' (Maybe Text)
puilPageToken
  = lens _puilPageToken
      (\ s a -> s{_puilPageToken = a})

-- | Maximum number of posts to fetch.
puilMaxResults :: Lens' PostUserInfosList' (Maybe Word32)
puilMaxResults
  = lens _puilMaxResults
      (\ s a -> s{_puilMaxResults = a})
      . mapping _Coerce

instance GoogleRequest PostUserInfosList' where
        type Rs PostUserInfosList' = PostUserInfosList
        type Scopes PostUserInfosList' =
             '["https://www.googleapis.com/auth/blogger",
               "https://www.googleapis.com/auth/blogger.readonly"]
        requestClient PostUserInfosList'{..}
          = go _puilUserId _puilBlogId
              (_puilStatus ^. _Default)
              (Just _puilOrderBy)
              _puilEndDate
              _puilStartDate
              (Just _puilFetchBodies)
              _puilView
              _puilLabels
              _puilPageToken
              _puilMaxResults
              (Just AltJSON)
              bloggerService
          where go
                  = buildClient
                      (Proxy :: Proxy PostUserInfosListResource)
                      mempty
