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
-- Module      : Network.Google.Resource.DFAReporting.AdvertiserLandingPages.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing landing page.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.advertiserLandingPages.update@.
module Network.Google.Resource.DFAReporting.AdvertiserLandingPages.Update
    (
    -- * REST Resource
      AdvertiserLandingPagesUpdateResource

    -- * Creating a Request
    , advertiserLandingPagesUpdate
    , AdvertiserLandingPagesUpdate

    -- * Request Lenses
    , alpuXgafv
    , alpuUploadProtocol
    , alpuAccessToken
    , alpuUploadType
    , alpuProFileId
    , alpuPayload
    , alpuCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.advertiserLandingPages.update@ method which the
-- 'AdvertiserLandingPagesUpdate' request conforms to.
type AdvertiserLandingPagesUpdateResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "advertiserLandingPages" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] LandingPage :>
                             Put '[JSON] LandingPage

-- | Updates an existing landing page.
--
-- /See:/ 'advertiserLandingPagesUpdate' smart constructor.
data AdvertiserLandingPagesUpdate =
  AdvertiserLandingPagesUpdate'
    { _alpuXgafv :: !(Maybe Xgafv)
    , _alpuUploadProtocol :: !(Maybe Text)
    , _alpuAccessToken :: !(Maybe Text)
    , _alpuUploadType :: !(Maybe Text)
    , _alpuProFileId :: !(Textual Int64)
    , _alpuPayload :: !LandingPage
    , _alpuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AdvertiserLandingPagesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alpuXgafv'
--
-- * 'alpuUploadProtocol'
--
-- * 'alpuAccessToken'
--
-- * 'alpuUploadType'
--
-- * 'alpuProFileId'
--
-- * 'alpuPayload'
--
-- * 'alpuCallback'
advertiserLandingPagesUpdate
    :: Int64 -- ^ 'alpuProFileId'
    -> LandingPage -- ^ 'alpuPayload'
    -> AdvertiserLandingPagesUpdate
advertiserLandingPagesUpdate pAlpuProFileId_ pAlpuPayload_ =
  AdvertiserLandingPagesUpdate'
    { _alpuXgafv = Nothing
    , _alpuUploadProtocol = Nothing
    , _alpuAccessToken = Nothing
    , _alpuUploadType = Nothing
    , _alpuProFileId = _Coerce # pAlpuProFileId_
    , _alpuPayload = pAlpuPayload_
    , _alpuCallback = Nothing
    }


-- | V1 error format.
alpuXgafv :: Lens' AdvertiserLandingPagesUpdate (Maybe Xgafv)
alpuXgafv
  = lens _alpuXgafv (\ s a -> s{_alpuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
alpuUploadProtocol :: Lens' AdvertiserLandingPagesUpdate (Maybe Text)
alpuUploadProtocol
  = lens _alpuUploadProtocol
      (\ s a -> s{_alpuUploadProtocol = a})

-- | OAuth access token.
alpuAccessToken :: Lens' AdvertiserLandingPagesUpdate (Maybe Text)
alpuAccessToken
  = lens _alpuAccessToken
      (\ s a -> s{_alpuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
alpuUploadType :: Lens' AdvertiserLandingPagesUpdate (Maybe Text)
alpuUploadType
  = lens _alpuUploadType
      (\ s a -> s{_alpuUploadType = a})

-- | User profile ID associated with this request.
alpuProFileId :: Lens' AdvertiserLandingPagesUpdate Int64
alpuProFileId
  = lens _alpuProFileId
      (\ s a -> s{_alpuProFileId = a})
      . _Coerce

-- | Multipart request metadata.
alpuPayload :: Lens' AdvertiserLandingPagesUpdate LandingPage
alpuPayload
  = lens _alpuPayload (\ s a -> s{_alpuPayload = a})

-- | JSONP
alpuCallback :: Lens' AdvertiserLandingPagesUpdate (Maybe Text)
alpuCallback
  = lens _alpuCallback (\ s a -> s{_alpuCallback = a})

instance GoogleRequest AdvertiserLandingPagesUpdate
         where
        type Rs AdvertiserLandingPagesUpdate = LandingPage
        type Scopes AdvertiserLandingPagesUpdate =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient AdvertiserLandingPagesUpdate'{..}
          = go _alpuProFileId _alpuXgafv _alpuUploadProtocol
              _alpuAccessToken
              _alpuUploadType
              _alpuCallback
              (Just AltJSON)
              _alpuPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy AdvertiserLandingPagesUpdateResource)
                      mempty
