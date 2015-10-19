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
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingCreativeGroupsGet@.
module Network.Google.Resource.DFAReporting.CreativeGroups.Get
    (
    -- * REST Resource
      CreativeGroupsGetResource

    -- * Creating a Request
    , creativeGroupsGet'
    , CreativeGroupsGet'

    -- * Request Lenses
    , cggProFileId
    , cggId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCreativeGroupsGet@ method which the
-- 'CreativeGroupsGet'' request conforms to.
type CreativeGroupsGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "creativeGroups" :>
           Capture "id" Int64 :>
             QueryParam "alt" AltJSON :> Get '[JSON] CreativeGroup

-- | Gets one creative group by ID.
--
-- /See:/ 'creativeGroupsGet'' smart constructor.
data CreativeGroupsGet' = CreativeGroupsGet'
    { _cggProFileId :: !Int64
    , _cggId        :: !Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeGroupsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cggProFileId'
--
-- * 'cggId'
creativeGroupsGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> CreativeGroupsGet'
creativeGroupsGet' pCggProFileId_ pCggId_ =
    CreativeGroupsGet'
    { _cggProFileId = pCggProFileId_
    , _cggId = pCggId_
    }

-- | User profile ID associated with this request.
cggProFileId :: Lens' CreativeGroupsGet' Int64
cggProFileId
  = lens _cggProFileId (\ s a -> s{_cggProFileId = a})

-- | Creative group ID.
cggId :: Lens' CreativeGroupsGet' Int64
cggId = lens _cggId (\ s a -> s{_cggId = a})

instance GoogleRequest CreativeGroupsGet' where
        type Rs CreativeGroupsGet' = CreativeGroup
        requestClient CreativeGroupsGet'{..}
          = go _cggProFileId _cggId (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy CreativeGroupsGetResource)
                      mempty
