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
-- Module      : Network.Google.Resource.DFAReporting.PlacementStrategies.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes an existing placement strategy.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingPlacementStrategiesDelete@.
module Network.Google.Resource.DFAReporting.PlacementStrategies.Delete
    (
    -- * REST Resource
      PlacementStrategiesDeleteResource

    -- * Creating a Request
    , placementStrategiesDelete'
    , PlacementStrategiesDelete'

    -- * Request Lenses
    , psdProFileId
    , psdId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingPlacementStrategiesDelete@ method which the
-- 'PlacementStrategiesDelete'' request conforms to.
type PlacementStrategiesDeleteResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "placementStrategies" :>
           Capture "id" Int64 :>
             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes an existing placement strategy.
--
-- /See:/ 'placementStrategiesDelete'' smart constructor.
data PlacementStrategiesDelete' = PlacementStrategiesDelete'
    { _psdProFileId :: !Int64
    , _psdId        :: !Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementStrategiesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psdProFileId'
--
-- * 'psdId'
placementStrategiesDelete'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> PlacementStrategiesDelete'
placementStrategiesDelete' pPsdProFileId_ pPsdId_ =
    PlacementStrategiesDelete'
    { _psdProFileId = pPsdProFileId_
    , _psdId = pPsdId_
    }

-- | User profile ID associated with this request.
psdProFileId :: Lens' PlacementStrategiesDelete' Int64
psdProFileId
  = lens _psdProFileId (\ s a -> s{_psdProFileId = a})

-- | Placement strategy ID.
psdId :: Lens' PlacementStrategiesDelete' Int64
psdId = lens _psdId (\ s a -> s{_psdId = a})

instance GoogleRequest PlacementStrategiesDelete'
         where
        type Rs PlacementStrategiesDelete' = ()
        requestClient PlacementStrategiesDelete'{..}
          = go _psdProFileId _psdId (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy PlacementStrategiesDeleteResource)
                      mempty
