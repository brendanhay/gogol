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
-- Module      : Network.Google.Resource.DFAReporting.FloodlightActivities.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new floodlight activity.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.floodlightActivities.insert@.
module Network.Google.Resource.DFAReporting.FloodlightActivities.Insert
    (
    -- * REST Resource
      FloodlightActivitiesInsertResource

    -- * Creating a Request
    , floodlightActivitiesInsert
    , FloodlightActivitiesInsert

    -- * Request Lenses
    , faiProFileId
    , faiPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.floodlightActivities.insert@ method which the
-- 'FloodlightActivitiesInsert' request conforms to.
type FloodlightActivitiesInsertResource =
     "dfareporting" :>
       "v2.7" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "floodlightActivities" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] FloodlightActivity :>
                   Post '[JSON] FloodlightActivity

-- | Inserts a new floodlight activity.
--
-- /See:/ 'floodlightActivitiesInsert' smart constructor.
data FloodlightActivitiesInsert = FloodlightActivitiesInsert'
    { _faiProFileId :: !(Textual Int64)
    , _faiPayload   :: !FloodlightActivity
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightActivitiesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'faiProFileId'
--
-- * 'faiPayload'
floodlightActivitiesInsert
    :: Int64 -- ^ 'faiProFileId'
    -> FloodlightActivity -- ^ 'faiPayload'
    -> FloodlightActivitiesInsert
floodlightActivitiesInsert pFaiProFileId_ pFaiPayload_ =
    FloodlightActivitiesInsert'
    { _faiProFileId = _Coerce # pFaiProFileId_
    , _faiPayload = pFaiPayload_
    }

-- | User profile ID associated with this request.
faiProFileId :: Lens' FloodlightActivitiesInsert Int64
faiProFileId
  = lens _faiProFileId (\ s a -> s{_faiProFileId = a})
      . _Coerce

-- | Multipart request metadata.
faiPayload :: Lens' FloodlightActivitiesInsert FloodlightActivity
faiPayload
  = lens _faiPayload (\ s a -> s{_faiPayload = a})

instance GoogleRequest FloodlightActivitiesInsert
         where
        type Rs FloodlightActivitiesInsert =
             FloodlightActivity
        type Scopes FloodlightActivitiesInsert =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient FloodlightActivitiesInsert'{..}
          = go _faiProFileId (Just AltJSON) _faiPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy FloodlightActivitiesInsertResource)
                      mempty
