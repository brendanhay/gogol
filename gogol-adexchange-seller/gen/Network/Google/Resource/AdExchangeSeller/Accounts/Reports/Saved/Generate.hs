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
-- Module      : Network.Google.Resource.AdExchangeSeller.Accounts.Reports.Saved.Generate
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generate an Ad Exchange report based on the saved report ID sent in the
-- query parameters.
--
-- /See:/ <https://developers.google.com/ad-exchange/seller-rest/ Ad Exchange Seller API Reference> for @adexchangeseller.accounts.reports.saved.generate@.
module Network.Google.Resource.AdExchangeSeller.Accounts.Reports.Saved.Generate
    (
    -- * REST Resource
      AccountsReportsSavedGenerateResource

    -- * Creating a Request
    , accountsReportsSavedGenerate'
    , AccountsReportsSavedGenerate'

    -- * Request Lenses
    , arsgLocale
    , arsgSavedReportId
    , arsgAccountId
    , arsgStartIndex
    , arsgMaxResults
    ) where

import           Network.Google.AdExchangeSeller.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangeseller.accounts.reports.saved.generate@ method which the
-- 'AccountsReportsSavedGenerate'' request conforms to.
type AccountsReportsSavedGenerateResource =
     "accounts" :>
       Capture "accountId" Text :>
         "reports" :>
           Capture "savedReportId" Text :>
             QueryParam "locale" Text :>
               QueryParam "startIndex" Int32 :>
                 QueryParam "maxResults" Int32 :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Report

-- | Generate an Ad Exchange report based on the saved report ID sent in the
-- query parameters.
--
-- /See:/ 'accountsReportsSavedGenerate'' smart constructor.
data AccountsReportsSavedGenerate' = AccountsReportsSavedGenerate'
    { _arsgLocale        :: !(Maybe Text)
    , _arsgSavedReportId :: !Text
    , _arsgAccountId     :: !Text
    , _arsgStartIndex    :: !(Maybe Int32)
    , _arsgMaxResults    :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsReportsSavedGenerate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arsgLocale'
--
-- * 'arsgSavedReportId'
--
-- * 'arsgAccountId'
--
-- * 'arsgStartIndex'
--
-- * 'arsgMaxResults'
accountsReportsSavedGenerate'
    :: Text -- ^ 'arsgSavedReportId'
    -> Text -- ^ 'arsgAccountId'
    -> AccountsReportsSavedGenerate'
accountsReportsSavedGenerate' pArsgSavedReportId_ pArsgAccountId_ =
    AccountsReportsSavedGenerate'
    { _arsgLocale = Nothing
    , _arsgSavedReportId = pArsgSavedReportId_
    , _arsgAccountId = pArsgAccountId_
    , _arsgStartIndex = Nothing
    , _arsgMaxResults = Nothing
    }

-- | Optional locale to use for translating report output to a local
-- language. Defaults to \"en_US\" if not specified.
arsgLocale :: Lens' AccountsReportsSavedGenerate' (Maybe Text)
arsgLocale
  = lens _arsgLocale (\ s a -> s{_arsgLocale = a})

-- | The saved report to retrieve.
arsgSavedReportId :: Lens' AccountsReportsSavedGenerate' Text
arsgSavedReportId
  = lens _arsgSavedReportId
      (\ s a -> s{_arsgSavedReportId = a})

-- | Account owning the saved report.
arsgAccountId :: Lens' AccountsReportsSavedGenerate' Text
arsgAccountId
  = lens _arsgAccountId
      (\ s a -> s{_arsgAccountId = a})

-- | Index of the first row of report data to return.
arsgStartIndex :: Lens' AccountsReportsSavedGenerate' (Maybe Int32)
arsgStartIndex
  = lens _arsgStartIndex
      (\ s a -> s{_arsgStartIndex = a})

-- | The maximum number of rows of report data to return.
arsgMaxResults :: Lens' AccountsReportsSavedGenerate' (Maybe Int32)
arsgMaxResults
  = lens _arsgMaxResults
      (\ s a -> s{_arsgMaxResults = a})

instance GoogleRequest AccountsReportsSavedGenerate'
         where
        type Rs AccountsReportsSavedGenerate' = Report
        requestClient AccountsReportsSavedGenerate'{..}
          = go _arsgAccountId _arsgSavedReportId _arsgLocale
              _arsgStartIndex
              _arsgMaxResults
              (Just AltJSON)
              adExchangeSellerService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsReportsSavedGenerateResource)
                      mempty
