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
-- Module      : Network.Google.Resource.DFAReporting.FloodlightActivityGroups.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one floodlight activity group by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.floodlightActivityGroups.get@.
module Network.Google.Resource.DFAReporting.FloodlightActivityGroups.Get
    (
    -- * REST Resource
      FloodlightActivityGroupsGetResource

    -- * Creating a Request
    , floodlightActivityGroupsGet
    , FloodlightActivityGroupsGet

    -- * Request Lenses
    , faggProFileId
    , faggId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.floodlightActivityGroups.get@ method which the
-- 'FloodlightActivityGroupsGet' request conforms to.
type FloodlightActivityGroupsGetResource =
     "dfareporting" :>
       "v2.4" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "floodlightActivityGroups" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] FloodlightActivityGroup

-- | Gets one floodlight activity group by ID.
--
-- /See:/ 'floodlightActivityGroupsGet' smart constructor.
data FloodlightActivityGroupsGet = FloodlightActivityGroupsGet
    { _faggProFileId :: !(Textual Int64)
    , _faggId        :: !(Textual Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightActivityGroupsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'faggProFileId'
--
-- * 'faggId'
floodlightActivityGroupsGet
    :: Int64 -- ^ 'faggProFileId'
    -> Int64 -- ^ 'faggId'
    -> FloodlightActivityGroupsGet
floodlightActivityGroupsGet pFaggProFileId_ pFaggId_ =
    FloodlightActivityGroupsGet
    { _faggProFileId = _Coerce # pFaggProFileId_
    , _faggId = _Coerce # pFaggId_
    }

-- | User profile ID associated with this request.
faggProFileId :: Lens' FloodlightActivityGroupsGet Int64
faggProFileId
  = lens _faggProFileId
      (\ s a -> s{_faggProFileId = a})
      . _Coerce

-- | Floodlight activity Group ID.
faggId :: Lens' FloodlightActivityGroupsGet Int64
faggId
  = lens _faggId (\ s a -> s{_faggId = a}) . _Coerce

instance GoogleRequest FloodlightActivityGroupsGet
         where
        type Rs FloodlightActivityGroupsGet =
             FloodlightActivityGroup
        requestClient FloodlightActivityGroupsGet{..}
          = go _faggProFileId _faggId (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy FloodlightActivityGroupsGetResource)
                      mempty
