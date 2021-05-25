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
-- Module      : Network.Google.Resource.Blogger.Posts.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a post.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API v3 Reference> for @blogger.posts.insert@.
module Network.Google.Resource.Blogger.Posts.Insert
    (
    -- * REST Resource
      PostsInsertResource

    -- * Creating a Request
    , postsInsert
    , PostsInsert

    -- * Request Lenses
    , posFetchBody
    , posXgafv
    , posIsDraft
    , posUploadProtocol
    , posAccessToken
    , posFetchImages
    , posUploadType
    , posBlogId
    , posPayload
    , posCallback
    ) where

import Network.Google.Blogger.Types
import Network.Google.Prelude

-- | A resource alias for @blogger.posts.insert@ method which the
-- 'PostsInsert' request conforms to.
type PostsInsertResource =
     "v3" :>
       "blogs" :>
         Capture "blogId" Text :>
           "posts" :>
             QueryParam "fetchBody" Bool :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "isDraft" Bool :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "fetchImages" Bool :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] Post' :> Post '[JSON] Post'

-- | Inserts a post.
--
-- /See:/ 'postsInsert' smart constructor.
data PostsInsert =
  PostsInsert'
    { _posFetchBody :: !Bool
    , _posXgafv :: !(Maybe Xgafv)
    , _posIsDraft :: !(Maybe Bool)
    , _posUploadProtocol :: !(Maybe Text)
    , _posAccessToken :: !(Maybe Text)
    , _posFetchImages :: !(Maybe Bool)
    , _posUploadType :: !(Maybe Text)
    , _posBlogId :: !Text
    , _posPayload :: !Post'
    , _posCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PostsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'posFetchBody'
--
-- * 'posXgafv'
--
-- * 'posIsDraft'
--
-- * 'posUploadProtocol'
--
-- * 'posAccessToken'
--
-- * 'posFetchImages'
--
-- * 'posUploadType'
--
-- * 'posBlogId'
--
-- * 'posPayload'
--
-- * 'posCallback'
postsInsert
    :: Text -- ^ 'posBlogId'
    -> Post' -- ^ 'posPayload'
    -> PostsInsert
postsInsert pPosBlogId_ pPosPayload_ =
  PostsInsert'
    { _posFetchBody = True
    , _posXgafv = Nothing
    , _posIsDraft = Nothing
    , _posUploadProtocol = Nothing
    , _posAccessToken = Nothing
    , _posFetchImages = Nothing
    , _posUploadType = Nothing
    , _posBlogId = pPosBlogId_
    , _posPayload = pPosPayload_
    , _posCallback = Nothing
    }


posFetchBody :: Lens' PostsInsert Bool
posFetchBody
  = lens _posFetchBody (\ s a -> s{_posFetchBody = a})

-- | V1 error format.
posXgafv :: Lens' PostsInsert (Maybe Xgafv)
posXgafv = lens _posXgafv (\ s a -> s{_posXgafv = a})

posIsDraft :: Lens' PostsInsert (Maybe Bool)
posIsDraft
  = lens _posIsDraft (\ s a -> s{_posIsDraft = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
posUploadProtocol :: Lens' PostsInsert (Maybe Text)
posUploadProtocol
  = lens _posUploadProtocol
      (\ s a -> s{_posUploadProtocol = a})

-- | OAuth access token.
posAccessToken :: Lens' PostsInsert (Maybe Text)
posAccessToken
  = lens _posAccessToken
      (\ s a -> s{_posAccessToken = a})

posFetchImages :: Lens' PostsInsert (Maybe Bool)
posFetchImages
  = lens _posFetchImages
      (\ s a -> s{_posFetchImages = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
posUploadType :: Lens' PostsInsert (Maybe Text)
posUploadType
  = lens _posUploadType
      (\ s a -> s{_posUploadType = a})

posBlogId :: Lens' PostsInsert Text
posBlogId
  = lens _posBlogId (\ s a -> s{_posBlogId = a})

-- | Multipart request metadata.
posPayload :: Lens' PostsInsert Post'
posPayload
  = lens _posPayload (\ s a -> s{_posPayload = a})

-- | JSONP
posCallback :: Lens' PostsInsert (Maybe Text)
posCallback
  = lens _posCallback (\ s a -> s{_posCallback = a})

instance GoogleRequest PostsInsert where
        type Rs PostsInsert = Post'
        type Scopes PostsInsert =
             '["https://www.googleapis.com/auth/blogger"]
        requestClient PostsInsert'{..}
          = go _posBlogId (Just _posFetchBody) _posXgafv
              _posIsDraft
              _posUploadProtocol
              _posAccessToken
              _posFetchImages
              _posUploadType
              _posCallback
              (Just AltJSON)
              _posPayload
              bloggerService
          where go
                  = buildClient (Proxy :: Proxy PostsInsertResource)
                      mempty
