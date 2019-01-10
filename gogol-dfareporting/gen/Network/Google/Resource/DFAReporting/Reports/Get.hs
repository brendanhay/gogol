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
-- Module      : Network.Google.Resource.DFAReporting.Reports.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a report by its ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.reports.get@.
module Network.Google.Resource.DFAReporting.Reports.Get
    (
    -- * REST Resource
      ReportsGetResource

    -- * Creating a Request
    , reportsGet
    , ReportsGet

    -- * Request Lenses
    , rgReportId
    , rgProFileId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.reports.get@ method which the
-- 'ReportsGet' request conforms to.
type ReportsGetResource =
     "dfareporting" :>
       "v3.2" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "reports" :>
               Capture "reportId" (Textual Int64) :>
                 QueryParam "alt" AltJSON :> Get '[JSON] Report

-- | Retrieves a report by its ID.
--
-- /See:/ 'reportsGet' smart constructor.
data ReportsGet = ReportsGet'
    { _rgReportId  :: !(Textual Int64)
    , _rgProFileId :: !(Textual Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgReportId'
--
-- * 'rgProFileId'
reportsGet
    :: Int64 -- ^ 'rgReportId'
    -> Int64 -- ^ 'rgProFileId'
    -> ReportsGet
reportsGet pRgReportId_ pRgProFileId_ =
    ReportsGet'
    { _rgReportId = _Coerce # pRgReportId_
    , _rgProFileId = _Coerce # pRgProFileId_
    }

-- | The ID of the report.
rgReportId :: Lens' ReportsGet Int64
rgReportId
  = lens _rgReportId (\ s a -> s{_rgReportId = a}) .
      _Coerce

-- | The DFA user profile ID.
rgProFileId :: Lens' ReportsGet Int64
rgProFileId
  = lens _rgProFileId (\ s a -> s{_rgProFileId = a}) .
      _Coerce

instance GoogleRequest ReportsGet where
        type Rs ReportsGet = Report
        type Scopes ReportsGet =
             '["https://www.googleapis.com/auth/dfareporting"]
        requestClient ReportsGet'{..}
          = go _rgProFileId _rgReportId (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy ReportsGetResource)
                      mempty
