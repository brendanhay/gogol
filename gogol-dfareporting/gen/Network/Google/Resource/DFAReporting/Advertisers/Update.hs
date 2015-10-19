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
-- Module      : Network.Google.Resource.DFAReporting.Advertisers.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing advertiser.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAdvertisersUpdate@.
module Network.Google.Resource.DFAReporting.Advertisers.Update
    (
    -- * REST Resource
      AdvertisersUpdateResource

    -- * Creating a Request
    , advertisersUpdate'
    , AdvertisersUpdate'

    -- * Request Lenses
    , advProFileId
    , advPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAdvertisersUpdate@ method which the
-- 'AdvertisersUpdate'' request conforms to.
type AdvertisersUpdateResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "advertisers" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] Advertiser :> Put '[JSON] Advertiser

-- | Updates an existing advertiser.
--
-- /See:/ 'advertisersUpdate'' smart constructor.
data AdvertisersUpdate' = AdvertisersUpdate'
    { _advProFileId :: !Int64
    , _advPayload   :: !Advertiser
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdvertisersUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'advProFileId'
--
-- * 'advPayload'
advertisersUpdate'
    :: Int64 -- ^ 'profileId'
    -> Advertiser -- ^ 'payload'
    -> AdvertisersUpdate'
advertisersUpdate' pAdvProFileId_ pAdvPayload_ =
    AdvertisersUpdate'
    { _advProFileId = pAdvProFileId_
    , _advPayload = pAdvPayload_
    }

-- | User profile ID associated with this request.
advProFileId :: Lens' AdvertisersUpdate' Int64
advProFileId
  = lens _advProFileId (\ s a -> s{_advProFileId = a})

-- | Multipart request metadata.
advPayload :: Lens' AdvertisersUpdate' Advertiser
advPayload
  = lens _advPayload (\ s a -> s{_advPayload = a})

instance GoogleRequest AdvertisersUpdate' where
        type Rs AdvertisersUpdate' = Advertiser
        requestClient AdvertisersUpdate'{..}
          = go _advProFileId (Just AltJSON) _advPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy AdvertisersUpdateResource)
                      mempty
