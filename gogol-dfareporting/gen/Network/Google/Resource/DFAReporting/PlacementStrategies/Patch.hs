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
-- Module      : Network.Google.Resource.DFAReporting.PlacementStrategies.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing placement strategy. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.placementStrategies.patch@.
module Network.Google.Resource.DFAReporting.PlacementStrategies.Patch
    (
    -- * REST Resource
      PlacementStrategiesPatchResource

    -- * Creating a Request
    , placementStrategiesPatch
    , PlacementStrategiesPatch

    -- * Request Lenses
    , pspProFileId
    , pspPayload
    , pspId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.placementStrategies.patch@ method which the
-- 'PlacementStrategiesPatch' request conforms to.
type PlacementStrategiesPatchResource =
     "dfareporting" :>
       "v2.4" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "placementStrategies" :>
               QueryParam "id" (Textual Int64) :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] PlacementStrategy :>
                     Patch '[JSON] PlacementStrategy

-- | Updates an existing placement strategy. This method supports patch
-- semantics.
--
-- /See:/ 'placementStrategiesPatch' smart constructor.
data PlacementStrategiesPatch = PlacementStrategiesPatch
    { _pspProFileId :: !(Textual Int64)
    , _pspPayload   :: !PlacementStrategy
    , _pspId        :: !(Textual Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementStrategiesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pspProFileId'
--
-- * 'pspPayload'
--
-- * 'pspId'
placementStrategiesPatch
    :: Int64 -- ^ 'pspProFileId'
    -> PlacementStrategy -- ^ 'pspPayload'
    -> Int64 -- ^ 'pspId'
    -> PlacementStrategiesPatch
placementStrategiesPatch pPspProFileId_ pPspPayload_ pPspId_ =
    PlacementStrategiesPatch
    { _pspProFileId = _Coerce # pPspProFileId_
    , _pspPayload = pPspPayload_
    , _pspId = _Coerce # pPspId_
    }

-- | User profile ID associated with this request.
pspProFileId :: Lens' PlacementStrategiesPatch Int64
pspProFileId
  = lens _pspProFileId (\ s a -> s{_pspProFileId = a})
      . _Coerce

-- | Multipart request metadata.
pspPayload :: Lens' PlacementStrategiesPatch PlacementStrategy
pspPayload
  = lens _pspPayload (\ s a -> s{_pspPayload = a})

-- | Placement strategy ID.
pspId :: Lens' PlacementStrategiesPatch Int64
pspId
  = lens _pspId (\ s a -> s{_pspId = a}) . _Coerce

instance GoogleRequest PlacementStrategiesPatch where
        type Rs PlacementStrategiesPatch = PlacementStrategy
        type Scopes PlacementStrategiesPatch =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient PlacementStrategiesPatch{..}
          = go _pspProFileId (Just _pspId) (Just AltJSON)
              _pspPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy PlacementStrategiesPatchResource)
                      mempty
