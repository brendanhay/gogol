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
-- Module      : Network.Google.Resource.DFAReporting.AdvertiserLandingPages.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new landing page.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.advertiserLandingPages.insert@.
module Network.Google.Resource.DFAReporting.AdvertiserLandingPages.Insert
    (
    -- * REST Resource
      AdvertiserLandingPagesInsertResource

    -- * Creating a Request
    , advertiserLandingPagesInsert
    , AdvertiserLandingPagesInsert

    -- * Request Lenses
    , alpiXgafv
    , alpiUploadProtocol
    , alpiAccessToken
    , alpiUploadType
    , alpiProFileId
    , alpiPayload
    , alpiCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.advertiserLandingPages.insert@ method which the
-- 'AdvertiserLandingPagesInsert' request conforms to.
type AdvertiserLandingPagesInsertResource =
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
                             Post '[JSON] LandingPage

-- | Inserts a new landing page.
--
-- /See:/ 'advertiserLandingPagesInsert' smart constructor.
data AdvertiserLandingPagesInsert =
  AdvertiserLandingPagesInsert'
    { _alpiXgafv :: !(Maybe Xgafv)
    , _alpiUploadProtocol :: !(Maybe Text)
    , _alpiAccessToken :: !(Maybe Text)
    , _alpiUploadType :: !(Maybe Text)
    , _alpiProFileId :: !(Textual Int64)
    , _alpiPayload :: !LandingPage
    , _alpiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AdvertiserLandingPagesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alpiXgafv'
--
-- * 'alpiUploadProtocol'
--
-- * 'alpiAccessToken'
--
-- * 'alpiUploadType'
--
-- * 'alpiProFileId'
--
-- * 'alpiPayload'
--
-- * 'alpiCallback'
advertiserLandingPagesInsert
    :: Int64 -- ^ 'alpiProFileId'
    -> LandingPage -- ^ 'alpiPayload'
    -> AdvertiserLandingPagesInsert
advertiserLandingPagesInsert pAlpiProFileId_ pAlpiPayload_ =
  AdvertiserLandingPagesInsert'
    { _alpiXgafv = Nothing
    , _alpiUploadProtocol = Nothing
    , _alpiAccessToken = Nothing
    , _alpiUploadType = Nothing
    , _alpiProFileId = _Coerce # pAlpiProFileId_
    , _alpiPayload = pAlpiPayload_
    , _alpiCallback = Nothing
    }


-- | V1 error format.
alpiXgafv :: Lens' AdvertiserLandingPagesInsert (Maybe Xgafv)
alpiXgafv
  = lens _alpiXgafv (\ s a -> s{_alpiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
alpiUploadProtocol :: Lens' AdvertiserLandingPagesInsert (Maybe Text)
alpiUploadProtocol
  = lens _alpiUploadProtocol
      (\ s a -> s{_alpiUploadProtocol = a})

-- | OAuth access token.
alpiAccessToken :: Lens' AdvertiserLandingPagesInsert (Maybe Text)
alpiAccessToken
  = lens _alpiAccessToken
      (\ s a -> s{_alpiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
alpiUploadType :: Lens' AdvertiserLandingPagesInsert (Maybe Text)
alpiUploadType
  = lens _alpiUploadType
      (\ s a -> s{_alpiUploadType = a})

-- | User profile ID associated with this request.
alpiProFileId :: Lens' AdvertiserLandingPagesInsert Int64
alpiProFileId
  = lens _alpiProFileId
      (\ s a -> s{_alpiProFileId = a})
      . _Coerce

-- | Multipart request metadata.
alpiPayload :: Lens' AdvertiserLandingPagesInsert LandingPage
alpiPayload
  = lens _alpiPayload (\ s a -> s{_alpiPayload = a})

-- | JSONP
alpiCallback :: Lens' AdvertiserLandingPagesInsert (Maybe Text)
alpiCallback
  = lens _alpiCallback (\ s a -> s{_alpiCallback = a})

instance GoogleRequest AdvertiserLandingPagesInsert
         where
        type Rs AdvertiserLandingPagesInsert = LandingPage
        type Scopes AdvertiserLandingPagesInsert =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient AdvertiserLandingPagesInsert'{..}
          = go _alpiProFileId _alpiXgafv _alpiUploadProtocol
              _alpiAccessToken
              _alpiUploadType
              _alpiCallback
              (Just AltJSON)
              _alpiPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy AdvertiserLandingPagesInsertResource)
                      mempty
