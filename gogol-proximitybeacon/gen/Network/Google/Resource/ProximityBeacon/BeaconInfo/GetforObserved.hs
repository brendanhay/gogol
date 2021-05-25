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
-- Module      : Network.Google.Resource.ProximityBeacon.BeaconInfo.GetforObserved
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Given one or more beacon observations, returns any beacon information
-- and attachments accessible to your application. Authorize by using the
-- [API
-- key](https:\/\/developers.google.com\/beacons\/proximity\/get-started#request_a_browser_api_key)
-- for the application.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Proximity Beacon API Reference> for @proximitybeacon.beaconinfo.getforobserved@.
module Network.Google.Resource.ProximityBeacon.BeaconInfo.GetforObserved
    (
    -- * REST Resource
      BeaconInfoGetforObservedResource

    -- * Creating a Request
    , beaconInfoGetforObserved
    , BeaconInfoGetforObserved

    -- * Request Lenses
    , bigoXgafv
    , bigoUploadProtocol
    , bigoAccessToken
    , bigoUploadType
    , bigoPayload
    , bigoCallback
    ) where

import Network.Google.Prelude
import Network.Google.ProximityBeacon.Types

-- | A resource alias for @proximitybeacon.beaconinfo.getforobserved@ method which the
-- 'BeaconInfoGetforObserved' request conforms to.
type BeaconInfoGetforObservedResource =
     "v1beta1" :>
       "beaconinfo:getforobserved" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] GetInfoForObservedBeaconsRequest :>
                       Post '[JSON] GetInfoForObservedBeaconsResponse

-- | Given one or more beacon observations, returns any beacon information
-- and attachments accessible to your application. Authorize by using the
-- [API
-- key](https:\/\/developers.google.com\/beacons\/proximity\/get-started#request_a_browser_api_key)
-- for the application.
--
-- /See:/ 'beaconInfoGetforObserved' smart constructor.
data BeaconInfoGetforObserved =
  BeaconInfoGetforObserved'
    { _bigoXgafv :: !(Maybe Xgafv)
    , _bigoUploadProtocol :: !(Maybe Text)
    , _bigoAccessToken :: !(Maybe Text)
    , _bigoUploadType :: !(Maybe Text)
    , _bigoPayload :: !GetInfoForObservedBeaconsRequest
    , _bigoCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BeaconInfoGetforObserved' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bigoXgafv'
--
-- * 'bigoUploadProtocol'
--
-- * 'bigoAccessToken'
--
-- * 'bigoUploadType'
--
-- * 'bigoPayload'
--
-- * 'bigoCallback'
beaconInfoGetforObserved
    :: GetInfoForObservedBeaconsRequest -- ^ 'bigoPayload'
    -> BeaconInfoGetforObserved
beaconInfoGetforObserved pBigoPayload_ =
  BeaconInfoGetforObserved'
    { _bigoXgafv = Nothing
    , _bigoUploadProtocol = Nothing
    , _bigoAccessToken = Nothing
    , _bigoUploadType = Nothing
    , _bigoPayload = pBigoPayload_
    , _bigoCallback = Nothing
    }


-- | V1 error format.
bigoXgafv :: Lens' BeaconInfoGetforObserved (Maybe Xgafv)
bigoXgafv
  = lens _bigoXgafv (\ s a -> s{_bigoXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bigoUploadProtocol :: Lens' BeaconInfoGetforObserved (Maybe Text)
bigoUploadProtocol
  = lens _bigoUploadProtocol
      (\ s a -> s{_bigoUploadProtocol = a})

-- | OAuth access token.
bigoAccessToken :: Lens' BeaconInfoGetforObserved (Maybe Text)
bigoAccessToken
  = lens _bigoAccessToken
      (\ s a -> s{_bigoAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bigoUploadType :: Lens' BeaconInfoGetforObserved (Maybe Text)
bigoUploadType
  = lens _bigoUploadType
      (\ s a -> s{_bigoUploadType = a})

-- | Multipart request metadata.
bigoPayload :: Lens' BeaconInfoGetforObserved GetInfoForObservedBeaconsRequest
bigoPayload
  = lens _bigoPayload (\ s a -> s{_bigoPayload = a})

-- | JSONP
bigoCallback :: Lens' BeaconInfoGetforObserved (Maybe Text)
bigoCallback
  = lens _bigoCallback (\ s a -> s{_bigoCallback = a})

instance GoogleRequest BeaconInfoGetforObserved where
        type Rs BeaconInfoGetforObserved =
             GetInfoForObservedBeaconsResponse
        type Scopes BeaconInfoGetforObserved = '[]
        requestClient BeaconInfoGetforObserved'{..}
          = go _bigoXgafv _bigoUploadProtocol _bigoAccessToken
              _bigoUploadType
              _bigoCallback
              (Just AltJSON)
              _bigoPayload
              proximityBeaconService
          where go
                  = buildClient
                      (Proxy :: Proxy BeaconInfoGetforObservedResource)
                      mempty
