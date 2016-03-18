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
-- Module      : Network.Google.Resource.DFAReporting.PlacementGroups.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing placement group. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.placementGroups.patch@.
module Network.Google.Resource.DFAReporting.PlacementGroups.Patch
    (
    -- * REST Resource
      PlacementGroupsPatchResource

    -- * Creating a Request
    , placementGroupsPatch
    , PlacementGroupsPatch

    -- * Request Lenses
    , pgpProFileId
    , pgpPayload
    , pgpId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.placementGroups.patch@ method which the
-- 'PlacementGroupsPatch' request conforms to.
type PlacementGroupsPatchResource =
     "dfareporting" :>
       "v2.4" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "placementGroups" :>
               QueryParam "id" (Textual Int64) :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] PlacementGroup :>
                     Patch '[JSON] PlacementGroup

-- | Updates an existing placement group. This method supports patch
-- semantics.
--
-- /See:/ 'placementGroupsPatch' smart constructor.
data PlacementGroupsPatch = PlacementGroupsPatch
    { _pgpProFileId :: !(Textual Int64)
    , _pgpPayload   :: !PlacementGroup
    , _pgpId        :: !(Textual Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementGroupsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgpProFileId'
--
-- * 'pgpPayload'
--
-- * 'pgpId'
placementGroupsPatch
    :: Int64 -- ^ 'pgpProFileId'
    -> PlacementGroup -- ^ 'pgpPayload'
    -> Int64 -- ^ 'pgpId'
    -> PlacementGroupsPatch
placementGroupsPatch pPgpProFileId_ pPgpPayload_ pPgpId_ =
    PlacementGroupsPatch
    { _pgpProFileId = _Coerce # pPgpProFileId_
    , _pgpPayload = pPgpPayload_
    , _pgpId = _Coerce # pPgpId_
    }

-- | User profile ID associated with this request.
pgpProFileId :: Lens' PlacementGroupsPatch Int64
pgpProFileId
  = lens _pgpProFileId (\ s a -> s{_pgpProFileId = a})
      . _Coerce

-- | Multipart request metadata.
pgpPayload :: Lens' PlacementGroupsPatch PlacementGroup
pgpPayload
  = lens _pgpPayload (\ s a -> s{_pgpPayload = a})

-- | Placement group ID.
pgpId :: Lens' PlacementGroupsPatch Int64
pgpId
  = lens _pgpId (\ s a -> s{_pgpId = a}) . _Coerce

instance GoogleRequest PlacementGroupsPatch where
        type Rs PlacementGroupsPatch = PlacementGroup
        requestClient PlacementGroupsPatch{..}
          = go _pgpProFileId (Just _pgpId) (Just AltJSON)
              _pgpPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy PlacementGroupsPatchResource)
                      mempty
