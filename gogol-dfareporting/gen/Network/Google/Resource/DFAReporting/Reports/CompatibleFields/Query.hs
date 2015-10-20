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
-- Module      : Network.Google.Resource.DFAReporting.Reports.CompatibleFields.Query
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the fields that are compatible to be selected in the respective
-- sections of a report criteria, given the fields already selected in the
-- input report and user permissions.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.reports.compatibleFields.query@.
module Network.Google.Resource.DFAReporting.Reports.CompatibleFields.Query
    (
    -- * REST Resource
      ReportsCompatibleFieldsQueryResource

    -- * Creating a Request
    , reportsCompatibleFieldsQuery
    , ReportsCompatibleFieldsQuery

    -- * Request Lenses
    , rcfqProFileId
    , rcfqPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.reports.compatibleFields.query@ method which the
-- 'ReportsCompatibleFieldsQuery' request conforms to.
type ReportsCompatibleFieldsQueryResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "reports" :>
           "compatiblefields" :>
             "query" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] Report :>
                   Post '[JSON] CompatibleFields

-- | Returns the fields that are compatible to be selected in the respective
-- sections of a report criteria, given the fields already selected in the
-- input report and user permissions.
--
-- /See:/ 'reportsCompatibleFieldsQuery' smart constructor.
data ReportsCompatibleFieldsQuery = ReportsCompatibleFieldsQuery
    { _rcfqProFileId :: !Int64
    , _rcfqPayload   :: !Report
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportsCompatibleFieldsQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcfqProFileId'
--
-- * 'rcfqPayload'
reportsCompatibleFieldsQuery
    :: Int64 -- ^ 'rcfqProFileId'
    -> Report -- ^ 'rcfqPayload'
    -> ReportsCompatibleFieldsQuery
reportsCompatibleFieldsQuery pRcfqProFileId_ pRcfqPayload_ =
    ReportsCompatibleFieldsQuery
    { _rcfqProFileId = pRcfqProFileId_
    , _rcfqPayload = pRcfqPayload_
    }

-- | The DFA user profile ID.
rcfqProFileId :: Lens' ReportsCompatibleFieldsQuery Int64
rcfqProFileId
  = lens _rcfqProFileId
      (\ s a -> s{_rcfqProFileId = a})

-- | Multipart request metadata.
rcfqPayload :: Lens' ReportsCompatibleFieldsQuery Report
rcfqPayload
  = lens _rcfqPayload (\ s a -> s{_rcfqPayload = a})

instance GoogleRequest ReportsCompatibleFieldsQuery
         where
        type Rs ReportsCompatibleFieldsQuery =
             CompatibleFields
        requestClient ReportsCompatibleFieldsQuery{..}
          = go _rcfqProFileId (Just AltJSON) _rcfqPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy ReportsCompatibleFieldsQueryResource)
                      mempty
