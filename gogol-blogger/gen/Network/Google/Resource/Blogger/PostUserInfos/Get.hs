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
-- Module      : Network.Google.Resource.Blogger.PostUserInfos.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one post and user info pair, by post_id and user_id.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API v3 Reference> for @blogger.postUserInfos.get@.
module Network.Google.Resource.Blogger.PostUserInfos.Get
    (
    -- * REST Resource
      PostUserInfosGetResource

    -- * Creating a Request
    , postUserInfosGet
    , PostUserInfosGet

    -- * Request Lenses
    , puigXgafv
    , puigUploadProtocol
    , puigAccessToken
    , puigUploadType
    , puigBlogId
    , puigMaxComments
    , puigUserId
    , puigPostId
    , puigCallback
    ) where

import Network.Google.Blogger.Types
import Network.Google.Prelude

-- | A resource alias for @blogger.postUserInfos.get@ method which the
-- 'PostUserInfosGet' request conforms to.
type PostUserInfosGetResource =
     "v3" :>
       "users" :>
         Capture "userId" Text :>
           "blogs" :>
             Capture "blogId" Text :>
               "posts" :>
                 Capture "postId" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "maxComments" (Textual Word32) :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] PostUserInfo

-- | Gets one post and user info pair, by post_id and user_id.
--
-- /See:/ 'postUserInfosGet' smart constructor.
data PostUserInfosGet =
  PostUserInfosGet'
    { _puigXgafv :: !(Maybe Xgafv)
    , _puigUploadProtocol :: !(Maybe Text)
    , _puigAccessToken :: !(Maybe Text)
    , _puigUploadType :: !(Maybe Text)
    , _puigBlogId :: !Text
    , _puigMaxComments :: !(Maybe (Textual Word32))
    , _puigUserId :: !Text
    , _puigPostId :: !Text
    , _puigCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PostUserInfosGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puigXgafv'
--
-- * 'puigUploadProtocol'
--
-- * 'puigAccessToken'
--
-- * 'puigUploadType'
--
-- * 'puigBlogId'
--
-- * 'puigMaxComments'
--
-- * 'puigUserId'
--
-- * 'puigPostId'
--
-- * 'puigCallback'
postUserInfosGet
    :: Text -- ^ 'puigBlogId'
    -> Text -- ^ 'puigUserId'
    -> Text -- ^ 'puigPostId'
    -> PostUserInfosGet
postUserInfosGet pPuigBlogId_ pPuigUserId_ pPuigPostId_ =
  PostUserInfosGet'
    { _puigXgafv = Nothing
    , _puigUploadProtocol = Nothing
    , _puigAccessToken = Nothing
    , _puigUploadType = Nothing
    , _puigBlogId = pPuigBlogId_
    , _puigMaxComments = Nothing
    , _puigUserId = pPuigUserId_
    , _puigPostId = pPuigPostId_
    , _puigCallback = Nothing
    }


-- | V1 error format.
puigXgafv :: Lens' PostUserInfosGet (Maybe Xgafv)
puigXgafv
  = lens _puigXgafv (\ s a -> s{_puigXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
puigUploadProtocol :: Lens' PostUserInfosGet (Maybe Text)
puigUploadProtocol
  = lens _puigUploadProtocol
      (\ s a -> s{_puigUploadProtocol = a})

-- | OAuth access token.
puigAccessToken :: Lens' PostUserInfosGet (Maybe Text)
puigAccessToken
  = lens _puigAccessToken
      (\ s a -> s{_puigAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
puigUploadType :: Lens' PostUserInfosGet (Maybe Text)
puigUploadType
  = lens _puigUploadType
      (\ s a -> s{_puigUploadType = a})

puigBlogId :: Lens' PostUserInfosGet Text
puigBlogId
  = lens _puigBlogId (\ s a -> s{_puigBlogId = a})

puigMaxComments :: Lens' PostUserInfosGet (Maybe Word32)
puigMaxComments
  = lens _puigMaxComments
      (\ s a -> s{_puigMaxComments = a})
      . mapping _Coerce

puigUserId :: Lens' PostUserInfosGet Text
puigUserId
  = lens _puigUserId (\ s a -> s{_puigUserId = a})

puigPostId :: Lens' PostUserInfosGet Text
puigPostId
  = lens _puigPostId (\ s a -> s{_puigPostId = a})

-- | JSONP
puigCallback :: Lens' PostUserInfosGet (Maybe Text)
puigCallback
  = lens _puigCallback (\ s a -> s{_puigCallback = a})

instance GoogleRequest PostUserInfosGet where
        type Rs PostUserInfosGet = PostUserInfo
        type Scopes PostUserInfosGet =
             '["https://www.googleapis.com/auth/blogger",
               "https://www.googleapis.com/auth/blogger.readonly"]
        requestClient PostUserInfosGet'{..}
          = go _puigUserId _puigBlogId _puigPostId _puigXgafv
              _puigUploadProtocol
              _puigAccessToken
              _puigUploadType
              _puigMaxComments
              _puigCallback
              (Just AltJSON)
              bloggerService
          where go
                  = buildClient
                      (Proxy :: Proxy PostUserInfosGetResource)
                      mempty
