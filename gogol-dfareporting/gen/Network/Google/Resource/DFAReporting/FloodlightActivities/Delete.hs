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
-- Module      : Network.Google.Resource.DFAReporting.FloodlightActivities.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing floodlight activity.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.floodlightActivities.delete@.
module Network.Google.Resource.DFAReporting.FloodlightActivities.Delete
    (
    -- * REST Resource
      FloodlightActivitiesDeleteResource

    -- * Creating a Request
    , floodlightActivitiesDelete
    , FloodlightActivitiesDelete

    -- * Request Lenses
    , fadProFileId
    , fadId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.floodlightActivities.delete@ method which the
-- 'FloodlightActivitiesDelete' request conforms to.
type FloodlightActivitiesDeleteResource =
     "dfareporting" :>
       "v2.2" :>
         "userprofiles" :>
           Capture "profileId" (JSONText Int64) :>
             "floodlightActivities" :>
               Capture "id" (JSONText Int64) :>
                 QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes an existing floodlight activity.
--
-- /See:/ 'floodlightActivitiesDelete' smart constructor.
data FloodlightActivitiesDelete = FloodlightActivitiesDelete
    { _fadProFileId :: !(JSONText Int64)
    , _fadId        :: !(JSONText Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightActivitiesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fadProFileId'
--
-- * 'fadId'
floodlightActivitiesDelete
    :: Int64 -- ^ 'fadProFileId'
    -> Int64 -- ^ 'fadId'
    -> FloodlightActivitiesDelete
floodlightActivitiesDelete pFadProFileId_ pFadId_ =
    FloodlightActivitiesDelete
    { _fadProFileId = pFadProFileId_
    , _fadId = pFadId_
    }

-- | User profile ID associated with this request.
fadProFileId :: Lens' FloodlightActivitiesDelete Int64
fadProFileId
  = lens _fadProFileId (\ s a -> s{_fadProFileId = a})
      . _Coerce

-- | Floodlight activity ID.
fadId :: Lens' FloodlightActivitiesDelete Int64
fadId
  = lens _fadId (\ s a -> s{_fadId = a}) . _Coerce

instance GoogleRequest FloodlightActivitiesDelete
         where
        type Rs FloodlightActivitiesDelete = ()
        requestClient FloodlightActivitiesDelete{..}
          = go _fadProFileId _fadId (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy FloodlightActivitiesDeleteResource)
                      mempty
