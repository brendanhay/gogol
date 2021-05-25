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
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.advertisers.patch@.
module Network.Google.Resource.DFAReporting.Advertisers.Patch
    (
    -- * REST Resource
      AdvertisersPatchResource

    -- * Creating a Request
    , advertisersPatch
    , AdvertisersPatch

    -- * Request Lenses
    , apXgafv
    , apUploadProtocol
    , apAccessToken
    , apUploadType
    , apProFileId
    , apPayload
    , apId
    , apCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.advertisers.patch@ method which the
-- 'AdvertisersPatch' request conforms to.
type AdvertisersPatchResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "advertisers" :>
               QueryParam "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Advertiser :>
                               Patch '[JSON] Advertiser

-- | Updates an existing advertiser. This method supports patch semantics.
--
-- /See:/ 'advertisersPatch' smart constructor.
data AdvertisersPatch =
  AdvertisersPatch'
    { _apXgafv :: !(Maybe Xgafv)
    , _apUploadProtocol :: !(Maybe Text)
    , _apAccessToken :: !(Maybe Text)
    , _apUploadType :: !(Maybe Text)
    , _apProFileId :: !(Textual Int64)
    , _apPayload :: !Advertiser
    , _apId :: !(Textual Int64)
    , _apCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AdvertisersPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apXgafv'
--
-- * 'apUploadProtocol'
--
-- * 'apAccessToken'
--
-- * 'apUploadType'
--
-- * 'apProFileId'
--
-- * 'apPayload'
--
-- * 'apId'
--
-- * 'apCallback'
advertisersPatch
    :: Int64 -- ^ 'apProFileId'
    -> Advertiser -- ^ 'apPayload'
    -> Int64 -- ^ 'apId'
    -> AdvertisersPatch
advertisersPatch pApProFileId_ pApPayload_ pApId_ =
  AdvertisersPatch'
    { _apXgafv = Nothing
    , _apUploadProtocol = Nothing
    , _apAccessToken = Nothing
    , _apUploadType = Nothing
    , _apProFileId = _Coerce # pApProFileId_
    , _apPayload = pApPayload_
    , _apId = _Coerce # pApId_
    , _apCallback = Nothing
    }


-- | V1 error format.
apXgafv :: Lens' AdvertisersPatch (Maybe Xgafv)
apXgafv = lens _apXgafv (\ s a -> s{_apXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
apUploadProtocol :: Lens' AdvertisersPatch (Maybe Text)
apUploadProtocol
  = lens _apUploadProtocol
      (\ s a -> s{_apUploadProtocol = a})

-- | OAuth access token.
apAccessToken :: Lens' AdvertisersPatch (Maybe Text)
apAccessToken
  = lens _apAccessToken
      (\ s a -> s{_apAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
apUploadType :: Lens' AdvertisersPatch (Maybe Text)
apUploadType
  = lens _apUploadType (\ s a -> s{_apUploadType = a})

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

-- | JSONP
apCallback :: Lens' AdvertisersPatch (Maybe Text)
apCallback
  = lens _apCallback (\ s a -> s{_apCallback = a})

instance GoogleRequest AdvertisersPatch where
        type Rs AdvertisersPatch = Advertiser
        type Scopes AdvertisersPatch =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient AdvertisersPatch'{..}
          = go _apProFileId (Just _apId) _apXgafv
              _apUploadProtocol
              _apAccessToken
              _apUploadType
              _apCallback
              (Just AltJSON)
              _apPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy AdvertisersPatchResource)
                      mempty
