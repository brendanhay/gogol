{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Androidenterprise.Enterprises.SetAccount
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Set the account that will be used to authenticate to the API as the
-- enterprise.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @androidenterprise.enterprises.setAccount@.
module Network.Google.API.Androidenterprise.Enterprises.SetAccount
    (
    -- * REST Resource
      EnterprisesSetAccountAPI

    -- * Creating a Request
    , enterprisesSetAccount'
    , EnterprisesSetAccount'

    -- * Request Lenses
    , esaQuotaUser
    , esaPrettyPrint
    , esaEnterpriseId
    , esaUserIp
    , esaKey
    , esaOauthToken
    , esaFields
    , esaAlt
    ) where

import           Network.Google.Play.Enterprise.Types
import           Network.Google.Prelude

-- | A resource alias for androidenterprise.enterprises.setAccount which the
-- 'EnterprisesSetAccount'' request conforms to.
type EnterprisesSetAccountAPI =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "account" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Put '[JSON] EnterpriseAccount

-- | Set the account that will be used to authenticate to the API as the
-- enterprise.
--
-- /See:/ 'enterprisesSetAccount'' smart constructor.
data EnterprisesSetAccount' = EnterprisesSetAccount'
    { _esaQuotaUser    :: !(Maybe Text)
    , _esaPrettyPrint  :: !Bool
    , _esaEnterpriseId :: !Text
    , _esaUserIp       :: !(Maybe Text)
    , _esaKey          :: !(Maybe Text)
    , _esaOauthToken   :: !(Maybe Text)
    , _esaFields       :: !(Maybe Text)
    , _esaAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EnterprisesSetAccount'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'esaQuotaUser'
--
-- * 'esaPrettyPrint'
--
-- * 'esaEnterpriseId'
--
-- * 'esaUserIp'
--
-- * 'esaKey'
--
-- * 'esaOauthToken'
--
-- * 'esaFields'
--
-- * 'esaAlt'
enterprisesSetAccount'
    :: Text -- ^ 'enterpriseId'
    -> EnterprisesSetAccount'
enterprisesSetAccount' pEsaEnterpriseId_ =
    EnterprisesSetAccount'
    { _esaQuotaUser = Nothing
    , _esaPrettyPrint = True
    , _esaEnterpriseId = pEsaEnterpriseId_
    , _esaUserIp = Nothing
    , _esaKey = Nothing
    , _esaOauthToken = Nothing
    , _esaFields = Nothing
    , _esaAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
esaQuotaUser :: Lens' EnterprisesSetAccount' (Maybe Text)
esaQuotaUser
  = lens _esaQuotaUser (\ s a -> s{_esaQuotaUser = a})

-- | Returns response with indentations and line breaks.
esaPrettyPrint :: Lens' EnterprisesSetAccount' Bool
esaPrettyPrint
  = lens _esaPrettyPrint
      (\ s a -> s{_esaPrettyPrint = a})

-- | The ID of the enterprise.
esaEnterpriseId :: Lens' EnterprisesSetAccount' Text
esaEnterpriseId
  = lens _esaEnterpriseId
      (\ s a -> s{_esaEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
esaUserIp :: Lens' EnterprisesSetAccount' (Maybe Text)
esaUserIp
  = lens _esaUserIp (\ s a -> s{_esaUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
esaKey :: Lens' EnterprisesSetAccount' (Maybe Text)
esaKey = lens _esaKey (\ s a -> s{_esaKey = a})

-- | OAuth 2.0 token for the current user.
esaOauthToken :: Lens' EnterprisesSetAccount' (Maybe Text)
esaOauthToken
  = lens _esaOauthToken
      (\ s a -> s{_esaOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
esaFields :: Lens' EnterprisesSetAccount' (Maybe Text)
esaFields
  = lens _esaFields (\ s a -> s{_esaFields = a})

-- | Data format for the response.
esaAlt :: Lens' EnterprisesSetAccount' Alt
esaAlt = lens _esaAlt (\ s a -> s{_esaAlt = a})

instance GoogleRequest EnterprisesSetAccount' where
        type Rs EnterprisesSetAccount' = EnterpriseAccount
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u EnterprisesSetAccount'{..}
          = go _esaQuotaUser (Just _esaPrettyPrint)
              _esaEnterpriseId
              _esaUserIp
              _esaKey
              _esaOauthToken
              _esaFields
              (Just _esaAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EnterprisesSetAccountAPI)
                      r
                      u
