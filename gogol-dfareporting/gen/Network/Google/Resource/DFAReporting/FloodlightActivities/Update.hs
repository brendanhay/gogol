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
-- Module      : Network.Google.Resource.DFAReporting.FloodlightActivities.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing floodlight activity.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.floodlightActivities.update@.
module Network.Google.Resource.DFAReporting.FloodlightActivities.Update
    (
    -- * REST Resource
      FloodlightActivitiesUpdateResource

    -- * Creating a Request
    , floodlightActivitiesUpdate
    , FloodlightActivitiesUpdate

    -- * Request Lenses
    , fauProFileId
    , fauPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.floodlightActivities.update@ method which the
-- 'FloodlightActivitiesUpdate' request conforms to.
type FloodlightActivitiesUpdateResource =
     "dfareporting" :>
       "v2.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "floodlightActivities" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] FloodlightActivity :>
                   Put '[JSON] FloodlightActivity

-- | Updates an existing floodlight activity.
--
-- /See:/ 'floodlightActivitiesUpdate' smart constructor.
data FloodlightActivitiesUpdate = FloodlightActivitiesUpdate'
    { _fauProFileId :: !(Textual Int64)
    , _fauPayload   :: !FloodlightActivity
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightActivitiesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fauProFileId'
--
-- * 'fauPayload'
floodlightActivitiesUpdate
    :: Int64 -- ^ 'fauProFileId'
    -> FloodlightActivity -- ^ 'fauPayload'
    -> FloodlightActivitiesUpdate
floodlightActivitiesUpdate pFauProFileId_ pFauPayload_ =
    FloodlightActivitiesUpdate'
    { _fauProFileId = _Coerce # pFauProFileId_
    , _fauPayload = pFauPayload_
    }

-- | User profile ID associated with this request.
fauProFileId :: Lens' FloodlightActivitiesUpdate Int64
fauProFileId
  = lens _fauProFileId (\ s a -> s{_fauProFileId = a})
      . _Coerce

-- | Multipart request metadata.
fauPayload :: Lens' FloodlightActivitiesUpdate FloodlightActivity
fauPayload
  = lens _fauPayload (\ s a -> s{_fauPayload = a})

instance GoogleRequest FloodlightActivitiesUpdate
         where
        type Rs FloodlightActivitiesUpdate =
             FloodlightActivity
        type Scopes FloodlightActivitiesUpdate =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient FloodlightActivitiesUpdate'{..}
          = go _fauProFileId (Just AltJSON) _fauPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy FloodlightActivitiesUpdateResource)
                      mempty
