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
-- Module      : Network.Google.Resource.DFAReporting.PlacementGroups.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new placement group.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.placementGroups.insert@.
module Network.Google.Resource.DFAReporting.PlacementGroups.Insert
    (
    -- * REST Resource
      PlacementGroupsInsertResource

    -- * Creating a Request
    , placementGroupsInsert
    , PlacementGroupsInsert

    -- * Request Lenses
    , pgiProFileId
    , pgiPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.placementGroups.insert@ method which the
-- 'PlacementGroupsInsert' request conforms to.
type PlacementGroupsInsertResource =
     "dfareporting" :>
       "v3.3" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "placementGroups" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] PlacementGroup :>
                   Post '[JSON] PlacementGroup

-- | Inserts a new placement group.
--
-- /See:/ 'placementGroupsInsert' smart constructor.
data PlacementGroupsInsert =
  PlacementGroupsInsert'
    { _pgiProFileId :: !(Textual Int64)
    , _pgiPayload   :: !PlacementGroup
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'PlacementGroupsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgiProFileId'
--
-- * 'pgiPayload'
placementGroupsInsert
    :: Int64 -- ^ 'pgiProFileId'
    -> PlacementGroup -- ^ 'pgiPayload'
    -> PlacementGroupsInsert
placementGroupsInsert pPgiProFileId_ pPgiPayload_ =
  PlacementGroupsInsert'
    {_pgiProFileId = _Coerce # pPgiProFileId_, _pgiPayload = pPgiPayload_}

-- | User profile ID associated with this request.
pgiProFileId :: Lens' PlacementGroupsInsert Int64
pgiProFileId
  = lens _pgiProFileId (\ s a -> s{_pgiProFileId = a})
      . _Coerce

-- | Multipart request metadata.
pgiPayload :: Lens' PlacementGroupsInsert PlacementGroup
pgiPayload
  = lens _pgiPayload (\ s a -> s{_pgiPayload = a})

instance GoogleRequest PlacementGroupsInsert where
        type Rs PlacementGroupsInsert = PlacementGroup
        type Scopes PlacementGroupsInsert =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient PlacementGroupsInsert'{..}
          = go _pgiProFileId (Just AltJSON) _pgiPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy PlacementGroupsInsertResource)
                      mempty
