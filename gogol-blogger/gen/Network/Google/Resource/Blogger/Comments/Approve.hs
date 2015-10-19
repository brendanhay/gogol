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
-- Module      : Network.Google.Resource.Blogger.Comments.Approve
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Marks a comment as not spam.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @BloggerCommentsApprove@.
module Network.Google.Resource.Blogger.Comments.Approve
    (
    -- * REST Resource
      CommentsApproveResource

    -- * Creating a Request
    , commentsApprove'
    , CommentsApprove'

    -- * Request Lenses
    , caBlogId
    , caPostId
    , caCommentId
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerCommentsApprove@ method which the
-- 'CommentsApprove'' request conforms to.
type CommentsApproveResource =
     "blogs" :>
       Capture "blogId" Text :>
         "posts" :>
           Capture "postId" Text :>
             "comments" :>
               Capture "commentId" Text :>
                 "approve" :>
                   QueryParam "alt" AltJSON :> Post '[JSON] Comment

-- | Marks a comment as not spam.
--
-- /See:/ 'commentsApprove'' smart constructor.
data CommentsApprove' = CommentsApprove'
    { _caBlogId    :: !Text
    , _caPostId    :: !Text
    , _caCommentId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsApprove'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caBlogId'
--
-- * 'caPostId'
--
-- * 'caCommentId'
commentsApprove'
    :: Text -- ^ 'blogId'
    -> Text -- ^ 'postId'
    -> Text -- ^ 'commentId'
    -> CommentsApprove'
commentsApprove' pCaBlogId_ pCaPostId_ pCaCommentId_ =
    CommentsApprove'
    { _caBlogId = pCaBlogId_
    , _caPostId = pCaPostId_
    , _caCommentId = pCaCommentId_
    }

-- | The ID of the Blog.
caBlogId :: Lens' CommentsApprove' Text
caBlogId = lens _caBlogId (\ s a -> s{_caBlogId = a})

-- | The ID of the Post.
caPostId :: Lens' CommentsApprove' Text
caPostId = lens _caPostId (\ s a -> s{_caPostId = a})

-- | The ID of the comment to mark as not spam.
caCommentId :: Lens' CommentsApprove' Text
caCommentId
  = lens _caCommentId (\ s a -> s{_caCommentId = a})

instance GoogleRequest CommentsApprove' where
        type Rs CommentsApprove' = Comment
        requestClient CommentsApprove'{..}
          = go _caBlogId _caPostId _caCommentId (Just AltJSON)
              bloggerService
          where go
                  = buildClient
                      (Proxy :: Proxy CommentsApproveResource)
                      mempty
