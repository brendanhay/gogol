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
-- Module      : Network.Google.Resource.Blogger.Posts.Revert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reverts a published or scheduled post to draft state.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API v3 Reference> for @blogger.posts.revert@.
module Network.Google.Resource.Blogger.Posts.Revert
    (
    -- * REST Resource
      PostsRevertResource

    -- * Creating a Request
    , postsRevert
    , PostsRevert

    -- * Request Lenses
    , prXgafv
    , prUploadProtocol
    , prAccessToken
    , prUploadType
    , prBlogId
    , prPostId
    , prCallback
    ) where

import Network.Google.Blogger.Types
import Network.Google.Prelude

-- | A resource alias for @blogger.posts.revert@ method which the
-- 'PostsRevert' request conforms to.
type PostsRevertResource =
     "v3" :>
       "blogs" :>
         Capture "blogId" Text :>
           "posts" :>
             Capture "postId" Text :>
               "revert" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Post '[JSON] Post'

-- | Reverts a published or scheduled post to draft state.
--
-- /See:/ 'postsRevert' smart constructor.
data PostsRevert =
  PostsRevert'
    { _prXgafv :: !(Maybe Xgafv)
    , _prUploadProtocol :: !(Maybe Text)
    , _prAccessToken :: !(Maybe Text)
    , _prUploadType :: !(Maybe Text)
    , _prBlogId :: !Text
    , _prPostId :: !Text
    , _prCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PostsRevert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prXgafv'
--
-- * 'prUploadProtocol'
--
-- * 'prAccessToken'
--
-- * 'prUploadType'
--
-- * 'prBlogId'
--
-- * 'prPostId'
--
-- * 'prCallback'
postsRevert
    :: Text -- ^ 'prBlogId'
    -> Text -- ^ 'prPostId'
    -> PostsRevert
postsRevert pPrBlogId_ pPrPostId_ =
  PostsRevert'
    { _prXgafv = Nothing
    , _prUploadProtocol = Nothing
    , _prAccessToken = Nothing
    , _prUploadType = Nothing
    , _prBlogId = pPrBlogId_
    , _prPostId = pPrPostId_
    , _prCallback = Nothing
    }


-- | V1 error format.
prXgafv :: Lens' PostsRevert (Maybe Xgafv)
prXgafv = lens _prXgafv (\ s a -> s{_prXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prUploadProtocol :: Lens' PostsRevert (Maybe Text)
prUploadProtocol
  = lens _prUploadProtocol
      (\ s a -> s{_prUploadProtocol = a})

-- | OAuth access token.
prAccessToken :: Lens' PostsRevert (Maybe Text)
prAccessToken
  = lens _prAccessToken
      (\ s a -> s{_prAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prUploadType :: Lens' PostsRevert (Maybe Text)
prUploadType
  = lens _prUploadType (\ s a -> s{_prUploadType = a})

prBlogId :: Lens' PostsRevert Text
prBlogId = lens _prBlogId (\ s a -> s{_prBlogId = a})

prPostId :: Lens' PostsRevert Text
prPostId = lens _prPostId (\ s a -> s{_prPostId = a})

-- | JSONP
prCallback :: Lens' PostsRevert (Maybe Text)
prCallback
  = lens _prCallback (\ s a -> s{_prCallback = a})

instance GoogleRequest PostsRevert where
        type Rs PostsRevert = Post'
        type Scopes PostsRevert =
             '["https://www.googleapis.com/auth/blogger"]
        requestClient PostsRevert'{..}
          = go _prBlogId _prPostId _prXgafv _prUploadProtocol
              _prAccessToken
              _prUploadType
              _prCallback
              (Just AltJSON)
              bloggerService
          where go
                  = buildClient (Proxy :: Proxy PostsRevertResource)
                      mempty
