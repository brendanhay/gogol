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
-- Module      : Network.Google.Resource.Blogger.Comments.Approve
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Marks a comment as not spam by blog id, post id and comment id.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API v3 Reference> for @blogger.comments.approve@.
module Network.Google.Resource.Blogger.Comments.Approve
    (
    -- * REST Resource
      CommentsApproveResource

    -- * Creating a Request
    , commentsApprove
    , CommentsApprove

    -- * Request Lenses
    , caXgafv
    , caUploadProtocol
    , caAccessToken
    , caUploadType
    , caBlogId
    , caPostId
    , caCommentId
    , caCallback
    ) where

import Network.Google.Blogger.Types
import Network.Google.Prelude

-- | A resource alias for @blogger.comments.approve@ method which the
-- 'CommentsApprove' request conforms to.
type CommentsApproveResource =
     "v3" :>
       "blogs" :>
         Capture "blogId" Text :>
           "posts" :>
             Capture "postId" Text :>
               "comments" :>
                 Capture "commentId" Text :>
                   "approve" :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :> Post '[JSON] Comment

-- | Marks a comment as not spam by blog id, post id and comment id.
--
-- /See:/ 'commentsApprove' smart constructor.
data CommentsApprove =
  CommentsApprove'
    { _caXgafv :: !(Maybe Xgafv)
    , _caUploadProtocol :: !(Maybe Text)
    , _caAccessToken :: !(Maybe Text)
    , _caUploadType :: !(Maybe Text)
    , _caBlogId :: !Text
    , _caPostId :: !Text
    , _caCommentId :: !Text
    , _caCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CommentsApprove' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caXgafv'
--
-- * 'caUploadProtocol'
--
-- * 'caAccessToken'
--
-- * 'caUploadType'
--
-- * 'caBlogId'
--
-- * 'caPostId'
--
-- * 'caCommentId'
--
-- * 'caCallback'
commentsApprove
    :: Text -- ^ 'caBlogId'
    -> Text -- ^ 'caPostId'
    -> Text -- ^ 'caCommentId'
    -> CommentsApprove
commentsApprove pCaBlogId_ pCaPostId_ pCaCommentId_ =
  CommentsApprove'
    { _caXgafv = Nothing
    , _caUploadProtocol = Nothing
    , _caAccessToken = Nothing
    , _caUploadType = Nothing
    , _caBlogId = pCaBlogId_
    , _caPostId = pCaPostId_
    , _caCommentId = pCaCommentId_
    , _caCallback = Nothing
    }


-- | V1 error format.
caXgafv :: Lens' CommentsApprove (Maybe Xgafv)
caXgafv = lens _caXgafv (\ s a -> s{_caXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
caUploadProtocol :: Lens' CommentsApprove (Maybe Text)
caUploadProtocol
  = lens _caUploadProtocol
      (\ s a -> s{_caUploadProtocol = a})

-- | OAuth access token.
caAccessToken :: Lens' CommentsApprove (Maybe Text)
caAccessToken
  = lens _caAccessToken
      (\ s a -> s{_caAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
caUploadType :: Lens' CommentsApprove (Maybe Text)
caUploadType
  = lens _caUploadType (\ s a -> s{_caUploadType = a})

caBlogId :: Lens' CommentsApprove Text
caBlogId = lens _caBlogId (\ s a -> s{_caBlogId = a})

caPostId :: Lens' CommentsApprove Text
caPostId = lens _caPostId (\ s a -> s{_caPostId = a})

caCommentId :: Lens' CommentsApprove Text
caCommentId
  = lens _caCommentId (\ s a -> s{_caCommentId = a})

-- | JSONP
caCallback :: Lens' CommentsApprove (Maybe Text)
caCallback
  = lens _caCallback (\ s a -> s{_caCallback = a})

instance GoogleRequest CommentsApprove where
        type Rs CommentsApprove = Comment
        type Scopes CommentsApprove =
             '["https://www.googleapis.com/auth/blogger"]
        requestClient CommentsApprove'{..}
          = go _caBlogId _caPostId _caCommentId _caXgafv
              _caUploadProtocol
              _caAccessToken
              _caUploadType
              _caCallback
              (Just AltJSON)
              bloggerService
          where go
                  = buildClient
                      (Proxy :: Proxy CommentsApproveResource)
                      mempty
