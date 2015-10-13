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
-- Module      : Network.Google.Resource.Blogger.Comments.MarkAsSpam
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Marks a comment as spam.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @BloggerCommentsMarkAsSpam@.
module Network.Google.Resource.Blogger.Comments.MarkAsSpam
    (
    -- * REST Resource
      CommentsMarkAsSpamResource

    -- * Creating a Request
    , commentsMarkAsSpam'
    , CommentsMarkAsSpam'

    -- * Request Lenses
    , cmasBlogId
    , cmasPostId
    , cmasCommentId
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerCommentsMarkAsSpam@ method which the
-- 'CommentsMarkAsSpam'' request conforms to.
type CommentsMarkAsSpamResource =
     "blogs" :>
       Capture "blogId" Text :>
         "posts" :>
           Capture "postId" Text :>
             "comments" :>
               Capture "commentId" Text :>
                 "spam" :>
                   QueryParam "alt" AltJSON :> Post '[JSON] Comment

-- | Marks a comment as spam.
--
-- /See:/ 'commentsMarkAsSpam'' smart constructor.
data CommentsMarkAsSpam' = CommentsMarkAsSpam'
    { _cmasBlogId    :: !Text
    , _cmasPostId    :: !Text
    , _cmasCommentId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsMarkAsSpam'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmasBlogId'
--
-- * 'cmasPostId'
--
-- * 'cmasCommentId'
commentsMarkAsSpam'
    :: Text -- ^ 'blogId'
    -> Text -- ^ 'postId'
    -> Text -- ^ 'commentId'
    -> CommentsMarkAsSpam'
commentsMarkAsSpam' pCmasBlogId_ pCmasPostId_ pCmasCommentId_ =
    CommentsMarkAsSpam'
    { _cmasBlogId = pCmasBlogId_
    , _cmasPostId = pCmasPostId_
    , _cmasCommentId = pCmasCommentId_
    }

-- | The ID of the Blog.
cmasBlogId :: Lens' CommentsMarkAsSpam' Text
cmasBlogId
  = lens _cmasBlogId (\ s a -> s{_cmasBlogId = a})

-- | The ID of the Post.
cmasPostId :: Lens' CommentsMarkAsSpam' Text
cmasPostId
  = lens _cmasPostId (\ s a -> s{_cmasPostId = a})

-- | The ID of the comment to mark as spam.
cmasCommentId :: Lens' CommentsMarkAsSpam' Text
cmasCommentId
  = lens _cmasCommentId
      (\ s a -> s{_cmasCommentId = a})

instance GoogleRequest CommentsMarkAsSpam' where
        type Rs CommentsMarkAsSpam' = Comment
        requestClient CommentsMarkAsSpam'{..}
          = go _cmasBlogId _cmasPostId _cmasCommentId
              (Just AltJSON)
              bloggerService
          where go
                  = buildClient
                      (Proxy :: Proxy CommentsMarkAsSpamResource)
                      mempty
