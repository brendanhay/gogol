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
-- Module      : Network.Google.Resource.DFAReporting.Reports.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a report. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingReportsPatch@.
module Network.Google.Resource.DFAReporting.Reports.Patch
    (
    -- * REST Resource
      ReportsPatchResource

    -- * Creating a Request
    , reportsPatch'
    , ReportsPatch'

    -- * Request Lenses
    , rpReportId
    , rpProFileId
    , rpPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingReportsPatch@ method which the
-- 'ReportsPatch'' request conforms to.
type ReportsPatchResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "reports" :>
           Capture "reportId" Int64 :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] Report :> Patch '[JSON] Report

-- | Updates a report. This method supports patch semantics.
--
-- /See:/ 'reportsPatch'' smart constructor.
data ReportsPatch' = ReportsPatch'
    { _rpReportId  :: !Int64
    , _rpProFileId :: !Int64
    , _rpPayload   :: !Report
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpReportId'
--
-- * 'rpProFileId'
--
-- * 'rpPayload'
reportsPatch'
    :: Int64 -- ^ 'reportId'
    -> Int64 -- ^ 'profileId'
    -> Report -- ^ 'payload'
    -> ReportsPatch'
reportsPatch' pRpReportId_ pRpProFileId_ pRpPayload_ =
    ReportsPatch'
    { _rpReportId = pRpReportId_
    , _rpProFileId = pRpProFileId_
    , _rpPayload = pRpPayload_
    }

-- | The ID of the report.
rpReportId :: Lens' ReportsPatch' Int64
rpReportId
  = lens _rpReportId (\ s a -> s{_rpReportId = a})

-- | The DFA user profile ID.
rpProFileId :: Lens' ReportsPatch' Int64
rpProFileId
  = lens _rpProFileId (\ s a -> s{_rpProFileId = a})

-- | Multipart request metadata.
rpPayload :: Lens' ReportsPatch' Report
rpPayload
  = lens _rpPayload (\ s a -> s{_rpPayload = a})

instance GoogleRequest ReportsPatch' where
        type Rs ReportsPatch' = Report
        requestClient ReportsPatch'{..}
          = go _rpProFileId _rpReportId (Just AltJSON)
              _rpPayload
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy ReportsPatchResource)
                      mempty
