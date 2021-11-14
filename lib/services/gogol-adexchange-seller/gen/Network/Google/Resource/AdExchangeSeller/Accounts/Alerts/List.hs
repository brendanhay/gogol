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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List the alerts for this Ad Exchange account.
--
-- /See:/ <https://developers.google.com/ad-exchange/seller-rest/ Ad Exchange Seller API Reference> for @adexchangeseller.accounts.alerts.list@.
module Network.Google.Resource.AdExchangeSeller.Accounts.Alerts.List
    (
    -- * REST Resource
      AccountsAlertsListResource

    -- * Creating a Request
    , accountsAlertsList
    , AccountsAlertsList

    -- * Request Lenses
    , aalLocale
    , aalAccountId
    ) where

import Network.Google.AdExchangeSeller.Types
import Network.Google.Prelude

-- | A resource alias for @adexchangeseller.accounts.alerts.list@ method which the
-- 'AccountsAlertsList' request conforms to.
type AccountsAlertsListResource =
     "adexchangeseller" :>
       "v2.0" :>
         "accounts" :>
           Capture "accountId" Text :>
             "alerts" :>
               QueryParam "locale" Text :>
                 QueryParam "alt" AltJSON :> Get '[JSON] Alerts

-- | List the alerts for this Ad Exchange account.
--
-- /See:/ 'accountsAlertsList' smart constructor.
data AccountsAlertsList =
  AccountsAlertsList'
    { _aalLocale :: !(Maybe Text)
    , _aalAccountId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsAlertsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aalLocale'
--
-- * 'aalAccountId'
accountsAlertsList
    :: Text -- ^ 'aalAccountId'
    -> AccountsAlertsList
accountsAlertsList pAalAccountId_ =
  AccountsAlertsList' {_aalLocale = Nothing, _aalAccountId = pAalAccountId_}


-- | The locale to use for translating alert messages. The account locale
-- will be used if this is not supplied. The AdSense default (English) will
-- be used if the supplied locale is invalid or unsupported.
aalLocale :: Lens' AccountsAlertsList (Maybe Text)
aalLocale
  = lens _aalLocale (\ s a -> s{_aalLocale = a})

-- | Account owning the alerts.
aalAccountId :: Lens' AccountsAlertsList Text
aalAccountId
  = lens _aalAccountId (\ s a -> s{_aalAccountId = a})

instance GoogleRequest AccountsAlertsList where
        type Rs AccountsAlertsList = Alerts
        type Scopes AccountsAlertsList =
             '["https://www.googleapis.com/auth/adexchange.seller",
               "https://www.googleapis.com/auth/adexchange.seller.readonly"]
        requestClient AccountsAlertsList'{..}
          = go _aalAccountId _aalLocale (Just AltJSON)
              adExchangeSellerService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsAlertsListResource)
                      mempty
