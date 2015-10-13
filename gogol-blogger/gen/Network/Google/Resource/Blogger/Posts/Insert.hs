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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Add a post.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @BloggerPostsInsert@.
module Network.Google.Resource.Blogger.Posts.Insert
    (
    -- * REST Resource
      PostsInsertResource

    -- * Creating a Request
    , postsInsert'
    , PostsInsert'

    -- * Request Lenses
    , piiFetchBody
    , piiIsDraft
    , piiFetchImages
    , piiBlogId
    , piiPayload
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerPostsInsert@ method which the
-- 'PostsInsert'' request conforms to.
type PostsInsertResource =
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
-- /See:/ 'postsInsert'' smart constructor.
data PostsInsert' = PostsInsert'
    { _piiFetchBody   :: !Bool
    , _piiIsDraft     :: !(Maybe Bool)
    , _piiFetchImages :: !(Maybe Bool)
    , _piiBlogId      :: !Text
    , _piiPayload     :: !Post'
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piiFetchBody'
--
-- * 'piiIsDraft'
--
-- * 'piiFetchImages'
--
-- * 'piiBlogId'
--
-- * 'piiPayload'
postsInsert'
    :: Text -- ^ 'blogId'
    -> Post' -- ^ 'payload'
    -> PostsInsert'
postsInsert' pPiiBlogId_ pPiiPayload_ =
    PostsInsert'
    { _piiFetchBody = True
    , _piiIsDraft = Nothing
    , _piiFetchImages = Nothing
    , _piiBlogId = pPiiBlogId_
    , _piiPayload = pPiiPayload_
    }

-- | Whether the body content of the post is included with the result
-- (default: true).
piiFetchBody :: Lens' PostsInsert' Bool
piiFetchBody
  = lens _piiFetchBody (\ s a -> s{_piiFetchBody = a})

-- | Whether to create the post as a draft (default: false).
piiIsDraft :: Lens' PostsInsert' (Maybe Bool)
piiIsDraft
  = lens _piiIsDraft (\ s a -> s{_piiIsDraft = a})

-- | Whether image URL metadata for each post is included in the returned
-- result (default: false).
piiFetchImages :: Lens' PostsInsert' (Maybe Bool)
piiFetchImages
  = lens _piiFetchImages
      (\ s a -> s{_piiFetchImages = a})

-- | ID of the blog to add the post to.
piiBlogId :: Lens' PostsInsert' Text
piiBlogId
  = lens _piiBlogId (\ s a -> s{_piiBlogId = a})

-- | Multipart request metadata.
piiPayload :: Lens' PostsInsert' Post'
piiPayload
  = lens _piiPayload (\ s a -> s{_piiPayload = a})

instance GoogleRequest PostsInsert' where
        type Rs PostsInsert' = Post'
        requestClient PostsInsert'{..}
          = go _piiBlogId (Just _piiFetchBody) _piiIsDraft
              _piiFetchImages
              (Just AltJSON)
              _piiPayload
              bloggerService
          where go
                  = buildClient (Proxy :: Proxy PostsInsertResource)
                      mempty
