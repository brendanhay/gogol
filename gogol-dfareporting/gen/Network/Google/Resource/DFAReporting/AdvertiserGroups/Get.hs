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
-- Module      : Network.Google.Resource.DFAReporting.AdvertiserGroups.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one advertiser group by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.advertiserGroups.get@.
module Network.Google.Resource.DFAReporting.AdvertiserGroups.Get
    (
    -- * REST Resource
      AdvertiserGroupsGetResource

    -- * Creating a Request
    , advertiserGroupsGet
    , AdvertiserGroupsGet

    -- * Request Lenses
    , agggProFileId
    , agggId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.advertiserGroups.get@ method which the
-- 'AdvertiserGroupsGet' request conforms to.
type AdvertiserGroupsGetResource =
     "dfareporting" :>
       "v2.4" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "advertiserGroups" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] AdvertiserGroup

-- | Gets one advertiser group by ID.
--
-- /See:/ 'advertiserGroupsGet' smart constructor.
data AdvertiserGroupsGet = AdvertiserGroupsGet
    { _agggProFileId :: !(Textual Int64)
    , _agggId        :: !(Textual Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdvertiserGroupsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agggProFileId'
--
-- * 'agggId'
advertiserGroupsGet
    :: Int64 -- ^ 'agggProFileId'
    -> Int64 -- ^ 'agggId'
    -> AdvertiserGroupsGet
advertiserGroupsGet pAgggProFileId_ pAgggId_ =
    AdvertiserGroupsGet
    { _agggProFileId = _Coerce # pAgggProFileId_
    , _agggId = _Coerce # pAgggId_
    }

-- | User profile ID associated with this request.
agggProFileId :: Lens' AdvertiserGroupsGet Int64
agggProFileId
  = lens _agggProFileId
      (\ s a -> s{_agggProFileId = a})
      . _Coerce

-- | Advertiser group ID.
agggId :: Lens' AdvertiserGroupsGet Int64
agggId
  = lens _agggId (\ s a -> s{_agggId = a}) . _Coerce

instance GoogleRequest AdvertiserGroupsGet where
        type Rs AdvertiserGroupsGet = AdvertiserGroup
        requestClient AdvertiserGroupsGet{..}
          = go _agggProFileId _agggId (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy AdvertiserGroupsGetResource)
                      mempty
