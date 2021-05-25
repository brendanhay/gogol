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
-- Module      : Network.Google.Resource.Blogger.Posts.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patches a post.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API v3 Reference> for @blogger.posts.patch@.
module Network.Google.Resource.Blogger.Posts.Patch
    (
    -- * REST Resource
      PostsPatchResource

    -- * Creating a Request
    , postsPatch
    , PostsPatch

    -- * Request Lenses
    , posoFetchBody
    , posoXgafv
    , posoUploadProtocol
    , posoAccessToken
    , posoFetchImages
    , posoUploadType
    , posoBlogId
    , posoPayload
    , posoMaxComments
    , posoRevert
    , posoPostId
    , posoPublish
    , posoCallback
    ) where

import Network.Google.Blogger.Types
import Network.Google.Prelude

-- | A resource alias for @blogger.posts.patch@ method which the
-- 'PostsPatch' request conforms to.
type PostsPatchResource =
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
                                     ReqBody '[JSON] Post' :>
                                       Patch '[JSON] Post'

-- | Patches a post.
--
-- /See:/ 'postsPatch' smart constructor.
data PostsPatch =
  PostsPatch'
    { _posoFetchBody :: !Bool
    , _posoXgafv :: !(Maybe Xgafv)
    , _posoUploadProtocol :: !(Maybe Text)
    , _posoAccessToken :: !(Maybe Text)
    , _posoFetchImages :: !(Maybe Bool)
    , _posoUploadType :: !(Maybe Text)
    , _posoBlogId :: !Text
    , _posoPayload :: !Post'
    , _posoMaxComments :: !(Maybe (Textual Word32))
    , _posoRevert :: !(Maybe Bool)
    , _posoPostId :: !Text
    , _posoPublish :: !(Maybe Bool)
    , _posoCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PostsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'posoFetchBody'
--
-- * 'posoXgafv'
--
-- * 'posoUploadProtocol'
--
-- * 'posoAccessToken'
--
-- * 'posoFetchImages'
--
-- * 'posoUploadType'
--
-- * 'posoBlogId'
--
-- * 'posoPayload'
--
-- * 'posoMaxComments'
--
-- * 'posoRevert'
--
-- * 'posoPostId'
--
-- * 'posoPublish'
--
-- * 'posoCallback'
postsPatch
    :: Text -- ^ 'posoBlogId'
    -> Post' -- ^ 'posoPayload'
    -> Text -- ^ 'posoPostId'
    -> PostsPatch
postsPatch pPosoBlogId_ pPosoPayload_ pPosoPostId_ =
  PostsPatch'
    { _posoFetchBody = True
    , _posoXgafv = Nothing
    , _posoUploadProtocol = Nothing
    , _posoAccessToken = Nothing
    , _posoFetchImages = Nothing
    , _posoUploadType = Nothing
    , _posoBlogId = pPosoBlogId_
    , _posoPayload = pPosoPayload_
    , _posoMaxComments = Nothing
    , _posoRevert = Nothing
    , _posoPostId = pPosoPostId_
    , _posoPublish = Nothing
    , _posoCallback = Nothing
    }


posoFetchBody :: Lens' PostsPatch Bool
posoFetchBody
  = lens _posoFetchBody
      (\ s a -> s{_posoFetchBody = a})

-- | V1 error format.
posoXgafv :: Lens' PostsPatch (Maybe Xgafv)
posoXgafv
  = lens _posoXgafv (\ s a -> s{_posoXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
posoUploadProtocol :: Lens' PostsPatch (Maybe Text)
posoUploadProtocol
  = lens _posoUploadProtocol
      (\ s a -> s{_posoUploadProtocol = a})

-- | OAuth access token.
posoAccessToken :: Lens' PostsPatch (Maybe Text)
posoAccessToken
  = lens _posoAccessToken
      (\ s a -> s{_posoAccessToken = a})

posoFetchImages :: Lens' PostsPatch (Maybe Bool)
posoFetchImages
  = lens _posoFetchImages
      (\ s a -> s{_posoFetchImages = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
posoUploadType :: Lens' PostsPatch (Maybe Text)
posoUploadType
  = lens _posoUploadType
      (\ s a -> s{_posoUploadType = a})

posoBlogId :: Lens' PostsPatch Text
posoBlogId
  = lens _posoBlogId (\ s a -> s{_posoBlogId = a})

-- | Multipart request metadata.
posoPayload :: Lens' PostsPatch Post'
posoPayload
  = lens _posoPayload (\ s a -> s{_posoPayload = a})

posoMaxComments :: Lens' PostsPatch (Maybe Word32)
posoMaxComments
  = lens _posoMaxComments
      (\ s a -> s{_posoMaxComments = a})
      . mapping _Coerce

posoRevert :: Lens' PostsPatch (Maybe Bool)
posoRevert
  = lens _posoRevert (\ s a -> s{_posoRevert = a})

posoPostId :: Lens' PostsPatch Text
posoPostId
  = lens _posoPostId (\ s a -> s{_posoPostId = a})

posoPublish :: Lens' PostsPatch (Maybe Bool)
posoPublish
  = lens _posoPublish (\ s a -> s{_posoPublish = a})

-- | JSONP
posoCallback :: Lens' PostsPatch (Maybe Text)
posoCallback
  = lens _posoCallback (\ s a -> s{_posoCallback = a})

instance GoogleRequest PostsPatch where
        type Rs PostsPatch = Post'
        type Scopes PostsPatch =
             '["https://www.googleapis.com/auth/blogger"]
        requestClient PostsPatch'{..}
          = go _posoBlogId _posoPostId (Just _posoFetchBody)
              _posoXgafv
              _posoUploadProtocol
              _posoAccessToken
              _posoFetchImages
              _posoUploadType
              _posoMaxComments
              _posoRevert
              _posoPublish
              _posoCallback
              (Just AltJSON)
              _posoPayload
              bloggerService
          where go
                  = buildClient (Proxy :: Proxy PostsPatchResource)
                      mempty
