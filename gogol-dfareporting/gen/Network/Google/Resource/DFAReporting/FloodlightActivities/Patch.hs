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
-- Module      : Network.Google.Resource.DFAReporting.FloodlightActivities.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing floodlight activity. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.floodlightActivities.patch@.
module Network.Google.Resource.DFAReporting.FloodlightActivities.Patch
    (
    -- * REST Resource
      FloodlightActivitiesPatchResource

    -- * Creating a Request
    , floodlightActivitiesPatch
    , FloodlightActivitiesPatch

    -- * Request Lenses
    , fapProFileId
    , fapPayload
    , fapId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.floodlightActivities.patch@ method which the
-- 'FloodlightActivitiesPatch' request conforms to.
type FloodlightActivitiesPatchResource =
     "dfareporting" :>
       "v2.2" :>
         "userprofiles" :>
           Capture "profileId" Int64 :>
             "floodlightActivities" :>
               QueryParam "id" Int64 :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] FloodlightActivity :>
                     Patch '[JSON] FloodlightActivity

-- | Updates an existing floodlight activity. This method supports patch
-- semantics.
--
-- /See:/ 'floodlightActivitiesPatch' smart constructor.
data FloodlightActivitiesPatch = FloodlightActivitiesPatch
    { _fapProFileId :: !Int64
    , _fapPayload   :: !FloodlightActivity
    , _fapId        :: !Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightActivitiesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fapProFileId'
--
-- * 'fapPayload'
--
-- * 'fapId'
floodlightActivitiesPatch
    :: Int64 -- ^ 'fapProFileId'
    -> FloodlightActivity -- ^ 'fapPayload'
    -> Int64 -- ^ 'fapId'
    -> FloodlightActivitiesPatch
floodlightActivitiesPatch pFapProFileId_ pFapPayload_ pFapId_ =
    FloodlightActivitiesPatch
    { _fapProFileId = pFapProFileId_
    , _fapPayload = pFapPayload_
    , _fapId = pFapId_
    }

-- | User profile ID associated with this request.
fapProFileId :: Lens' FloodlightActivitiesPatch Int64
fapProFileId
  = lens _fapProFileId (\ s a -> s{_fapProFileId = a})

-- | Multipart request metadata.
fapPayload :: Lens' FloodlightActivitiesPatch FloodlightActivity
fapPayload
  = lens _fapPayload (\ s a -> s{_fapPayload = a})

-- | Floodlight activity ID.
fapId :: Lens' FloodlightActivitiesPatch Int64
fapId = lens _fapId (\ s a -> s{_fapId = a})

instance GoogleRequest FloodlightActivitiesPatch
         where
        type Rs FloodlightActivitiesPatch =
             FloodlightActivity
        requestClient FloodlightActivitiesPatch{..}
          = go _fapProFileId (Just _fapId) (Just AltJSON)
              _fapPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy FloodlightActivitiesPatchResource)
                      mempty
