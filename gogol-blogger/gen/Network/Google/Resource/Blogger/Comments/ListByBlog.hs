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
-- Module      : Network.Google.Resource.Blogger.Comments.ListByBlog
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists comments by blog.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API v3 Reference> for @blogger.comments.listByBlog@.
module Network.Google.Resource.Blogger.Comments.ListByBlog
    (
    -- * REST Resource
      CommentsListByBlogResource

    -- * Creating a Request
    , commentsListByBlog
    , CommentsListByBlog

    -- * Request Lenses
    , clbbStatus
    , clbbXgafv
    , clbbUploadProtocol
    , clbbAccessToken
    , clbbEndDate
    , clbbUploadType
    , clbbBlogId
    , clbbStartDate
    , clbbFetchBodies
    , clbbPageToken
    , clbbMaxResults
    , clbbCallback
    ) where

import Network.Google.Blogger.Types
import Network.Google.Prelude

-- | A resource alias for @blogger.comments.listByBlog@ method which the
-- 'CommentsListByBlog' request conforms to.
type CommentsListByBlogResource =
     "v3" :>
       "blogs" :>
         Capture "blogId" Text :>
           "comments" :>
             QueryParams "status" CommentsListByBlogStatus :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "endDate" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "startDate" Text :>
                           QueryParam "fetchBodies" Bool :>
                             QueryParam "pageToken" Text :>
                               QueryParam "maxResults" (Textual Word32) :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] CommentList

-- | Lists comments by blog.
--
-- /See:/ 'commentsListByBlog' smart constructor.
data CommentsListByBlog =
  CommentsListByBlog'
    { _clbbStatus :: !(Maybe [CommentsListByBlogStatus])
    , _clbbXgafv :: !(Maybe Xgafv)
    , _clbbUploadProtocol :: !(Maybe Text)
    , _clbbAccessToken :: !(Maybe Text)
    , _clbbEndDate :: !(Maybe Text)
    , _clbbUploadType :: !(Maybe Text)
    , _clbbBlogId :: !Text
    , _clbbStartDate :: !(Maybe Text)
    , _clbbFetchBodies :: !(Maybe Bool)
    , _clbbPageToken :: !(Maybe Text)
    , _clbbMaxResults :: !(Maybe (Textual Word32))
    , _clbbCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CommentsListByBlog' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clbbStatus'
--
-- * 'clbbXgafv'
--
-- * 'clbbUploadProtocol'
--
-- * 'clbbAccessToken'
--
-- * 'clbbEndDate'
--
-- * 'clbbUploadType'
--
-- * 'clbbBlogId'
--
-- * 'clbbStartDate'
--
-- * 'clbbFetchBodies'
--
-- * 'clbbPageToken'
--
-- * 'clbbMaxResults'
--
-- * 'clbbCallback'
commentsListByBlog
    :: Text -- ^ 'clbbBlogId'
    -> CommentsListByBlog
commentsListByBlog pClbbBlogId_ =
  CommentsListByBlog'
    { _clbbStatus = Nothing
    , _clbbXgafv = Nothing
    , _clbbUploadProtocol = Nothing
    , _clbbAccessToken = Nothing
    , _clbbEndDate = Nothing
    , _clbbUploadType = Nothing
    , _clbbBlogId = pClbbBlogId_
    , _clbbStartDate = Nothing
    , _clbbFetchBodies = Nothing
    , _clbbPageToken = Nothing
    , _clbbMaxResults = Nothing
    , _clbbCallback = Nothing
    }


clbbStatus :: Lens' CommentsListByBlog [CommentsListByBlogStatus]
clbbStatus
  = lens _clbbStatus (\ s a -> s{_clbbStatus = a}) .
      _Default
      . _Coerce

-- | V1 error format.
clbbXgafv :: Lens' CommentsListByBlog (Maybe Xgafv)
clbbXgafv
  = lens _clbbXgafv (\ s a -> s{_clbbXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
clbbUploadProtocol :: Lens' CommentsListByBlog (Maybe Text)
clbbUploadProtocol
  = lens _clbbUploadProtocol
      (\ s a -> s{_clbbUploadProtocol = a})

-- | OAuth access token.
clbbAccessToken :: Lens' CommentsListByBlog (Maybe Text)
clbbAccessToken
  = lens _clbbAccessToken
      (\ s a -> s{_clbbAccessToken = a})

clbbEndDate :: Lens' CommentsListByBlog (Maybe Text)
clbbEndDate
  = lens _clbbEndDate (\ s a -> s{_clbbEndDate = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
clbbUploadType :: Lens' CommentsListByBlog (Maybe Text)
clbbUploadType
  = lens _clbbUploadType
      (\ s a -> s{_clbbUploadType = a})

clbbBlogId :: Lens' CommentsListByBlog Text
clbbBlogId
  = lens _clbbBlogId (\ s a -> s{_clbbBlogId = a})

clbbStartDate :: Lens' CommentsListByBlog (Maybe Text)
clbbStartDate
  = lens _clbbStartDate
      (\ s a -> s{_clbbStartDate = a})

clbbFetchBodies :: Lens' CommentsListByBlog (Maybe Bool)
clbbFetchBodies
  = lens _clbbFetchBodies
      (\ s a -> s{_clbbFetchBodies = a})

clbbPageToken :: Lens' CommentsListByBlog (Maybe Text)
clbbPageToken
  = lens _clbbPageToken
      (\ s a -> s{_clbbPageToken = a})

clbbMaxResults :: Lens' CommentsListByBlog (Maybe Word32)
clbbMaxResults
  = lens _clbbMaxResults
      (\ s a -> s{_clbbMaxResults = a})
      . mapping _Coerce

-- | JSONP
clbbCallback :: Lens' CommentsListByBlog (Maybe Text)
clbbCallback
  = lens _clbbCallback (\ s a -> s{_clbbCallback = a})

instance GoogleRequest CommentsListByBlog where
        type Rs CommentsListByBlog = CommentList
        type Scopes CommentsListByBlog =
             '["https://www.googleapis.com/auth/blogger",
               "https://www.googleapis.com/auth/blogger.readonly"]
        requestClient CommentsListByBlog'{..}
          = go _clbbBlogId (_clbbStatus ^. _Default) _clbbXgafv
              _clbbUploadProtocol
              _clbbAccessToken
              _clbbEndDate
              _clbbUploadType
              _clbbStartDate
              _clbbFetchBodies
              _clbbPageToken
              _clbbMaxResults
              _clbbCallback
              (Just AltJSON)
              bloggerService
          where go
                  = buildClient
                      (Proxy :: Proxy CommentsListByBlogResource)
                      mempty
