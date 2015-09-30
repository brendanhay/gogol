{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Blogger.Posts.Revert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Revert a published or scheduled post to draft state.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @BloggerPostsRevert@.
module Network.Google.Resource.Blogger.Posts.Revert
    (
    -- * REST Resource
      PostsRevertResource

    -- * Creating a Request
    , postsRevert'
    , PostsRevert'

    -- * Request Lenses
    , prQuotaUser
    , prPrettyPrint
    , prUserIp
    , prBlogId
    , prKey
    , prPostId
    , prOauthToken
    , prFields
    , prAlt
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerPostsRevert@ which the
-- 'PostsRevert'' request conforms to.
type PostsRevertResource =
     "blogs" :>
       Capture "blogId" Text :>
         "posts" :>
           Capture "postId" Text :>
             "revert" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Post '[JSON] Post

-- | Revert a published or scheduled post to draft state.
--
-- /See:/ 'postsRevert'' smart constructor.
data PostsRevert' = PostsRevert'
    { _prQuotaUser   :: !(Maybe Text)
    , _prPrettyPrint :: !Bool
    , _prUserIp      :: !(Maybe Text)
    , _prBlogId      :: !Text
    , _prKey         :: !(Maybe Text)
    , _prPostId      :: !Text
    , _prOauthToken  :: !(Maybe Text)
    , _prFields      :: !(Maybe Text)
    , _prAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostsRevert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prQuotaUser'
--
-- * 'prPrettyPrint'
--
-- * 'prUserIp'
--
-- * 'prBlogId'
--
-- * 'prKey'
--
-- * 'prPostId'
--
-- * 'prOauthToken'
--
-- * 'prFields'
--
-- * 'prAlt'
postsRevert'
    :: Text -- ^ 'blogId'
    -> Text -- ^ 'postId'
    -> PostsRevert'
postsRevert' pPrBlogId_ pPrPostId_ =
    PostsRevert'
    { _prQuotaUser = Nothing
    , _prPrettyPrint = True
    , _prUserIp = Nothing
    , _prBlogId = pPrBlogId_
    , _prKey = Nothing
    , _prPostId = pPrPostId_
    , _prOauthToken = Nothing
    , _prFields = Nothing
    , _prAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
prQuotaUser :: Lens' PostsRevert' (Maybe Text)
prQuotaUser
  = lens _prQuotaUser (\ s a -> s{_prQuotaUser = a})

-- | Returns response with indentations and line breaks.
prPrettyPrint :: Lens' PostsRevert' Bool
prPrettyPrint
  = lens _prPrettyPrint
      (\ s a -> s{_prPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
prUserIp :: Lens' PostsRevert' (Maybe Text)
prUserIp = lens _prUserIp (\ s a -> s{_prUserIp = a})

-- | The ID of the Blog.
prBlogId :: Lens' PostsRevert' Text
prBlogId = lens _prBlogId (\ s a -> s{_prBlogId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
prKey :: Lens' PostsRevert' (Maybe Text)
prKey = lens _prKey (\ s a -> s{_prKey = a})

-- | The ID of the Post.
prPostId :: Lens' PostsRevert' Text
prPostId = lens _prPostId (\ s a -> s{_prPostId = a})

-- | OAuth 2.0 token for the current user.
prOauthToken :: Lens' PostsRevert' (Maybe Text)
prOauthToken
  = lens _prOauthToken (\ s a -> s{_prOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
prFields :: Lens' PostsRevert' (Maybe Text)
prFields = lens _prFields (\ s a -> s{_prFields = a})

-- | Data format for the response.
prAlt :: Lens' PostsRevert' Alt
prAlt = lens _prAlt (\ s a -> s{_prAlt = a})

instance GoogleRequest PostsRevert' where
        type Rs PostsRevert' = Post
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u PostsRevert'{..}
          = go _prQuotaUser (Just _prPrettyPrint) _prUserIp
              _prBlogId
              _prKey
              _prPostId
              _prOauthToken
              _prFields
              (Just _prAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PostsRevertResource)
                      r
                      u
