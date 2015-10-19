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
-- Module      : Network.Google.Resource.DFAReporting.FloodlightActivityGroups.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing floodlight activity group.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.floodlightActivityGroups.update@.
module Network.Google.Resource.DFAReporting.FloodlightActivityGroups.Update
    (
    -- * REST Resource
      FloodlightActivityGroupsUpdateResource

    -- * Creating a Request
    , floodlightActivityGroupsUpdate'
    , FloodlightActivityGroupsUpdate'

    -- * Request Lenses
    , faguProFileId
    , faguPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.floodlightActivityGroups.update@ method which the
-- 'FloodlightActivityGroupsUpdate'' request conforms to.
type FloodlightActivityGroupsUpdateResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "floodlightActivityGroups" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] FloodlightActivityGroup :>
               Put '[JSON] FloodlightActivityGroup

-- | Updates an existing floodlight activity group.
--
-- /See:/ 'floodlightActivityGroupsUpdate'' smart constructor.
data FloodlightActivityGroupsUpdate' = FloodlightActivityGroupsUpdate'
    { _faguProFileId :: !Int64
    , _faguPayload   :: !FloodlightActivityGroup
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightActivityGroupsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'faguProFileId'
--
-- * 'faguPayload'
floodlightActivityGroupsUpdate'
    :: Int64 -- ^ 'faguProFileId'
    -> FloodlightActivityGroup -- ^ 'faguPayload'
    -> FloodlightActivityGroupsUpdate'
floodlightActivityGroupsUpdate' pFaguProFileId_ pFaguPayload_ =
    FloodlightActivityGroupsUpdate'
    { _faguProFileId = pFaguProFileId_
    , _faguPayload = pFaguPayload_
    }

-- | User profile ID associated with this request.
faguProFileId :: Lens' FloodlightActivityGroupsUpdate' Int64
faguProFileId
  = lens _faguProFileId
      (\ s a -> s{_faguProFileId = a})

-- | Multipart request metadata.
faguPayload :: Lens' FloodlightActivityGroupsUpdate' FloodlightActivityGroup
faguPayload
  = lens _faguPayload (\ s a -> s{_faguPayload = a})

instance GoogleRequest
         FloodlightActivityGroupsUpdate' where
        type Rs FloodlightActivityGroupsUpdate' =
             FloodlightActivityGroup
        requestClient FloodlightActivityGroupsUpdate'{..}
          = go _faguProFileId (Just AltJSON) _faguPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy FloodlightActivityGroupsUpdateResource)
                      mempty
