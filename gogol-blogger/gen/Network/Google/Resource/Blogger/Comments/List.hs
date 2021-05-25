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
-- Module      : Network.Google.Resource.Blogger.Comments.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists comments.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API v3 Reference> for @blogger.comments.list@.
module Network.Google.Resource.Blogger.Comments.List
    (
    -- * REST Resource
      CommentsListResource

    -- * Creating a Request
    , commentsList
    , CommentsList

    -- * Request Lenses
    , clStatus
    , clXgafv
    , clUploadProtocol
    , clAccessToken
    , clEndDate
    , clUploadType
    , clBlogId
    , clStartDate
    , clFetchBodies
    , clView
    , clPostId
    , clPageToken
    , clMaxResults
    , clCallback
    ) where

import Network.Google.Blogger.Types
import Network.Google.Prelude

-- | A resource alias for @blogger.comments.list@ method which the
-- 'CommentsList' request conforms to.
type CommentsListResource =
     "v3" :>
       "blogs" :>
         Capture "blogId" Text :>
           "posts" :>
             Capture "postId" Text :>
               "comments" :>
                 QueryParam "status" CommentsListStatus :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "endDate" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "startDate" Text :>
                               QueryParam "fetchBodies" Bool :>
                                 QueryParam "view" CommentsListView :>
                                   QueryParam "pageToken" Text :>
                                     QueryParam "maxResults" (Textual Word32) :>
                                       QueryParam "callback" Text :>
                                         QueryParam "alt" AltJSON :>
                                           Get '[JSON] CommentList

-- | Lists comments.
--
-- /See:/ 'commentsList' smart constructor.
data CommentsList =
  CommentsList'
    { _clStatus :: !(Maybe CommentsListStatus)
    , _clXgafv :: !(Maybe Xgafv)
    , _clUploadProtocol :: !(Maybe Text)
    , _clAccessToken :: !(Maybe Text)
    , _clEndDate :: !(Maybe Text)
    , _clUploadType :: !(Maybe Text)
    , _clBlogId :: !Text
    , _clStartDate :: !(Maybe Text)
    , _clFetchBodies :: !(Maybe Bool)
    , _clView :: !(Maybe CommentsListView)
    , _clPostId :: !Text
    , _clPageToken :: !(Maybe Text)
    , _clMaxResults :: !(Maybe (Textual Word32))
    , _clCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CommentsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clStatus'
--
-- * 'clXgafv'
--
-- * 'clUploadProtocol'
--
-- * 'clAccessToken'
--
-- * 'clEndDate'
--
-- * 'clUploadType'
--
-- * 'clBlogId'
--
-- * 'clStartDate'
--
-- * 'clFetchBodies'
--
-- * 'clView'
--
-- * 'clPostId'
--
-- * 'clPageToken'
--
-- * 'clMaxResults'
--
-- * 'clCallback'
commentsList
    :: Text -- ^ 'clBlogId'
    -> Text -- ^ 'clPostId'
    -> CommentsList
commentsList pClBlogId_ pClPostId_ =
  CommentsList'
    { _clStatus = Nothing
    , _clXgafv = Nothing
    , _clUploadProtocol = Nothing
    , _clAccessToken = Nothing
    , _clEndDate = Nothing
    , _clUploadType = Nothing
    , _clBlogId = pClBlogId_
    , _clStartDate = Nothing
    , _clFetchBodies = Nothing
    , _clView = Nothing
    , _clPostId = pClPostId_
    , _clPageToken = Nothing
    , _clMaxResults = Nothing
    , _clCallback = Nothing
    }


clStatus :: Lens' CommentsList (Maybe CommentsListStatus)
clStatus = lens _clStatus (\ s a -> s{_clStatus = a})

-- | V1 error format.
clXgafv :: Lens' CommentsList (Maybe Xgafv)
clXgafv = lens _clXgafv (\ s a -> s{_clXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
clUploadProtocol :: Lens' CommentsList (Maybe Text)
clUploadProtocol
  = lens _clUploadProtocol
      (\ s a -> s{_clUploadProtocol = a})

-- | OAuth access token.
clAccessToken :: Lens' CommentsList (Maybe Text)
clAccessToken
  = lens _clAccessToken
      (\ s a -> s{_clAccessToken = a})

clEndDate :: Lens' CommentsList (Maybe Text)
clEndDate
  = lens _clEndDate (\ s a -> s{_clEndDate = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
clUploadType :: Lens' CommentsList (Maybe Text)
clUploadType
  = lens _clUploadType (\ s a -> s{_clUploadType = a})

clBlogId :: Lens' CommentsList Text
clBlogId = lens _clBlogId (\ s a -> s{_clBlogId = a})

clStartDate :: Lens' CommentsList (Maybe Text)
clStartDate
  = lens _clStartDate (\ s a -> s{_clStartDate = a})

clFetchBodies :: Lens' CommentsList (Maybe Bool)
clFetchBodies
  = lens _clFetchBodies
      (\ s a -> s{_clFetchBodies = a})

clView :: Lens' CommentsList (Maybe CommentsListView)
clView = lens _clView (\ s a -> s{_clView = a})

clPostId :: Lens' CommentsList Text
clPostId = lens _clPostId (\ s a -> s{_clPostId = a})

clPageToken :: Lens' CommentsList (Maybe Text)
clPageToken
  = lens _clPageToken (\ s a -> s{_clPageToken = a})

clMaxResults :: Lens' CommentsList (Maybe Word32)
clMaxResults
  = lens _clMaxResults (\ s a -> s{_clMaxResults = a})
      . mapping _Coerce

-- | JSONP
clCallback :: Lens' CommentsList (Maybe Text)
clCallback
  = lens _clCallback (\ s a -> s{_clCallback = a})

instance GoogleRequest CommentsList where
        type Rs CommentsList = CommentList
        type Scopes CommentsList =
             '["https://www.googleapis.com/auth/blogger",
               "https://www.googleapis.com/auth/blogger.readonly"]
        requestClient CommentsList'{..}
          = go _clBlogId _clPostId _clStatus _clXgafv
              _clUploadProtocol
              _clAccessToken
              _clEndDate
              _clUploadType
              _clStartDate
              _clFetchBodies
              _clView
              _clPageToken
              _clMaxResults
              _clCallback
              (Just AltJSON)
              bloggerService
          where go
                  = buildClient (Proxy :: Proxy CommentsListResource)
                      mempty
