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
-- Module      : Network.Google.Resource.AdExchangeSeller.Accounts.Reports.Saved.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all saved reports in this Ad Exchange account.
--
-- /See:/ <https://developers.google.com/ad-exchange/seller-rest/ Ad Exchange Seller API Reference> for @adexchangeseller.accounts.reports.saved.list@.
module Network.Google.Resource.AdExchangeSeller.Accounts.Reports.Saved.List
    (
    -- * REST Resource
      AccountsReportsSavedListResource

    -- * Creating a Request
    , accountsReportsSavedList
    , AccountsReportsSavedList

    -- * Request Lenses
    , arslAccountId
    , arslPageToken
    , arslMaxResults
    ) where

import Network.Google.AdExchangeSeller.Types
import Network.Google.Prelude

-- | A resource alias for @adexchangeseller.accounts.reports.saved.list@ method which the
-- 'AccountsReportsSavedList' request conforms to.
type AccountsReportsSavedListResource =
     "adexchangeseller" :>
       "v2.0" :>
         "accounts" :>
           Capture "accountId" Text :>
             "reports" :>
               "saved" :>
                 QueryParam "pageToken" Text :>
                   QueryParam "maxResults" (Textual Int32) :>
                     QueryParam "alt" AltJSON :> Get '[JSON] SavedReports

-- | List all saved reports in this Ad Exchange account.
--
-- /See:/ 'accountsReportsSavedList' smart constructor.
data AccountsReportsSavedList =
  AccountsReportsSavedList'
    { _arslAccountId :: !Text
    , _arslPageToken :: !(Maybe Text)
    , _arslMaxResults :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsReportsSavedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arslAccountId'
--
-- * 'arslPageToken'
--
-- * 'arslMaxResults'
accountsReportsSavedList
    :: Text -- ^ 'arslAccountId'
    -> AccountsReportsSavedList
accountsReportsSavedList pArslAccountId_ =
  AccountsReportsSavedList'
    { _arslAccountId = pArslAccountId_
    , _arslPageToken = Nothing
    , _arslMaxResults = Nothing
    }


-- | Account owning the saved reports.
arslAccountId :: Lens' AccountsReportsSavedList Text
arslAccountId
  = lens _arslAccountId
      (\ s a -> s{_arslAccountId = a})

-- | A continuation token, used to page through saved reports. To retrieve
-- the next page, set this parameter to the value of \"nextPageToken\" from
-- the previous response.
arslPageToken :: Lens' AccountsReportsSavedList (Maybe Text)
arslPageToken
  = lens _arslPageToken
      (\ s a -> s{_arslPageToken = a})

-- | The maximum number of saved reports to include in the response, used for
-- paging.
arslMaxResults :: Lens' AccountsReportsSavedList (Maybe Int32)
arslMaxResults
  = lens _arslMaxResults
      (\ s a -> s{_arslMaxResults = a})
      . mapping _Coerce

instance GoogleRequest AccountsReportsSavedList where
        type Rs AccountsReportsSavedList = SavedReports
        type Scopes AccountsReportsSavedList =
             '["https://www.googleapis.com/auth/adexchange.seller",
               "https://www.googleapis.com/auth/adexchange.seller.readonly"]
        requestClient AccountsReportsSavedList'{..}
          = go _arslAccountId _arslPageToken _arslMaxResults
              (Just AltJSON)
              adExchangeSellerService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsReportsSavedListResource)
                      mempty
