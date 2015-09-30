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
-- Module      : Network.Google.Resource.Blogger.Posts.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Add a post.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @BloggerPostsInsert@.
module Network.Google.Resource.Blogger.Posts.Insert
    (
    -- * REST Resource
      PostsInsertResource

    -- * Creating a Request
    , postsInsert'
    , PostsInsert'

    -- * Request Lenses
    , piiFetchBody
    , piiQuotaUser
    , piiPrettyPrint
    , piiIsDraft
    , piiUserIp
    , piiFetchImages
    , piiBlogId
    , piiKey
    , piiOauthToken
    , piiFields
    , piiAlt
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerPostsInsert@ which the
-- 'PostsInsert'' request conforms to.
type PostsInsertResource =
     "blogs" :>
       Capture "blogId" Text :>
         "posts" :>
           QueryParam "fetchBody" Bool :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "isDraft" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fetchImages" Bool :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Post '[JSON] Post

-- | Add a post.
--
-- /See:/ 'postsInsert'' smart constructor.
data PostsInsert' = PostsInsert'
    { _piiFetchBody   :: !Bool
    , _piiQuotaUser   :: !(Maybe Text)
    , _piiPrettyPrint :: !Bool
    , _piiIsDraft     :: !(Maybe Bool)
    , _piiUserIp      :: !(Maybe Text)
    , _piiFetchImages :: !(Maybe Bool)
    , _piiBlogId      :: !Text
    , _piiKey         :: !(Maybe Text)
    , _piiOauthToken  :: !(Maybe Text)
    , _piiFields      :: !(Maybe Text)
    , _piiAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piiFetchBody'
--
-- * 'piiQuotaUser'
--
-- * 'piiPrettyPrint'
--
-- * 'piiIsDraft'
--
-- * 'piiUserIp'
--
-- * 'piiFetchImages'
--
-- * 'piiBlogId'
--
-- * 'piiKey'
--
-- * 'piiOauthToken'
--
-- * 'piiFields'
--
-- * 'piiAlt'
postsInsert'
    :: Text -- ^ 'blogId'
    -> PostsInsert'
postsInsert' pPiiBlogId_ =
    PostsInsert'
    { _piiFetchBody = True
    , _piiQuotaUser = Nothing
    , _piiPrettyPrint = True
    , _piiIsDraft = Nothing
    , _piiUserIp = Nothing
    , _piiFetchImages = Nothing
    , _piiBlogId = pPiiBlogId_
    , _piiKey = Nothing
    , _piiOauthToken = Nothing
    , _piiFields = Nothing
    , _piiAlt = JSON
    }

-- | Whether the body content of the post is included with the result
-- (default: true).
piiFetchBody :: Lens' PostsInsert' Bool
piiFetchBody
  = lens _piiFetchBody (\ s a -> s{_piiFetchBody = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
piiQuotaUser :: Lens' PostsInsert' (Maybe Text)
piiQuotaUser
  = lens _piiQuotaUser (\ s a -> s{_piiQuotaUser = a})

-- | Returns response with indentations and line breaks.
piiPrettyPrint :: Lens' PostsInsert' Bool
piiPrettyPrint
  = lens _piiPrettyPrint
      (\ s a -> s{_piiPrettyPrint = a})

-- | Whether to create the post as a draft (default: false).
piiIsDraft :: Lens' PostsInsert' (Maybe Bool)
piiIsDraft
  = lens _piiIsDraft (\ s a -> s{_piiIsDraft = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
piiUserIp :: Lens' PostsInsert' (Maybe Text)
piiUserIp
  = lens _piiUserIp (\ s a -> s{_piiUserIp = a})

-- | Whether image URL metadata for each post is included in the returned
-- result (default: false).
piiFetchImages :: Lens' PostsInsert' (Maybe Bool)
piiFetchImages
  = lens _piiFetchImages
      (\ s a -> s{_piiFetchImages = a})

-- | ID of the blog to add the post to.
piiBlogId :: Lens' PostsInsert' Text
piiBlogId
  = lens _piiBlogId (\ s a -> s{_piiBlogId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
piiKey :: Lens' PostsInsert' (Maybe Text)
piiKey = lens _piiKey (\ s a -> s{_piiKey = a})

-- | OAuth 2.0 token for the current user.
piiOauthToken :: Lens' PostsInsert' (Maybe Text)
piiOauthToken
  = lens _piiOauthToken
      (\ s a -> s{_piiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
piiFields :: Lens' PostsInsert' (Maybe Text)
piiFields
  = lens _piiFields (\ s a -> s{_piiFields = a})

-- | Data format for the response.
piiAlt :: Lens' PostsInsert' Alt
piiAlt = lens _piiAlt (\ s a -> s{_piiAlt = a})

instance GoogleRequest PostsInsert' where
        type Rs PostsInsert' = Post
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u PostsInsert'{..}
          = go (Just _piiFetchBody) _piiQuotaUser
              (Just _piiPrettyPrint)
              _piiIsDraft
              _piiUserIp
              _piiFetchImages
              _piiBlogId
              _piiKey
              _piiOauthToken
              _piiFields
              (Just _piiAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PostsInsertResource)
                      r
                      u
