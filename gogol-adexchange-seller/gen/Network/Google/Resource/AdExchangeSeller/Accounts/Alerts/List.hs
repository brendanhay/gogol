{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.AdExchangeSeller.Accounts.Alerts.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List the alerts for this Ad Exchange account.
--
-- /See:/ <https://developers.google.com/ad-exchange/seller-rest/ Ad Exchange Seller API Reference> for @AdexchangesellerAccountsAlertsList@.
module Network.Google.Resource.AdExchangeSeller.Accounts.Alerts.List
    (
    -- * REST Resource
      AccountsAlertsListResource

    -- * Creating a Request
    , accountsAlertsList'
    , AccountsAlertsList'

    -- * Request Lenses
    , aalQuotaUser
    , aalPrettyPrint
    , aalUserIP
    , aalLocale
    , aalAccountId
    , aalKey
    , aalOAuthToken
    , aalFields
    ) where

import           Network.Google.AdExchangeSeller.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangesellerAccountsAlertsList@ which the
-- 'AccountsAlertsList'' request conforms to.
type AccountsAlertsListResource =
     "accounts" :>
       Capture "accountId" Text :>
         "alerts" :>
           QueryParam "locale" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Alerts

-- | List the alerts for this Ad Exchange account.
--
-- /See:/ 'accountsAlertsList'' smart constructor.
data AccountsAlertsList' = AccountsAlertsList'
    { _aalQuotaUser   :: !(Maybe Text)
    , _aalPrettyPrint :: !Bool
    , _aalUserIP      :: !(Maybe Text)
    , _aalLocale      :: !(Maybe Text)
    , _aalAccountId   :: !Text
    , _aalKey         :: !(Maybe AuthKey)
    , _aalOAuthToken  :: !(Maybe OAuthToken)
    , _aalFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsAlertsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aalQuotaUser'
--
-- * 'aalPrettyPrint'
--
-- * 'aalUserIP'
--
-- * 'aalLocale'
--
-- * 'aalAccountId'
--
-- * 'aalKey'
--
-- * 'aalOAuthToken'
--
-- * 'aalFields'
accountsAlertsList'
    :: Text -- ^ 'accountId'
    -> AccountsAlertsList'
accountsAlertsList' pAalAccountId_ =
    AccountsAlertsList'
    { _aalQuotaUser = Nothing
    , _aalPrettyPrint = True
    , _aalUserIP = Nothing
    , _aalLocale = Nothing
    , _aalAccountId = pAalAccountId_
    , _aalKey = Nothing
    , _aalOAuthToken = Nothing
    , _aalFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aalQuotaUser :: Lens' AccountsAlertsList' (Maybe Text)
aalQuotaUser
  = lens _aalQuotaUser (\ s a -> s{_aalQuotaUser = a})

-- | Returns response with indentations and line breaks.
aalPrettyPrint :: Lens' AccountsAlertsList' Bool
aalPrettyPrint
  = lens _aalPrettyPrint
      (\ s a -> s{_aalPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aalUserIP :: Lens' AccountsAlertsList' (Maybe Text)
aalUserIP
  = lens _aalUserIP (\ s a -> s{_aalUserIP = a})

-- | The locale to use for translating alert messages. The account locale
-- will be used if this is not supplied. The AdSense default (English) will
-- be used if the supplied locale is invalid or unsupported.
aalLocale :: Lens' AccountsAlertsList' (Maybe Text)
aalLocale
  = lens _aalLocale (\ s a -> s{_aalLocale = a})

-- | Account owning the alerts.
aalAccountId :: Lens' AccountsAlertsList' Text
aalAccountId
  = lens _aalAccountId (\ s a -> s{_aalAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aalKey :: Lens' AccountsAlertsList' (Maybe AuthKey)
aalKey = lens _aalKey (\ s a -> s{_aalKey = a})

-- | OAuth 2.0 token for the current user.
aalOAuthToken :: Lens' AccountsAlertsList' (Maybe OAuthToken)
aalOAuthToken
  = lens _aalOAuthToken
      (\ s a -> s{_aalOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
aalFields :: Lens' AccountsAlertsList' (Maybe Text)
aalFields
  = lens _aalFields (\ s a -> s{_aalFields = a})

instance GoogleAuth AccountsAlertsList' where
        authKey = aalKey . _Just
        authToken = aalOAuthToken . _Just

instance GoogleRequest AccountsAlertsList' where
        type Rs AccountsAlertsList' = Alerts
        request = requestWith adExchangeSellerRequest
        requestWith rq AccountsAlertsList'{..}
          = go _aalAccountId _aalLocale _aalQuotaUser
              (Just _aalPrettyPrint)
              _aalUserIP
              _aalFields
              _aalKey
              _aalOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy AccountsAlertsListResource)
                      rq
