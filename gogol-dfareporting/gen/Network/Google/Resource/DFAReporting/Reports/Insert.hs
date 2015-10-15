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
-- Module      : Network.Google.Resource.DFAReporting.Reports.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a report.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingReportsInsert@.
module Network.Google.Resource.DFAReporting.Reports.Insert
    (
    -- * REST Resource
      ReportsInsertResource

    -- * Creating a Request
    , reportsInsert'
    , ReportsInsert'

    -- * Request Lenses
    , riProFileId
    , riPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingReportsInsert@ method which the
-- 'ReportsInsert'' request conforms to.
type ReportsInsertResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "reports" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] Report :> Post '[JSON] Report

-- | Creates a report.
--
-- /See:/ 'reportsInsert'' smart constructor.
data ReportsInsert' = ReportsInsert'
    { _riProFileId :: !Int64
    , _riPayload   :: !Report
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riProFileId'
--
-- * 'riPayload'
reportsInsert'
    :: Int64 -- ^ 'profileId'
    -> Report -- ^ 'payload'
    -> ReportsInsert'
reportsInsert' pRiProFileId_ pRiPayload_ =
    ReportsInsert'
    { _riProFileId = pRiProFileId_
    , _riPayload = pRiPayload_
    }

-- | The DFA user profile ID.
riProFileId :: Lens' ReportsInsert' Int64
riProFileId
  = lens _riProFileId (\ s a -> s{_riProFileId = a})

-- | Multipart request metadata.
riPayload :: Lens' ReportsInsert' Report
riPayload
  = lens _riPayload (\ s a -> s{_riPayload = a})

instance GoogleRequest ReportsInsert' where
        type Rs ReportsInsert' = Report
        requestClient ReportsInsert'{..}
          = go _riProFileId (Just AltJSON) _riPayload
              dFAReporting
          where go
                  = buildClient (Proxy :: Proxy ReportsInsertResource)
                      mempty
