{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Androidenterprise.Enterprises.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Looks up an enterprise by domain name.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @androidenterprise.enterprises.list@.
module Network.Google.API.Androidenterprise.Enterprises.List
    (
    -- * REST Resource
      EnterprisesListAPI

    -- * Creating a Request
    , enterprisesList'
    , EnterprisesList'

    -- * Request Lenses
    , entQuotaUser
    , entPrettyPrint
    , entUserIp
    , entDomain
    , entKey
    , entOauthToken
    , entFields
    , entAlt
    ) where

import           Network.Google.Play.Enterprise.Types
import           Network.Google.Prelude

-- | A resource alias for androidenterprise.enterprises.list which the
-- 'EnterprisesList'' request conforms to.
type EnterprisesListAPI =
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
    { _entQuotaUser   :: !(Maybe Text)
    , _entPrettyPrint :: !Bool
    , _entUserIp      :: !(Maybe Text)
    , _entDomain      :: !Text
    , _entKey         :: !(Maybe Text)
    , _entOauthToken  :: !(Maybe Text)
    , _entFields      :: !(Maybe Text)
    , _entAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EnterprisesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'entQuotaUser'
--
-- * 'entPrettyPrint'
--
-- * 'entUserIp'
--
-- * 'entDomain'
--
-- * 'entKey'
--
-- * 'entOauthToken'
--
-- * 'entFields'
--
-- * 'entAlt'
enterprisesList'
    :: Text -- ^ 'domain'
    -> EnterprisesList'
enterprisesList' pEntDomain_ =
    EnterprisesList'
    { _entQuotaUser = Nothing
    , _entPrettyPrint = True
    , _entUserIp = Nothing
    , _entDomain = pEntDomain_
    , _entKey = Nothing
    , _entOauthToken = Nothing
    , _entFields = Nothing
    , _entAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
entQuotaUser :: Lens' EnterprisesList' (Maybe Text)
entQuotaUser
  = lens _entQuotaUser (\ s a -> s{_entQuotaUser = a})

-- | Returns response with indentations and line breaks.
entPrettyPrint :: Lens' EnterprisesList' Bool
entPrettyPrint
  = lens _entPrettyPrint
      (\ s a -> s{_entPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
entUserIp :: Lens' EnterprisesList' (Maybe Text)
entUserIp
  = lens _entUserIp (\ s a -> s{_entUserIp = a})

-- | The exact primary domain name of the enterprise to look up.
entDomain :: Lens' EnterprisesList' Text
entDomain
  = lens _entDomain (\ s a -> s{_entDomain = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
entKey :: Lens' EnterprisesList' (Maybe Text)
entKey = lens _entKey (\ s a -> s{_entKey = a})

-- | OAuth 2.0 token for the current user.
entOauthToken :: Lens' EnterprisesList' (Maybe Text)
entOauthToken
  = lens _entOauthToken
      (\ s a -> s{_entOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
entFields :: Lens' EnterprisesList' (Maybe Text)
entFields
  = lens _entFields (\ s a -> s{_entFields = a})

-- | Data format for the response.
entAlt :: Lens' EnterprisesList' Alt
entAlt = lens _entAlt (\ s a -> s{_entAlt = a})

instance GoogleRequest EnterprisesList' where
        type Rs EnterprisesList' = EnterprisesListResponse
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u EnterprisesList'{..}
          = go _entQuotaUser (Just _entPrettyPrint) _entUserIp
              (Just _entDomain)
              _entKey
              _entOauthToken
              _entFields
              (Just _entAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy EnterprisesListAPI)
                      r
                      u
