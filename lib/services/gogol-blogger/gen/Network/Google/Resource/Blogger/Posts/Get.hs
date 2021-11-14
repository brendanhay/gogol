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
-- Module      : Network.Google.Resource.Blogger.Posts.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a post by blog id and post id
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API v3 Reference> for @blogger.posts.get@.
module Network.Google.Resource.Blogger.Posts.Get
    (
    -- * REST Resource
      PostsGetResource

    -- * Creating a Request
    , postsGet
    , PostsGet

    -- * Request Lenses
    , pggFetchBody
    , pggXgafv
    , pggUploadProtocol
    , pggAccessToken
    , pggFetchImages
    , pggUploadType
    , pggBlogId
    , pggMaxComments
    , pggView
    , pggPostId
    , pggCallback
    ) where

import Network.Google.Blogger.Types
import Network.Google.Prelude

-- | A resource alias for @blogger.posts.get@ method which the
-- 'PostsGet' request conforms to.
type PostsGetResource =
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
                             QueryParam "view" PostsGetView :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :> Get '[JSON] Post'

-- | Gets a post by blog id and post id
--
-- /See:/ 'postsGet' smart constructor.
data PostsGet =
  PostsGet'
    { _pggFetchBody :: !Bool
    , _pggXgafv :: !(Maybe Xgafv)
    , _pggUploadProtocol :: !(Maybe Text)
    , _pggAccessToken :: !(Maybe Text)
    , _pggFetchImages :: !(Maybe Bool)
    , _pggUploadType :: !(Maybe Text)
    , _pggBlogId :: !Text
    , _pggMaxComments :: !(Maybe (Textual Word32))
    , _pggView :: !(Maybe PostsGetView)
    , _pggPostId :: !Text
    , _pggCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PostsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pggFetchBody'
--
-- * 'pggXgafv'
--
-- * 'pggUploadProtocol'
--
-- * 'pggAccessToken'
--
-- * 'pggFetchImages'
--
-- * 'pggUploadType'
--
-- * 'pggBlogId'
--
-- * 'pggMaxComments'
--
-- * 'pggView'
--
-- * 'pggPostId'
--
-- * 'pggCallback'
postsGet
    :: Text -- ^ 'pggBlogId'
    -> Text -- ^ 'pggPostId'
    -> PostsGet
postsGet pPggBlogId_ pPggPostId_ =
  PostsGet'
    { _pggFetchBody = True
    , _pggXgafv = Nothing
    , _pggUploadProtocol = Nothing
    , _pggAccessToken = Nothing
    , _pggFetchImages = Nothing
    , _pggUploadType = Nothing
    , _pggBlogId = pPggBlogId_
    , _pggMaxComments = Nothing
    , _pggView = Nothing
    , _pggPostId = pPggPostId_
    , _pggCallback = Nothing
    }


pggFetchBody :: Lens' PostsGet Bool
pggFetchBody
  = lens _pggFetchBody (\ s a -> s{_pggFetchBody = a})

-- | V1 error format.
pggXgafv :: Lens' PostsGet (Maybe Xgafv)
pggXgafv = lens _pggXgafv (\ s a -> s{_pggXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pggUploadProtocol :: Lens' PostsGet (Maybe Text)
pggUploadProtocol
  = lens _pggUploadProtocol
      (\ s a -> s{_pggUploadProtocol = a})

-- | OAuth access token.
pggAccessToken :: Lens' PostsGet (Maybe Text)
pggAccessToken
  = lens _pggAccessToken
      (\ s a -> s{_pggAccessToken = a})

pggFetchImages :: Lens' PostsGet (Maybe Bool)
pggFetchImages
  = lens _pggFetchImages
      (\ s a -> s{_pggFetchImages = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pggUploadType :: Lens' PostsGet (Maybe Text)
pggUploadType
  = lens _pggUploadType
      (\ s a -> s{_pggUploadType = a})

pggBlogId :: Lens' PostsGet Text
pggBlogId
  = lens _pggBlogId (\ s a -> s{_pggBlogId = a})

pggMaxComments :: Lens' PostsGet (Maybe Word32)
pggMaxComments
  = lens _pggMaxComments
      (\ s a -> s{_pggMaxComments = a})
      . mapping _Coerce

pggView :: Lens' PostsGet (Maybe PostsGetView)
pggView = lens _pggView (\ s a -> s{_pggView = a})

pggPostId :: Lens' PostsGet Text
pggPostId
  = lens _pggPostId (\ s a -> s{_pggPostId = a})

-- | JSONP
pggCallback :: Lens' PostsGet (Maybe Text)
pggCallback
  = lens _pggCallback (\ s a -> s{_pggCallback = a})

instance GoogleRequest PostsGet where
        type Rs PostsGet = Post'
        type Scopes PostsGet =
             '["https://www.googleapis.com/auth/blogger",
               "https://www.googleapis.com/auth/blogger.readonly"]
        requestClient PostsGet'{..}
          = go _pggBlogId _pggPostId (Just _pggFetchBody)
              _pggXgafv
              _pggUploadProtocol
              _pggAccessToken
              _pggFetchImages
              _pggUploadType
              _pggMaxComments
              _pggView
              _pggCallback
              (Just AltJSON)
              bloggerService
          where go
                  = buildClient (Proxy :: Proxy PostsGetResource)
                      mempty
