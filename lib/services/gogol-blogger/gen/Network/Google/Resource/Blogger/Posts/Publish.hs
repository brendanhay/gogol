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
-- Module      : Network.Google.Resource.Blogger.Posts.Publish
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Publishes a post.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API v3 Reference> for @blogger.posts.publish@.
module Network.Google.Resource.Blogger.Posts.Publish
    (
    -- * REST Resource
      PostsPublishResource

    -- * Creating a Request
    , postsPublish
    , PostsPublish

    -- * Request Lenses
    , pppXgafv
    , pppUploadProtocol
    , pppPublishDate
    , pppAccessToken
    , pppUploadType
    , pppBlogId
    , pppPostId
    , pppCallback
    ) where

import Network.Google.Blogger.Types
import Network.Google.Prelude

-- | A resource alias for @blogger.posts.publish@ method which the
-- 'PostsPublish' request conforms to.
type PostsPublishResource =
     "v3" :>
       "blogs" :>
         Capture "blogId" Text :>
           "posts" :>
             Capture "postId" Text :>
               "publish" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "publishDate" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Post '[JSON] Post'

-- | Publishes a post.
--
-- /See:/ 'postsPublish' smart constructor.
data PostsPublish =
  PostsPublish'
    { _pppXgafv :: !(Maybe Xgafv)
    , _pppUploadProtocol :: !(Maybe Text)
    , _pppPublishDate :: !(Maybe Text)
    , _pppAccessToken :: !(Maybe Text)
    , _pppUploadType :: !(Maybe Text)
    , _pppBlogId :: !Text
    , _pppPostId :: !Text
    , _pppCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PostsPublish' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pppXgafv'
--
-- * 'pppUploadProtocol'
--
-- * 'pppPublishDate'
--
-- * 'pppAccessToken'
--
-- * 'pppUploadType'
--
-- * 'pppBlogId'
--
-- * 'pppPostId'
--
-- * 'pppCallback'
postsPublish
    :: Text -- ^ 'pppBlogId'
    -> Text -- ^ 'pppPostId'
    -> PostsPublish
postsPublish pPppBlogId_ pPppPostId_ =
  PostsPublish'
    { _pppXgafv = Nothing
    , _pppUploadProtocol = Nothing
    , _pppPublishDate = Nothing
    , _pppAccessToken = Nothing
    , _pppUploadType = Nothing
    , _pppBlogId = pPppBlogId_
    , _pppPostId = pPppPostId_
    , _pppCallback = Nothing
    }


-- | V1 error format.
pppXgafv :: Lens' PostsPublish (Maybe Xgafv)
pppXgafv = lens _pppXgafv (\ s a -> s{_pppXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pppUploadProtocol :: Lens' PostsPublish (Maybe Text)
pppUploadProtocol
  = lens _pppUploadProtocol
      (\ s a -> s{_pppUploadProtocol = a})

pppPublishDate :: Lens' PostsPublish (Maybe Text)
pppPublishDate
  = lens _pppPublishDate
      (\ s a -> s{_pppPublishDate = a})

-- | OAuth access token.
pppAccessToken :: Lens' PostsPublish (Maybe Text)
pppAccessToken
  = lens _pppAccessToken
      (\ s a -> s{_pppAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pppUploadType :: Lens' PostsPublish (Maybe Text)
pppUploadType
  = lens _pppUploadType
      (\ s a -> s{_pppUploadType = a})

pppBlogId :: Lens' PostsPublish Text
pppBlogId
  = lens _pppBlogId (\ s a -> s{_pppBlogId = a})

pppPostId :: Lens' PostsPublish Text
pppPostId
  = lens _pppPostId (\ s a -> s{_pppPostId = a})

-- | JSONP
pppCallback :: Lens' PostsPublish (Maybe Text)
pppCallback
  = lens _pppCallback (\ s a -> s{_pppCallback = a})

instance GoogleRequest PostsPublish where
        type Rs PostsPublish = Post'
        type Scopes PostsPublish =
             '["https://www.googleapis.com/auth/blogger"]
        requestClient PostsPublish'{..}
          = go _pppBlogId _pppPostId _pppXgafv
              _pppUploadProtocol
              _pppPublishDate
              _pppAccessToken
              _pppUploadType
              _pppCallback
              (Just AltJSON)
              bloggerService
          where go
                  = buildClient (Proxy :: Proxy PostsPublishResource)
                      mempty
