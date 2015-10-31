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
-- Module      : Network.Google.Resource.Blogger.Comments.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one comment by ID.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @blogger.comments.get@.
module Network.Google.Resource.Blogger.Comments.Get
    (
    -- * REST Resource
      CommentsGetResource

    -- * Creating a Request
    , commentsGet
    , CommentsGet

    -- * Request Lenses
    , cgBlogId
    , cgView
    , cgPostId
    , cgCommentId
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @blogger.comments.get@ method which the
-- 'CommentsGet' request conforms to.
type CommentsGetResource =
     "blogger" :>
       "v3" :>
         "blogs" :>
           Capture "blogId" Text :>
             "posts" :>
               Capture "postId" Text :>
                 "comments" :>
                   Capture "commentId" Text :>
                     QueryParam "view" CommentsGetView :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Comment

-- | Gets one comment by ID.
--
-- /See:/ 'commentsGet' smart constructor.
data CommentsGet = CommentsGet
    { _cgBlogId    :: !Text
    , _cgView      :: !(Maybe CommentsGetView)
    , _cgPostId    :: !Text
    , _cgCommentId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgBlogId'
--
-- * 'cgView'
--
-- * 'cgPostId'
--
-- * 'cgCommentId'
commentsGet
    :: Text -- ^ 'cgBlogId'
    -> Text -- ^ 'cgPostId'
    -> Text -- ^ 'cgCommentId'
    -> CommentsGet
commentsGet pCgBlogId_ pCgPostId_ pCgCommentId_ =
    CommentsGet
    { _cgBlogId = pCgBlogId_
    , _cgView = Nothing
    , _cgPostId = pCgPostId_
    , _cgCommentId = pCgCommentId_
    }

-- | ID of the blog to containing the comment.
cgBlogId :: Lens' CommentsGet Text
cgBlogId = lens _cgBlogId (\ s a -> s{_cgBlogId = a})

-- | Access level for the requested comment (default: READER). Note that some
-- comments will require elevated permissions, for example comments where
-- the parent posts which is in a draft state, or comments that are pending
-- moderation.
cgView :: Lens' CommentsGet (Maybe CommentsGetView)
cgView = lens _cgView (\ s a -> s{_cgView = a})

-- | ID of the post to fetch posts from.
cgPostId :: Lens' CommentsGet Text
cgPostId = lens _cgPostId (\ s a -> s{_cgPostId = a})

-- | The ID of the comment to get.
cgCommentId :: Lens' CommentsGet Text
cgCommentId
  = lens _cgCommentId (\ s a -> s{_cgCommentId = a})

instance GoogleRequest CommentsGet where
        type Rs CommentsGet = Comment
        type Scopes CommentsGet =
             '["https://www.googleapis.com/auth/blogger",
               "https://www.googleapis.com/auth/blogger.readonly"]
        requestClient CommentsGet{..}
          = go _cgBlogId _cgPostId _cgCommentId _cgView
              (Just AltJSON)
              bloggerService
          where go
                  = buildClient (Proxy :: Proxy CommentsGetResource)
                      mempty
