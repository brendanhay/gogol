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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists post and user info pairs.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API v3 Reference> for @blogger.postUserInfos.list@.
module Network.Google.Resource.Blogger.PostUserInfos.List
    (
    -- * REST Resource
      PostUserInfosListResource

    -- * Creating a Request
    , postUserInfosList'
    , PostUserInfosList'

    -- * Request Lenses
    , puilStatus
    , puilXgafv
    , puilUploadProtocol
    , puilOrderBy
    , puilAccessToken
    , puilEndDate
    , puilUploadType
    , puilBlogId
    , puilUserId
    , puilStartDate
    , puilFetchBodies
    , puilView
    , puilLabels
    , puilPageToken
    , puilMaxResults
    , puilCallback
    ) where

import Network.Google.Blogger.Types
import Network.Google.Prelude

-- | A resource alias for @blogger.postUserInfos.list@ method which the
-- 'PostUserInfosList'' request conforms to.
type PostUserInfosListResource =
     "v3" :>
       "users" :>
         Capture "userId" Text :>
           "blogs" :>
             Capture "blogId" Text :>
               "posts" :>
                 QueryParams "status" PostUserInfosListStatus :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "orderBy" PostUserInfosListOrderBy :>
                         QueryParam "access_token" Text :>
                           QueryParam "endDate" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParam "startDate" Text :>
                                 QueryParam "fetchBodies" Bool :>
                                   QueryParam "view" PostUserInfosListView :>
                                     QueryParam "labels" Text :>
                                       QueryParam "pageToken" Text :>
                                         QueryParam "maxResults"
                                           (Textual Word32)
                                           :>
                                           QueryParam "callback" Text :>
                                             QueryParam "alt" AltJSON :>
                                               Get '[JSON] PostUserInfosList

-- | Lists post and user info pairs.
--
-- /See:/ 'postUserInfosList'' smart constructor.
data PostUserInfosList' =
  PostUserInfosList''
    { _puilStatus :: !(Maybe [PostUserInfosListStatus])
    , _puilXgafv :: !(Maybe Xgafv)
    , _puilUploadProtocol :: !(Maybe Text)
    , _puilOrderBy :: !PostUserInfosListOrderBy
    , _puilAccessToken :: !(Maybe Text)
    , _puilEndDate :: !(Maybe Text)
    , _puilUploadType :: !(Maybe Text)
    , _puilBlogId :: !Text
    , _puilUserId :: !Text
    , _puilStartDate :: !(Maybe Text)
    , _puilFetchBodies :: !Bool
    , _puilView :: !(Maybe PostUserInfosListView)
    , _puilLabels :: !(Maybe Text)
    , _puilPageToken :: !(Maybe Text)
    , _puilMaxResults :: !(Maybe (Textual Word32))
    , _puilCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PostUserInfosList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puilStatus'
--
-- * 'puilXgafv'
--
-- * 'puilUploadProtocol'
--
-- * 'puilOrderBy'
--
-- * 'puilAccessToken'
--
-- * 'puilEndDate'
--
-- * 'puilUploadType'
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
--
-- * 'puilCallback'
postUserInfosList'
    :: Text -- ^ 'puilBlogId'
    -> Text -- ^ 'puilUserId'
    -> PostUserInfosList'
postUserInfosList' pPuilBlogId_ pPuilUserId_ =
  PostUserInfosList''
    { _puilStatus = Nothing
    , _puilXgafv = Nothing
    , _puilUploadProtocol = Nothing
    , _puilOrderBy = PUILOBPublished
    , _puilAccessToken = Nothing
    , _puilEndDate = Nothing
    , _puilUploadType = Nothing
    , _puilBlogId = pPuilBlogId_
    , _puilUserId = pPuilUserId_
    , _puilStartDate = Nothing
    , _puilFetchBodies = False
    , _puilView = Nothing
    , _puilLabels = Nothing
    , _puilPageToken = Nothing
    , _puilMaxResults = Nothing
    , _puilCallback = Nothing
    }


puilStatus :: Lens' PostUserInfosList' [PostUserInfosListStatus]
puilStatus
  = lens _puilStatus (\ s a -> s{_puilStatus = a}) .
      _Default
      . _Coerce

-- | V1 error format.
puilXgafv :: Lens' PostUserInfosList' (Maybe Xgafv)
puilXgafv
  = lens _puilXgafv (\ s a -> s{_puilXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
puilUploadProtocol :: Lens' PostUserInfosList' (Maybe Text)
puilUploadProtocol
  = lens _puilUploadProtocol
      (\ s a -> s{_puilUploadProtocol = a})

puilOrderBy :: Lens' PostUserInfosList' PostUserInfosListOrderBy
puilOrderBy
  = lens _puilOrderBy (\ s a -> s{_puilOrderBy = a})

-- | OAuth access token.
puilAccessToken :: Lens' PostUserInfosList' (Maybe Text)
puilAccessToken
  = lens _puilAccessToken
      (\ s a -> s{_puilAccessToken = a})

puilEndDate :: Lens' PostUserInfosList' (Maybe Text)
puilEndDate
  = lens _puilEndDate (\ s a -> s{_puilEndDate = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
puilUploadType :: Lens' PostUserInfosList' (Maybe Text)
puilUploadType
  = lens _puilUploadType
      (\ s a -> s{_puilUploadType = a})

puilBlogId :: Lens' PostUserInfosList' Text
puilBlogId
  = lens _puilBlogId (\ s a -> s{_puilBlogId = a})

puilUserId :: Lens' PostUserInfosList' Text
puilUserId
  = lens _puilUserId (\ s a -> s{_puilUserId = a})

puilStartDate :: Lens' PostUserInfosList' (Maybe Text)
puilStartDate
  = lens _puilStartDate
      (\ s a -> s{_puilStartDate = a})

puilFetchBodies :: Lens' PostUserInfosList' Bool
puilFetchBodies
  = lens _puilFetchBodies
      (\ s a -> s{_puilFetchBodies = a})

puilView :: Lens' PostUserInfosList' (Maybe PostUserInfosListView)
puilView = lens _puilView (\ s a -> s{_puilView = a})

puilLabels :: Lens' PostUserInfosList' (Maybe Text)
puilLabels
  = lens _puilLabels (\ s a -> s{_puilLabels = a})

puilPageToken :: Lens' PostUserInfosList' (Maybe Text)
puilPageToken
  = lens _puilPageToken
      (\ s a -> s{_puilPageToken = a})

puilMaxResults :: Lens' PostUserInfosList' (Maybe Word32)
puilMaxResults
  = lens _puilMaxResults
      (\ s a -> s{_puilMaxResults = a})
      . mapping _Coerce

-- | JSONP
puilCallback :: Lens' PostUserInfosList' (Maybe Text)
puilCallback
  = lens _puilCallback (\ s a -> s{_puilCallback = a})

instance GoogleRequest PostUserInfosList' where
        type Rs PostUserInfosList' = PostUserInfosList
        type Scopes PostUserInfosList' =
             '["https://www.googleapis.com/auth/blogger",
               "https://www.googleapis.com/auth/blogger.readonly"]
        requestClient PostUserInfosList''{..}
          = go _puilUserId _puilBlogId
              (_puilStatus ^. _Default)
              _puilXgafv
              _puilUploadProtocol
              (Just _puilOrderBy)
              _puilAccessToken
              _puilEndDate
              _puilUploadType
              _puilStartDate
              (Just _puilFetchBodies)
              _puilView
              _puilLabels
              _puilPageToken
              _puilMaxResults
              _puilCallback
              (Just AltJSON)
              bloggerService
          where go
                  = buildClient
                      (Proxy :: Proxy PostUserInfosListResource)
                      mempty
