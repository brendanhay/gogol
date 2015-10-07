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
module Network.Google.Resource.Blogger.Posts.GetByPath
    (
    -- * REST Resource
      PostsGetByPathResource

    -- * Creating a Request
    , postsGetByPath'
    , PostsGetByPath'

    -- * Request Lenses
    , pgbpQuotaUser
    , pgbpPrettyPrint
    , pgbpPath
    , pgbpUserIP
    , pgbpBlogId
    , pgbpMaxComments
    , pgbpKey
    , pgbpView
    , pgbpOAuthToken
    , pgbpFields
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerPostsGetByPath@ method which the
-- 'PostsGetByPath'' request conforms to.
type PostsGetByPathResource =
     "blogs" :>
       Capture "blogId" Text :>
         "posts" :>
           "bypath" :>
             QueryParam "path" Text :>
               QueryParam "maxComments" Word32 :>
                 QueryParam "view" PostsGetByPathView :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" AuthKey :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :> Get '[JSON] Post'

-- | Retrieve a Post by Path.
--
-- /See:/ 'postsGetByPath'' smart constructor.
data PostsGetByPath' = PostsGetByPath'
    { _pgbpQuotaUser   :: !(Maybe Text)
    , _pgbpPrettyPrint :: !Bool
    , _pgbpPath        :: !Text
    , _pgbpUserIP      :: !(Maybe Text)
    , _pgbpBlogId      :: !Text
    , _pgbpMaxComments :: !(Maybe Word32)
    , _pgbpKey         :: !(Maybe AuthKey)
    , _pgbpView        :: !(Maybe PostsGetByPathView)
    , _pgbpOAuthToken  :: !(Maybe OAuthToken)
    , _pgbpFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'pgbpUserIP'
--
-- * 'pgbpBlogId'
--
-- * 'pgbpMaxComments'
--
-- * 'pgbpKey'
--
-- * 'pgbpView'
--
-- * 'pgbpOAuthToken'
--
-- * 'pgbpFields'
postsGetByPath'
    :: Text -- ^ 'path'
    -> Text -- ^ 'blogId'
    -> PostsGetByPath'
postsGetByPath' pPgbpPath_ pPgbpBlogId_ =
    PostsGetByPath'
    { _pgbpQuotaUser = Nothing
    , _pgbpPrettyPrint = True
    , _pgbpPath = pPgbpPath_
    , _pgbpUserIP = Nothing
    , _pgbpBlogId = pPgbpBlogId_
    , _pgbpMaxComments = Nothing
    , _pgbpKey = Nothing
    , _pgbpView = Nothing
    , _pgbpOAuthToken = Nothing
    , _pgbpFields = Nothing
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
pgbpUserIP :: Lens' PostsGetByPath' (Maybe Text)
pgbpUserIP
  = lens _pgbpUserIP (\ s a -> s{_pgbpUserIP = a})

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
pgbpKey :: Lens' PostsGetByPath' (Maybe AuthKey)
pgbpKey = lens _pgbpKey (\ s a -> s{_pgbpKey = a})

-- | Access level with which to view the returned result. Note that some
-- fields require elevated access.
pgbpView :: Lens' PostsGetByPath' (Maybe PostsGetByPathView)
pgbpView = lens _pgbpView (\ s a -> s{_pgbpView = a})

-- | OAuth 2.0 token for the current user.
pgbpOAuthToken :: Lens' PostsGetByPath' (Maybe OAuthToken)
pgbpOAuthToken
  = lens _pgbpOAuthToken
      (\ s a -> s{_pgbpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pgbpFields :: Lens' PostsGetByPath' (Maybe Text)
pgbpFields
  = lens _pgbpFields (\ s a -> s{_pgbpFields = a})

instance GoogleAuth PostsGetByPath' where
        _AuthKey = pgbpKey . _Just
        _AuthToken = pgbpOAuthToken . _Just

instance GoogleRequest PostsGetByPath' where
        type Rs PostsGetByPath' = Post'
        request = requestWith bloggerRequest
        requestWith rq PostsGetByPath'{..}
          = go _pgbpBlogId (Just _pgbpPath) _pgbpMaxComments
              _pgbpView
              _pgbpQuotaUser
              (Just _pgbpPrettyPrint)
              _pgbpUserIP
              _pgbpFields
              _pgbpKey
              _pgbpOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy PostsGetByPathResource)
                      rq
