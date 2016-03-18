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
-- Module      : Network.Google.Resource.DFAReporting.FloodlightActivityGroups.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing floodlight activity group. This method supports
-- patch semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.floodlightActivityGroups.patch@.
module Network.Google.Resource.DFAReporting.FloodlightActivityGroups.Patch
    (
    -- * REST Resource
      FloodlightActivityGroupsPatchResource

    -- * Creating a Request
    , floodlightActivityGroupsPatch
    , FloodlightActivityGroupsPatch

    -- * Request Lenses
    , fagpProFileId
    , fagpPayload
    , fagpId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.floodlightActivityGroups.patch@ method which the
-- 'FloodlightActivityGroupsPatch' request conforms to.
type FloodlightActivityGroupsPatchResource =
     "dfareporting" :>
       "v2.4" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "floodlightActivityGroups" :>
               QueryParam "id" (Textual Int64) :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] FloodlightActivityGroup :>
                     Patch '[JSON] FloodlightActivityGroup

-- | Updates an existing floodlight activity group. This method supports
-- patch semantics.
--
-- /See:/ 'floodlightActivityGroupsPatch' smart constructor.
data FloodlightActivityGroupsPatch = FloodlightActivityGroupsPatch
    { _fagpProFileId :: !(Textual Int64)
    , _fagpPayload   :: !FloodlightActivityGroup
    , _fagpId        :: !(Textual Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightActivityGroupsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fagpProFileId'
--
-- * 'fagpPayload'
--
-- * 'fagpId'
floodlightActivityGroupsPatch
    :: Int64 -- ^ 'fagpProFileId'
    -> FloodlightActivityGroup -- ^ 'fagpPayload'
    -> Int64 -- ^ 'fagpId'
    -> FloodlightActivityGroupsPatch
floodlightActivityGroupsPatch pFagpProFileId_ pFagpPayload_ pFagpId_ =
    FloodlightActivityGroupsPatch
    { _fagpProFileId = _Coerce # pFagpProFileId_
    , _fagpPayload = pFagpPayload_
    , _fagpId = _Coerce # pFagpId_
    }

-- | User profile ID associated with this request.
fagpProFileId :: Lens' FloodlightActivityGroupsPatch Int64
fagpProFileId
  = lens _fagpProFileId
      (\ s a -> s{_fagpProFileId = a})
      . _Coerce

-- | Multipart request metadata.
fagpPayload :: Lens' FloodlightActivityGroupsPatch FloodlightActivityGroup
fagpPayload
  = lens _fagpPayload (\ s a -> s{_fagpPayload = a})

-- | Floodlight activity Group ID.
fagpId :: Lens' FloodlightActivityGroupsPatch Int64
fagpId
  = lens _fagpId (\ s a -> s{_fagpId = a}) . _Coerce

instance GoogleRequest FloodlightActivityGroupsPatch
         where
        type Rs FloodlightActivityGroupsPatch =
             FloodlightActivityGroup
        requestClient FloodlightActivityGroupsPatch{..}
          = go _fagpProFileId (Just _fagpId) (Just AltJSON)
              _fagpPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy FloodlightActivityGroupsPatchResource)
                      mempty
