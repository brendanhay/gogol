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
-- | Update a post. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @BloggerPostsPatch@.
module Network.Google.Resource.Blogger.Posts.Patch
    (
    -- * REST Resource
      PostsPatchResource

    -- * Creating a Request
    , postsPatch'
    , PostsPatch'

    -- * Request Lenses
    , ppFetchBody
    , ppFetchImages
    , ppBlogId
    , ppPayload
    , ppMaxComments
    , ppRevert
    , ppPostId
    , ppPublish
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerPostsPatch@ method which the
-- 'PostsPatch'' request conforms to.
type PostsPatchResource =
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
-- /See:/ 'postsPatch'' smart constructor.
data PostsPatch' = PostsPatch'
    { _ppFetchBody   :: !Bool
    , _ppFetchImages :: !(Maybe Bool)
    , _ppBlogId      :: !Text
    , _ppPayload     :: !Post'
    , _ppMaxComments :: !(Maybe Word32)
    , _ppRevert      :: !(Maybe Bool)
    , _ppPostId      :: !Text
    , _ppPublish     :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppFetchBody'
--
-- * 'ppFetchImages'
--
-- * 'ppBlogId'
--
-- * 'ppPayload'
--
-- * 'ppMaxComments'
--
-- * 'ppRevert'
--
-- * 'ppPostId'
--
-- * 'ppPublish'
postsPatch'
    :: Text -- ^ 'blogId'
    -> Post' -- ^ 'payload'
    -> Text -- ^ 'postId'
    -> PostsPatch'
postsPatch' pPpBlogId_ pPpPayload_ pPpPostId_ =
    PostsPatch'
    { _ppFetchBody = True
    , _ppFetchImages = Nothing
    , _ppBlogId = pPpBlogId_
    , _ppPayload = pPpPayload_
    , _ppMaxComments = Nothing
    , _ppRevert = Nothing
    , _ppPostId = pPpPostId_
    , _ppPublish = Nothing
    }

-- | Whether the body content of the post is included with the result
-- (default: true).
ppFetchBody :: Lens' PostsPatch' Bool
ppFetchBody
  = lens _ppFetchBody (\ s a -> s{_ppFetchBody = a})

-- | Whether image URL metadata for each post is included in the returned
-- result (default: false).
ppFetchImages :: Lens' PostsPatch' (Maybe Bool)
ppFetchImages
  = lens _ppFetchImages
      (\ s a -> s{_ppFetchImages = a})

-- | The ID of the Blog.
ppBlogId :: Lens' PostsPatch' Text
ppBlogId = lens _ppBlogId (\ s a -> s{_ppBlogId = a})

-- | Multipart request metadata.
ppPayload :: Lens' PostsPatch' Post'
ppPayload
  = lens _ppPayload (\ s a -> s{_ppPayload = a})

-- | Maximum number of comments to retrieve with the returned post.
ppMaxComments :: Lens' PostsPatch' (Maybe Word32)
ppMaxComments
  = lens _ppMaxComments
      (\ s a -> s{_ppMaxComments = a})

-- | Whether a revert action should be performed when the post is updated
-- (default: false).
ppRevert :: Lens' PostsPatch' (Maybe Bool)
ppRevert = lens _ppRevert (\ s a -> s{_ppRevert = a})

-- | The ID of the Post.
ppPostId :: Lens' PostsPatch' Text
ppPostId = lens _ppPostId (\ s a -> s{_ppPostId = a})

-- | Whether a publish action should be performed when the post is updated
-- (default: false).
ppPublish :: Lens' PostsPatch' (Maybe Bool)
ppPublish
  = lens _ppPublish (\ s a -> s{_ppPublish = a})

instance GoogleRequest PostsPatch' where
        type Rs PostsPatch' = Post'
        requestClient PostsPatch'{..}
          = go _ppBlogId _ppPostId (Just _ppFetchBody)
              _ppFetchImages
              _ppMaxComments
              _ppRevert
              _ppPublish
              (Just AltJSON)
              _ppPayload
              bloggerService
          where go
                  = buildClient (Proxy :: Proxy PostsPatchResource)
                      mempty
