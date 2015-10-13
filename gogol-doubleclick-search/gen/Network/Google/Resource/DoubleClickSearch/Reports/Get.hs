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
-- Module      : Network.Google.Resource.DoubleClickSearch.Reports.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Polls for the status of a report request.
--
-- /See:/ <https://developers.google.com/doubleclick-search/ DoubleClick Search API Reference> for @DoubleClicksearchReportsGet@.
module Network.Google.Resource.DoubleClickSearch.Reports.Get
    (
    -- * REST Resource
      ReportsGetResource

    -- * Creating a Request
    , reportsGet'
    , ReportsGet'

    -- * Request Lenses
    , rgReportId
    ) where

import           Network.Google.DoubleClickSearch.Types
import           Network.Google.Prelude

-- | A resource alias for @DoubleClicksearchReportsGet@ method which the
-- 'ReportsGet'' request conforms to.
type ReportsGetResource =
     "reports" :>
       Capture "reportId" Text :>
         QueryParam "alt" AltJSON :> Get '[JSON] Report

-- | Polls for the status of a report request.
--
-- /See:/ 'reportsGet'' smart constructor.
newtype ReportsGet' = ReportsGet'
    { _rgReportId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgReportId'
reportsGet'
    :: Text -- ^ 'reportId'
    -> ReportsGet'
reportsGet' pRgReportId_ =
    ReportsGet'
    { _rgReportId = pRgReportId_
    }

-- | ID of the report request being polled.
rgReportId :: Lens' ReportsGet' Text
rgReportId
  = lens _rgReportId (\ s a -> s{_rgReportId = a})

instance GoogleRequest ReportsGet' where
        type Rs ReportsGet' = Report
        requestClient ReportsGet'{..}
          = go _rgReportId (Just AltJSON)
              doubleClickSearchService
          where go
                  = buildClient (Proxy :: Proxy ReportsGetResource)
                      mempty
