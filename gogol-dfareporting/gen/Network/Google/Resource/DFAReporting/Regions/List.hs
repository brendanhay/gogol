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
-- Retrieves a list of regions.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.regions.list@.
module Network.Google.Resource.DFAReporting.Regions.List
    (
    -- * REST Resource
      RegionsListResource

    -- * Creating a Request
    , regionsList
    , RegionsList

    -- * Request Lenses
    , rProFileId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.regions.list@ method which the
-- 'RegionsList' request conforms to.
type RegionsListResource =
     "dfareporting" :>
       "v2.2" :>
         "userprofiles" :>
           Capture "profileId" (JSONText Int64) :>
             "regions" :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] RegionsListResponse

-- | Retrieves a list of regions.
--
-- /See:/ 'regionsList' smart constructor.
newtype RegionsList = RegionsList
    { _rProFileId :: JSONText Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rProFileId'
regionsList
    :: Int64 -- ^ 'rProFileId'
    -> RegionsList
regionsList pRProFileId_ =
    RegionsList
    { _rProFileId = pRProFileId_
    }

-- | User profile ID associated with this request.
rProFileId :: Lens' RegionsList Int64
rProFileId
  = lens _rProFileId (\ s a -> s{_rProFileId = a}) .
      _Coerce

instance GoogleRequest RegionsList where
        type Rs RegionsList = RegionsListResponse
        requestClient RegionsList{..}
          = go _rProFileId (Just AltJSON) dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy RegionsListResource)
                      mempty
