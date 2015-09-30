{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Blogger.Posts.Publish
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Publishes a draft post, optionally at the specific time of the given
-- publishDate parameter.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @BloggerPostsPublish@.
module Blogger.Posts.Publish
    (
    -- * REST Resource
      PostsPublishAPI

    -- * Creating a Request
    , postsPublish
    , PostsPublish

    -- * Request Lenses
    , posoQuotaUser
    , posoPrettyPrint
    , posoPublishDate
    , posoUserIp
    , posoBlogId
    , posoKey
    , posoPostId
    , posoOauthToken
    , posoFields
    , posoAlt
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerPostsPublish@ which the
-- 'PostsPublish' request conforms to.
type PostsPublishAPI =
     "blogs" :>
       Capture "blogId" Text :>
         "posts" :>
           Capture "postId" Text :>
             "publish" :>
               QueryParam "publishDate" UTCTime :> Post '[JSON] Post

-- | Publishes a draft post, optionally at the specific time of the given
-- publishDate parameter.
--
-- /See:/ 'postsPublish' smart constructor.
data PostsPublish = PostsPublish
    { _posoQuotaUser   :: !(Maybe Text)
    , _posoPrettyPrint :: !Bool
    , _posoPublishDate :: !(Maybe UTCTime)
    , _posoUserIp      :: !(Maybe Text)
    , _posoBlogId      :: !Text
    , _posoKey         :: !(Maybe Text)
    , _posoPostId      :: !Text
    , _posoOauthToken  :: !(Maybe Text)
    , _posoFields      :: !(Maybe Text)
    , _posoAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostsPublish'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'posoQuotaUser'
--
-- * 'posoPrettyPrint'
--
-- * 'posoPublishDate'
--
-- * 'posoUserIp'
--
-- * 'posoBlogId'
--
-- * 'posoKey'
--
-- * 'posoPostId'
--
-- * 'posoOauthToken'
--
-- * 'posoFields'
--
-- * 'posoAlt'
postsPublish
    :: Text -- ^ 'blogId'
    -> Text -- ^ 'postId'
    -> PostsPublish
postsPublish pPosoBlogId_ pPosoPostId_ =
    PostsPublish
    { _posoQuotaUser = Nothing
    , _posoPrettyPrint = True
    , _posoPublishDate = Nothing
    , _posoUserIp = Nothing
    , _posoBlogId = pPosoBlogId_
    , _posoKey = Nothing
    , _posoPostId = pPosoPostId_
    , _posoOauthToken = Nothing
    , _posoFields = Nothing
    , _posoAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
posoQuotaUser :: Lens' PostsPublish' (Maybe Text)
posoQuotaUser
  = lens _posoQuotaUser
      (\ s a -> s{_posoQuotaUser = a})

-- | Returns response with indentations and line breaks.
posoPrettyPrint :: Lens' PostsPublish' Bool
posoPrettyPrint
  = lens _posoPrettyPrint
      (\ s a -> s{_posoPrettyPrint = a})

-- | Optional date and time to schedule the publishing of the Blog. If no
-- publishDate parameter is given, the post is either published at the a
-- previously saved schedule date (if present), or the current time. If a
-- future date is given, the post will be scheduled to be published.
posoPublishDate :: Lens' PostsPublish' (Maybe UTCTime)
posoPublishDate
  = lens _posoPublishDate
      (\ s a -> s{_posoPublishDate = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
posoUserIp :: Lens' PostsPublish' (Maybe Text)
posoUserIp
  = lens _posoUserIp (\ s a -> s{_posoUserIp = a})

-- | The ID of the Blog.
posoBlogId :: Lens' PostsPublish' Text
posoBlogId
  = lens _posoBlogId (\ s a -> s{_posoBlogId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
posoKey :: Lens' PostsPublish' (Maybe Text)
posoKey = lens _posoKey (\ s a -> s{_posoKey = a})

-- | The ID of the Post.
posoPostId :: Lens' PostsPublish' Text
posoPostId
  = lens _posoPostId (\ s a -> s{_posoPostId = a})

-- | OAuth 2.0 token for the current user.
posoOauthToken :: Lens' PostsPublish' (Maybe Text)
posoOauthToken
  = lens _posoOauthToken
      (\ s a -> s{_posoOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
posoFields :: Lens' PostsPublish' (Maybe Text)
posoFields
  = lens _posoFields (\ s a -> s{_posoFields = a})

-- | Data format for the response.
posoAlt :: Lens' PostsPublish' Text
posoAlt = lens _posoAlt (\ s a -> s{_posoAlt = a})

instance GoogleRequest PostsPublish' where
        type Rs PostsPublish' = Post
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u PostsPublish{..}
          = go _posoQuotaUser _posoPrettyPrint _posoPublishDate
              _posoUserIp
              _posoBlogId
              _posoKey
              _posoPostId
              _posoOauthToken
              _posoFields
              _posoAlt
          where go
                  = clientWithRoute (Proxy :: Proxy PostsPublishAPI) r
                      u
