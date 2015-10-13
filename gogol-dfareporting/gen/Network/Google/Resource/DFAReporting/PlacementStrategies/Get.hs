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
-- Module      : Network.Google.Resource.DFAReporting.PlacementStrategies.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one placement strategy by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingPlacementStrategiesGet@.
module Network.Google.Resource.DFAReporting.PlacementStrategies.Get
    (
    -- * REST Resource
      PlacementStrategiesGetResource

    -- * Creating a Request
    , placementStrategiesGet'
    , PlacementStrategiesGet'

    -- * Request Lenses
    , psgProFileId
    , psgId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingPlacementStrategiesGet@ method which the
-- 'PlacementStrategiesGet'' request conforms to.
type PlacementStrategiesGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "placementStrategies" :>
           Capture "id" Int64 :>
             QueryParam "alt" AltJSON :>
               Get '[JSON] PlacementStrategy

-- | Gets one placement strategy by ID.
--
-- /See:/ 'placementStrategiesGet'' smart constructor.
data PlacementStrategiesGet' = PlacementStrategiesGet'
    { _psgProFileId :: !Int64
    , _psgId        :: !Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementStrategiesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psgProFileId'
--
-- * 'psgId'
placementStrategiesGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> PlacementStrategiesGet'
placementStrategiesGet' pPsgProFileId_ pPsgId_ =
    PlacementStrategiesGet'
    { _psgProFileId = pPsgProFileId_
    , _psgId = pPsgId_
    }

-- | User profile ID associated with this request.
psgProFileId :: Lens' PlacementStrategiesGet' Int64
psgProFileId
  = lens _psgProFileId (\ s a -> s{_psgProFileId = a})

-- | Placement strategy ID.
psgId :: Lens' PlacementStrategiesGet' Int64
psgId = lens _psgId (\ s a -> s{_psgId = a})

instance GoogleRequest PlacementStrategiesGet' where
        type Rs PlacementStrategiesGet' = PlacementStrategy
        requestClient PlacementStrategiesGet'{..}
          = go _psgProFileId _psgId (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy PlacementStrategiesGetResource)
                      mempty
