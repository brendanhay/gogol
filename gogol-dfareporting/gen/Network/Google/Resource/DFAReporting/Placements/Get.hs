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
-- Module      : Network.Google.Resource.DFAReporting.Placements.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one placement by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.placements.get@.
module Network.Google.Resource.DFAReporting.Placements.Get
    (
    -- * REST Resource
      PlacementsGetResource

    -- * Creating a Request
    , placementsGet
    , PlacementsGet

    -- * Request Lenses
    , pgProFileId
    , pgId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.placements.get@ method which the
-- 'PlacementsGet' request conforms to.
type PlacementsGetResource =
     "dfareporting" :>
       "v2.2" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "placements" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "alt" AltJSON :> Get '[JSON] Placement

-- | Gets one placement by ID.
--
-- /See:/ 'placementsGet' smart constructor.
data PlacementsGet = PlacementsGet
    { _pgProFileId :: !(Textual Int64)
    , _pgId        :: !(Textual Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgProFileId'
--
-- * 'pgId'
placementsGet
    :: Int64 -- ^ 'pgProFileId'
    -> Int64 -- ^ 'pgId'
    -> PlacementsGet
placementsGet pPgProFileId_ pPgId_ =
    PlacementsGet
    { _pgProFileId = _Coerce # pPgProFileId_
    , _pgId = _Coerce # pPgId_
    }

-- | User profile ID associated with this request.
pgProFileId :: Lens' PlacementsGet Int64
pgProFileId
  = lens _pgProFileId (\ s a -> s{_pgProFileId = a}) .
      _Coerce

-- | Placement ID.
pgId :: Lens' PlacementsGet Int64
pgId = lens _pgId (\ s a -> s{_pgId = a}) . _Coerce

instance GoogleRequest PlacementsGet where
        type Rs PlacementsGet = Placement
        requestClient PlacementsGet{..}
          = go _pgProFileId _pgId (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy PlacementsGetResource)
                      mempty
