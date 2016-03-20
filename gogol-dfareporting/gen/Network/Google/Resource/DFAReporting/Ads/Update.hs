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
-- Module      : Network.Google.Resource.DFAReporting.Ads.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing ad.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.ads.update@.
module Network.Google.Resource.DFAReporting.Ads.Update
    (
    -- * REST Resource
      AdsUpdateResource

    -- * Creating a Request
    , adsUpdate
    , AdsUpdate

    -- * Request Lenses
    , aProFileId
    , aPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.ads.update@ method which the
-- 'AdsUpdate' request conforms to.
type AdsUpdateResource =
     "dfareporting" :>
       "v2.4" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "ads" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] Ad :> Put '[JSON] Ad

-- | Updates an existing ad.
--
-- /See:/ 'adsUpdate' smart constructor.
data AdsUpdate = AdsUpdate
    { _aProFileId :: !(Textual Int64)
    , _aPayload   :: !Ad
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aProFileId'
--
-- * 'aPayload'
adsUpdate
    :: Int64 -- ^ 'aProFileId'
    -> Ad -- ^ 'aPayload'
    -> AdsUpdate
adsUpdate pAProFileId_ pAPayload_ =
    AdsUpdate
    { _aProFileId = _Coerce # pAProFileId_
    , _aPayload = pAPayload_
    }

-- | User profile ID associated with this request.
aProFileId :: Lens' AdsUpdate Int64
aProFileId
  = lens _aProFileId (\ s a -> s{_aProFileId = a}) .
      _Coerce

-- | Multipart request metadata.
aPayload :: Lens' AdsUpdate Ad
aPayload = lens _aPayload (\ s a -> s{_aPayload = a})

instance GoogleRequest AdsUpdate where
        type Rs AdsUpdate = Ad
        requestClient AdsUpdate{..}
          = go _aProFileId (Just AltJSON) _aPayload
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy AdsUpdateResource)
                      mempty
