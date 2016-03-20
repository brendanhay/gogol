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
-- Module      : Network.Google.Resource.DFAReporting.FloodlightActivityGroups.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new floodlight activity group.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.floodlightActivityGroups.insert@.
module Network.Google.Resource.DFAReporting.FloodlightActivityGroups.Insert
    (
    -- * REST Resource
      FloodlightActivityGroupsInsertResource

    -- * Creating a Request
    , floodlightActivityGroupsInsert
    , FloodlightActivityGroupsInsert

    -- * Request Lenses
    , fagiProFileId
    , fagiPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.floodlightActivityGroups.insert@ method which the
-- 'FloodlightActivityGroupsInsert' request conforms to.
type FloodlightActivityGroupsInsertResource =
     "dfareporting" :>
       "v2.4" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "floodlightActivityGroups" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] FloodlightActivityGroup :>
                   Post '[JSON] FloodlightActivityGroup

-- | Inserts a new floodlight activity group.
--
-- /See:/ 'floodlightActivityGroupsInsert' smart constructor.
data FloodlightActivityGroupsInsert = FloodlightActivityGroupsInsert
    { _fagiProFileId :: !(Textual Int64)
    , _fagiPayload   :: !FloodlightActivityGroup
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightActivityGroupsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fagiProFileId'
--
-- * 'fagiPayload'
floodlightActivityGroupsInsert
    :: Int64 -- ^ 'fagiProFileId'
    -> FloodlightActivityGroup -- ^ 'fagiPayload'
    -> FloodlightActivityGroupsInsert
floodlightActivityGroupsInsert pFagiProFileId_ pFagiPayload_ =
    FloodlightActivityGroupsInsert
    { _fagiProFileId = _Coerce # pFagiProFileId_
    , _fagiPayload = pFagiPayload_
    }

-- | User profile ID associated with this request.
fagiProFileId :: Lens' FloodlightActivityGroupsInsert Int64
fagiProFileId
  = lens _fagiProFileId
      (\ s a -> s{_fagiProFileId = a})
      . _Coerce

-- | Multipart request metadata.
fagiPayload :: Lens' FloodlightActivityGroupsInsert FloodlightActivityGroup
fagiPayload
  = lens _fagiPayload (\ s a -> s{_fagiPayload = a})

instance GoogleRequest FloodlightActivityGroupsInsert
         where
        type Rs FloodlightActivityGroupsInsert =
             FloodlightActivityGroup
        requestClient FloodlightActivityGroupsInsert{..}
          = go _fagiProFileId (Just AltJSON) _fagiPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy FloodlightActivityGroupsInsertResource)
                      mempty
