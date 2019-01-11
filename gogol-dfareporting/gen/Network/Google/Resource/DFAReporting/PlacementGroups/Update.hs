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
-- Module      : Network.Google.Resource.DFAReporting.PlacementGroups.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing placement group.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.placementGroups.update@.
module Network.Google.Resource.DFAReporting.PlacementGroups.Update
    (
    -- * REST Resource
      PlacementGroupsUpdateResource

    -- * Creating a Request
    , placementGroupsUpdate
    , PlacementGroupsUpdate

    -- * Request Lenses
    , pguProFileId
    , pguPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.placementGroups.update@ method which the
-- 'PlacementGroupsUpdate' request conforms to.
type PlacementGroupsUpdateResource =
     "dfareporting" :>
       "v3.2" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "placementGroups" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] PlacementGroup :>
                   Put '[JSON] PlacementGroup

-- | Updates an existing placement group.
--
-- /See:/ 'placementGroupsUpdate' smart constructor.
data PlacementGroupsUpdate = PlacementGroupsUpdate'
    { _pguProFileId :: !(Textual Int64)
    , _pguPayload   :: !PlacementGroup
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementGroupsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pguProFileId'
--
-- * 'pguPayload'
placementGroupsUpdate
    :: Int64 -- ^ 'pguProFileId'
    -> PlacementGroup -- ^ 'pguPayload'
    -> PlacementGroupsUpdate
placementGroupsUpdate pPguProFileId_ pPguPayload_ =
    PlacementGroupsUpdate'
    { _pguProFileId = _Coerce # pPguProFileId_
    , _pguPayload = pPguPayload_
    }

-- | User profile ID associated with this request.
pguProFileId :: Lens' PlacementGroupsUpdate Int64
pguProFileId
  = lens _pguProFileId (\ s a -> s{_pguProFileId = a})
      . _Coerce

-- | Multipart request metadata.
pguPayload :: Lens' PlacementGroupsUpdate PlacementGroup
pguPayload
  = lens _pguPayload (\ s a -> s{_pguPayload = a})

instance GoogleRequest PlacementGroupsUpdate where
        type Rs PlacementGroupsUpdate = PlacementGroup
        type Scopes PlacementGroupsUpdate =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient PlacementGroupsUpdate'{..}
          = go _pguProFileId (Just AltJSON) _pguPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy PlacementGroupsUpdateResource)
                      mempty
