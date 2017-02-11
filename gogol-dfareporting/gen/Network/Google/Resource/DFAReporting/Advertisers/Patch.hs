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
-- Module      : Network.Google.Resource.DFAReporting.Advertisers.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing advertiser. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.advertisers.patch@.
module Network.Google.Resource.DFAReporting.Advertisers.Patch
    (
    -- * REST Resource
      AdvertisersPatchResource

    -- * Creating a Request
    , advertisersPatch
    , AdvertisersPatch

    -- * Request Lenses
    , apProFileId
    , apPayload
    , apId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.advertisers.patch@ method which the
-- 'AdvertisersPatch' request conforms to.
type AdvertisersPatchResource =
     "dfareporting" :>
       "v2.7" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "advertisers" :>
               QueryParam "id" (Textual Int64) :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] Advertiser :>
                     Patch '[JSON] Advertiser

-- | Updates an existing advertiser. This method supports patch semantics.
--
-- /See:/ 'advertisersPatch' smart constructor.
data AdvertisersPatch = AdvertisersPatch'
    { _apProFileId :: !(Textual Int64)
    , _apPayload   :: !Advertiser
    , _apId        :: !(Textual Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdvertisersPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apProFileId'
--
-- * 'apPayload'
--
-- * 'apId'
advertisersPatch
    :: Int64 -- ^ 'apProFileId'
    -> Advertiser -- ^ 'apPayload'
    -> Int64 -- ^ 'apId'
    -> AdvertisersPatch
advertisersPatch pApProFileId_ pApPayload_ pApId_ =
    AdvertisersPatch'
    { _apProFileId = _Coerce # pApProFileId_
    , _apPayload = pApPayload_
    , _apId = _Coerce # pApId_
    }

-- | User profile ID associated with this request.
apProFileId :: Lens' AdvertisersPatch Int64
apProFileId
  = lens _apProFileId (\ s a -> s{_apProFileId = a}) .
      _Coerce

-- | Multipart request metadata.
apPayload :: Lens' AdvertisersPatch Advertiser
apPayload
  = lens _apPayload (\ s a -> s{_apPayload = a})

-- | Advertiser ID.
apId :: Lens' AdvertisersPatch Int64
apId = lens _apId (\ s a -> s{_apId = a}) . _Coerce

instance GoogleRequest AdvertisersPatch where
        type Rs AdvertisersPatch = Advertiser
        type Scopes AdvertisersPatch =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient AdvertisersPatch'{..}
          = go _apProFileId (Just _apId) (Just AltJSON)
              _apPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy AdvertisersPatchResource)
                      mempty
