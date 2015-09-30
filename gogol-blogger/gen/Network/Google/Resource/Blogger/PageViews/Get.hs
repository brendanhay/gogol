{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Blogger.PageViews.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieve pageview stats for a Blog.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @BloggerPageViewsGet@.
module Blogger.PageViews.Get
    (
    -- * REST Resource
      PageViewsGetAPI

    -- * Creating a Request
    , pageViewsGet
    , PageViewsGet

    -- * Request Lenses
    , pvgQuotaUser
    , pvgPrettyPrint
    , pvgUserIp
    , pvgBlogId
    , pvgKey
    , pvgRange
    , pvgOauthToken
    , pvgFields
    , pvgAlt
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerPageViewsGet@ which the
-- 'PageViewsGet' request conforms to.
type PageViewsGetAPI =
     "blogs" :>
       Capture "blogId" Text :>
         "pageviews" :>
           QueryParams "range" Text :> Get '[JSON] Pageviews

-- | Retrieve pageview stats for a Blog.
--
-- /See:/ 'pageViewsGet' smart constructor.
data PageViewsGet = PageViewsGet
    { _pvgQuotaUser   :: !(Maybe Text)
    , _pvgPrettyPrint :: !Bool
    , _pvgUserIp      :: !(Maybe Text)
    , _pvgBlogId      :: !Text
    , _pvgKey         :: !(Maybe Text)
    , _pvgRange       :: !(Maybe Text)
    , _pvgOauthToken  :: !(Maybe Text)
    , _pvgFields      :: !(Maybe Text)
    , _pvgAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PageViewsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pvgQuotaUser'
--
-- * 'pvgPrettyPrint'
--
-- * 'pvgUserIp'
--
-- * 'pvgBlogId'
--
-- * 'pvgKey'
--
-- * 'pvgRange'
--
-- * 'pvgOauthToken'
--
-- * 'pvgFields'
--
-- * 'pvgAlt'
pageViewsGet
    :: Text -- ^ 'blogId'
    -> PageViewsGet
pageViewsGet pPvgBlogId_ =
    PageViewsGet
    { _pvgQuotaUser = Nothing
    , _pvgPrettyPrint = True
    , _pvgUserIp = Nothing
    , _pvgBlogId = pPvgBlogId_
    , _pvgKey = Nothing
    , _pvgRange = Nothing
    , _pvgOauthToken = Nothing
    , _pvgFields = Nothing
    , _pvgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pvgQuotaUser :: Lens' PageViewsGet' (Maybe Text)
pvgQuotaUser
  = lens _pvgQuotaUser (\ s a -> s{_pvgQuotaUser = a})

-- | Returns response with indentations and line breaks.
pvgPrettyPrint :: Lens' PageViewsGet' Bool
pvgPrettyPrint
  = lens _pvgPrettyPrint
      (\ s a -> s{_pvgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pvgUserIp :: Lens' PageViewsGet' (Maybe Text)
pvgUserIp
  = lens _pvgUserIp (\ s a -> s{_pvgUserIp = a})

-- | The ID of the blog to get.
pvgBlogId :: Lens' PageViewsGet' Text
pvgBlogId
  = lens _pvgBlogId (\ s a -> s{_pvgBlogId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pvgKey :: Lens' PageViewsGet' (Maybe Text)
pvgKey = lens _pvgKey (\ s a -> s{_pvgKey = a})

pvgRange :: Lens' PageViewsGet' (Maybe Text)
pvgRange = lens _pvgRange (\ s a -> s{_pvgRange = a})

-- | OAuth 2.0 token for the current user.
pvgOauthToken :: Lens' PageViewsGet' (Maybe Text)
pvgOauthToken
  = lens _pvgOauthToken
      (\ s a -> s{_pvgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pvgFields :: Lens' PageViewsGet' (Maybe Text)
pvgFields
  = lens _pvgFields (\ s a -> s{_pvgFields = a})

-- | Data format for the response.
pvgAlt :: Lens' PageViewsGet' Text
pvgAlt = lens _pvgAlt (\ s a -> s{_pvgAlt = a})

instance GoogleRequest PageViewsGet' where
        type Rs PageViewsGet' = Pageviews
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u PageViewsGet{..}
          = go _pvgQuotaUser _pvgPrettyPrint _pvgUserIp
              _pvgBlogId
              _pvgKey
              _pvgRange
              _pvgOauthToken
              _pvgFields
              _pvgAlt
          where go
                  = clientWithRoute (Proxy :: Proxy PageViewsGetAPI) r
                      u
