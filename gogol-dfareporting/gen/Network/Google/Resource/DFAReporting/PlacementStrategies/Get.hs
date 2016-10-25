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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one placement strategy by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.placementStrategies.get@.
module Network.Google.Resource.DFAReporting.PlacementStrategies.Get
    (
    -- * REST Resource
      PlacementStrategiesGetResource

    -- * Creating a Request
    , placementStrategiesGet
    , PlacementStrategiesGet

    -- * Request Lenses
    , psgProFileId
    , psgId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.placementStrategies.get@ method which the
-- 'PlacementStrategiesGet' request conforms to.
type PlacementStrategiesGetResource =
     "dfareporting" :>
       "v2.6" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "placementStrategies" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] PlacementStrategy

-- | Gets one placement strategy by ID.
--
-- /See:/ 'placementStrategiesGet' smart constructor.
data PlacementStrategiesGet = PlacementStrategiesGet'
    { _psgProFileId :: !(Textual Int64)
    , _psgId        :: !(Textual Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementStrategiesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psgProFileId'
--
-- * 'psgId'
placementStrategiesGet
    :: Int64 -- ^ 'psgProFileId'
    -> Int64 -- ^ 'psgId'
    -> PlacementStrategiesGet
placementStrategiesGet pPsgProFileId_ pPsgId_ =
    PlacementStrategiesGet'
    { _psgProFileId = _Coerce # pPsgProFileId_
    , _psgId = _Coerce # pPsgId_
    }

-- | User profile ID associated with this request.
psgProFileId :: Lens' PlacementStrategiesGet Int64
psgProFileId
  = lens _psgProFileId (\ s a -> s{_psgProFileId = a})
      . _Coerce

-- | Placement strategy ID.
psgId :: Lens' PlacementStrategiesGet Int64
psgId
  = lens _psgId (\ s a -> s{_psgId = a}) . _Coerce

instance GoogleRequest PlacementStrategiesGet where
        type Rs PlacementStrategiesGet = PlacementStrategy
        type Scopes PlacementStrategiesGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient PlacementStrategiesGet'{..}
          = go _psgProFileId _psgId (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy PlacementStrategiesGetResource)
                      mempty
