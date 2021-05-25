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
-- Module      : Network.Google.Resource.Blogger.Comments.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a comment by blog id, post id and comment id.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API v3 Reference> for @blogger.comments.delete@.
module Network.Google.Resource.Blogger.Comments.Delete
    (
    -- * REST Resource
      CommentsDeleteResource

    -- * Creating a Request
    , commentsDelete
    , CommentsDelete

    -- * Request Lenses
    , cdXgafv
    , cdUploadProtocol
    , cdAccessToken
    , cdUploadType
    , cdBlogId
    , cdPostId
    , cdCommentId
    , cdCallback
    ) where

import Network.Google.Blogger.Types
import Network.Google.Prelude

-- | A resource alias for @blogger.comments.delete@ method which the
-- 'CommentsDelete' request conforms to.
type CommentsDeleteResource =
     "v3" :>
       "blogs" :>
         Capture "blogId" Text :>
           "posts" :>
             Capture "postId" Text :>
               "comments" :>
                 Capture "commentId" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a comment by blog id, post id and comment id.
--
-- /See:/ 'commentsDelete' smart constructor.
data CommentsDelete =
  CommentsDelete'
    { _cdXgafv :: !(Maybe Xgafv)
    , _cdUploadProtocol :: !(Maybe Text)
    , _cdAccessToken :: !(Maybe Text)
    , _cdUploadType :: !(Maybe Text)
    , _cdBlogId :: !Text
    , _cdPostId :: !Text
    , _cdCommentId :: !Text
    , _cdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CommentsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdXgafv'
--
-- * 'cdUploadProtocol'
--
-- * 'cdAccessToken'
--
-- * 'cdUploadType'
--
-- * 'cdBlogId'
--
-- * 'cdPostId'
--
-- * 'cdCommentId'
--
-- * 'cdCallback'
commentsDelete
    :: Text -- ^ 'cdBlogId'
    -> Text -- ^ 'cdPostId'
    -> Text -- ^ 'cdCommentId'
    -> CommentsDelete
commentsDelete pCdBlogId_ pCdPostId_ pCdCommentId_ =
  CommentsDelete'
    { _cdXgafv = Nothing
    , _cdUploadProtocol = Nothing
    , _cdAccessToken = Nothing
    , _cdUploadType = Nothing
    , _cdBlogId = pCdBlogId_
    , _cdPostId = pCdPostId_
    , _cdCommentId = pCdCommentId_
    , _cdCallback = Nothing
    }


-- | V1 error format.
cdXgafv :: Lens' CommentsDelete (Maybe Xgafv)
cdXgafv = lens _cdXgafv (\ s a -> s{_cdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cdUploadProtocol :: Lens' CommentsDelete (Maybe Text)
cdUploadProtocol
  = lens _cdUploadProtocol
      (\ s a -> s{_cdUploadProtocol = a})

-- | OAuth access token.
cdAccessToken :: Lens' CommentsDelete (Maybe Text)
cdAccessToken
  = lens _cdAccessToken
      (\ s a -> s{_cdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cdUploadType :: Lens' CommentsDelete (Maybe Text)
cdUploadType
  = lens _cdUploadType (\ s a -> s{_cdUploadType = a})

cdBlogId :: Lens' CommentsDelete Text
cdBlogId = lens _cdBlogId (\ s a -> s{_cdBlogId = a})

cdPostId :: Lens' CommentsDelete Text
cdPostId = lens _cdPostId (\ s a -> s{_cdPostId = a})

cdCommentId :: Lens' CommentsDelete Text
cdCommentId
  = lens _cdCommentId (\ s a -> s{_cdCommentId = a})

-- | JSONP
cdCallback :: Lens' CommentsDelete (Maybe Text)
cdCallback
  = lens _cdCallback (\ s a -> s{_cdCallback = a})

instance GoogleRequest CommentsDelete where
        type Rs CommentsDelete = ()
        type Scopes CommentsDelete =
             '["https://www.googleapis.com/auth/blogger"]
        requestClient CommentsDelete'{..}
          = go _cdBlogId _cdPostId _cdCommentId _cdXgafv
              _cdUploadProtocol
              _cdAccessToken
              _cdUploadType
              _cdCallback
              (Just AltJSON)
              bloggerService
          where go
                  = buildClient (Proxy :: Proxy CommentsDeleteResource)
                      mempty
