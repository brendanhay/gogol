{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module Webmasters.Sites.List
    (
    -- * REST Resource
      SitesListAPI

    -- * Creating a Request
    , sitesList
    , SitesList

    -- * Request Lenses
    , sQuotaUser
    , sPrettyPrint
    , sUserIp
    , sKey
    , sOauthToken
    , sFields
    , sAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.WebmasterTools.Types

-- | A resource alias for @WebmastersSitesList@ which the
-- 'SitesList' request conforms to.
type SitesListAPI =
     "sites" :> Get '[JSON] SitesListResponse

-- | Lists the user\'s Webmaster Tools sites.
--
-- /See:/ 'sitesList' smart constructor.
data SitesList = SitesList
    { _sQuotaUser   :: !(Maybe Text)
    , _sPrettyPrint :: !Bool
    , _sUserIp      :: !(Maybe Text)
    , _sKey         :: !(Maybe Text)
    , _sOauthToken  :: !(Maybe Text)
    , _sFields      :: !(Maybe Text)
    , _sAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SitesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sQuotaUser'
--
-- * 'sPrettyPrint'
--
-- * 'sUserIp'
--
-- * 'sKey'
--
-- * 'sOauthToken'
--
-- * 'sFields'
--
-- * 'sAlt'
sitesList
    :: SitesList
sitesList =
    SitesList
    { _sQuotaUser = Nothing
    , _sPrettyPrint = True
    , _sUserIp = Nothing
    , _sKey = Nothing
    , _sOauthToken = Nothing
    , _sFields = Nothing
    , _sAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sQuotaUser :: Lens' SitesList' (Maybe Text)
sQuotaUser
  = lens _sQuotaUser (\ s a -> s{_sQuotaUser = a})

-- | Returns response with indentations and line breaks.
sPrettyPrint :: Lens' SitesList' Bool
sPrettyPrint
  = lens _sPrettyPrint (\ s a -> s{_sPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sUserIp :: Lens' SitesList' (Maybe Text)
sUserIp = lens _sUserIp (\ s a -> s{_sUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sKey :: Lens' SitesList' (Maybe Text)
sKey = lens _sKey (\ s a -> s{_sKey = a})

-- | OAuth 2.0 token for the current user.
sOauthToken :: Lens' SitesList' (Maybe Text)
sOauthToken
  = lens _sOauthToken (\ s a -> s{_sOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
sFields :: Lens' SitesList' (Maybe Text)
sFields = lens _sFields (\ s a -> s{_sFields = a})

-- | Data format for the response.
sAlt :: Lens' SitesList' Text
sAlt = lens _sAlt (\ s a -> s{_sAlt = a})

instance GoogleRequest SitesList' where
        type Rs SitesList' = SitesListResponse
        request = requestWithRoute defReq webmasterToolsURL
        requestWithRoute r u SitesList{..}
          = go _sQuotaUser _sPrettyPrint _sUserIp _sKey
              _sOauthToken
              _sFields
              _sAlt
          where go
                  = clientWithRoute (Proxy :: Proxy SitesListAPI) r u
