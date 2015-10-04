{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Blogger.Comments.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one comment by ID.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @BloggerCommentsGet@.
module Network.Google.Resource.Blogger.Comments.Get
    (
    -- * REST Resource
      CommentsGetResource

    -- * Creating a Request
    , commentsGet'
    , CommentsGet'

    -- * Request Lenses
    , cgQuotaUser
    , cgPrettyPrint
    , cgUserIP
    , cgBlogId
    , cgKey
    , cgView
    , cgPostId
    , cgOAuthToken
    , cgCommentId
    , cgFields
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerCommentsGet@ which the
-- 'CommentsGet'' request conforms to.
type CommentsGetResource =
     "blogs" :>
       Capture "blogId" Text :>
         "posts" :>
           Capture "postId" Text :>
             "comments" :>
               Capture "commentId" Text :>
                 QueryParam "view" CommentsGetView :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" Key :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :> Get '[JSON] Comment

-- | Gets one comment by ID.
--
-- /See:/ 'commentsGet'' smart constructor.
data CommentsGet' = CommentsGet'
    { _cgQuotaUser   :: !(Maybe Text)
    , _cgPrettyPrint :: !Bool
    , _cgUserIP      :: !(Maybe Text)
    , _cgBlogId      :: !Text
    , _cgKey         :: !(Maybe Key)
    , _cgView        :: !(Maybe CommentsGetView)
    , _cgPostId      :: !Text
    , _cgOAuthToken  :: !(Maybe OAuthToken)
    , _cgCommentId   :: !Text
    , _cgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgQuotaUser'
--
-- * 'cgPrettyPrint'
--
-- * 'cgUserIP'
--
-- * 'cgBlogId'
--
-- * 'cgKey'
--
-- * 'cgView'
--
-- * 'cgPostId'
--
-- * 'cgOAuthToken'
--
-- * 'cgCommentId'
--
-- * 'cgFields'
commentsGet'
    :: Text -- ^ 'blogId'
    -> Text -- ^ 'postId'
    -> Text -- ^ 'commentId'
    -> CommentsGet'
commentsGet' pCgBlogId_ pCgPostId_ pCgCommentId_ =
    CommentsGet'
    { _cgQuotaUser = Nothing
    , _cgPrettyPrint = True
    , _cgUserIP = Nothing
    , _cgBlogId = pCgBlogId_
    , _cgKey = Nothing
    , _cgView = Nothing
    , _cgPostId = pCgPostId_
    , _cgOAuthToken = Nothing
    , _cgCommentId = pCgCommentId_
    , _cgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cgQuotaUser :: Lens' CommentsGet' (Maybe Text)
cgQuotaUser
  = lens _cgQuotaUser (\ s a -> s{_cgQuotaUser = a})

-- | Returns response with indentations and line breaks.
cgPrettyPrint :: Lens' CommentsGet' Bool
cgPrettyPrint
  = lens _cgPrettyPrint
      (\ s a -> s{_cgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cgUserIP :: Lens' CommentsGet' (Maybe Text)
cgUserIP = lens _cgUserIP (\ s a -> s{_cgUserIP = a})

-- | ID of the blog to containing the comment.
cgBlogId :: Lens' CommentsGet' Text
cgBlogId = lens _cgBlogId (\ s a -> s{_cgBlogId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cgKey :: Lens' CommentsGet' (Maybe Key)
cgKey = lens _cgKey (\ s a -> s{_cgKey = a})

-- | Access level for the requested comment (default: READER). Note that some
-- comments will require elevated permissions, for example comments where
-- the parent posts which is in a draft state, or comments that are pending
-- moderation.
cgView :: Lens' CommentsGet' (Maybe CommentsGetView)
cgView = lens _cgView (\ s a -> s{_cgView = a})

-- | ID of the post to fetch posts from.
cgPostId :: Lens' CommentsGet' Text
cgPostId = lens _cgPostId (\ s a -> s{_cgPostId = a})

-- | OAuth 2.0 token for the current user.
cgOAuthToken :: Lens' CommentsGet' (Maybe OAuthToken)
cgOAuthToken
  = lens _cgOAuthToken (\ s a -> s{_cgOAuthToken = a})

-- | The ID of the comment to get.
cgCommentId :: Lens' CommentsGet' Text
cgCommentId
  = lens _cgCommentId (\ s a -> s{_cgCommentId = a})

-- | Selector specifying which fields to include in a partial response.
cgFields :: Lens' CommentsGet' (Maybe Text)
cgFields = lens _cgFields (\ s a -> s{_cgFields = a})

instance GoogleAuth CommentsGet' where
        authKey = cgKey . _Just
        authToken = cgOAuthToken . _Just

instance GoogleRequest CommentsGet' where
        type Rs CommentsGet' = Comment
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u CommentsGet'{..}
          = go _cgBlogId _cgPostId _cgCommentId _cgView
              _cgQuotaUser
              (Just _cgPrettyPrint)
              _cgUserIP
              _cgFields
              _cgKey
              _cgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CommentsGetResource)
                      r
                      u
