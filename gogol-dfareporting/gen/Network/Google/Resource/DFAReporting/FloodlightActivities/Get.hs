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
-- Module      : Network.Google.Resource.DFAReporting.FloodlightActivities.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one floodlight activity by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingFloodlightActivitiesGet@.
module Network.Google.Resource.DFAReporting.FloodlightActivities.Get
    (
    -- * REST Resource
      FloodlightActivitiesGetResource

    -- * Creating a Request
    , floodlightActivitiesGet'
    , FloodlightActivitiesGet'

    -- * Request Lenses
    , fProFileId
    , fId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingFloodlightActivitiesGet@ method which the
-- 'FloodlightActivitiesGet'' request conforms to.
type FloodlightActivitiesGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "floodlightActivities" :>
           Capture "id" Int64 :>
             QueryParam "alt" AltJSON :>
               Get '[JSON] FloodlightActivity

-- | Gets one floodlight activity by ID.
--
-- /See:/ 'floodlightActivitiesGet'' smart constructor.
data FloodlightActivitiesGet' = FloodlightActivitiesGet'
    { _fProFileId :: !Int64
    , _fId        :: !Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightActivitiesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fProFileId'
--
-- * 'fId'
floodlightActivitiesGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> FloodlightActivitiesGet'
floodlightActivitiesGet' pFProFileId_ pFId_ =
    FloodlightActivitiesGet'
    { _fProFileId = pFProFileId_
    , _fId = pFId_
    }

-- | User profile ID associated with this request.
fProFileId :: Lens' FloodlightActivitiesGet' Int64
fProFileId
  = lens _fProFileId (\ s a -> s{_fProFileId = a})

-- | Floodlight activity ID.
fId :: Lens' FloodlightActivitiesGet' Int64
fId = lens _fId (\ s a -> s{_fId = a})

instance GoogleRequest FloodlightActivitiesGet' where
        type Rs FloodlightActivitiesGet' = FloodlightActivity
        requestClient FloodlightActivitiesGet'{..}
          = go _fProFileId _fId (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy FloodlightActivitiesGetResource)
                      mempty
