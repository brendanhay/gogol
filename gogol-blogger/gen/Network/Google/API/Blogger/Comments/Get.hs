{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Blogger.Comments.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one comment by ID.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @blogger.comments.get@.
module Network.Google.API.Blogger.Comments.Get
    (
    -- * REST Resource
      CommentsGetAPI

    -- * Creating a Request
    , commentsGet'
    , CommentsGet'

    -- * Request Lenses
    , cgQuotaUser
    , cgPrettyPrint
    , cgUserIp
    , cgBlogId
    , cgKey
    , cgView
    , cgPostId
    , cgOauthToken
    , cgCommentId
    , cgFields
    , cgAlt
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for blogger.comments.get which the
-- 'CommentsGet'' request conforms to.
type CommentsGetAPI =
     "blogs" :>
       Capture "blogId" Text :>
         "posts" :>
           Capture "postId" Text :>
             "comments" :>
               Capture "commentId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "view" CommentsGet'View :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :> Get '[JSON] Comment

-- | Gets one comment by ID.
--
-- /See:/ 'commentsGet'' smart constructor.
data CommentsGet' = CommentsGet'
    { _cgQuotaUser   :: !(Maybe Text)
    , _cgPrettyPrint :: !Bool
    , _cgUserIp      :: !(Maybe Text)
    , _cgBlogId      :: !Text
    , _cgKey         :: !(Maybe Text)
    , _cgView        :: !(Maybe CommentsGet'View)
    , _cgPostId      :: !Text
    , _cgOauthToken  :: !(Maybe Text)
    , _cgCommentId   :: !Text
    , _cgFields      :: !(Maybe Text)
    , _cgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgQuotaUser'
--
-- * 'cgPrettyPrint'
--
-- * 'cgUserIp'
--
-- * 'cgBlogId'
--
-- * 'cgKey'
--
-- * 'cgView'
--
-- * 'cgPostId'
--
-- * 'cgOauthToken'
--
-- * 'cgCommentId'
--
-- * 'cgFields'
--
-- * 'cgAlt'
commentsGet'
    :: Text -- ^ 'blogId'
    -> Text -- ^ 'postId'
    -> Text -- ^ 'commentId'
    -> CommentsGet'
commentsGet' pCgBlogId_ pCgPostId_ pCgCommentId_ =
    CommentsGet'
    { _cgQuotaUser = Nothing
    , _cgPrettyPrint = True
    , _cgUserIp = Nothing
    , _cgBlogId = pCgBlogId_
    , _cgKey = Nothing
    , _cgView = Nothing
    , _cgPostId = pCgPostId_
    , _cgOauthToken = Nothing
    , _cgCommentId = pCgCommentId_
    , _cgFields = Nothing
    , _cgAlt = JSON
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
cgUserIp :: Lens' CommentsGet' (Maybe Text)
cgUserIp = lens _cgUserIp (\ s a -> s{_cgUserIp = a})

-- | ID of the blog to containing the comment.
cgBlogId :: Lens' CommentsGet' Text
cgBlogId = lens _cgBlogId (\ s a -> s{_cgBlogId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cgKey :: Lens' CommentsGet' (Maybe Text)
cgKey = lens _cgKey (\ s a -> s{_cgKey = a})

-- | Access level for the requested comment (default: READER). Note that some
-- comments will require elevated permissions, for example comments where
-- the parent posts which is in a draft state, or comments that are pending
-- moderation.
cgView :: Lens' CommentsGet' (Maybe CommentsGet'View)
cgView = lens _cgView (\ s a -> s{_cgView = a})

-- | ID of the post to fetch posts from.
cgPostId :: Lens' CommentsGet' Text
cgPostId = lens _cgPostId (\ s a -> s{_cgPostId = a})

-- | OAuth 2.0 token for the current user.
cgOauthToken :: Lens' CommentsGet' (Maybe Text)
cgOauthToken
  = lens _cgOauthToken (\ s a -> s{_cgOauthToken = a})

-- | The ID of the comment to get.
cgCommentId :: Lens' CommentsGet' Text
cgCommentId
  = lens _cgCommentId (\ s a -> s{_cgCommentId = a})

-- | Selector specifying which fields to include in a partial response.
cgFields :: Lens' CommentsGet' (Maybe Text)
cgFields = lens _cgFields (\ s a -> s{_cgFields = a})

-- | Data format for the response.
cgAlt :: Lens' CommentsGet' Alt
cgAlt = lens _cgAlt (\ s a -> s{_cgAlt = a})

instance GoogleRequest CommentsGet' where
        type Rs CommentsGet' = Comment
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u CommentsGet'{..}
          = go _cgQuotaUser (Just _cgPrettyPrint) _cgUserIp
              _cgBlogId
              _cgKey
              _cgView
              _cgPostId
              _cgOauthToken
              _cgCommentId
              _cgFields
              (Just _cgAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy CommentsGetAPI) r u
