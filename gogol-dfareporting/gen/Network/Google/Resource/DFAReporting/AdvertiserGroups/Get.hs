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
-- Copyright   : (c) 2015 Brendan Hay
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
    , advertiserGroupsGet'
    , AdvertiserGroupsGet'

    -- * Request Lenses
    , aggProFileId
    , aggId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.advertiserGroups.get@ method which the
-- 'AdvertiserGroupsGet'' request conforms to.
type AdvertiserGroupsGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "advertiserGroups" :>
           Capture "id" Int64 :>
             QueryParam "alt" AltJSON :>
               Get '[JSON] AdvertiserGroup

-- | Gets one advertiser group by ID.
--
-- /See:/ 'advertiserGroupsGet'' smart constructor.
data AdvertiserGroupsGet' = AdvertiserGroupsGet'
    { _aggProFileId :: !Int64
    , _aggId        :: !Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdvertiserGroupsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aggProFileId'
--
-- * 'aggId'
advertiserGroupsGet'
    :: Int64 -- ^ 'aggProFileId'
    -> Int64 -- ^ 'aggId'
    -> AdvertiserGroupsGet'
advertiserGroupsGet' pAggProFileId_ pAggId_ =
    AdvertiserGroupsGet'
    { _aggProFileId = pAggProFileId_
    , _aggId = pAggId_
    }

-- | User profile ID associated with this request.
aggProFileId :: Lens' AdvertiserGroupsGet' Int64
aggProFileId
  = lens _aggProFileId (\ s a -> s{_aggProFileId = a})

-- | Advertiser group ID.
aggId :: Lens' AdvertiserGroupsGet' Int64
aggId = lens _aggId (\ s a -> s{_aggId = a})

instance GoogleRequest AdvertiserGroupsGet' where
        type Rs AdvertiserGroupsGet' = AdvertiserGroup
        requestClient AdvertiserGroupsGet'{..}
          = go _aggProFileId _aggId (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy AdvertiserGroupsGetResource)
                      mempty
