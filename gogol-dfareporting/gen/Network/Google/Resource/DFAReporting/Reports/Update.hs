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
-- Module      : Network.Google.Resource.DFAReporting.Reports.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a report.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.reports.update@.
module Network.Google.Resource.DFAReporting.Reports.Update
    (
    -- * REST Resource
      ReportsUpdateResource

    -- * Creating a Request
    , reportsUpdate
    , ReportsUpdate

    -- * Request Lenses
    , ruReportId
    , ruProFileId
    , ruPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.reports.update@ method which the
-- 'ReportsUpdate' request conforms to.
type ReportsUpdateResource =
     "dfareporting" :>
       "v2.4" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "reports" :>
               Capture "reportId" (Textual Int64) :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] Report :> Put '[JSON] Report

-- | Updates a report.
--
-- /See:/ 'reportsUpdate' smart constructor.
data ReportsUpdate = ReportsUpdate'
    { _ruReportId  :: !(Textual Int64)
    , _ruProFileId :: !(Textual Int64)
    , _ruPayload   :: !Report
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ruReportId'
--
-- * 'ruProFileId'
--
-- * 'ruPayload'
reportsUpdate
    :: Int64 -- ^ 'ruReportId'
    -> Int64 -- ^ 'ruProFileId'
    -> Report -- ^ 'ruPayload'
    -> ReportsUpdate
reportsUpdate pRuReportId_ pRuProFileId_ pRuPayload_ =
    ReportsUpdate'
    { _ruReportId = _Coerce # pRuReportId_
    , _ruProFileId = _Coerce # pRuProFileId_
    , _ruPayload = pRuPayload_
    }

-- | The ID of the report.
ruReportId :: Lens' ReportsUpdate Int64
ruReportId
  = lens _ruReportId (\ s a -> s{_ruReportId = a}) .
      _Coerce

-- | The DFA user profile ID.
ruProFileId :: Lens' ReportsUpdate Int64
ruProFileId
  = lens _ruProFileId (\ s a -> s{_ruProFileId = a}) .
      _Coerce

-- | Multipart request metadata.
ruPayload :: Lens' ReportsUpdate Report
ruPayload
  = lens _ruPayload (\ s a -> s{_ruPayload = a})

instance GoogleRequest ReportsUpdate where
        type Rs ReportsUpdate = Report
        type Scopes ReportsUpdate =
             '["https://www.googleapis.com/auth/dfareporting"]
        requestClient ReportsUpdate'{..}
          = go _ruProFileId _ruReportId (Just AltJSON)
              _ruPayload
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy ReportsUpdateResource)
                      mempty
