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
-- Module      : Network.Google.Resource.DoubleClickSearch.Reports.Request
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a report request into the reporting system.
--
-- /See:/ <https://developers.google.com/doubleclick-search/ DoubleClick Search API Reference> for @doubleclicksearch.reports.request@.
module Network.Google.Resource.DoubleClickSearch.Reports.Request
    (
    -- * REST Resource
      ReportsRequestResource

    -- * Creating a Request
    , reportsRequest
    , ReportsRequest

    -- * Request Lenses
    , rrPayload
    ) where

import           Network.Google.DoubleClickSearch.Types
import           Network.Google.Prelude

-- | A resource alias for @doubleclicksearch.reports.request@ method which the
-- 'ReportsRequest' request conforms to.
type ReportsRequestResource =
     "doubleclicksearch" :>
       "v2" :>
         "reports" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] ReportRequest :> Post '[JSON] Report

-- | Inserts a report request into the reporting system.
--
-- /See:/ 'reportsRequest' smart constructor.
newtype ReportsRequest =
  ReportsRequest'
    { _rrPayload :: ReportRequest
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReportsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrPayload'
reportsRequest
    :: ReportRequest -- ^ 'rrPayload'
    -> ReportsRequest
reportsRequest pRrPayload_ = ReportsRequest' {_rrPayload = pRrPayload_}


-- | Multipart request metadata.
rrPayload :: Lens' ReportsRequest ReportRequest
rrPayload
  = lens _rrPayload (\ s a -> s{_rrPayload = a})

instance GoogleRequest ReportsRequest where
        type Rs ReportsRequest = Report
        type Scopes ReportsRequest =
             '["https://www.googleapis.com/auth/doubleclicksearch"]
        requestClient ReportsRequest'{..}
          = go (Just AltJSON) _rrPayload
              doubleClickSearchService
          where go
                  = buildClient (Proxy :: Proxy ReportsRequestResource)
                      mempty
