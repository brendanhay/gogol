{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Blogger.Posts.Publish
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Publishes a draft post, optionally at the specific time of the given
-- publishDate parameter.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @blogger.posts.publish@.
module Network.Google.API.Blogger.Posts.Publish
    (
    -- * REST Resource
      PostsPublishAPI

    -- * Creating a Request
    , postsPublish'
    , PostsPublish'

    -- * Request Lenses
    , pQuotaUser
    , pPrettyPrint
    , pPublishDate
    , pUserIp
    , pBlogId
    , pKey
    , pPostId
    , pOauthToken
    , pFields
    , pAlt
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for blogger.posts.publish which the
-- 'PostsPublish'' request conforms to.
type PostsPublishAPI =
     "blogs" :>
       Capture "blogId" Text :>
         "posts" :>
           Capture "postId" Text :>
             "publish" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "publishDate" UTCTime :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Post '[JSON] Post

-- | Publishes a draft post, optionally at the specific time of the given
-- publishDate parameter.
--
-- /See:/ 'postsPublish'' smart constructor.
data PostsPublish' = PostsPublish'
    { _pQuotaUser   :: !(Maybe Text)
    , _pPrettyPrint :: !Bool
    , _pPublishDate :: !(Maybe UTCTime)
    , _pUserIp      :: !(Maybe Text)
    , _pBlogId      :: !Text
    , _pKey         :: !(Maybe Text)
    , _pPostId      :: !Text
    , _pOauthToken  :: !(Maybe Text)
    , _pFields      :: !(Maybe Text)
    , _pAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostsPublish'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pQuotaUser'
--
-- * 'pPrettyPrint'
--
-- * 'pPublishDate'
--
-- * 'pUserIp'
--
-- * 'pBlogId'
--
-- * 'pKey'
--
-- * 'pPostId'
--
-- * 'pOauthToken'
--
-- * 'pFields'
--
-- * 'pAlt'
postsPublish'
    :: Text -- ^ 'blogId'
    -> Text -- ^ 'postId'
    -> PostsPublish'
postsPublish' pPBlogId_ pPPostId_ =
    PostsPublish'
    { _pQuotaUser = Nothing
    , _pPrettyPrint = True
    , _pPublishDate = Nothing
    , _pUserIp = Nothing
    , _pBlogId = pPBlogId_
    , _pKey = Nothing
    , _pPostId = pPPostId_
    , _pOauthToken = Nothing
    , _pFields = Nothing
    , _pAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pQuotaUser :: Lens' PostsPublish' (Maybe Text)
pQuotaUser
  = lens _pQuotaUser (\ s a -> s{_pQuotaUser = a})

-- | Returns response with indentations and line breaks.
pPrettyPrint :: Lens' PostsPublish' Bool
pPrettyPrint
  = lens _pPrettyPrint (\ s a -> s{_pPrettyPrint = a})

-- | Optional date and time to schedule the publishing of the Blog. If no
-- publishDate parameter is given, the post is either published at the a
-- previously saved schedule date (if present), or the current time. If a
-- future date is given, the post will be scheduled to be published.
pPublishDate :: Lens' PostsPublish' (Maybe UTCTime)
pPublishDate
  = lens _pPublishDate (\ s a -> s{_pPublishDate = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pUserIp :: Lens' PostsPublish' (Maybe Text)
pUserIp = lens _pUserIp (\ s a -> s{_pUserIp = a})

-- | The ID of the Blog.
pBlogId :: Lens' PostsPublish' Text
pBlogId = lens _pBlogId (\ s a -> s{_pBlogId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pKey :: Lens' PostsPublish' (Maybe Text)
pKey = lens _pKey (\ s a -> s{_pKey = a})

-- | The ID of the Post.
pPostId :: Lens' PostsPublish' Text
pPostId = lens _pPostId (\ s a -> s{_pPostId = a})

-- | OAuth 2.0 token for the current user.
pOauthToken :: Lens' PostsPublish' (Maybe Text)
pOauthToken
  = lens _pOauthToken (\ s a -> s{_pOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pFields :: Lens' PostsPublish' (Maybe Text)
pFields = lens _pFields (\ s a -> s{_pFields = a})

-- | Data format for the response.
pAlt :: Lens' PostsPublish' Alt
pAlt = lens _pAlt (\ s a -> s{_pAlt = a})

instance GoogleRequest PostsPublish' where
        type Rs PostsPublish' = Post
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u PostsPublish'{..}
          = go _pQuotaUser (Just _pPrettyPrint) _pPublishDate
              _pUserIp
              _pBlogId
              _pKey
              _pPostId
              _pOauthToken
              _pFields
              (Just _pAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy PostsPublishAPI) r
                      u
