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
-- Module      : Network.Google.Resource.Genomics.Workers.CheckIn
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The worker uses this method to retrieve the assigned operation and
-- provide periodic status updates.
--
-- /See:/ <https://cloud.google.com/genomics Genomics API Reference> for @genomics.workers.checkIn@.
module Network.Google.Resource.Genomics.Workers.CheckIn
    (
    -- * REST Resource
      WorkersCheckInResource

    -- * Creating a Request
    , workersCheckIn
    , WorkersCheckIn

    -- * Request Lenses
    , wciXgafv
    , wciUploadProtocol
    , wciAccessToken
    , wciUploadType
    , wciPayload
    , wciId
    , wciCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.workers.checkIn@ method which the
-- 'WorkersCheckIn' request conforms to.
type WorkersCheckInResource =
     "v2alpha1" :>
       "workers" :>
         CaptureMode "id" "checkIn" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] CheckInRequest :>
                         Post '[JSON] CheckInResponse

-- | The worker uses this method to retrieve the assigned operation and
-- provide periodic status updates.
--
-- /See:/ 'workersCheckIn' smart constructor.
data WorkersCheckIn =
  WorkersCheckIn'
    { _wciXgafv          :: !(Maybe Xgafv)
    , _wciUploadProtocol :: !(Maybe Text)
    , _wciAccessToken    :: !(Maybe Text)
    , _wciUploadType     :: !(Maybe Text)
    , _wciPayload        :: !CheckInRequest
    , _wciId             :: !Text
    , _wciCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WorkersCheckIn' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wciXgafv'
--
-- * 'wciUploadProtocol'
--
-- * 'wciAccessToken'
--
-- * 'wciUploadType'
--
-- * 'wciPayload'
--
-- * 'wciId'
--
-- * 'wciCallback'
workersCheckIn
    :: CheckInRequest -- ^ 'wciPayload'
    -> Text -- ^ 'wciId'
    -> WorkersCheckIn
workersCheckIn pWciPayload_ pWciId_ =
  WorkersCheckIn'
    { _wciXgafv = Nothing
    , _wciUploadProtocol = Nothing
    , _wciAccessToken = Nothing
    , _wciUploadType = Nothing
    , _wciPayload = pWciPayload_
    , _wciId = pWciId_
    , _wciCallback = Nothing
    }


-- | V1 error format.
wciXgafv :: Lens' WorkersCheckIn (Maybe Xgafv)
wciXgafv = lens _wciXgafv (\ s a -> s{_wciXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
wciUploadProtocol :: Lens' WorkersCheckIn (Maybe Text)
wciUploadProtocol
  = lens _wciUploadProtocol
      (\ s a -> s{_wciUploadProtocol = a})

-- | OAuth access token.
wciAccessToken :: Lens' WorkersCheckIn (Maybe Text)
wciAccessToken
  = lens _wciAccessToken
      (\ s a -> s{_wciAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
wciUploadType :: Lens' WorkersCheckIn (Maybe Text)
wciUploadType
  = lens _wciUploadType
      (\ s a -> s{_wciUploadType = a})

-- | Multipart request metadata.
wciPayload :: Lens' WorkersCheckIn CheckInRequest
wciPayload
  = lens _wciPayload (\ s a -> s{_wciPayload = a})

-- | The worker id, assigned when it was created.
wciId :: Lens' WorkersCheckIn Text
wciId = lens _wciId (\ s a -> s{_wciId = a})

-- | JSONP
wciCallback :: Lens' WorkersCheckIn (Maybe Text)
wciCallback
  = lens _wciCallback (\ s a -> s{_wciCallback = a})

instance GoogleRequest WorkersCheckIn where
        type Rs WorkersCheckIn = CheckInResponse
        type Scopes WorkersCheckIn =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/genomics"]
        requestClient WorkersCheckIn'{..}
          = go _wciId _wciXgafv _wciUploadProtocol
              _wciAccessToken
              _wciUploadType
              _wciCallback
              (Just AltJSON)
              _wciPayload
              genomicsService
          where go
                  = buildClient (Proxy :: Proxy WorkersCheckInResource)
                      mempty
