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
-- Module      : Network.Google.Resource.DFAReporting.ChangeLogs.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one change log by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingChangeLogsGet@.
module Network.Google.Resource.DFAReporting.ChangeLogs.Get
    (
    -- * REST Resource
      ChangeLogsGetResource

    -- * Creating a Request
    , changeLogsGet'
    , ChangeLogsGet'

    -- * Request Lenses
    , clgProFileId
    , clgId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingChangeLogsGet@ method which the
-- 'ChangeLogsGet'' request conforms to.
type ChangeLogsGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "changeLogs" :>
           Capture "id" Int64 :>
             QueryParam "alt" AltJSON :> Get '[JSON] ChangeLog

-- | Gets one change log by ID.
--
-- /See:/ 'changeLogsGet'' smart constructor.
data ChangeLogsGet' = ChangeLogsGet'
    { _clgProFileId :: !Int64
    , _clgId        :: !Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChangeLogsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clgProFileId'
--
-- * 'clgId'
changeLogsGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> ChangeLogsGet'
changeLogsGet' pClgProFileId_ pClgId_ =
    ChangeLogsGet'
    { _clgProFileId = pClgProFileId_
    , _clgId = pClgId_
    }

-- | User profile ID associated with this request.
clgProFileId :: Lens' ChangeLogsGet' Int64
clgProFileId
  = lens _clgProFileId (\ s a -> s{_clgProFileId = a})

-- | Change log ID.
clgId :: Lens' ChangeLogsGet' Int64
clgId = lens _clgId (\ s a -> s{_clgId = a})

instance GoogleRequest ChangeLogsGet' where
        type Rs ChangeLogsGet' = ChangeLog
        requestClient ChangeLogsGet'{..}
          = go _clgProFileId _clgId (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy ChangeLogsGetResource)
                      mempty
