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
-- Module      : Network.Google.Resource.DFAReporting.Placements.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new placement.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.placements.insert@.
module Network.Google.Resource.DFAReporting.Placements.Insert
    (
    -- * REST Resource
      PlacementsInsertResource

    -- * Creating a Request
    , placementsInsert'
    , PlacementsInsert'

    -- * Request Lenses
    , piProFileId
    , piPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.placements.insert@ method which the
-- 'PlacementsInsert'' request conforms to.
type PlacementsInsertResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "placements" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] Placement :> Post '[JSON] Placement

-- | Inserts a new placement.
--
-- /See:/ 'placementsInsert'' smart constructor.
data PlacementsInsert' = PlacementsInsert'
    { _piProFileId :: !Int64
    , _piPayload   :: !Placement
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piProFileId'
--
-- * 'piPayload'
placementsInsert'
    :: Int64 -- ^ 'piProFileId'
    -> Placement -- ^ 'piPayload'
    -> PlacementsInsert'
placementsInsert' pPiProFileId_ pPiPayload_ =
    PlacementsInsert'
    { _piProFileId = pPiProFileId_
    , _piPayload = pPiPayload_
    }

-- | User profile ID associated with this request.
piProFileId :: Lens' PlacementsInsert' Int64
piProFileId
  = lens _piProFileId (\ s a -> s{_piProFileId = a})

-- | Multipart request metadata.
piPayload :: Lens' PlacementsInsert' Placement
piPayload
  = lens _piPayload (\ s a -> s{_piPayload = a})

instance GoogleRequest PlacementsInsert' where
        type Rs PlacementsInsert' = Placement
        requestClient PlacementsInsert'{..}
          = go _piProFileId (Just AltJSON) _piPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy PlacementsInsertResource)
                      mempty
