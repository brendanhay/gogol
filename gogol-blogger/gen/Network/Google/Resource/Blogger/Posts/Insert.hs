{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module Blogger.Posts.Insert
    (
    -- * REST Resource
      PostsInsertAPI

    -- * Creating a Request
    , postsInsert
    , PostsInsert

    -- * Request Lenses
    , posFetchBody
    , posQuotaUser
    , posPrettyPrint
    , posIsDraft
    , posUserIp
    , posFetchImages
    , posBlogId
    , posKey
    , posOauthToken
    , posFields
    , posAlt
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerPostsInsert@ which the
-- 'PostsInsert' request conforms to.
type PostsInsertAPI =
     "blogs" :>
       Capture "blogId" Text :>
         "posts" :>
           QueryParam "fetchBody" Bool :>
             QueryParam "isDraft" Bool :>
               QueryParam "fetchImages" Bool :> Post '[JSON] Post

-- | Add a post.
--
-- /See:/ 'postsInsert' smart constructor.
data PostsInsert = PostsInsert
    { _posFetchBody   :: !Bool
    , _posQuotaUser   :: !(Maybe Text)
    , _posPrettyPrint :: !Bool
    , _posIsDraft     :: !(Maybe Bool)
    , _posUserIp      :: !(Maybe Text)
    , _posFetchImages :: !(Maybe Bool)
    , _posBlogId      :: !Text
    , _posKey         :: !(Maybe Text)
    , _posOauthToken  :: !(Maybe Text)
    , _posFields      :: !(Maybe Text)
    , _posAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'posFetchBody'
--
-- * 'posQuotaUser'
--
-- * 'posPrettyPrint'
--
-- * 'posIsDraft'
--
-- * 'posUserIp'
--
-- * 'posFetchImages'
--
-- * 'posBlogId'
--
-- * 'posKey'
--
-- * 'posOauthToken'
--
-- * 'posFields'
--
-- * 'posAlt'
postsInsert
    :: Text -- ^ 'blogId'
    -> PostsInsert
postsInsert pPosBlogId_ =
    PostsInsert
    { _posFetchBody = True
    , _posQuotaUser = Nothing
    , _posPrettyPrint = True
    , _posIsDraft = Nothing
    , _posUserIp = Nothing
    , _posFetchImages = Nothing
    , _posBlogId = pPosBlogId_
    , _posKey = Nothing
    , _posOauthToken = Nothing
    , _posFields = Nothing
    , _posAlt = "json"
    }

-- | Whether the body content of the post is included with the result
-- (default: true).
posFetchBody :: Lens' PostsInsert' Bool
posFetchBody
  = lens _posFetchBody (\ s a -> s{_posFetchBody = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
posQuotaUser :: Lens' PostsInsert' (Maybe Text)
posQuotaUser
  = lens _posQuotaUser (\ s a -> s{_posQuotaUser = a})

-- | Returns response with indentations and line breaks.
posPrettyPrint :: Lens' PostsInsert' Bool
posPrettyPrint
  = lens _posPrettyPrint
      (\ s a -> s{_posPrettyPrint = a})

-- | Whether to create the post as a draft (default: false).
posIsDraft :: Lens' PostsInsert' (Maybe Bool)
posIsDraft
  = lens _posIsDraft (\ s a -> s{_posIsDraft = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
posUserIp :: Lens' PostsInsert' (Maybe Text)
posUserIp
  = lens _posUserIp (\ s a -> s{_posUserIp = a})

-- | Whether image URL metadata for each post is included in the returned
-- result (default: false).
posFetchImages :: Lens' PostsInsert' (Maybe Bool)
posFetchImages
  = lens _posFetchImages
      (\ s a -> s{_posFetchImages = a})

-- | ID of the blog to add the post to.
posBlogId :: Lens' PostsInsert' Text
posBlogId
  = lens _posBlogId (\ s a -> s{_posBlogId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
posKey :: Lens' PostsInsert' (Maybe Text)
posKey = lens _posKey (\ s a -> s{_posKey = a})

-- | OAuth 2.0 token for the current user.
posOauthToken :: Lens' PostsInsert' (Maybe Text)
posOauthToken
  = lens _posOauthToken
      (\ s a -> s{_posOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
posFields :: Lens' PostsInsert' (Maybe Text)
posFields
  = lens _posFields (\ s a -> s{_posFields = a})

-- | Data format for the response.
posAlt :: Lens' PostsInsert' Text
posAlt = lens _posAlt (\ s a -> s{_posAlt = a})

instance GoogleRequest PostsInsert' where
        type Rs PostsInsert' = Post
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u PostsInsert{..}
          = go (Just _posFetchBody) _posQuotaUser
              _posPrettyPrint
              _posIsDraft
              _posUserIp
              _posFetchImages
              _posBlogId
              _posKey
              _posOauthToken
              _posFields
              _posAlt
          where go
                  = clientWithRoute (Proxy :: Proxy PostsInsertAPI) r u
