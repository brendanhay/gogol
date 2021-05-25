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
-- Module      : Network.Google.Resource.Blogger.Comments.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a comment by id.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API v3 Reference> for @blogger.comments.get@.
module Network.Google.Resource.Blogger.Comments.Get
    (
    -- * REST Resource
      CommentsGetResource

    -- * Creating a Request
    , commentsGet
    , CommentsGet

    -- * Request Lenses
    , cgXgafv
    , cgUploadProtocol
    , cgAccessToken
    , cgUploadType
    , cgBlogId
    , cgView
    , cgPostId
    , cgCommentId
    , cgCallback
    ) where

import Network.Google.Blogger.Types
import Network.Google.Prelude

-- | A resource alias for @blogger.comments.get@ method which the
-- 'CommentsGet' request conforms to.
type CommentsGetResource =
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
                           QueryParam "view" CommentsGetView :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :> Get '[JSON] Comment

-- | Gets a comment by id.
--
-- /See:/ 'commentsGet' smart constructor.
data CommentsGet =
  CommentsGet'
    { _cgXgafv :: !(Maybe Xgafv)
    , _cgUploadProtocol :: !(Maybe Text)
    , _cgAccessToken :: !(Maybe Text)
    , _cgUploadType :: !(Maybe Text)
    , _cgBlogId :: !Text
    , _cgView :: !(Maybe CommentsGetView)
    , _cgPostId :: !Text
    , _cgCommentId :: !Text
    , _cgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CommentsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgXgafv'
--
-- * 'cgUploadProtocol'
--
-- * 'cgAccessToken'
--
-- * 'cgUploadType'
--
-- * 'cgBlogId'
--
-- * 'cgView'
--
-- * 'cgPostId'
--
-- * 'cgCommentId'
--
-- * 'cgCallback'
commentsGet
    :: Text -- ^ 'cgBlogId'
    -> Text -- ^ 'cgPostId'
    -> Text -- ^ 'cgCommentId'
    -> CommentsGet
commentsGet pCgBlogId_ pCgPostId_ pCgCommentId_ =
  CommentsGet'
    { _cgXgafv = Nothing
    , _cgUploadProtocol = Nothing
    , _cgAccessToken = Nothing
    , _cgUploadType = Nothing
    , _cgBlogId = pCgBlogId_
    , _cgView = Nothing
    , _cgPostId = pCgPostId_
    , _cgCommentId = pCgCommentId_
    , _cgCallback = Nothing
    }


-- | V1 error format.
cgXgafv :: Lens' CommentsGet (Maybe Xgafv)
cgXgafv = lens _cgXgafv (\ s a -> s{_cgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cgUploadProtocol :: Lens' CommentsGet (Maybe Text)
cgUploadProtocol
  = lens _cgUploadProtocol
      (\ s a -> s{_cgUploadProtocol = a})

-- | OAuth access token.
cgAccessToken :: Lens' CommentsGet (Maybe Text)
cgAccessToken
  = lens _cgAccessToken
      (\ s a -> s{_cgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cgUploadType :: Lens' CommentsGet (Maybe Text)
cgUploadType
  = lens _cgUploadType (\ s a -> s{_cgUploadType = a})

cgBlogId :: Lens' CommentsGet Text
cgBlogId = lens _cgBlogId (\ s a -> s{_cgBlogId = a})

cgView :: Lens' CommentsGet (Maybe CommentsGetView)
cgView = lens _cgView (\ s a -> s{_cgView = a})

cgPostId :: Lens' CommentsGet Text
cgPostId = lens _cgPostId (\ s a -> s{_cgPostId = a})

cgCommentId :: Lens' CommentsGet Text
cgCommentId
  = lens _cgCommentId (\ s a -> s{_cgCommentId = a})

-- | JSONP
cgCallback :: Lens' CommentsGet (Maybe Text)
cgCallback
  = lens _cgCallback (\ s a -> s{_cgCallback = a})

instance GoogleRequest CommentsGet where
        type Rs CommentsGet = Comment
        type Scopes CommentsGet =
             '["https://www.googleapis.com/auth/blogger",
               "https://www.googleapis.com/auth/blogger.readonly"]
        requestClient CommentsGet'{..}
          = go _cgBlogId _cgPostId _cgCommentId _cgXgafv
              _cgUploadProtocol
              _cgAccessToken
              _cgUploadType
              _cgView
              _cgCallback
              (Just AltJSON)
              bloggerService
          where go
                  = buildClient (Proxy :: Proxy CommentsGetResource)
                      mempty
