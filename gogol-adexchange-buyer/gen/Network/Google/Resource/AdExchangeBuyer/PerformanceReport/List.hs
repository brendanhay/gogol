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
-- Module      : Network.Google.Resource.AdExchangeBuyer.PerformanceReport.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the authenticated user\'s list of performance metrics.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.performanceReport.list@.
module Network.Google.Resource.AdExchangeBuyer.PerformanceReport.List
    (
    -- * REST Resource
      PerformanceReportListResource

    -- * Creating a Request
    , performanceReportList'
    , PerformanceReportList'

    -- * Request Lenses
    , prlAccountId
    , prlPageToken
    , prlEndDateTime
    , prlMaxResults
    , prlStartDateTime
    ) where

import Network.Google.AdExchangeBuyer.Types
import Network.Google.Prelude

-- | A resource alias for @adexchangebuyer.performanceReport.list@ method which the
-- 'PerformanceReportList'' request conforms to.
type PerformanceReportListResource =
     "adexchangebuyer" :>
       "v1.4" :>
         "performancereport" :>
           QueryParam "accountId" (Textual Int64) :>
             QueryParam "endDateTime" Text :>
               QueryParam "startDateTime" Text :>
                 QueryParam "pageToken" Text :>
                   QueryParam "maxResults" (Textual Word32) :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] PerformanceReportList

-- | Retrieves the authenticated user\'s list of performance metrics.
--
-- /See:/ 'performanceReportList'' smart constructor.
data PerformanceReportList' =
  PerformanceReportList''
    { _prlAccountId :: !(Textual Int64)
    , _prlPageToken :: !(Maybe Text)
    , _prlEndDateTime :: !Text
    , _prlMaxResults :: !(Maybe (Textual Word32))
    , _prlStartDateTime :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PerformanceReportList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prlAccountId'
--
-- * 'prlPageToken'
--
-- * 'prlEndDateTime'
--
-- * 'prlMaxResults'
--
-- * 'prlStartDateTime'
performanceReportList'
    :: Int64 -- ^ 'prlAccountId'
    -> Text -- ^ 'prlEndDateTime'
    -> Text -- ^ 'prlStartDateTime'
    -> PerformanceReportList'
performanceReportList' pPrlAccountId_ pPrlEndDateTime_ pPrlStartDateTime_ =
  PerformanceReportList''
    { _prlAccountId = _Coerce # pPrlAccountId_
    , _prlPageToken = Nothing
    , _prlEndDateTime = pPrlEndDateTime_
    , _prlMaxResults = Nothing
    , _prlStartDateTime = pPrlStartDateTime_
    }


-- | The account id to get the reports.
prlAccountId :: Lens' PerformanceReportList' Int64
prlAccountId
  = lens _prlAccountId (\ s a -> s{_prlAccountId = a})
      . _Coerce

-- | A continuation token, used to page through performance reports. To
-- retrieve the next page, set this parameter to the value of
-- \"nextPageToken\" from the previous response. Optional.
prlPageToken :: Lens' PerformanceReportList' (Maybe Text)
prlPageToken
  = lens _prlPageToken (\ s a -> s{_prlPageToken = a})

-- | The end time of the report in ISO 8601 timestamp format using UTC.
prlEndDateTime :: Lens' PerformanceReportList' Text
prlEndDateTime
  = lens _prlEndDateTime
      (\ s a -> s{_prlEndDateTime = a})

-- | Maximum number of entries returned on one result page. If not set, the
-- default is 100. Optional.
prlMaxResults :: Lens' PerformanceReportList' (Maybe Word32)
prlMaxResults
  = lens _prlMaxResults
      (\ s a -> s{_prlMaxResults = a})
      . mapping _Coerce

-- | The start time of the report in ISO 8601 timestamp format using UTC.
prlStartDateTime :: Lens' PerformanceReportList' Text
prlStartDateTime
  = lens _prlStartDateTime
      (\ s a -> s{_prlStartDateTime = a})

instance GoogleRequest PerformanceReportList' where
        type Rs PerformanceReportList' =
             PerformanceReportList
        type Scopes PerformanceReportList' =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient PerformanceReportList''{..}
          = go (Just _prlAccountId) (Just _prlEndDateTime)
              (Just _prlStartDateTime)
              _prlPageToken
              _prlMaxResults
              (Just AltJSON)
              adExchangeBuyerService
          where go
                  = buildClient
                      (Proxy :: Proxy PerformanceReportListResource)
                      mempty
