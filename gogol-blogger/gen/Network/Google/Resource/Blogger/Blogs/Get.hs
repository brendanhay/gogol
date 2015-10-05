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
-- Module      : Network.Google.Resource.Blogger.Blogs.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one blog by ID.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @BloggerBlogsGet@.
module Network.Google.Resource.Blogger.Blogs.Get
    (
    -- * REST Resource
      BlogsGetResource

    -- * Creating a Request
    , blogsGet'
    , BlogsGet'

    -- * Request Lenses
    , bgQuotaUser
    , bgPrettyPrint
    , bgUserIP
    , bgBlogId
    , bgKey
    , bgMaxPosts
    , bgView
    , bgOAuthToken
    , bgFields
    ) where

import Network.Google.Blogger.Types
import Network.Google.Prelude

-- | A resource alias for @BloggerBlogsGet@ which the
-- 'BlogsGet'' request conforms to.
type BlogsGetResource =
     "blogs" :>
       Capture "blogId" Text :>
         QueryParam "maxPosts" Word32 :>
           QueryParam "view" BlogsGetView :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Blog

-- | Gets one blog by ID.
--
-- /See:/ 'blogsGet'' smart constructor.
data BlogsGet' = BlogsGet'
    { _bgQuotaUser :: !(Maybe Text)
    , _bgPrettyPrint :: !Bool
    , _bgUserIP :: !(Maybe Text)
    , _bgBlogId :: !Text
    , _bgKey :: !(Maybe Key)
    , _bgMaxPosts :: !(Maybe Word32)
    , _bgView :: !(Maybe BlogsGetView)
    , _bgOAuthToken :: !(Maybe OAuthToken)
    , _bgFields :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BlogsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgQuotaUser'
--
-- * 'bgPrettyPrint'
--
-- * 'bgUserIP'
--
-- * 'bgBlogId'
--
-- * 'bgKey'
--
-- * 'bgMaxPosts'
--
-- * 'bgView'
--
-- * 'bgOAuthToken'
--
-- * 'bgFields'
blogsGet'
    :: Text -- ^ 'blogId'
    -> BlogsGet'
blogsGet' pBgBlogId_ = 
    BlogsGet'
    { _bgQuotaUser = Nothing
    , _bgPrettyPrint = True
    , _bgUserIP = Nothing
    , _bgBlogId = pBgBlogId_
    , _bgKey = Nothing
    , _bgMaxPosts = Nothing
    , _bgView = Nothing
    , _bgOAuthToken = Nothing
    , _bgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
bgQuotaUser :: Lens' BlogsGet' (Maybe Text)
bgQuotaUser
  = lens _bgQuotaUser (\ s a -> s{_bgQuotaUser = a})

-- | Returns response with indentations and line breaks.
bgPrettyPrint :: Lens' BlogsGet' Bool
bgPrettyPrint
  = lens _bgPrettyPrint
      (\ s a -> s{_bgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
bgUserIP :: Lens' BlogsGet' (Maybe Text)
bgUserIP = lens _bgUserIP (\ s a -> s{_bgUserIP = a})

-- | The ID of the blog to get.
bgBlogId :: Lens' BlogsGet' Text
bgBlogId = lens _bgBlogId (\ s a -> s{_bgBlogId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
bgKey :: Lens' BlogsGet' (Maybe Key)
bgKey = lens _bgKey (\ s a -> s{_bgKey = a})

-- | Maximum number of posts to pull back with the blog.
bgMaxPosts :: Lens' BlogsGet' (Maybe Word32)
bgMaxPosts
  = lens _bgMaxPosts (\ s a -> s{_bgMaxPosts = a})

-- | Access level with which to view the blog. Note that some fields require
-- elevated access.
bgView :: Lens' BlogsGet' (Maybe BlogsGetView)
bgView = lens _bgView (\ s a -> s{_bgView = a})

-- | OAuth 2.0 token for the current user.
bgOAuthToken :: Lens' BlogsGet' (Maybe OAuthToken)
bgOAuthToken
  = lens _bgOAuthToken (\ s a -> s{_bgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
bgFields :: Lens' BlogsGet' (Maybe Text)
bgFields = lens _bgFields (\ s a -> s{_bgFields = a})

instance GoogleAuth BlogsGet' where
        authKey = bgKey . _Just
        authToken = bgOAuthToken . _Just

instance GoogleRequest BlogsGet' where
        type Rs BlogsGet' = Blog
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u BlogsGet'{..}
          = go _bgBlogId _bgMaxPosts _bgView _bgQuotaUser
              (Just _bgPrettyPrint)
              _bgUserIP
              _bgFields
              _bgKey
              _bgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy BlogsGetResource) r
                      u
