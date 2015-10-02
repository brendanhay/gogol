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
module Network.Google.Resource.Blogger.Posts.Publish
    (
    -- * REST Resource
      PostsPublishResource

    -- * Creating a Request
    , postsPublish'
    , PostsPublish'

    -- * Request Lenses
    , posQuotaUser
    , posPrettyPrint
    , posPublishDate
    , posUserIP
    , posBlogId
    , posKey
    , posPostId
    , posOAuthToken
    , posFields
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerPostsPublish@ which the
-- 'PostsPublish'' request conforms to.
type PostsPublishResource =
     "blogs" :>
       Capture "blogId" Text :>
         "posts" :>
           Capture "postId" Text :>
             "publish" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "publishDate" UTCTime :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" AltJSON :> Post '[JSON] Post

-- | Publishes a draft post, optionally at the specific time of the given
-- publishDate parameter.
--
-- /See:/ 'postsPublish'' smart constructor.
data PostsPublish' = PostsPublish'
    { _posQuotaUser   :: !(Maybe Text)
    , _posPrettyPrint :: !Bool
    , _posPublishDate :: !(Maybe UTCTime)
    , _posUserIP      :: !(Maybe Text)
    , _posBlogId      :: !Text
    , _posKey         :: !(Maybe Key)
    , _posPostId      :: !Text
    , _posOAuthToken  :: !(Maybe OAuthToken)
    , _posFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostsPublish'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'posQuotaUser'
--
-- * 'posPrettyPrint'
--
-- * 'posPublishDate'
--
-- * 'posUserIP'
--
-- * 'posBlogId'
--
-- * 'posKey'
--
-- * 'posPostId'
--
-- * 'posOAuthToken'
--
-- * 'posFields'
postsPublish'
    :: Text -- ^ 'blogId'
    -> Text -- ^ 'postId'
    -> PostsPublish'
postsPublish' pPosBlogId_ pPosPostId_ =
    PostsPublish'
    { _posQuotaUser = Nothing
    , _posPrettyPrint = True
    , _posPublishDate = Nothing
    , _posUserIP = Nothing
    , _posBlogId = pPosBlogId_
    , _posKey = Nothing
    , _posPostId = pPosPostId_
    , _posOAuthToken = Nothing
    , _posFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
posQuotaUser :: Lens' PostsPublish' (Maybe Text)
posQuotaUser
  = lens _posQuotaUser (\ s a -> s{_posQuotaUser = a})

-- | Returns response with indentations and line breaks.
posPrettyPrint :: Lens' PostsPublish' Bool
posPrettyPrint
  = lens _posPrettyPrint
      (\ s a -> s{_posPrettyPrint = a})

-- | Optional date and time to schedule the publishing of the Blog. If no
-- publishDate parameter is given, the post is either published at the a
-- previously saved schedule date (if present), or the current time. If a
-- future date is given, the post will be scheduled to be published.
posPublishDate :: Lens' PostsPublish' (Maybe UTCTime)
posPublishDate
  = lens _posPublishDate
      (\ s a -> s{_posPublishDate = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
posUserIP :: Lens' PostsPublish' (Maybe Text)
posUserIP
  = lens _posUserIP (\ s a -> s{_posUserIP = a})

-- | The ID of the Blog.
posBlogId :: Lens' PostsPublish' Text
posBlogId
  = lens _posBlogId (\ s a -> s{_posBlogId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
posKey :: Lens' PostsPublish' (Maybe Key)
posKey = lens _posKey (\ s a -> s{_posKey = a})

-- | The ID of the Post.
posPostId :: Lens' PostsPublish' Text
posPostId
  = lens _posPostId (\ s a -> s{_posPostId = a})

-- | OAuth 2.0 token for the current user.
posOAuthToken :: Lens' PostsPublish' (Maybe OAuthToken)
posOAuthToken
  = lens _posOAuthToken
      (\ s a -> s{_posOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
posFields :: Lens' PostsPublish' (Maybe Text)
posFields
  = lens _posFields (\ s a -> s{_posFields = a})

instance GoogleAuth PostsPublish' where
        authKey = posKey . _Just
        authToken = posOAuthToken . _Just

instance GoogleRequest PostsPublish' where
        type Rs PostsPublish' = Post
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u PostsPublish'{..}
          = go _posQuotaUser (Just _posPrettyPrint)
              _posPublishDate
              _posUserIP
              _posBlogId
              _posKey
              _posPostId
              _posOAuthToken
              _posFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PostsPublishResource)
                      r
                      u
