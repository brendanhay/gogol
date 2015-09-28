{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Blogger.BlogUserInfos.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one blog and user info pair by blogId and userId.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @blogger.blogUserInfos.get@.
module Network.Google.API.Blogger.BlogUserInfos.Get
    (
    -- * REST Resource
      BlogUserInfosGetAPI

    -- * Creating a Request
    , blogUserInfosGet'
    , BlogUserInfosGet'

    -- * Request Lenses
    , buigQuotaUser
    , buigPrettyPrint
    , buigUserIp
    , buigBlogId
    , buigUserId
    , buigKey
    , buigMaxPosts
    , buigOauthToken
    , buigFields
    , buigAlt
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for blogger.blogUserInfos.get which the
-- 'BlogUserInfosGet'' request conforms to.
type BlogUserInfosGetAPI =
     "users" :>
       Capture "userId" Text :>
         "blogs" :>
           Capture "blogId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "maxPosts" Word32 :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Get '[JSON] BlogUserInfo

-- | Gets one blog and user info pair by blogId and userId.
--
-- /See:/ 'blogUserInfosGet'' smart constructor.
data BlogUserInfosGet' = BlogUserInfosGet'
    { _buigQuotaUser   :: !(Maybe Text)
    , _buigPrettyPrint :: !Bool
    , _buigUserIp      :: !(Maybe Text)
    , _buigBlogId      :: !Text
    , _buigUserId      :: !Text
    , _buigKey         :: !(Maybe Text)
    , _buigMaxPosts    :: !(Maybe Word32)
    , _buigOauthToken  :: !(Maybe Text)
    , _buigFields      :: !(Maybe Text)
    , _buigAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BlogUserInfosGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'buigQuotaUser'
--
-- * 'buigPrettyPrint'
--
-- * 'buigUserIp'
--
-- * 'buigBlogId'
--
-- * 'buigUserId'
--
-- * 'buigKey'
--
-- * 'buigMaxPosts'
--
-- * 'buigOauthToken'
--
-- * 'buigFields'
--
-- * 'buigAlt'
blogUserInfosGet'
    :: Text -- ^ 'blogId'
    -> Text -- ^ 'userId'
    -> BlogUserInfosGet'
blogUserInfosGet' pBuigBlogId_ pBuigUserId_ =
    BlogUserInfosGet'
    { _buigQuotaUser = Nothing
    , _buigPrettyPrint = True
    , _buigUserIp = Nothing
    , _buigBlogId = pBuigBlogId_
    , _buigUserId = pBuigUserId_
    , _buigKey = Nothing
    , _buigMaxPosts = Nothing
    , _buigOauthToken = Nothing
    , _buigFields = Nothing
    , _buigAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
buigQuotaUser :: Lens' BlogUserInfosGet' (Maybe Text)
buigQuotaUser
  = lens _buigQuotaUser
      (\ s a -> s{_buigQuotaUser = a})

-- | Returns response with indentations and line breaks.
buigPrettyPrint :: Lens' BlogUserInfosGet' Bool
buigPrettyPrint
  = lens _buigPrettyPrint
      (\ s a -> s{_buigPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
buigUserIp :: Lens' BlogUserInfosGet' (Maybe Text)
buigUserIp
  = lens _buigUserIp (\ s a -> s{_buigUserIp = a})

-- | The ID of the blog to get.
buigBlogId :: Lens' BlogUserInfosGet' Text
buigBlogId
  = lens _buigBlogId (\ s a -> s{_buigBlogId = a})

-- | ID of the user whose blogs are to be fetched. Either the word \'self\'
-- (sans quote marks) or the user\'s profile identifier.
buigUserId :: Lens' BlogUserInfosGet' Text
buigUserId
  = lens _buigUserId (\ s a -> s{_buigUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
buigKey :: Lens' BlogUserInfosGet' (Maybe Text)
buigKey = lens _buigKey (\ s a -> s{_buigKey = a})

-- | Maximum number of posts to pull back with the blog.
buigMaxPosts :: Lens' BlogUserInfosGet' (Maybe Word32)
buigMaxPosts
  = lens _buigMaxPosts (\ s a -> s{_buigMaxPosts = a})

-- | OAuth 2.0 token for the current user.
buigOauthToken :: Lens' BlogUserInfosGet' (Maybe Text)
buigOauthToken
  = lens _buigOauthToken
      (\ s a -> s{_buigOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
buigFields :: Lens' BlogUserInfosGet' (Maybe Text)
buigFields
  = lens _buigFields (\ s a -> s{_buigFields = a})

-- | Data format for the response.
buigAlt :: Lens' BlogUserInfosGet' Alt
buigAlt = lens _buigAlt (\ s a -> s{_buigAlt = a})

instance GoogleRequest BlogUserInfosGet' where
        type Rs BlogUserInfosGet' = BlogUserInfo
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u BlogUserInfosGet'{..}
          = go _buigQuotaUser (Just _buigPrettyPrint)
              _buigUserIp
              _buigBlogId
              _buigUserId
              _buigKey
              _buigMaxPosts
              _buigOauthToken
              _buigFields
              (Just _buigAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy BlogUserInfosGetAPI)
                      r
                      u
