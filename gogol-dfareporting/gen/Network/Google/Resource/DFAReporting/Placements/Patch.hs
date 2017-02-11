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
-- Module      : Network.Google.Resource.DFAReporting.Placements.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing placement. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.placements.patch@.
module Network.Google.Resource.DFAReporting.Placements.Patch
    (
    -- * REST Resource
      PlacementsPatchResource

    -- * Creating a Request
    , placementsPatch
    , PlacementsPatch

    -- * Request Lenses
    , ppProFileId
    , ppPayload
    , ppId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.placements.patch@ method which the
-- 'PlacementsPatch' request conforms to.
type PlacementsPatchResource =
     "dfareporting" :>
       "v2.7" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "placements" :>
               QueryParam "id" (Textual Int64) :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] Placement :> Patch '[JSON] Placement

-- | Updates an existing placement. This method supports patch semantics.
--
-- /See:/ 'placementsPatch' smart constructor.
data PlacementsPatch = PlacementsPatch'
    { _ppProFileId :: !(Textual Int64)
    , _ppPayload   :: !Placement
    , _ppId        :: !(Textual Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppProFileId'
--
-- * 'ppPayload'
--
-- * 'ppId'
placementsPatch
    :: Int64 -- ^ 'ppProFileId'
    -> Placement -- ^ 'ppPayload'
    -> Int64 -- ^ 'ppId'
    -> PlacementsPatch
placementsPatch pPpProFileId_ pPpPayload_ pPpId_ =
    PlacementsPatch'
    { _ppProFileId = _Coerce # pPpProFileId_
    , _ppPayload = pPpPayload_
    , _ppId = _Coerce # pPpId_
    }

-- | User profile ID associated with this request.
ppProFileId :: Lens' PlacementsPatch Int64
ppProFileId
  = lens _ppProFileId (\ s a -> s{_ppProFileId = a}) .
      _Coerce

-- | Multipart request metadata.
ppPayload :: Lens' PlacementsPatch Placement
ppPayload
  = lens _ppPayload (\ s a -> s{_ppPayload = a})

-- | Placement ID.
ppId :: Lens' PlacementsPatch Int64
ppId = lens _ppId (\ s a -> s{_ppId = a}) . _Coerce

instance GoogleRequest PlacementsPatch where
        type Rs PlacementsPatch = Placement
        type Scopes PlacementsPatch =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient PlacementsPatch'{..}
          = go _ppProFileId (Just _ppId) (Just AltJSON)
              _ppPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy PlacementsPatchResource)
                      mempty
