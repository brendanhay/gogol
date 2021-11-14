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
-- Module      : Network.Google.Resource.Blogger.Comments.MarkAsSpam
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Marks a comment as spam by blog id, post id and comment id.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API v3 Reference> for @blogger.comments.markAsSpam@.
module Network.Google.Resource.Blogger.Comments.MarkAsSpam
    (
    -- * REST Resource
      CommentsMarkAsSpamResource

    -- * Creating a Request
    , commentsMarkAsSpam
    , CommentsMarkAsSpam

    -- * Request Lenses
    , cmasXgafv
    , cmasUploadProtocol
    , cmasAccessToken
    , cmasUploadType
    , cmasBlogId
    , cmasPostId
    , cmasCommentId
    , cmasCallback
    ) where

import Network.Google.Blogger.Types
import Network.Google.Prelude

-- | A resource alias for @blogger.comments.markAsSpam@ method which the
-- 'CommentsMarkAsSpam' request conforms to.
type CommentsMarkAsSpamResource =
     "v3" :>
       "blogs" :>
         Capture "blogId" Text :>
           "posts" :>
             Capture "postId" Text :>
               "comments" :>
                 Capture "commentId" Text :>
                   "spam" :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :> Post '[JSON] Comment

-- | Marks a comment as spam by blog id, post id and comment id.
--
-- /See:/ 'commentsMarkAsSpam' smart constructor.
data CommentsMarkAsSpam =
  CommentsMarkAsSpam'
    { _cmasXgafv :: !(Maybe Xgafv)
    , _cmasUploadProtocol :: !(Maybe Text)
    , _cmasAccessToken :: !(Maybe Text)
    , _cmasUploadType :: !(Maybe Text)
    , _cmasBlogId :: !Text
    , _cmasPostId :: !Text
    , _cmasCommentId :: !Text
    , _cmasCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CommentsMarkAsSpam' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmasXgafv'
--
-- * 'cmasUploadProtocol'
--
-- * 'cmasAccessToken'
--
-- * 'cmasUploadType'
--
-- * 'cmasBlogId'
--
-- * 'cmasPostId'
--
-- * 'cmasCommentId'
--
-- * 'cmasCallback'
commentsMarkAsSpam
    :: Text -- ^ 'cmasBlogId'
    -> Text -- ^ 'cmasPostId'
    -> Text -- ^ 'cmasCommentId'
    -> CommentsMarkAsSpam
commentsMarkAsSpam pCmasBlogId_ pCmasPostId_ pCmasCommentId_ =
  CommentsMarkAsSpam'
    { _cmasXgafv = Nothing
    , _cmasUploadProtocol = Nothing
    , _cmasAccessToken = Nothing
    , _cmasUploadType = Nothing
    , _cmasBlogId = pCmasBlogId_
    , _cmasPostId = pCmasPostId_
    , _cmasCommentId = pCmasCommentId_
    , _cmasCallback = Nothing
    }


-- | V1 error format.
cmasXgafv :: Lens' CommentsMarkAsSpam (Maybe Xgafv)
cmasXgafv
  = lens _cmasXgafv (\ s a -> s{_cmasXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cmasUploadProtocol :: Lens' CommentsMarkAsSpam (Maybe Text)
cmasUploadProtocol
  = lens _cmasUploadProtocol
      (\ s a -> s{_cmasUploadProtocol = a})

-- | OAuth access token.
cmasAccessToken :: Lens' CommentsMarkAsSpam (Maybe Text)
cmasAccessToken
  = lens _cmasAccessToken
      (\ s a -> s{_cmasAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cmasUploadType :: Lens' CommentsMarkAsSpam (Maybe Text)
cmasUploadType
  = lens _cmasUploadType
      (\ s a -> s{_cmasUploadType = a})

cmasBlogId :: Lens' CommentsMarkAsSpam Text
cmasBlogId
  = lens _cmasBlogId (\ s a -> s{_cmasBlogId = a})

cmasPostId :: Lens' CommentsMarkAsSpam Text
cmasPostId
  = lens _cmasPostId (\ s a -> s{_cmasPostId = a})

cmasCommentId :: Lens' CommentsMarkAsSpam Text
cmasCommentId
  = lens _cmasCommentId
      (\ s a -> s{_cmasCommentId = a})

-- | JSONP
cmasCallback :: Lens' CommentsMarkAsSpam (Maybe Text)
cmasCallback
  = lens _cmasCallback (\ s a -> s{_cmasCallback = a})

instance GoogleRequest CommentsMarkAsSpam where
        type Rs CommentsMarkAsSpam = Comment
        type Scopes CommentsMarkAsSpam =
             '["https://www.googleapis.com/auth/blogger"]
        requestClient CommentsMarkAsSpam'{..}
          = go _cmasBlogId _cmasPostId _cmasCommentId
              _cmasXgafv
              _cmasUploadProtocol
              _cmasAccessToken
              _cmasUploadType
              _cmasCallback
              (Just AltJSON)
              bloggerService
          where go
                  = buildClient
                      (Proxy :: Proxy CommentsMarkAsSpamResource)
                      mempty
