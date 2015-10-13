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
-- Module      : Network.Google.Resource.DFAReporting.OperatingSystems.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of operating systems.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingOperatingSystemsList@.
module Network.Google.Resource.DFAReporting.OperatingSystems.List
    (
    -- * REST Resource
      OperatingSystemsListResource

    -- * Creating a Request
    , operatingSystemsList'
    , OperatingSystemsList'

    -- * Request Lenses
    , oslProFileId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingOperatingSystemsList@ method which the
-- 'OperatingSystemsList'' request conforms to.
type OperatingSystemsListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "operatingSystems" :>
           QueryParam "alt" AltJSON :>
             Get '[JSON] OperatingSystemsListResponse

-- | Retrieves a list of operating systems.
--
-- /See:/ 'operatingSystemsList'' smart constructor.
newtype OperatingSystemsList' = OperatingSystemsList'
    { _oslProFileId :: Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperatingSystemsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oslProFileId'
operatingSystemsList'
    :: Int64 -- ^ 'profileId'
    -> OperatingSystemsList'
operatingSystemsList' pOslProFileId_ =
    OperatingSystemsList'
    { _oslProFileId = pOslProFileId_
    }

-- | User profile ID associated with this request.
oslProFileId :: Lens' OperatingSystemsList' Int64
oslProFileId
  = lens _oslProFileId (\ s a -> s{_oslProFileId = a})

instance GoogleRequest OperatingSystemsList' where
        type Rs OperatingSystemsList' =
             OperatingSystemsListResponse
        requestClient OperatingSystemsList'{..}
          = go _oslProFileId (Just AltJSON) dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy OperatingSystemsListResource)
                      mempty
