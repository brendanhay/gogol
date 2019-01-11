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
-- Module      : Network.Google.Resource.DFAReporting.Placements.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing placement.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.placements.update@.
module Network.Google.Resource.DFAReporting.Placements.Update
    (
    -- * REST Resource
      PlacementsUpdateResource

    -- * Creating a Request
    , placementsUpdate
    , PlacementsUpdate

    -- * Request Lenses
    , puProFileId
    , puPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.placements.update@ method which the
-- 'PlacementsUpdate' request conforms to.
type PlacementsUpdateResource =
     "dfareporting" :>
       "v3.2" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "placements" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] Placement :> Put '[JSON] Placement

-- | Updates an existing placement.
--
-- /See:/ 'placementsUpdate' smart constructor.
data PlacementsUpdate = PlacementsUpdate'
    { _puProFileId :: !(Textual Int64)
    , _puPayload   :: !Placement
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puProFileId'
--
-- * 'puPayload'
placementsUpdate
    :: Int64 -- ^ 'puProFileId'
    -> Placement -- ^ 'puPayload'
    -> PlacementsUpdate
placementsUpdate pPuProFileId_ pPuPayload_ =
    PlacementsUpdate'
    { _puProFileId = _Coerce # pPuProFileId_
    , _puPayload = pPuPayload_
    }

-- | User profile ID associated with this request.
puProFileId :: Lens' PlacementsUpdate Int64
puProFileId
  = lens _puProFileId (\ s a -> s{_puProFileId = a}) .
      _Coerce

-- | Multipart request metadata.
puPayload :: Lens' PlacementsUpdate Placement
puPayload
  = lens _puPayload (\ s a -> s{_puPayload = a})

instance GoogleRequest PlacementsUpdate where
        type Rs PlacementsUpdate = Placement
        type Scopes PlacementsUpdate =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient PlacementsUpdate'{..}
          = go _puProFileId (Just AltJSON) _puPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy PlacementsUpdateResource)
                      mempty
