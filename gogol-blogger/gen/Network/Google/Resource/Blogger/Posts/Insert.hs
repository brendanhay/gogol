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
-- Add a post.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @blogger.posts.insert@.
module Network.Google.Resource.Blogger.Posts.Insert
    (
    -- * REST Resource
      PostsInsertResource

    -- * Creating a Request
    , postsInsert
    , PostsInsert

    -- * Request Lenses
    , posFetchBody
    , posIsDraft
    , posFetchImages
    , posBlogId
    , posPayload
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @blogger.posts.insert@ method which the
-- 'PostsInsert' request conforms to.
type PostsInsertResource =
     "blogger" :>
       "v3" :>
         "blogs" :>
           Capture "blogId" Text :>
             "posts" :>
               QueryParam "fetchBody" Bool :>
                 QueryParam "isDraft" Bool :>
                   QueryParam "fetchImages" Bool :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Post' :> Post '[JSON] Post'

-- | Add a post.
--
-- /See:/ 'postsInsert' smart constructor.
data PostsInsert = PostsInsert'
    { _posFetchBody   :: !Bool
    , _posIsDraft     :: !(Maybe Bool)
    , _posFetchImages :: !(Maybe Bool)
    , _posBlogId      :: !Text
    , _posPayload     :: !Post'
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'posFetchBody'
--
-- * 'posIsDraft'
--
-- * 'posFetchImages'
--
-- * 'posBlogId'
--
-- * 'posPayload'
postsInsert
    :: Text -- ^ 'posBlogId'
    -> Post' -- ^ 'posPayload'
    -> PostsInsert
postsInsert pPosBlogId_ pPosPayload_ =
    PostsInsert'
    { _posFetchBody = True
    , _posIsDraft = Nothing
    , _posFetchImages = Nothing
    , _posBlogId = pPosBlogId_
    , _posPayload = pPosPayload_
    }

-- | Whether the body content of the post is included with the result
-- (default: true).
posFetchBody :: Lens' PostsInsert Bool
posFetchBody
  = lens _posFetchBody (\ s a -> s{_posFetchBody = a})

-- | Whether to create the post as a draft (default: false).
posIsDraft :: Lens' PostsInsert (Maybe Bool)
posIsDraft
  = lens _posIsDraft (\ s a -> s{_posIsDraft = a})

-- | Whether image URL metadata for each post is included in the returned
-- result (default: false).
posFetchImages :: Lens' PostsInsert (Maybe Bool)
posFetchImages
  = lens _posFetchImages
      (\ s a -> s{_posFetchImages = a})

-- | ID of the blog to add the post to.
posBlogId :: Lens' PostsInsert Text
posBlogId
  = lens _posBlogId (\ s a -> s{_posBlogId = a})

-- | Multipart request metadata.
posPayload :: Lens' PostsInsert Post'
posPayload
  = lens _posPayload (\ s a -> s{_posPayload = a})

instance GoogleRequest PostsInsert where
        type Rs PostsInsert = Post'
        type Scopes PostsInsert =
             '["https://www.googleapis.com/auth/blogger"]
        requestClient PostsInsert'{..}
          = go _posBlogId (Just _posFetchBody) _posIsDraft
              _posFetchImages
              (Just AltJSON)
              _posPayload
              bloggerService
          where go
                  = buildClient (Proxy :: Proxy PostsInsertResource)
                      mempty
