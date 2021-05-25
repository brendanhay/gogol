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
-- Module      : Network.Google.Resource.DFAReporting.AdvertiserLandingPages.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing advertiser landing page. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.advertiserLandingPages.patch@.
module Network.Google.Resource.DFAReporting.AdvertiserLandingPages.Patch
    (
    -- * REST Resource
      AdvertiserLandingPagesPatchResource

    -- * Creating a Request
    , advertiserLandingPagesPatch
    , AdvertiserLandingPagesPatch

    -- * Request Lenses
    , alppXgafv
    , alppUploadProtocol
    , alppAccessToken
    , alppUploadType
    , alppProFileId
    , alppPayload
    , alppId
    , alppCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.advertiserLandingPages.patch@ method which the
-- 'AdvertiserLandingPagesPatch' request conforms to.
type AdvertiserLandingPagesPatchResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "advertiserLandingPages" :>
               QueryParam "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] LandingPage :>
                               Patch '[JSON] LandingPage

-- | Updates an existing advertiser landing page. This method supports patch
-- semantics.
--
-- /See:/ 'advertiserLandingPagesPatch' smart constructor.
data AdvertiserLandingPagesPatch =
  AdvertiserLandingPagesPatch'
    { _alppXgafv :: !(Maybe Xgafv)
    , _alppUploadProtocol :: !(Maybe Text)
    , _alppAccessToken :: !(Maybe Text)
    , _alppUploadType :: !(Maybe Text)
    , _alppProFileId :: !(Textual Int64)
    , _alppPayload :: !LandingPage
    , _alppId :: !(Textual Int64)
    , _alppCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AdvertiserLandingPagesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alppXgafv'
--
-- * 'alppUploadProtocol'
--
-- * 'alppAccessToken'
--
-- * 'alppUploadType'
--
-- * 'alppProFileId'
--
-- * 'alppPayload'
--
-- * 'alppId'
--
-- * 'alppCallback'
advertiserLandingPagesPatch
    :: Int64 -- ^ 'alppProFileId'
    -> LandingPage -- ^ 'alppPayload'
    -> Int64 -- ^ 'alppId'
    -> AdvertiserLandingPagesPatch
advertiserLandingPagesPatch pAlppProFileId_ pAlppPayload_ pAlppId_ =
  AdvertiserLandingPagesPatch'
    { _alppXgafv = Nothing
    , _alppUploadProtocol = Nothing
    , _alppAccessToken = Nothing
    , _alppUploadType = Nothing
    , _alppProFileId = _Coerce # pAlppProFileId_
    , _alppPayload = pAlppPayload_
    , _alppId = _Coerce # pAlppId_
    , _alppCallback = Nothing
    }


-- | V1 error format.
alppXgafv :: Lens' AdvertiserLandingPagesPatch (Maybe Xgafv)
alppXgafv
  = lens _alppXgafv (\ s a -> s{_alppXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
alppUploadProtocol :: Lens' AdvertiserLandingPagesPatch (Maybe Text)
alppUploadProtocol
  = lens _alppUploadProtocol
      (\ s a -> s{_alppUploadProtocol = a})

-- | OAuth access token.
alppAccessToken :: Lens' AdvertiserLandingPagesPatch (Maybe Text)
alppAccessToken
  = lens _alppAccessToken
      (\ s a -> s{_alppAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
alppUploadType :: Lens' AdvertiserLandingPagesPatch (Maybe Text)
alppUploadType
  = lens _alppUploadType
      (\ s a -> s{_alppUploadType = a})

-- | User profile ID associated with this request.
alppProFileId :: Lens' AdvertiserLandingPagesPatch Int64
alppProFileId
  = lens _alppProFileId
      (\ s a -> s{_alppProFileId = a})
      . _Coerce

-- | Multipart request metadata.
alppPayload :: Lens' AdvertiserLandingPagesPatch LandingPage
alppPayload
  = lens _alppPayload (\ s a -> s{_alppPayload = a})

-- | LandingPage ID.
alppId :: Lens' AdvertiserLandingPagesPatch Int64
alppId
  = lens _alppId (\ s a -> s{_alppId = a}) . _Coerce

-- | JSONP
alppCallback :: Lens' AdvertiserLandingPagesPatch (Maybe Text)
alppCallback
  = lens _alppCallback (\ s a -> s{_alppCallback = a})

instance GoogleRequest AdvertiserLandingPagesPatch
         where
        type Rs AdvertiserLandingPagesPatch = LandingPage
        type Scopes AdvertiserLandingPagesPatch =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient AdvertiserLandingPagesPatch'{..}
          = go _alppProFileId (Just _alppId) _alppXgafv
              _alppUploadProtocol
              _alppAccessToken
              _alppUploadType
              _alppCallback
              (Just AltJSON)
              _alppPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy AdvertiserLandingPagesPatchResource)
                      mempty
