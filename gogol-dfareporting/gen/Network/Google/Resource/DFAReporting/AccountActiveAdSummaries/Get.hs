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
-- Module      : Network.Google.Resource.DFAReporting.AccountActiveAdSummaries.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the account\'s active ad summary by account ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.accountActiveAdSummaries.get@.
module Network.Google.Resource.DFAReporting.AccountActiveAdSummaries.Get
    (
    -- * REST Resource
      AccountActiveAdSummariesGetResource

    -- * Creating a Request
    , accountActiveAdSummariesGet'
    , AccountActiveAdSummariesGet'

    -- * Request Lenses
    , aaasgProFileId
    , aaasgSummaryAccountId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.accountActiveAdSummaries.get@ method which the
-- 'AccountActiveAdSummariesGet'' request conforms to.
type AccountActiveAdSummariesGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "accountActiveAdSummaries" :>
           Capture "summaryAccountId" Int64 :>
             QueryParam "alt" AltJSON :>
               Get '[JSON] AccountActiveAdSummary

-- | Gets the account\'s active ad summary by account ID.
--
-- /See:/ 'accountActiveAdSummariesGet'' smart constructor.
data AccountActiveAdSummariesGet' = AccountActiveAdSummariesGet'
    { _aaasgProFileId        :: !Int64
    , _aaasgSummaryAccountId :: !Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountActiveAdSummariesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaasgProFileId'
--
-- * 'aaasgSummaryAccountId'
accountActiveAdSummariesGet'
    :: Int64 -- ^ 'aaasgProFileId'
    -> Int64 -- ^ 'aaasgSummaryAccountId'
    -> AccountActiveAdSummariesGet'
accountActiveAdSummariesGet' pAaasgProFileId_ pAaasgSummaryAccountId_ =
    AccountActiveAdSummariesGet'
    { _aaasgProFileId = pAaasgProFileId_
    , _aaasgSummaryAccountId = pAaasgSummaryAccountId_
    }

-- | User profile ID associated with this request.
aaasgProFileId :: Lens' AccountActiveAdSummariesGet' Int64
aaasgProFileId
  = lens _aaasgProFileId
      (\ s a -> s{_aaasgProFileId = a})

-- | Account ID.
aaasgSummaryAccountId :: Lens' AccountActiveAdSummariesGet' Int64
aaasgSummaryAccountId
  = lens _aaasgSummaryAccountId
      (\ s a -> s{_aaasgSummaryAccountId = a})

instance GoogleRequest AccountActiveAdSummariesGet'
         where
        type Rs AccountActiveAdSummariesGet' =
             AccountActiveAdSummary
        requestClient AccountActiveAdSummariesGet'{..}
          = go _aaasgProFileId _aaasgSummaryAccountId
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountActiveAdSummariesGetResource)
                      mempty
