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
-- Module      : Network.Google.Resource.DFAReporting.Reports.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a report by its ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.reports.delete@.
module Network.Google.Resource.DFAReporting.Reports.Delete
    (
    -- * REST Resource
      ReportsDeleteResource

    -- * Creating a Request
    , reportsDelete
    , ReportsDelete

    -- * Request Lenses
    , rdReportId
    , rdProFileId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.reports.delete@ method which the
-- 'ReportsDelete' request conforms to.
type ReportsDeleteResource =
     "dfareporting" :>
       "v2.2" :>
         "userprofiles" :>
           Capture "profileId" (JSONText Int64) :>
             "reports" :>
               Capture "reportId" (JSONText Int64) :>
                 QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a report by its ID.
--
-- /See:/ 'reportsDelete' smart constructor.
data ReportsDelete = ReportsDelete
    { _rdReportId  :: !(JSONText Int64)
    , _rdProFileId :: !(JSONText Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdReportId'
--
-- * 'rdProFileId'
reportsDelete
    :: Int64 -- ^ 'rdReportId'
    -> Int64 -- ^ 'rdProFileId'
    -> ReportsDelete
reportsDelete pRdReportId_ pRdProFileId_ =
    ReportsDelete
    { _rdReportId = pRdReportId_
    , _rdProFileId = pRdProFileId_
    }

-- | The ID of the report.
rdReportId :: Lens' ReportsDelete Int64
rdReportId
  = lens _rdReportId (\ s a -> s{_rdReportId = a}) .
      _Coerce

-- | The DFA user profile ID.
rdProFileId :: Lens' ReportsDelete Int64
rdProFileId
  = lens _rdProFileId (\ s a -> s{_rdProFileId = a}) .
      _Coerce

instance GoogleRequest ReportsDelete where
        type Rs ReportsDelete = ()
        requestClient ReportsDelete{..}
          = go _rdProFileId _rdReportId (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy ReportsDeleteResource)
                      mempty
