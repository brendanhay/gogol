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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing placement strategy.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.placementStrategies.delete@.
module Network.Google.Resource.DFAReporting.PlacementStrategies.Delete
    (
    -- * REST Resource
      PlacementStrategiesDeleteResource

    -- * Creating a Request
    , placementStrategiesDelete
    , PlacementStrategiesDelete

    -- * Request Lenses
    , psdProFileId
    , psdId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.placementStrategies.delete@ method which the
-- 'PlacementStrategiesDelete' request conforms to.
type PlacementStrategiesDeleteResource =
     "dfareporting" :>
       "v2.6" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "placementStrategies" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes an existing placement strategy.
--
-- /See:/ 'placementStrategiesDelete' smart constructor.
data PlacementStrategiesDelete = PlacementStrategiesDelete'
    { _psdProFileId :: !(Textual Int64)
    , _psdId        :: !(Textual Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementStrategiesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psdProFileId'
--
-- * 'psdId'
placementStrategiesDelete
    :: Int64 -- ^ 'psdProFileId'
    -> Int64 -- ^ 'psdId'
    -> PlacementStrategiesDelete
placementStrategiesDelete pPsdProFileId_ pPsdId_ =
    PlacementStrategiesDelete'
    { _psdProFileId = _Coerce # pPsdProFileId_
    , _psdId = _Coerce # pPsdId_
    }

-- | User profile ID associated with this request.
psdProFileId :: Lens' PlacementStrategiesDelete Int64
psdProFileId
  = lens _psdProFileId (\ s a -> s{_psdProFileId = a})
      . _Coerce

-- | Placement strategy ID.
psdId :: Lens' PlacementStrategiesDelete Int64
psdId
  = lens _psdId (\ s a -> s{_psdId = a}) . _Coerce

instance GoogleRequest PlacementStrategiesDelete
         where
        type Rs PlacementStrategiesDelete = ()
        type Scopes PlacementStrategiesDelete =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient PlacementStrategiesDelete'{..}
          = go _psdProFileId _psdId (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy PlacementStrategiesDeleteResource)
                      mempty
