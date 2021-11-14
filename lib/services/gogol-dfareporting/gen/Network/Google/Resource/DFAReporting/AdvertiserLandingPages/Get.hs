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
-- Module      : Network.Google.Resource.DFAReporting.AdvertiserLandingPages.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one landing page by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.advertiserLandingPages.get@.
module Network.Google.Resource.DFAReporting.AdvertiserLandingPages.Get
    (
    -- * REST Resource
      AdvertiserLandingPagesGetResource

    -- * Creating a Request
    , advertiserLandingPagesGet
    , AdvertiserLandingPagesGet

    -- * Request Lenses
    , alpgXgafv
    , alpgUploadProtocol
    , alpgAccessToken
    , alpgUploadType
    , alpgProFileId
    , alpgId
    , alpgCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.advertiserLandingPages.get@ method which the
-- 'AdvertiserLandingPagesGet' request conforms to.
type AdvertiserLandingPagesGetResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "advertiserLandingPages" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] LandingPage

-- | Gets one landing page by ID.
--
-- /See:/ 'advertiserLandingPagesGet' smart constructor.
data AdvertiserLandingPagesGet =
  AdvertiserLandingPagesGet'
    { _alpgXgafv :: !(Maybe Xgafv)
    , _alpgUploadProtocol :: !(Maybe Text)
    , _alpgAccessToken :: !(Maybe Text)
    , _alpgUploadType :: !(Maybe Text)
    , _alpgProFileId :: !(Textual Int64)
    , _alpgId :: !(Textual Int64)
    , _alpgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AdvertiserLandingPagesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alpgXgafv'
--
-- * 'alpgUploadProtocol'
--
-- * 'alpgAccessToken'
--
-- * 'alpgUploadType'
--
-- * 'alpgProFileId'
--
-- * 'alpgId'
--
-- * 'alpgCallback'
advertiserLandingPagesGet
    :: Int64 -- ^ 'alpgProFileId'
    -> Int64 -- ^ 'alpgId'
    -> AdvertiserLandingPagesGet
advertiserLandingPagesGet pAlpgProFileId_ pAlpgId_ =
  AdvertiserLandingPagesGet'
    { _alpgXgafv = Nothing
    , _alpgUploadProtocol = Nothing
    , _alpgAccessToken = Nothing
    , _alpgUploadType = Nothing
    , _alpgProFileId = _Coerce # pAlpgProFileId_
    , _alpgId = _Coerce # pAlpgId_
    , _alpgCallback = Nothing
    }


-- | V1 error format.
alpgXgafv :: Lens' AdvertiserLandingPagesGet (Maybe Xgafv)
alpgXgafv
  = lens _alpgXgafv (\ s a -> s{_alpgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
alpgUploadProtocol :: Lens' AdvertiserLandingPagesGet (Maybe Text)
alpgUploadProtocol
  = lens _alpgUploadProtocol
      (\ s a -> s{_alpgUploadProtocol = a})

-- | OAuth access token.
alpgAccessToken :: Lens' AdvertiserLandingPagesGet (Maybe Text)
alpgAccessToken
  = lens _alpgAccessToken
      (\ s a -> s{_alpgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
alpgUploadType :: Lens' AdvertiserLandingPagesGet (Maybe Text)
alpgUploadType
  = lens _alpgUploadType
      (\ s a -> s{_alpgUploadType = a})

-- | User profile ID associated with this request.
alpgProFileId :: Lens' AdvertiserLandingPagesGet Int64
alpgProFileId
  = lens _alpgProFileId
      (\ s a -> s{_alpgProFileId = a})
      . _Coerce

-- | Landing page ID.
alpgId :: Lens' AdvertiserLandingPagesGet Int64
alpgId
  = lens _alpgId (\ s a -> s{_alpgId = a}) . _Coerce

-- | JSONP
alpgCallback :: Lens' AdvertiserLandingPagesGet (Maybe Text)
alpgCallback
  = lens _alpgCallback (\ s a -> s{_alpgCallback = a})

instance GoogleRequest AdvertiserLandingPagesGet
         where
        type Rs AdvertiserLandingPagesGet = LandingPage
        type Scopes AdvertiserLandingPagesGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient AdvertiserLandingPagesGet'{..}
          = go _alpgProFileId _alpgId _alpgXgafv
              _alpgUploadProtocol
              _alpgAccessToken
              _alpgUploadType
              _alpgCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy AdvertiserLandingPagesGetResource)
                      mempty
