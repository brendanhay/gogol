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
-- Module      : Network.Google.Resource.Androidenterprise.Enterprises.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Looks up an enterprise by domain name.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidenterpriseEnterprisesList@.
module Network.Google.Resource.Androidenterprise.Enterprises.List
    (
    -- * REST Resource
      EnterprisesListResource

    -- * Creating a Request
    , enterprisesList'
    , EnterprisesList'

    -- * Request Lenses
    , ellQuotaUser
    , ellPrettyPrint
    , ellUserIp
    , ellDomain
    , ellKey
    , ellOauthToken
    , ellFields
    , ellAlt
    ) where

import           Network.Google.PlayEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidenterpriseEnterprisesList@ which the
-- 'EnterprisesList'' request conforms to.
type EnterprisesListResource =
     "enterprises" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "domain" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :>
                       Get '[JSON] EnterprisesListResponse

-- | Looks up an enterprise by domain name.
--
-- /See:/ 'enterprisesList'' smart constructor.
data EnterprisesList' = EnterprisesList'
    { _ellQuotaUser   :: !(Maybe Text)
    , _ellPrettyPrint :: !Bool
    , _ellUserIp      :: !(Maybe Text)
    , _ellDomain      :: !Text
    , _ellKey         :: !(Maybe Text)
    , _ellOauthToken  :: !(Maybe Text)
    , _ellFields      :: !(Maybe Text)
    , _ellAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EnterprisesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ellQuotaUser'
--
-- * 'ellPrettyPrint'
--
-- * 'ellUserIp'
--
-- * 'ellDomain'
--
-- * 'ellKey'
--
-- * 'ellOauthToken'
--
-- * 'ellFields'
--
-- * 'ellAlt'
enterprisesList'
    :: Text -- ^ 'domain'
    -> EnterprisesList'
enterprisesList' pEllDomain_ =
    EnterprisesList'
    { _ellQuotaUser = Nothing
    , _ellPrettyPrint = True
    , _ellUserIp = Nothing
    , _ellDomain = pEllDomain_
    , _ellKey = Nothing
    , _ellOauthToken = Nothing
    , _ellFields = Nothing
    , _ellAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ellQuotaUser :: Lens' EnterprisesList' (Maybe Text)
ellQuotaUser
  = lens _ellQuotaUser (\ s a -> s{_ellQuotaUser = a})

-- | Returns response with indentations and line breaks.
ellPrettyPrint :: Lens' EnterprisesList' Bool
ellPrettyPrint
  = lens _ellPrettyPrint
      (\ s a -> s{_ellPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ellUserIp :: Lens' EnterprisesList' (Maybe Text)
ellUserIp
  = lens _ellUserIp (\ s a -> s{_ellUserIp = a})

-- | The exact primary domain name of the enterprise to look up.
ellDomain :: Lens' EnterprisesList' Text
ellDomain
  = lens _ellDomain (\ s a -> s{_ellDomain = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ellKey :: Lens' EnterprisesList' (Maybe Text)
ellKey = lens _ellKey (\ s a -> s{_ellKey = a})

-- | OAuth 2.0 token for the current user.
ellOauthToken :: Lens' EnterprisesList' (Maybe Text)
ellOauthToken
  = lens _ellOauthToken
      (\ s a -> s{_ellOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ellFields :: Lens' EnterprisesList' (Maybe Text)
ellFields
  = lens _ellFields (\ s a -> s{_ellFields = a})

-- | Data format for the response.
ellAlt :: Lens' EnterprisesList' Alt
ellAlt = lens _ellAlt (\ s a -> s{_ellAlt = a})

instance GoogleRequest EnterprisesList' where
        type Rs EnterprisesList' = EnterprisesListResponse
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u EnterprisesList'{..}
          = go _ellQuotaUser (Just _ellPrettyPrint) _ellUserIp
              (Just _ellDomain)
              _ellKey
              _ellOauthToken
              _ellFields
              (Just _ellAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EnterprisesListResource)
                      r
                      u
