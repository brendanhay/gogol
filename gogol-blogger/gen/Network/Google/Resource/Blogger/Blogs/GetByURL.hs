{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Blogger.Blogs.GetByURL
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieve a Blog by URL.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @BloggerBlogsGetByURL@.
module Network.Google.Resource.Blogger.Blogs.GetByURL
    (
    -- * REST Resource
      BlogsGetByURLResource

    -- * Creating a Request
    , blogsGetByURL'
    , BlogsGetByURL'

    -- * Request Lenses
    , bgbuQuotaUser
    , bgbuPrettyPrint
    , bgbuUserIP
    , bgbuURL
    , bgbuKey
    , bgbuView
    , bgbuOAuthToken
    , bgbuFields
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerBlogsGetByURL@ which the
-- 'BlogsGetByURL'' request conforms to.
type BlogsGetByURLResource =
     "blogs" :>
       "byurl" :>
         QueryParam "url" Text :>
           QueryParam "view" BlogsGetByURLView :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Blog

-- | Retrieve a Blog by URL.
--
-- /See:/ 'blogsGetByURL'' smart constructor.
data BlogsGetByURL' = BlogsGetByURL'
    { _bgbuQuotaUser   :: !(Maybe Text)
    , _bgbuPrettyPrint :: !Bool
    , _bgbuUserIP      :: !(Maybe Text)
    , _bgbuURL         :: !Text
    , _bgbuKey         :: !(Maybe Key)
    , _bgbuView        :: !(Maybe BlogsGetByURLView)
    , _bgbuOAuthToken  :: !(Maybe OAuthToken)
    , _bgbuFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BlogsGetByURL'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgbuQuotaUser'
--
-- * 'bgbuPrettyPrint'
--
-- * 'bgbuUserIP'
--
-- * 'bgbuURL'
--
-- * 'bgbuKey'
--
-- * 'bgbuView'
--
-- * 'bgbuOAuthToken'
--
-- * 'bgbuFields'
blogsGetByURL'
    :: Text -- ^ 'url'
    -> BlogsGetByURL'
blogsGetByURL' pBgbuURL_ =
    BlogsGetByURL'
    { _bgbuQuotaUser = Nothing
    , _bgbuPrettyPrint = True
    , _bgbuUserIP = Nothing
    , _bgbuURL = pBgbuURL_
    , _bgbuKey = Nothing
    , _bgbuView = Nothing
    , _bgbuOAuthToken = Nothing
    , _bgbuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
bgbuQuotaUser :: Lens' BlogsGetByURL' (Maybe Text)
bgbuQuotaUser
  = lens _bgbuQuotaUser
      (\ s a -> s{_bgbuQuotaUser = a})

-- | Returns response with indentations and line breaks.
bgbuPrettyPrint :: Lens' BlogsGetByURL' Bool
bgbuPrettyPrint
  = lens _bgbuPrettyPrint
      (\ s a -> s{_bgbuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
bgbuUserIP :: Lens' BlogsGetByURL' (Maybe Text)
bgbuUserIP
  = lens _bgbuUserIP (\ s a -> s{_bgbuUserIP = a})

-- | The URL of the blog to retrieve.
bgbuURL :: Lens' BlogsGetByURL' Text
bgbuURL = lens _bgbuURL (\ s a -> s{_bgbuURL = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
bgbuKey :: Lens' BlogsGetByURL' (Maybe Key)
bgbuKey = lens _bgbuKey (\ s a -> s{_bgbuKey = a})

-- | Access level with which to view the blog. Note that some fields require
-- elevated access.
bgbuView :: Lens' BlogsGetByURL' (Maybe BlogsGetByURLView)
bgbuView = lens _bgbuView (\ s a -> s{_bgbuView = a})

-- | OAuth 2.0 token for the current user.
bgbuOAuthToken :: Lens' BlogsGetByURL' (Maybe OAuthToken)
bgbuOAuthToken
  = lens _bgbuOAuthToken
      (\ s a -> s{_bgbuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
bgbuFields :: Lens' BlogsGetByURL' (Maybe Text)
bgbuFields
  = lens _bgbuFields (\ s a -> s{_bgbuFields = a})

instance GoogleAuth BlogsGetByURL' where
        authKey = bgbuKey . _Just
        authToken = bgbuOAuthToken . _Just

instance GoogleRequest BlogsGetByURL' where
        type Rs BlogsGetByURL' = Blog
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u BlogsGetByURL'{..}
          = go (Just _bgbuURL) _bgbuView _bgbuQuotaUser
              (Just _bgbuPrettyPrint)
              _bgbuUserIP
              _bgbuFields
              _bgbuKey
              _bgbuOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy BlogsGetByURLResource)
                      r
                      u
