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
-- Module      : Network.Google.Resource.DFAReporting.CreativeGroups.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one creative group by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.creativeGroups.get@.
module Network.Google.Resource.DFAReporting.CreativeGroups.Get
    (
    -- * REST Resource
      CreativeGroupsGetResource

    -- * Creating a Request
    , creativeGroupsGet
    , CreativeGroupsGet

    -- * Request Lenses
    , cgggProFileId
    , cgggId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.creativeGroups.get@ method which the
-- 'CreativeGroupsGet' request conforms to.
type CreativeGroupsGetResource =
     "dfareporting" :>
       "v2.4" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "creativeGroups" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "alt" AltJSON :> Get '[JSON] CreativeGroup

-- | Gets one creative group by ID.
--
-- /See:/ 'creativeGroupsGet' smart constructor.
data CreativeGroupsGet = CreativeGroupsGet
    { _cgggProFileId :: !(Textual Int64)
    , _cgggId        :: !(Textual Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeGroupsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgggProFileId'
--
-- * 'cgggId'
creativeGroupsGet
    :: Int64 -- ^ 'cgggProFileId'
    -> Int64 -- ^ 'cgggId'
    -> CreativeGroupsGet
creativeGroupsGet pCgggProFileId_ pCgggId_ =
    CreativeGroupsGet
    { _cgggProFileId = _Coerce # pCgggProFileId_
    , _cgggId = _Coerce # pCgggId_
    }

-- | User profile ID associated with this request.
cgggProFileId :: Lens' CreativeGroupsGet Int64
cgggProFileId
  = lens _cgggProFileId
      (\ s a -> s{_cgggProFileId = a})
      . _Coerce

-- | Creative group ID.
cgggId :: Lens' CreativeGroupsGet Int64
cgggId
  = lens _cgggId (\ s a -> s{_cgggId = a}) . _Coerce

instance GoogleRequest CreativeGroupsGet where
        type Rs CreativeGroupsGet = CreativeGroup
        requestClient CreativeGroupsGet{..}
          = go _cgggProFileId _cgggId (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy CreativeGroupsGetResource)
                      mempty
