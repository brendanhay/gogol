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
    , bgbuUserIp
    , bgbuUrl
    , bgbuKey
    , bgbuView
    , bgbuOauthToken
    , bgbuFields
    , bgbuAlt
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerBlogsGetByURL@ which the
-- 'BlogsGetByURL'' request conforms to.
type BlogsGetByURLResource =
     "blogs" :>
       "byurl" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "url" Text :>
                 QueryParam "key" Text :>
                   QueryParam "view" BloggerBlogsGetByURLView :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] Blog

-- | Retrieve a Blog by URL.
--
-- /See:/ 'blogsGetByURL'' smart constructor.
data BlogsGetByURL' = BlogsGetByURL'
    { _bgbuQuotaUser   :: !(Maybe Text)
    , _bgbuPrettyPrint :: !Bool
    , _bgbuUserIp      :: !(Maybe Text)
    , _bgbuUrl         :: !Text
    , _bgbuKey         :: !(Maybe Text)
    , _bgbuView        :: !(Maybe BloggerBlogsGetByURLView)
    , _bgbuOauthToken  :: !(Maybe Text)
    , _bgbuFields      :: !(Maybe Text)
    , _bgbuAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BlogsGetByURL'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgbuQuotaUser'
--
-- * 'bgbuPrettyPrint'
--
-- * 'bgbuUserIp'
--
-- * 'bgbuUrl'
--
-- * 'bgbuKey'
--
-- * 'bgbuView'
--
-- * 'bgbuOauthToken'
--
-- * 'bgbuFields'
--
-- * 'bgbuAlt'
blogsGetByURL'
    :: Text -- ^ 'url'
    -> BlogsGetByURL'
blogsGetByURL' pBgbuUrl_ =
    BlogsGetByURL'
    { _bgbuQuotaUser = Nothing
    , _bgbuPrettyPrint = True
    , _bgbuUserIp = Nothing
    , _bgbuUrl = pBgbuUrl_
    , _bgbuKey = Nothing
    , _bgbuView = Nothing
    , _bgbuOauthToken = Nothing
    , _bgbuFields = Nothing
    , _bgbuAlt = JSON
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
bgbuUserIp :: Lens' BlogsGetByURL' (Maybe Text)
bgbuUserIp
  = lens _bgbuUserIp (\ s a -> s{_bgbuUserIp = a})

-- | The URL of the blog to retrieve.
bgbuUrl :: Lens' BlogsGetByURL' Text
bgbuUrl = lens _bgbuUrl (\ s a -> s{_bgbuUrl = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
bgbuKey :: Lens' BlogsGetByURL' (Maybe Text)
bgbuKey = lens _bgbuKey (\ s a -> s{_bgbuKey = a})

-- | Access level with which to view the blog. Note that some fields require
-- elevated access.
bgbuView :: Lens' BlogsGetByURL' (Maybe BloggerBlogsGetByURLView)
bgbuView = lens _bgbuView (\ s a -> s{_bgbuView = a})

-- | OAuth 2.0 token for the current user.
bgbuOauthToken :: Lens' BlogsGetByURL' (Maybe Text)
bgbuOauthToken
  = lens _bgbuOauthToken
      (\ s a -> s{_bgbuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
bgbuFields :: Lens' BlogsGetByURL' (Maybe Text)
bgbuFields
  = lens _bgbuFields (\ s a -> s{_bgbuFields = a})

-- | Data format for the response.
bgbuAlt :: Lens' BlogsGetByURL' Alt
bgbuAlt = lens _bgbuAlt (\ s a -> s{_bgbuAlt = a})

instance GoogleRequest BlogsGetByURL' where
        type Rs BlogsGetByURL' = Blog
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u BlogsGetByURL'{..}
          = go _bgbuQuotaUser (Just _bgbuPrettyPrint)
              _bgbuUserIp
              (Just _bgbuUrl)
              _bgbuKey
              _bgbuView
              _bgbuOauthToken
              _bgbuFields
              (Just _bgbuAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy BlogsGetByURLResource)
                      r
                      u
