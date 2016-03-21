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
-- Module      : Network.Google.Resource.DoubleClickBidManager.Reports.Listreports
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves stored reports.
--
-- /See:/ <https://developers.google.com/bid-manager/ DoubleClick Bid Manager API Reference> for @doubleclickbidmanager.reports.listreports@.
module Network.Google.Resource.DoubleClickBidManager.Reports.Listreports
    (
    -- * REST Resource
      ReportsListreportsResource

    -- * Creating a Request
    , reportsListreports
    , ReportsListreports

    -- * Request Lenses
    , rlQueryId
    ) where

import           Network.Google.DoubleClickBids.Types
import           Network.Google.Prelude

-- | A resource alias for @doubleclickbidmanager.reports.listreports@ method which the
-- 'ReportsListreports' request conforms to.
type ReportsListreportsResource =
     "doubleclickbidmanager" :>
       "v1" :>
         "queries" :>
           Capture "queryId" (Textual Int64) :>
             "reports" :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] ListReportsResponse

-- | Retrieves stored reports.
--
-- /See:/ 'reportsListreports' smart constructor.
newtype ReportsListreports = ReportsListreports'
    { _rlQueryId :: Textual Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportsListreports' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlQueryId'
reportsListreports
    :: Int64 -- ^ 'rlQueryId'
    -> ReportsListreports
reportsListreports pRlQueryId_ =
    ReportsListreports'
    { _rlQueryId = _Coerce # pRlQueryId_
    }

-- | Query ID with which the reports are associated.
rlQueryId :: Lens' ReportsListreports Int64
rlQueryId
  = lens _rlQueryId (\ s a -> s{_rlQueryId = a}) .
      _Coerce

instance GoogleRequest ReportsListreports where
        type Rs ReportsListreports = ListReportsResponse
        type Scopes ReportsListreports = '[]
        requestClient ReportsListreports'{..}
          = go _rlQueryId (Just AltJSON) doubleClickBidsService
          where go
                  = buildClient
                      (Proxy :: Proxy ReportsListreportsResource)
                      mempty
