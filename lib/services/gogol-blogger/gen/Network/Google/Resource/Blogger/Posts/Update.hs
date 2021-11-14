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
-- Module      : Network.Google.Resource.Blogger.Posts.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a post by blog id and post id.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API v3 Reference> for @blogger.posts.update@.
module Network.Google.Resource.Blogger.Posts.Update
    (
    -- * REST Resource
      PostsUpdateResource

    -- * Creating a Request
    , postsUpdate
    , PostsUpdate

    -- * Request Lenses
    , puFetchBody
    , puXgafv
    , puUploadProtocol
    , puAccessToken
    , puFetchImages
    , puUploadType
    , puBlogId
    , puPayload
    , puMaxComments
    , puRevert
    , puPostId
    , puPublish
    , puCallback
    ) where

import Network.Google.Blogger.Types
import Network.Google.Prelude

-- | A resource alias for @blogger.posts.update@ method which the
-- 'PostsUpdate' request conforms to.
type PostsUpdateResource =
     "v3" :>
       "blogs" :>
         Capture "blogId" Text :>
           "posts" :>
             Capture "postId" Text :>
               QueryParam "fetchBody" Bool :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "fetchImages" Bool :>
                         QueryParam "uploadType" Text :>
                           QueryParam "maxComments" (Textual Word32) :>
                             QueryParam "revert" Bool :>
                               QueryParam "publish" Bool :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     ReqBody '[JSON] Post' :> Put '[JSON] Post'

-- | Updates a post by blog id and post id.
--
-- /See:/ 'postsUpdate' smart constructor.
data PostsUpdate =
  PostsUpdate'
    { _puFetchBody :: !Bool
    , _puXgafv :: !(Maybe Xgafv)
    , _puUploadProtocol :: !(Maybe Text)
    , _puAccessToken :: !(Maybe Text)
    , _puFetchImages :: !(Maybe Bool)
    , _puUploadType :: !(Maybe Text)
    , _puBlogId :: !Text
    , _puPayload :: !Post'
    , _puMaxComments :: !(Maybe (Textual Word32))
    , _puRevert :: !(Maybe Bool)
    , _puPostId :: !Text
    , _puPublish :: !(Maybe Bool)
    , _puCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PostsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puFetchBody'
--
-- * 'puXgafv'
--
-- * 'puUploadProtocol'
--
-- * 'puAccessToken'
--
-- * 'puFetchImages'
--
-- * 'puUploadType'
--
-- * 'puBlogId'
--
-- * 'puPayload'
--
-- * 'puMaxComments'
--
-- * 'puRevert'
--
-- * 'puPostId'
--
-- * 'puPublish'
--
-- * 'puCallback'
postsUpdate
    :: Text -- ^ 'puBlogId'
    -> Post' -- ^ 'puPayload'
    -> Text -- ^ 'puPostId'
    -> PostsUpdate
postsUpdate pPuBlogId_ pPuPayload_ pPuPostId_ =
  PostsUpdate'
    { _puFetchBody = True
    , _puXgafv = Nothing
    , _puUploadProtocol = Nothing
    , _puAccessToken = Nothing
    , _puFetchImages = Nothing
    , _puUploadType = Nothing
    , _puBlogId = pPuBlogId_
    , _puPayload = pPuPayload_
    , _puMaxComments = Nothing
    , _puRevert = Nothing
    , _puPostId = pPuPostId_
    , _puPublish = Nothing
    , _puCallback = Nothing
    }


puFetchBody :: Lens' PostsUpdate Bool
puFetchBody
  = lens _puFetchBody (\ s a -> s{_puFetchBody = a})

-- | V1 error format.
puXgafv :: Lens' PostsUpdate (Maybe Xgafv)
puXgafv = lens _puXgafv (\ s a -> s{_puXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
puUploadProtocol :: Lens' PostsUpdate (Maybe Text)
puUploadProtocol
  = lens _puUploadProtocol
      (\ s a -> s{_puUploadProtocol = a})

-- | OAuth access token.
puAccessToken :: Lens' PostsUpdate (Maybe Text)
puAccessToken
  = lens _puAccessToken
      (\ s a -> s{_puAccessToken = a})

puFetchImages :: Lens' PostsUpdate (Maybe Bool)
puFetchImages
  = lens _puFetchImages
      (\ s a -> s{_puFetchImages = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
puUploadType :: Lens' PostsUpdate (Maybe Text)
puUploadType
  = lens _puUploadType (\ s a -> s{_puUploadType = a})

puBlogId :: Lens' PostsUpdate Text
puBlogId = lens _puBlogId (\ s a -> s{_puBlogId = a})

-- | Multipart request metadata.
puPayload :: Lens' PostsUpdate Post'
puPayload
  = lens _puPayload (\ s a -> s{_puPayload = a})

puMaxComments :: Lens' PostsUpdate (Maybe Word32)
puMaxComments
  = lens _puMaxComments
      (\ s a -> s{_puMaxComments = a})
      . mapping _Coerce

puRevert :: Lens' PostsUpdate (Maybe Bool)
puRevert = lens _puRevert (\ s a -> s{_puRevert = a})

puPostId :: Lens' PostsUpdate Text
puPostId = lens _puPostId (\ s a -> s{_puPostId = a})

puPublish :: Lens' PostsUpdate (Maybe Bool)
puPublish
  = lens _puPublish (\ s a -> s{_puPublish = a})

-- | JSONP
puCallback :: Lens' PostsUpdate (Maybe Text)
puCallback
  = lens _puCallback (\ s a -> s{_puCallback = a})

instance GoogleRequest PostsUpdate where
        type Rs PostsUpdate = Post'
        type Scopes PostsUpdate =
             '["https://www.googleapis.com/auth/blogger"]
        requestClient PostsUpdate'{..}
          = go _puBlogId _puPostId (Just _puFetchBody) _puXgafv
              _puUploadProtocol
              _puAccessToken
              _puFetchImages
              _puUploadType
              _puMaxComments
              _puRevert
              _puPublish
              _puCallback
              (Just AltJSON)
              _puPayload
              bloggerService
          where go
                  = buildClient (Proxy :: Proxy PostsUpdateResource)
                      mempty
