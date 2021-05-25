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
-- Module      : Network.Google.Resource.Blogger.Comments.RemoveContent
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes the content of a comment by blog id, post id and comment id.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API v3 Reference> for @blogger.comments.removeContent@.
module Network.Google.Resource.Blogger.Comments.RemoveContent
    (
    -- * REST Resource
      CommentsRemoveContentResource

    -- * Creating a Request
    , commentsRemoveContent
    , CommentsRemoveContent

    -- * Request Lenses
    , crcXgafv
    , crcUploadProtocol
    , crcAccessToken
    , crcUploadType
    , crcBlogId
    , crcPostId
    , crcCommentId
    , crcCallback
    ) where

import Network.Google.Blogger.Types
import Network.Google.Prelude

-- | A resource alias for @blogger.comments.removeContent@ method which the
-- 'CommentsRemoveContent' request conforms to.
type CommentsRemoveContentResource =
     "v3" :>
       "blogs" :>
         Capture "blogId" Text :>
           "posts" :>
             Capture "postId" Text :>
               "comments" :>
                 Capture "commentId" Text :>
                   "removecontent" :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :> Post '[JSON] Comment

-- | Removes the content of a comment by blog id, post id and comment id.
--
-- /See:/ 'commentsRemoveContent' smart constructor.
data CommentsRemoveContent =
  CommentsRemoveContent'
    { _crcXgafv :: !(Maybe Xgafv)
    , _crcUploadProtocol :: !(Maybe Text)
    , _crcAccessToken :: !(Maybe Text)
    , _crcUploadType :: !(Maybe Text)
    , _crcBlogId :: !Text
    , _crcPostId :: !Text
    , _crcCommentId :: !Text
    , _crcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CommentsRemoveContent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crcXgafv'
--
-- * 'crcUploadProtocol'
--
-- * 'crcAccessToken'
--
-- * 'crcUploadType'
--
-- * 'crcBlogId'
--
-- * 'crcPostId'
--
-- * 'crcCommentId'
--
-- * 'crcCallback'
commentsRemoveContent
    :: Text -- ^ 'crcBlogId'
    -> Text -- ^ 'crcPostId'
    -> Text -- ^ 'crcCommentId'
    -> CommentsRemoveContent
commentsRemoveContent pCrcBlogId_ pCrcPostId_ pCrcCommentId_ =
  CommentsRemoveContent'
    { _crcXgafv = Nothing
    , _crcUploadProtocol = Nothing
    , _crcAccessToken = Nothing
    , _crcUploadType = Nothing
    , _crcBlogId = pCrcBlogId_
    , _crcPostId = pCrcPostId_
    , _crcCommentId = pCrcCommentId_
    , _crcCallback = Nothing
    }


-- | V1 error format.
crcXgafv :: Lens' CommentsRemoveContent (Maybe Xgafv)
crcXgafv = lens _crcXgafv (\ s a -> s{_crcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
crcUploadProtocol :: Lens' CommentsRemoveContent (Maybe Text)
crcUploadProtocol
  = lens _crcUploadProtocol
      (\ s a -> s{_crcUploadProtocol = a})

-- | OAuth access token.
crcAccessToken :: Lens' CommentsRemoveContent (Maybe Text)
crcAccessToken
  = lens _crcAccessToken
      (\ s a -> s{_crcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
crcUploadType :: Lens' CommentsRemoveContent (Maybe Text)
crcUploadType
  = lens _crcUploadType
      (\ s a -> s{_crcUploadType = a})

crcBlogId :: Lens' CommentsRemoveContent Text
crcBlogId
  = lens _crcBlogId (\ s a -> s{_crcBlogId = a})

crcPostId :: Lens' CommentsRemoveContent Text
crcPostId
  = lens _crcPostId (\ s a -> s{_crcPostId = a})

crcCommentId :: Lens' CommentsRemoveContent Text
crcCommentId
  = lens _crcCommentId (\ s a -> s{_crcCommentId = a})

-- | JSONP
crcCallback :: Lens' CommentsRemoveContent (Maybe Text)
crcCallback
  = lens _crcCallback (\ s a -> s{_crcCallback = a})

instance GoogleRequest CommentsRemoveContent where
        type Rs CommentsRemoveContent = Comment
        type Scopes CommentsRemoveContent =
             '["https://www.googleapis.com/auth/blogger"]
        requestClient CommentsRemoveContent'{..}
          = go _crcBlogId _crcPostId _crcCommentId _crcXgafv
              _crcUploadProtocol
              _crcAccessToken
              _crcUploadType
              _crcCallback
              (Just AltJSON)
              bloggerService
          where go
                  = buildClient
                      (Proxy :: Proxy CommentsRemoveContentResource)
                      mempty
