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
-- Module      : Network.Google.Resource.Blogger.BlogUserInfos.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one blog and user info pair by blogId and userId.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @BloggerBlogUserInfosGet@.
module Network.Google.Resource.Blogger.BlogUserInfos.Get
    (
    -- * REST Resource
      BlogUserInfosGetResource

    -- * Creating a Request
    , blogUserInfosGet'
    , BlogUserInfosGet'

    -- * Request Lenses
    , buigQuotaUser
    , buigPrettyPrint
    , buigUserIP
    , buigBlogId
    , buigUserId
    , buigKey
    , buigMaxPosts
    , buigOAuthToken
    , buigFields
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerBlogUserInfosGet@ which the
-- 'BlogUserInfosGet'' request conforms to.
type BlogUserInfosGetResource =
     "users" :>
       Capture "userId" Text :>
         "blogs" :>
           Capture "blogId" Text :>
             QueryParam "maxPosts" Word32 :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Get '[JSON] BlogUserInfo

-- | Gets one blog and user info pair by blogId and userId.
--
-- /See:/ 'blogUserInfosGet'' smart constructor.
data BlogUserInfosGet' = BlogUserInfosGet'
    { _buigQuotaUser   :: !(Maybe Text)
    , _buigPrettyPrint :: !Bool
    , _buigUserIP      :: !(Maybe Text)
    , _buigBlogId      :: !Text
    , _buigUserId      :: !Text
    , _buigKey         :: !(Maybe AuthKey)
    , _buigMaxPosts    :: !(Maybe Word32)
    , _buigOAuthToken  :: !(Maybe OAuthToken)
    , _buigFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BlogUserInfosGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'buigQuotaUser'
--
-- * 'buigPrettyPrint'
--
-- * 'buigUserIP'
--
-- * 'buigBlogId'
--
-- * 'buigUserId'
--
-- * 'buigKey'
--
-- * 'buigMaxPosts'
--
-- * 'buigOAuthToken'
--
-- * 'buigFields'
blogUserInfosGet'
    :: Text -- ^ 'blogId'
    -> Text -- ^ 'userId'
    -> BlogUserInfosGet'
blogUserInfosGet' pBuigBlogId_ pBuigUserId_ =
    BlogUserInfosGet'
    { _buigQuotaUser = Nothing
    , _buigPrettyPrint = True
    , _buigUserIP = Nothing
    , _buigBlogId = pBuigBlogId_
    , _buigUserId = pBuigUserId_
    , _buigKey = Nothing
    , _buigMaxPosts = Nothing
    , _buigOAuthToken = Nothing
    , _buigFields = Nothing
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
buigUserIP :: Lens' BlogUserInfosGet' (Maybe Text)
buigUserIP
  = lens _buigUserIP (\ s a -> s{_buigUserIP = a})

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
buigKey :: Lens' BlogUserInfosGet' (Maybe AuthKey)
buigKey = lens _buigKey (\ s a -> s{_buigKey = a})

-- | Maximum number of posts to pull back with the blog.
buigMaxPosts :: Lens' BlogUserInfosGet' (Maybe Word32)
buigMaxPosts
  = lens _buigMaxPosts (\ s a -> s{_buigMaxPosts = a})

-- | OAuth 2.0 token for the current user.
buigOAuthToken :: Lens' BlogUserInfosGet' (Maybe OAuthToken)
buigOAuthToken
  = lens _buigOAuthToken
      (\ s a -> s{_buigOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
buigFields :: Lens' BlogUserInfosGet' (Maybe Text)
buigFields
  = lens _buigFields (\ s a -> s{_buigFields = a})

instance GoogleAuth BlogUserInfosGet' where
        authKey = buigKey . _Just
        authToken = buigOAuthToken . _Just

instance GoogleRequest BlogUserInfosGet' where
        type Rs BlogUserInfosGet' = BlogUserInfo
        request = requestWith bloggerRequest
        requestWith rq BlogUserInfosGet'{..}
          = go _buigUserId _buigBlogId _buigMaxPosts
              _buigQuotaUser
              (Just _buigPrettyPrint)
              _buigUserIP
              _buigFields
              _buigKey
              _buigOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy BlogUserInfosGetResource)
                      rq
