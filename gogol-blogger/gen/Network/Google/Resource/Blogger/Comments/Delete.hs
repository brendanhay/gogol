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
-- Module      : Network.Google.Resource.Blogger.Comments.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a comment by ID.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @blogger.comments.delete@.
module Network.Google.Resource.Blogger.Comments.Delete
    (
    -- * REST Resource
      CommentsDeleteResource

    -- * Creating a Request
    , commentsDelete
    , CommentsDelete

    -- * Request Lenses
    , cdBlogId
    , cdPostId
    , cdCommentId
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @blogger.comments.delete@ method which the
-- 'CommentsDelete' request conforms to.
type CommentsDeleteResource =
     "blogger" :>
       "v3" :>
         "blogs" :>
           Capture "blogId" Text :>
             "posts" :>
               Capture "postId" Text :>
                 "comments" :>
                   Capture "commentId" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Delete a comment by ID.
--
-- /See:/ 'commentsDelete' smart constructor.
data CommentsDelete = CommentsDelete'
    { _cdBlogId    :: !Text
    , _cdPostId    :: !Text
    , _cdCommentId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdBlogId'
--
-- * 'cdPostId'
--
-- * 'cdCommentId'
commentsDelete
    :: Text -- ^ 'cdBlogId'
    -> Text -- ^ 'cdPostId'
    -> Text -- ^ 'cdCommentId'
    -> CommentsDelete
commentsDelete pCdBlogId_ pCdPostId_ pCdCommentId_ =
    CommentsDelete'
    { _cdBlogId = pCdBlogId_
    , _cdPostId = pCdPostId_
    , _cdCommentId = pCdCommentId_
    }

-- | The ID of the Blog.
cdBlogId :: Lens' CommentsDelete Text
cdBlogId = lens _cdBlogId (\ s a -> s{_cdBlogId = a})

-- | The ID of the Post.
cdPostId :: Lens' CommentsDelete Text
cdPostId = lens _cdPostId (\ s a -> s{_cdPostId = a})

-- | The ID of the comment to delete.
cdCommentId :: Lens' CommentsDelete Text
cdCommentId
  = lens _cdCommentId (\ s a -> s{_cdCommentId = a})

instance GoogleRequest CommentsDelete where
        type Rs CommentsDelete = ()
        type Scopes CommentsDelete =
             '["https://www.googleapis.com/auth/blogger"]
        requestClient CommentsDelete'{..}
          = go _cdBlogId _cdPostId _cdCommentId (Just AltJSON)
              bloggerService
          where go
                  = buildClient (Proxy :: Proxy CommentsDeleteResource)
                      mempty
