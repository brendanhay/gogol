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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing advertiser.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.advertisers.update@.
module Network.Google.Resource.DFAReporting.Advertisers.Update
    (
    -- * REST Resource
      AdvertisersUpdateResource

    -- * Creating a Request
    , advertisersUpdate
    , AdvertisersUpdate

    -- * Request Lenses
    , auProFileId
    , auPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.advertisers.update@ method which the
-- 'AdvertisersUpdate' request conforms to.
type AdvertisersUpdateResource =
     "dfareporting" :>
       "v2.4" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "advertisers" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] Advertiser :> Put '[JSON] Advertiser

-- | Updates an existing advertiser.
--
-- /See:/ 'advertisersUpdate' smart constructor.
data AdvertisersUpdate = AdvertisersUpdate'
    { _auProFileId :: !(Textual Int64)
    , _auPayload   :: !Advertiser
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdvertisersUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auProFileId'
--
-- * 'auPayload'
advertisersUpdate
    :: Int64 -- ^ 'auProFileId'
    -> Advertiser -- ^ 'auPayload'
    -> AdvertisersUpdate
advertisersUpdate pAuProFileId_ pAuPayload_ =
    AdvertisersUpdate'
    { _auProFileId = _Coerce # pAuProFileId_
    , _auPayload = pAuPayload_
    }

-- | User profile ID associated with this request.
auProFileId :: Lens' AdvertisersUpdate Int64
auProFileId
  = lens _auProFileId (\ s a -> s{_auProFileId = a}) .
      _Coerce

-- | Multipart request metadata.
auPayload :: Lens' AdvertisersUpdate Advertiser
auPayload
  = lens _auPayload (\ s a -> s{_auPayload = a})

instance GoogleRequest AdvertisersUpdate where
        type Rs AdvertisersUpdate = Advertiser
        type Scopes AdvertisersUpdate =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient AdvertisersUpdate'{..}
          = go _auProFileId (Just AltJSON) _auPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy AdvertisersUpdateResource)
                      mempty
