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
-- Gets one advertiser by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.advertisers.get@.
module Network.Google.Resource.DFAReporting.Advertisers.Get
    (
    -- * REST Resource
      AdvertisersGetResource

    -- * Creating a Request
    , advertisersGet
    , AdvertisersGet

    -- * Request Lenses
    , advProFileId
    , advId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.advertisers.get@ method which the
-- 'AdvertisersGet' request conforms to.
type AdvertisersGetResource =
     "dfareporting" :>
       "v2.2" :>
         "userprofiles" :>
           Capture "profileId" (JSONText Int64) :>
             "advertisers" :>
               Capture "id" (JSONText Int64) :>
                 QueryParam "alt" AltJSON :> Get '[JSON] Advertiser

-- | Gets one advertiser by ID.
--
-- /See:/ 'advertisersGet' smart constructor.
data AdvertisersGet = AdvertisersGet
    { _advProFileId :: !(JSONText Int64)
    , _advId        :: !(JSONText Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdvertisersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'advProFileId'
--
-- * 'advId'
advertisersGet
    :: Int64 -- ^ 'advProFileId'
    -> Int64 -- ^ 'advId'
    -> AdvertisersGet
advertisersGet pAdvProFileId_ pAdvId_ =
    AdvertisersGet
    { _advProFileId = _Coerce # pAdvProFileId_
    , _advId = _Coerce # pAdvId_
    }

-- | User profile ID associated with this request.
advProFileId :: Lens' AdvertisersGet Int64
advProFileId
  = lens _advProFileId (\ s a -> s{_advProFileId = a})
      . _Coerce

-- | Advertiser ID.
advId :: Lens' AdvertisersGet Int64
advId
  = lens _advId (\ s a -> s{_advId = a}) . _Coerce

instance GoogleRequest AdvertisersGet where
        type Rs AdvertisersGet = Advertiser
        requestClient AdvertisersGet{..}
          = go _advProFileId _advId (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy AdvertisersGetResource)
                      mempty
