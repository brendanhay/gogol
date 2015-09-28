{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Blogger.Posts.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete a post by ID.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @blogger.posts.delete@.
module Network.Google.API.Blogger.Posts.Delete
    (
    -- * REST Resource
      PostsDeleteAPI

    -- * Creating a Request
    , postsDelete'
    , PostsDelete'

    -- * Request Lenses
    , pdQuotaUser
    , pdPrettyPrint
    , pdUserIp
    , pdBlogId
    , pdKey
    , pdPostId
    , pdOauthToken
    , pdFields
    , pdAlt
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for blogger.posts.delete which the
-- 'PostsDelete'' request conforms to.
type PostsDeleteAPI =
     "blogs" :>
       Capture "blogId" Text :>
         "posts" :>
           Capture "postId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Delete a post by ID.
--
-- /See:/ 'postsDelete'' smart constructor.
data PostsDelete' = PostsDelete'
    { _pdQuotaUser   :: !(Maybe Text)
    , _pdPrettyPrint :: !Bool
    , _pdUserIp      :: !(Maybe Text)
    , _pdBlogId      :: !Text
    , _pdKey         :: !(Maybe Text)
    , _pdPostId      :: !Text
    , _pdOauthToken  :: !(Maybe Text)
    , _pdFields      :: !(Maybe Text)
    , _pdAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdQuotaUser'
--
-- * 'pdPrettyPrint'
--
-- * 'pdUserIp'
--
-- * 'pdBlogId'
--
-- * 'pdKey'
--
-- * 'pdPostId'
--
-- * 'pdOauthToken'
--
-- * 'pdFields'
--
-- * 'pdAlt'
postsDelete'
    :: Text -- ^ 'blogId'
    -> Text -- ^ 'postId'
    -> PostsDelete'
postsDelete' pPdBlogId_ pPdPostId_ =
    PostsDelete'
    { _pdQuotaUser = Nothing
    , _pdPrettyPrint = True
    , _pdUserIp = Nothing
    , _pdBlogId = pPdBlogId_
    , _pdKey = Nothing
    , _pdPostId = pPdPostId_
    , _pdOauthToken = Nothing
    , _pdFields = Nothing
    , _pdAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pdQuotaUser :: Lens' PostsDelete' (Maybe Text)
pdQuotaUser
  = lens _pdQuotaUser (\ s a -> s{_pdQuotaUser = a})

-- | Returns response with indentations and line breaks.
pdPrettyPrint :: Lens' PostsDelete' Bool
pdPrettyPrint
  = lens _pdPrettyPrint
      (\ s a -> s{_pdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pdUserIp :: Lens' PostsDelete' (Maybe Text)
pdUserIp = lens _pdUserIp (\ s a -> s{_pdUserIp = a})

-- | The ID of the Blog.
pdBlogId :: Lens' PostsDelete' Text
pdBlogId = lens _pdBlogId (\ s a -> s{_pdBlogId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pdKey :: Lens' PostsDelete' (Maybe Text)
pdKey = lens _pdKey (\ s a -> s{_pdKey = a})

-- | The ID of the Post.
pdPostId :: Lens' PostsDelete' Text
pdPostId = lens _pdPostId (\ s a -> s{_pdPostId = a})

-- | OAuth 2.0 token for the current user.
pdOauthToken :: Lens' PostsDelete' (Maybe Text)
pdOauthToken
  = lens _pdOauthToken (\ s a -> s{_pdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pdFields :: Lens' PostsDelete' (Maybe Text)
pdFields = lens _pdFields (\ s a -> s{_pdFields = a})

-- | Data format for the response.
pdAlt :: Lens' PostsDelete' Alt
pdAlt = lens _pdAlt (\ s a -> s{_pdAlt = a})

instance GoogleRequest PostsDelete' where
        type Rs PostsDelete' = ()
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u PostsDelete'{..}
          = go _pdQuotaUser (Just _pdPrettyPrint) _pdUserIp
              _pdBlogId
              _pdKey
              _pdPostId
              _pdOauthToken
              _pdFields
              (Just _pdAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy PostsDeleteAPI) r u
