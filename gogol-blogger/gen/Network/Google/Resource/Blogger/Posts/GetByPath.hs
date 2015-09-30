{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Blogger.Posts.GetByPath
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieve a Post by Path.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @BloggerPostsGetByPath@.
module Blogger.Posts.GetByPath
    (
    -- * REST Resource
      PostsGetByPathAPI

    -- * Creating a Request
    , postsGetByPath
    , PostsGetByPath

    -- * Request Lenses
    , pgbpQuotaUser
    , pgbpPrettyPrint
    , pgbpPath
    , pgbpUserIp
    , pgbpBlogId
    , pgbpMaxComments
    , pgbpKey
    , pgbpView
    , pgbpOauthToken
    , pgbpFields
    , pgbpAlt
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerPostsGetByPath@ which the
-- 'PostsGetByPath' request conforms to.
type PostsGetByPathAPI =
     "blogs" :>
       Capture "blogId" Text :>
         "posts" :>
           "bypath" :>
             QueryParam "path" Text :>
               QueryParam "maxComments" Word32 :>
                 QueryParam "view" Text :> Get '[JSON] Post

-- | Retrieve a Post by Path.
--
-- /See:/ 'postsGetByPath' smart constructor.
data PostsGetByPath = PostsGetByPath
    { _pgbpQuotaUser   :: !(Maybe Text)
    , _pgbpPrettyPrint :: !Bool
    , _pgbpPath        :: !Text
    , _pgbpUserIp      :: !(Maybe Text)
    , _pgbpBlogId      :: !Text
    , _pgbpMaxComments :: !(Maybe Word32)
    , _pgbpKey         :: !(Maybe Text)
    , _pgbpView        :: !(Maybe Text)
    , _pgbpOauthToken  :: !(Maybe Text)
    , _pgbpFields      :: !(Maybe Text)
    , _pgbpAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostsGetByPath'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgbpQuotaUser'
--
-- * 'pgbpPrettyPrint'
--
-- * 'pgbpPath'
--
-- * 'pgbpUserIp'
--
-- * 'pgbpBlogId'
--
-- * 'pgbpMaxComments'
--
-- * 'pgbpKey'
--
-- * 'pgbpView'
--
-- * 'pgbpOauthToken'
--
-- * 'pgbpFields'
--
-- * 'pgbpAlt'
postsGetByPath
    :: Text -- ^ 'path'
    -> Text -- ^ 'blogId'
    -> PostsGetByPath
postsGetByPath pPgbpPath_ pPgbpBlogId_ =
    PostsGetByPath
    { _pgbpQuotaUser = Nothing
    , _pgbpPrettyPrint = True
    , _pgbpPath = pPgbpPath_
    , _pgbpUserIp = Nothing
    , _pgbpBlogId = pPgbpBlogId_
    , _pgbpMaxComments = Nothing
    , _pgbpKey = Nothing
    , _pgbpView = Nothing
    , _pgbpOauthToken = Nothing
    , _pgbpFields = Nothing
    , _pgbpAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pgbpQuotaUser :: Lens' PostsGetByPath' (Maybe Text)
pgbpQuotaUser
  = lens _pgbpQuotaUser
      (\ s a -> s{_pgbpQuotaUser = a})

-- | Returns response with indentations and line breaks.
pgbpPrettyPrint :: Lens' PostsGetByPath' Bool
pgbpPrettyPrint
  = lens _pgbpPrettyPrint
      (\ s a -> s{_pgbpPrettyPrint = a})

-- | Path of the Post to retrieve.
pgbpPath :: Lens' PostsGetByPath' Text
pgbpPath = lens _pgbpPath (\ s a -> s{_pgbpPath = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pgbpUserIp :: Lens' PostsGetByPath' (Maybe Text)
pgbpUserIp
  = lens _pgbpUserIp (\ s a -> s{_pgbpUserIp = a})

-- | ID of the blog to fetch the post from.
pgbpBlogId :: Lens' PostsGetByPath' Text
pgbpBlogId
  = lens _pgbpBlogId (\ s a -> s{_pgbpBlogId = a})

-- | Maximum number of comments to pull back on a post.
pgbpMaxComments :: Lens' PostsGetByPath' (Maybe Word32)
pgbpMaxComments
  = lens _pgbpMaxComments
      (\ s a -> s{_pgbpMaxComments = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pgbpKey :: Lens' PostsGetByPath' (Maybe Text)
pgbpKey = lens _pgbpKey (\ s a -> s{_pgbpKey = a})

-- | Access level with which to view the returned result. Note that some
-- fields require elevated access.
pgbpView :: Lens' PostsGetByPath' (Maybe Text)
pgbpView = lens _pgbpView (\ s a -> s{_pgbpView = a})

-- | OAuth 2.0 token for the current user.
pgbpOauthToken :: Lens' PostsGetByPath' (Maybe Text)
pgbpOauthToken
  = lens _pgbpOauthToken
      (\ s a -> s{_pgbpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pgbpFields :: Lens' PostsGetByPath' (Maybe Text)
pgbpFields
  = lens _pgbpFields (\ s a -> s{_pgbpFields = a})

-- | Data format for the response.
pgbpAlt :: Lens' PostsGetByPath' Text
pgbpAlt = lens _pgbpAlt (\ s a -> s{_pgbpAlt = a})

instance GoogleRequest PostsGetByPath' where
        type Rs PostsGetByPath' = Post
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u PostsGetByPath{..}
          = go _pgbpQuotaUser _pgbpPrettyPrint (Just _pgbpPath)
              _pgbpUserIp
              _pgbpBlogId
              _pgbpMaxComments
              _pgbpKey
              _pgbpView
              _pgbpOauthToken
              _pgbpFields
              _pgbpAlt
          where go
                  = clientWithRoute (Proxy :: Proxy PostsGetByPathAPI)
                      r
                      u
