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
-- Module      : Network.Google.Resource.DFAReporting.Reports.Run
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Runs a report.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.reports.run@.
module Network.Google.Resource.DFAReporting.Reports.Run
    (
    -- * REST Resource
      ReportsRunResource

    -- * Creating a Request
    , reportsRun
    , ReportsRun

    -- * Request Lenses
    , rrSynchronous
    , rrReportId
    , rrProFileId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.reports.run@ method which the
-- 'ReportsRun' request conforms to.
type ReportsRunResource =
     "dfareporting" :>
       "v3.3" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "reports" :>
               Capture "reportId" (Textual Int64) :>
                 "run" :>
                   QueryParam "synchronous" Bool :>
                     QueryParam "alt" AltJSON :> Post '[JSON] File

-- | Runs a report.
--
-- /See:/ 'reportsRun' smart constructor.
data ReportsRun =
  ReportsRun'
    { _rrSynchronous :: !Bool
    , _rrReportId    :: !(Textual Int64)
    , _rrProFileId   :: !(Textual Int64)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ReportsRun' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrSynchronous'
--
-- * 'rrReportId'
--
-- * 'rrProFileId'
reportsRun
    :: Int64 -- ^ 'rrReportId'
    -> Int64 -- ^ 'rrProFileId'
    -> ReportsRun
reportsRun pRrReportId_ pRrProFileId_ =
  ReportsRun'
    { _rrSynchronous = False
    , _rrReportId = _Coerce # pRrReportId_
    , _rrProFileId = _Coerce # pRrProFileId_
    }

-- | If set and true, tries to run the report synchronously.
rrSynchronous :: Lens' ReportsRun Bool
rrSynchronous
  = lens _rrSynchronous
      (\ s a -> s{_rrSynchronous = a})

-- | The ID of the report.
rrReportId :: Lens' ReportsRun Int64
rrReportId
  = lens _rrReportId (\ s a -> s{_rrReportId = a}) .
      _Coerce

-- | The DFA profile ID.
rrProFileId :: Lens' ReportsRun Int64
rrProFileId
  = lens _rrProFileId (\ s a -> s{_rrProFileId = a}) .
      _Coerce

instance GoogleRequest ReportsRun where
        type Rs ReportsRun = File
        type Scopes ReportsRun =
             '["https://www.googleapis.com/auth/dfareporting"]
        requestClient ReportsRun'{..}
          = go _rrProFileId _rrReportId (Just _rrSynchronous)
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy ReportsRunResource)
                      mempty
