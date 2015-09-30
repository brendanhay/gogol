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
-- Module      : Network.Google.Resource.Webmasters.Sites.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists the user\'s Webmaster Tools sites.
--
-- /See:/ <https://developers.google.com/webmaster-tools/ Webmaster Tools API Reference> for @WebmastersSitesList@.
module Network.Google.Resource.Webmasters.Sites.List
    (
    -- * REST Resource
      SitesListResource

    -- * Creating a Request
    , sitesList'
    , SitesList'

    -- * Request Lenses
    , slQuotaUser
    , slPrettyPrint
    , slUserIp
    , slKey
    , slOauthToken
    , slFields
    , slAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.WebmasterTools.Types

-- | A resource alias for @WebmastersSitesList@ which the
-- 'SitesList'' request conforms to.
type SitesListResource =
     "sites" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Text :>
               QueryParam "oauth_token" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" Alt :> Get '[JSON] SitesListResponse

-- | Lists the user\'s Webmaster Tools sites.
--
-- /See:/ 'sitesList'' smart constructor.
data SitesList' = SitesList'
    { _slQuotaUser   :: !(Maybe Text)
    , _slPrettyPrint :: !Bool
    , _slUserIp      :: !(Maybe Text)
    , _slKey         :: !(Maybe Text)
    , _slOauthToken  :: !(Maybe Text)
    , _slFields      :: !(Maybe Text)
    , _slAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SitesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slQuotaUser'
--
-- * 'slPrettyPrint'
--
-- * 'slUserIp'
--
-- * 'slKey'
--
-- * 'slOauthToken'
--
-- * 'slFields'
--
-- * 'slAlt'
sitesList'
    :: SitesList'
sitesList' =
    SitesList'
    { _slQuotaUser = Nothing
    , _slPrettyPrint = True
    , _slUserIp = Nothing
    , _slKey = Nothing
    , _slOauthToken = Nothing
    , _slFields = Nothing
    , _slAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
slQuotaUser :: Lens' SitesList' (Maybe Text)
slQuotaUser
  = lens _slQuotaUser (\ s a -> s{_slQuotaUser = a})

-- | Returns response with indentations and line breaks.
slPrettyPrint :: Lens' SitesList' Bool
slPrettyPrint
  = lens _slPrettyPrint
      (\ s a -> s{_slPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
slUserIp :: Lens' SitesList' (Maybe Text)
slUserIp = lens _slUserIp (\ s a -> s{_slUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
slKey :: Lens' SitesList' (Maybe Text)
slKey = lens _slKey (\ s a -> s{_slKey = a})

-- | OAuth 2.0 token for the current user.
slOauthToken :: Lens' SitesList' (Maybe Text)
slOauthToken
  = lens _slOauthToken (\ s a -> s{_slOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
slFields :: Lens' SitesList' (Maybe Text)
slFields = lens _slFields (\ s a -> s{_slFields = a})

-- | Data format for the response.
slAlt :: Lens' SitesList' Alt
slAlt = lens _slAlt (\ s a -> s{_slAlt = a})

instance GoogleRequest SitesList' where
        type Rs SitesList' = SitesListResponse
        request = requestWithRoute defReq webmasterToolsURL
        requestWithRoute r u SitesList'{..}
          = go _slQuotaUser (Just _slPrettyPrint) _slUserIp
              _slKey
              _slOauthToken
              _slFields
              (Just _slAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy SitesListResource)
                      r
                      u
