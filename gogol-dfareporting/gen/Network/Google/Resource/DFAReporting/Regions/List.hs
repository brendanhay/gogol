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
-- Module      : Network.Google.Resource.DFAReporting.Regions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of regions.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingRegionsList@.
module Network.Google.Resource.DFAReporting.Regions.List
    (
    -- * REST Resource
      RegionsListResource

    -- * Creating a Request
    , regionsList'
    , RegionsList'

    -- * Request Lenses
    , rlProFileId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingRegionsList@ method which the
-- 'RegionsList'' request conforms to.
type RegionsListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "regions" :>
           QueryParam "alt" AltJSON :>
             Get '[JSON] RegionsListResponse

-- | Retrieves a list of regions.
--
-- /See:/ 'regionsList'' smart constructor.
newtype RegionsList' = RegionsList'
    { _rlProFileId :: Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlProFileId'
regionsList'
    :: Int64 -- ^ 'profileId'
    -> RegionsList'
regionsList' pRlProFileId_ =
    RegionsList'
    { _rlProFileId = pRlProFileId_
    }

-- | User profile ID associated with this request.
rlProFileId :: Lens' RegionsList' Int64
rlProFileId
  = lens _rlProFileId (\ s a -> s{_rlProFileId = a})

instance GoogleRequest RegionsList' where
        type Rs RegionsList' = RegionsListResponse
        requestClient RegionsList'{..}
          = go _rlProFileId (Just AltJSON) dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy RegionsListResource)
                      mempty
