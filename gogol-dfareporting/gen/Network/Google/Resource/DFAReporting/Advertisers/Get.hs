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
-- Module      : Network.Google.Resource.DFAReporting.Advertisers.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one advertiser by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAdvertisersGet@.
module Network.Google.Resource.DFAReporting.Advertisers.Get
    (
    -- * REST Resource
      AdvertisersGetResource

    -- * Creating a Request
    , advertisersGet'
    , AdvertisersGet'

    -- * Request Lenses
    , agProFileId
    , agId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAdvertisersGet@ method which the
-- 'AdvertisersGet'' request conforms to.
type AdvertisersGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "advertisers" :>
           Capture "id" Int64 :>
             QueryParam "alt" AltJSON :> Get '[JSON] Advertiser

-- | Gets one advertiser by ID.
--
-- /See:/ 'advertisersGet'' smart constructor.
data AdvertisersGet' = AdvertisersGet'
    { _agProFileId :: !Int64
    , _agId        :: !Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdvertisersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agProFileId'
--
-- * 'agId'
advertisersGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> AdvertisersGet'
advertisersGet' pAgProFileId_ pAgId_ =
    AdvertisersGet'
    { _agProFileId = pAgProFileId_
    , _agId = pAgId_
    }

-- | User profile ID associated with this request.
agProFileId :: Lens' AdvertisersGet' Int64
agProFileId
  = lens _agProFileId (\ s a -> s{_agProFileId = a})

-- | Advertiser ID.
agId :: Lens' AdvertisersGet' Int64
agId = lens _agId (\ s a -> s{_agId = a})

instance GoogleRequest AdvertisersGet' where
        type Rs AdvertisersGet' = Advertiser
        requestClient AdvertisersGet'{..}
          = go _agProFileId _agId (Just AltJSON) dFAReporting
          where go
                  = buildClient (Proxy :: Proxy AdvertisersGetResource)
                      mempty
