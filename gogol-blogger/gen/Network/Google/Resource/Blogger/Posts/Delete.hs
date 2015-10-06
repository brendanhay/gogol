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
-- Module      : Network.Google.Resource.Blogger.Posts.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete a post by ID.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @BloggerPostsDelete@.
module Network.Google.Resource.Blogger.Posts.Delete
    (
    -- * REST Resource
      PostsDeleteResource

    -- * Creating a Request
    , postsDelete'
    , PostsDelete'

    -- * Request Lenses
    , pdQuotaUser
    , pdPrettyPrint
    , pdUserIP
    , pdBlogId
    , pdKey
    , pdPostId
    , pdOAuthToken
    , pdFields
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerPostsDelete@ which the
-- 'PostsDelete'' request conforms to.
type PostsDeleteResource =
     "blogs" :>
       Capture "blogId" Text :>
         "posts" :>
           Capture "postId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Delete a post by ID.
--
-- /See:/ 'postsDelete'' smart constructor.
data PostsDelete' = PostsDelete'
    { _pdQuotaUser   :: !(Maybe Text)
    , _pdPrettyPrint :: !Bool
    , _pdUserIP      :: !(Maybe Text)
    , _pdBlogId      :: !Text
    , _pdKey         :: !(Maybe AuthKey)
    , _pdPostId      :: !Text
    , _pdOAuthToken  :: !(Maybe OAuthToken)
    , _pdFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdQuotaUser'
--
-- * 'pdPrettyPrint'
--
-- * 'pdUserIP'
--
-- * 'pdBlogId'
--
-- * 'pdKey'
--
-- * 'pdPostId'
--
-- * 'pdOAuthToken'
--
-- * 'pdFields'
postsDelete'
    :: Text -- ^ 'blogId'
    -> Text -- ^ 'postId'
    -> PostsDelete'
postsDelete' pPdBlogId_ pPdPostId_ =
    PostsDelete'
    { _pdQuotaUser = Nothing
    , _pdPrettyPrint = True
    , _pdUserIP = Nothing
    , _pdBlogId = pPdBlogId_
    , _pdKey = Nothing
    , _pdPostId = pPdPostId_
    , _pdOAuthToken = Nothing
    , _pdFields = Nothing
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
pdUserIP :: Lens' PostsDelete' (Maybe Text)
pdUserIP = lens _pdUserIP (\ s a -> s{_pdUserIP = a})

-- | The ID of the Blog.
pdBlogId :: Lens' PostsDelete' Text
pdBlogId = lens _pdBlogId (\ s a -> s{_pdBlogId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pdKey :: Lens' PostsDelete' (Maybe AuthKey)
pdKey = lens _pdKey (\ s a -> s{_pdKey = a})

-- | The ID of the Post.
pdPostId :: Lens' PostsDelete' Text
pdPostId = lens _pdPostId (\ s a -> s{_pdPostId = a})

-- | OAuth 2.0 token for the current user.
pdOAuthToken :: Lens' PostsDelete' (Maybe OAuthToken)
pdOAuthToken
  = lens _pdOAuthToken (\ s a -> s{_pdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pdFields :: Lens' PostsDelete' (Maybe Text)
pdFields = lens _pdFields (\ s a -> s{_pdFields = a})

instance GoogleAuth PostsDelete' where
        _AuthKey = pdKey . _Just
        _AuthToken = pdOAuthToken . _Just

instance GoogleRequest PostsDelete' where
        type Rs PostsDelete' = ()
        request = requestWith bloggerRequest
        requestWith rq PostsDelete'{..}
          = go _pdBlogId _pdPostId _pdQuotaUser
              (Just _pdPrettyPrint)
              _pdUserIP
              _pdFields
              _pdKey
              _pdOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy PostsDeleteResource) rq
