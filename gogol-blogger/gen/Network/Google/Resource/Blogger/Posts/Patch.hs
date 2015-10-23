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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update a post. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @blogger.posts.patch@.
module Network.Google.Resource.Blogger.Posts.Patch
    (
    -- * REST Resource
      PostsPatchResource

    -- * Creating a Request
    , postsPatch
    , PostsPatch

    -- * Request Lenses
    , posoFetchBody
    , posoFetchImages
    , posoBlogId
    , posoPayload
    , posoMaxComments
    , posoRevert
    , posoPostId
    , posoPublish
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @blogger.posts.patch@ method which the
-- 'PostsPatch' request conforms to.
type PostsPatchResource =
     "blogger" :>
       "v3" :>
         "blogs" :>
           Capture "blogId" Text :>
             "posts" :>
               Capture "postId" Text :>
                 QueryParam "fetchBody" Bool :>
                   QueryParam "fetchImages" Bool :>
                     QueryParam "maxComments" Word32 :>
                       QueryParam "revert" Bool :>
                         QueryParam "publish" Bool :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Post' :> Patch '[JSON] Post'

-- | Update a post. This method supports patch semantics.
--
-- /See:/ 'postsPatch' smart constructor.
data PostsPatch = PostsPatch
    { _posoFetchBody   :: !Bool
    , _posoFetchImages :: !(Maybe Bool)
    , _posoBlogId      :: !Text
    , _posoPayload     :: !Post'
    , _posoMaxComments :: !(Maybe Word32)
    , _posoRevert      :: !(Maybe Bool)
    , _posoPostId      :: !Text
    , _posoPublish     :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'posoFetchBody'
--
-- * 'posoFetchImages'
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
postsPatch
    :: Text -- ^ 'posoBlogId'
    -> Post' -- ^ 'posoPayload'
    -> Text -- ^ 'posoPostId'
    -> PostsPatch
postsPatch pPosoBlogId_ pPosoPayload_ pPosoPostId_ =
    PostsPatch
    { _posoFetchBody = True
    , _posoFetchImages = Nothing
    , _posoBlogId = pPosoBlogId_
    , _posoPayload = pPosoPayload_
    , _posoMaxComments = Nothing
    , _posoRevert = Nothing
    , _posoPostId = pPosoPostId_
    , _posoPublish = Nothing
    }

-- | Whether the body content of the post is included with the result
-- (default: true).
posoFetchBody :: Lens' PostsPatch Bool
posoFetchBody
  = lens _posoFetchBody
      (\ s a -> s{_posoFetchBody = a})

-- | Whether image URL metadata for each post is included in the returned
-- result (default: false).
posoFetchImages :: Lens' PostsPatch (Maybe Bool)
posoFetchImages
  = lens _posoFetchImages
      (\ s a -> s{_posoFetchImages = a})

-- | The ID of the Blog.
posoBlogId :: Lens' PostsPatch Text
posoBlogId
  = lens _posoBlogId (\ s a -> s{_posoBlogId = a})

-- | Multipart request metadata.
posoPayload :: Lens' PostsPatch Post'
posoPayload
  = lens _posoPayload (\ s a -> s{_posoPayload = a})

-- | Maximum number of comments to retrieve with the returned post.
posoMaxComments :: Lens' PostsPatch (Maybe Word32)
posoMaxComments
  = lens _posoMaxComments
      (\ s a -> s{_posoMaxComments = a})

-- | Whether a revert action should be performed when the post is updated
-- (default: false).
posoRevert :: Lens' PostsPatch (Maybe Bool)
posoRevert
  = lens _posoRevert (\ s a -> s{_posoRevert = a})

-- | The ID of the Post.
posoPostId :: Lens' PostsPatch Text
posoPostId
  = lens _posoPostId (\ s a -> s{_posoPostId = a})

-- | Whether a publish action should be performed when the post is updated
-- (default: false).
posoPublish :: Lens' PostsPatch (Maybe Bool)
posoPublish
  = lens _posoPublish (\ s a -> s{_posoPublish = a})

instance GoogleRequest PostsPatch where
        type Rs PostsPatch = Post'
        requestClient PostsPatch{..}
          = go _posoBlogId _posoPostId (Just _posoFetchBody)
              _posoFetchImages
              _posoMaxComments
              _posoRevert
              _posoPublish
              (Just AltJSON)
              _posoPayload
              bloggerService
          where go
                  = buildClient (Proxy :: Proxy PostsPatchResource)
                      mempty
