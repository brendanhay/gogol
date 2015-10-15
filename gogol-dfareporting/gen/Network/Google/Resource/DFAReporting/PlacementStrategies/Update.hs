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
-- Module      : Network.Google.Resource.DFAReporting.PlacementStrategies.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing placement strategy.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingPlacementStrategiesUpdate@.
module Network.Google.Resource.DFAReporting.PlacementStrategies.Update
    (
    -- * REST Resource
      PlacementStrategiesUpdateResource

    -- * Creating a Request
    , placementStrategiesUpdate'
    , PlacementStrategiesUpdate'

    -- * Request Lenses
    , psuProFileId
    , psuPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingPlacementStrategiesUpdate@ method which the
-- 'PlacementStrategiesUpdate'' request conforms to.
type PlacementStrategiesUpdateResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "placementStrategies" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] PlacementStrategy :>
               Put '[JSON] PlacementStrategy

-- | Updates an existing placement strategy.
--
-- /See:/ 'placementStrategiesUpdate'' smart constructor.
data PlacementStrategiesUpdate' = PlacementStrategiesUpdate'
    { _psuProFileId :: !Int64
    , _psuPayload   :: !PlacementStrategy
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementStrategiesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psuProFileId'
--
-- * 'psuPayload'
placementStrategiesUpdate'
    :: Int64 -- ^ 'profileId'
    -> PlacementStrategy -- ^ 'payload'
    -> PlacementStrategiesUpdate'
placementStrategiesUpdate' pPsuProFileId_ pPsuPayload_ =
    PlacementStrategiesUpdate'
    { _psuProFileId = pPsuProFileId_
    , _psuPayload = pPsuPayload_
    }

-- | User profile ID associated with this request.
psuProFileId :: Lens' PlacementStrategiesUpdate' Int64
psuProFileId
  = lens _psuProFileId (\ s a -> s{_psuProFileId = a})

-- | Multipart request metadata.
psuPayload :: Lens' PlacementStrategiesUpdate' PlacementStrategy
psuPayload
  = lens _psuPayload (\ s a -> s{_psuPayload = a})

instance GoogleRequest PlacementStrategiesUpdate'
         where
        type Rs PlacementStrategiesUpdate' =
             PlacementStrategy
        requestClient PlacementStrategiesUpdate'{..}
          = go _psuProFileId (Just AltJSON) _psuPayload
              dFAReporting
          where go
                  = buildClient
                      (Proxy :: Proxy PlacementStrategiesUpdateResource)
                      mempty
