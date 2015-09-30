{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Webmasters.Sites.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves information about specific site.
--
-- /See:/ <https://developers.google.com/webmaster-tools/ Webmaster Tools API Reference> for @WebmastersSitesGet@.
module Webmasters.Sites.Get
    (
    -- * REST Resource
      SitesGetAPI

    -- * Creating a Request
    , sitesGet
    , SitesGet

    -- * Request Lenses
    , sitQuotaUser
    , sitPrettyPrint
    , sitUserIp
    , sitSiteUrl
    , sitKey
    , sitOauthToken
    , sitFields
    , sitAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.WebmasterTools.Types

-- | A resource alias for @WebmastersSitesGet@ which the
-- 'SitesGet' request conforms to.
type SitesGetAPI =
     "sites" :>
       Capture "siteUrl" Text :> Get '[JSON] WmxSite

-- | Retrieves information about specific site.
--
-- /See:/ 'sitesGet' smart constructor.
data SitesGet = SitesGet
    { _sitQuotaUser   :: !(Maybe Text)
    , _sitPrettyPrint :: !Bool
    , _sitUserIp      :: !(Maybe Text)
    , _sitSiteUrl     :: !Text
    , _sitKey         :: !(Maybe Text)
    , _sitOauthToken  :: !(Maybe Text)
    , _sitFields      :: !(Maybe Text)
    , _sitAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SitesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sitQuotaUser'
--
-- * 'sitPrettyPrint'
--
-- * 'sitUserIp'
--
-- * 'sitSiteUrl'
--
-- * 'sitKey'
--
-- * 'sitOauthToken'
--
-- * 'sitFields'
--
-- * 'sitAlt'
sitesGet
    :: Text -- ^ 'siteUrl'
    -> SitesGet
sitesGet pSitSiteUrl_ =
    SitesGet
    { _sitQuotaUser = Nothing
    , _sitPrettyPrint = True
    , _sitUserIp = Nothing
    , _sitSiteUrl = pSitSiteUrl_
    , _sitKey = Nothing
    , _sitOauthToken = Nothing
    , _sitFields = Nothing
    , _sitAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sitQuotaUser :: Lens' SitesGet' (Maybe Text)
sitQuotaUser
  = lens _sitQuotaUser (\ s a -> s{_sitQuotaUser = a})

-- | Returns response with indentations and line breaks.
sitPrettyPrint :: Lens' SitesGet' Bool
sitPrettyPrint
  = lens _sitPrettyPrint
      (\ s a -> s{_sitPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sitUserIp :: Lens' SitesGet' (Maybe Text)
sitUserIp
  = lens _sitUserIp (\ s a -> s{_sitUserIp = a})

-- | The URI of the property as defined in Search Console. Examples:
-- http:\/\/www.example.com\/ or android-app:\/\/com.example\/
sitSiteUrl :: Lens' SitesGet' Text
sitSiteUrl
  = lens _sitSiteUrl (\ s a -> s{_sitSiteUrl = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sitKey :: Lens' SitesGet' (Maybe Text)
sitKey = lens _sitKey (\ s a -> s{_sitKey = a})

-- | OAuth 2.0 token for the current user.
sitOauthToken :: Lens' SitesGet' (Maybe Text)
sitOauthToken
  = lens _sitOauthToken
      (\ s a -> s{_sitOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
sitFields :: Lens' SitesGet' (Maybe Text)
sitFields
  = lens _sitFields (\ s a -> s{_sitFields = a})

-- | Data format for the response.
sitAlt :: Lens' SitesGet' Text
sitAlt = lens _sitAlt (\ s a -> s{_sitAlt = a})

instance GoogleRequest SitesGet' where
        type Rs SitesGet' = WmxSite
        request = requestWithRoute defReq webmasterToolsURL
        requestWithRoute r u SitesGet{..}
          = go _sitQuotaUser _sitPrettyPrint _sitUserIp
              _sitSiteUrl
              _sitKey
              _sitOauthToken
              _sitFields
              _sitAlt
          where go
                  = clientWithRoute (Proxy :: Proxy SitesGetAPI) r u
