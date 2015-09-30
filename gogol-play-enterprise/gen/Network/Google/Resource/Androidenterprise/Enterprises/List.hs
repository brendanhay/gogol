{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module Androidenterprise.Enterprises.List
    (
    -- * REST Resource
      EnterprisesListAPI

    -- * Creating a Request
    , enterprisesList
    , EnterprisesList

    -- * Request Lenses
    , elQuotaUser
    , elPrettyPrint
    , elUserIp
    , elDomain
    , elKey
    , elOauthToken
    , elFields
    , elAlt
    ) where

import           Network.Google.PlayEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidenterpriseEnterprisesList@ which the
-- 'EnterprisesList' request conforms to.
type EnterprisesListAPI =
     "enterprises" :>
       QueryParam "domain" Text :>
         Get '[JSON] EnterprisesListResponse

-- | Looks up an enterprise by domain name.
--
-- /See:/ 'enterprisesList' smart constructor.
data EnterprisesList = EnterprisesList
    { _elQuotaUser   :: !(Maybe Text)
    , _elPrettyPrint :: !Bool
    , _elUserIp      :: !(Maybe Text)
    , _elDomain      :: !Text
    , _elKey         :: !(Maybe Text)
    , _elOauthToken  :: !(Maybe Text)
    , _elFields      :: !(Maybe Text)
    , _elAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EnterprisesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'elQuotaUser'
--
-- * 'elPrettyPrint'
--
-- * 'elUserIp'
--
-- * 'elDomain'
--
-- * 'elKey'
--
-- * 'elOauthToken'
--
-- * 'elFields'
--
-- * 'elAlt'
enterprisesList
    :: Text -- ^ 'domain'
    -> EnterprisesList
enterprisesList pElDomain_ =
    EnterprisesList
    { _elQuotaUser = Nothing
    , _elPrettyPrint = True
    , _elUserIp = Nothing
    , _elDomain = pElDomain_
    , _elKey = Nothing
    , _elOauthToken = Nothing
    , _elFields = Nothing
    , _elAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
elQuotaUser :: Lens' EnterprisesList' (Maybe Text)
elQuotaUser
  = lens _elQuotaUser (\ s a -> s{_elQuotaUser = a})

-- | Returns response with indentations and line breaks.
elPrettyPrint :: Lens' EnterprisesList' Bool
elPrettyPrint
  = lens _elPrettyPrint
      (\ s a -> s{_elPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
elUserIp :: Lens' EnterprisesList' (Maybe Text)
elUserIp = lens _elUserIp (\ s a -> s{_elUserIp = a})

-- | The exact primary domain name of the enterprise to look up.
elDomain :: Lens' EnterprisesList' Text
elDomain = lens _elDomain (\ s a -> s{_elDomain = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
elKey :: Lens' EnterprisesList' (Maybe Text)
elKey = lens _elKey (\ s a -> s{_elKey = a})

-- | OAuth 2.0 token for the current user.
elOauthToken :: Lens' EnterprisesList' (Maybe Text)
elOauthToken
  = lens _elOauthToken (\ s a -> s{_elOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
elFields :: Lens' EnterprisesList' (Maybe Text)
elFields = lens _elFields (\ s a -> s{_elFields = a})

-- | Data format for the response.
elAlt :: Lens' EnterprisesList' Text
elAlt = lens _elAlt (\ s a -> s{_elAlt = a})

instance GoogleRequest EnterprisesList' where
        type Rs EnterprisesList' = EnterprisesListResponse
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u EnterprisesList{..}
          = go _elQuotaUser _elPrettyPrint _elUserIp
              (Just _elDomain)
              _elKey
              _elOauthToken
              _elFields
              _elAlt
          where go
                  = clientWithRoute (Proxy :: Proxy EnterprisesListAPI)
                      r
                      u
