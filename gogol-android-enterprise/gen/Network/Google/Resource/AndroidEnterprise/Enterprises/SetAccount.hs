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
-- Module      : Network.Google.Resource.AndroidEnterprise.Enterprises.SetAccount
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Set the account that will be used to authenticate to the API as the
-- enterprise.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseEnterprisesSetAccount@.
module Network.Google.Resource.AndroidEnterprise.Enterprises.SetAccount
    (
    -- * REST Resource
      EnterprisesSetAccountResource

    -- * Creating a Request
    , enterprisesSetAccount'
    , EnterprisesSetAccount'

    -- * Request Lenses
    , esaEnterpriseAccount
    , esaQuotaUser
    , esaPrettyPrint
    , esaEnterpriseId
    , esaUserIP
    , esaKey
    , esaOAuthToken
    , esaFields
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseEnterprisesSetAccount@ which the
-- 'EnterprisesSetAccount'' request conforms to.
type EnterprisesSetAccountResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "account" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] EnterpriseAccount :>
                           Put '[JSON] EnterpriseAccount

-- | Set the account that will be used to authenticate to the API as the
-- enterprise.
--
-- /See:/ 'enterprisesSetAccount'' smart constructor.
data EnterprisesSetAccount' = EnterprisesSetAccount'
    { _esaEnterpriseAccount :: !EnterpriseAccount
    , _esaQuotaUser         :: !(Maybe Text)
    , _esaPrettyPrint       :: !Bool
    , _esaEnterpriseId      :: !Text
    , _esaUserIP            :: !(Maybe Text)
    , _esaKey               :: !(Maybe Key)
    , _esaOAuthToken        :: !(Maybe OAuthToken)
    , _esaFields            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EnterprisesSetAccount'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'esaEnterpriseAccount'
--
-- * 'esaQuotaUser'
--
-- * 'esaPrettyPrint'
--
-- * 'esaEnterpriseId'
--
-- * 'esaUserIP'
--
-- * 'esaKey'
--
-- * 'esaOAuthToken'
--
-- * 'esaFields'
enterprisesSetAccount'
    :: EnterpriseAccount -- ^ 'EnterpriseAccount'
    -> Text -- ^ 'enterpriseId'
    -> EnterprisesSetAccount'
enterprisesSetAccount' pEsaEnterpriseAccount_ pEsaEnterpriseId_ =
    EnterprisesSetAccount'
    { _esaEnterpriseAccount = pEsaEnterpriseAccount_
    , _esaQuotaUser = Nothing
    , _esaPrettyPrint = True
    , _esaEnterpriseId = pEsaEnterpriseId_
    , _esaUserIP = Nothing
    , _esaKey = Nothing
    , _esaOAuthToken = Nothing
    , _esaFields = Nothing
    }

-- | Multipart request metadata.
esaEnterpriseAccount :: Lens' EnterprisesSetAccount' EnterpriseAccount
esaEnterpriseAccount
  = lens _esaEnterpriseAccount
      (\ s a -> s{_esaEnterpriseAccount = a})

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
esaUserIP :: Lens' EnterprisesSetAccount' (Maybe Text)
esaUserIP
  = lens _esaUserIP (\ s a -> s{_esaUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
esaKey :: Lens' EnterprisesSetAccount' (Maybe Key)
esaKey = lens _esaKey (\ s a -> s{_esaKey = a})

-- | OAuth 2.0 token for the current user.
esaOAuthToken :: Lens' EnterprisesSetAccount' (Maybe OAuthToken)
esaOAuthToken
  = lens _esaOAuthToken
      (\ s a -> s{_esaOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
esaFields :: Lens' EnterprisesSetAccount' (Maybe Text)
esaFields
  = lens _esaFields (\ s a -> s{_esaFields = a})

instance GoogleAuth EnterprisesSetAccount' where
        authKey = esaKey . _Just
        authToken = esaOAuthToken . _Just

instance GoogleRequest EnterprisesSetAccount' where
        type Rs EnterprisesSetAccount' = EnterpriseAccount
        request
          = requestWithRoute defReq androidEnterpriseURL
        requestWithRoute r u EnterprisesSetAccount'{..}
          = go _esaEnterpriseId _esaQuotaUser
              (Just _esaPrettyPrint)
              _esaUserIP
              _esaFields
              _esaKey
              _esaOAuthToken
              (Just AltJSON)
              _esaEnterpriseAccount
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EnterprisesSetAccountResource)
                      r
                      u
