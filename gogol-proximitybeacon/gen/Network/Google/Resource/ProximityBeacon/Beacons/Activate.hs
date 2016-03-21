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
-- Module      : Network.Google.Resource.ProximityBeacon.Beacons.Activate
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- (Re)activates a beacon. A beacon that is active will return information
-- and attachment data when queried via \`beaconinfo.getforobserved\`.
-- Calling this method on an already active beacon will do nothing (but
-- will return a successful response code).
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Google Proximity Beacon API Reference> for @proximitybeacon.beacons.activate@.
module Network.Google.Resource.ProximityBeacon.Beacons.Activate
    (
    -- * REST Resource
      BeaconsActivateResource

    -- * Creating a Request
    , beaconsActivate
    , BeaconsActivate

    -- * Request Lenses
    , baXgafv
    , baUploadProtocol
    , baPp
    , baAccessToken
    , baBeaconName
    , baUploadType
    , baBearerToken
    , baCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ProximityBeacon.Types

-- | A resource alias for @proximitybeacon.beacons.activate@ method which the
-- 'BeaconsActivate' request conforms to.
type BeaconsActivateResource =
     "v1beta1" :>
       CaptureMode "beaconName" "activate" Text :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Post '[JSON] Empty

-- | (Re)activates a beacon. A beacon that is active will return information
-- and attachment data when queried via \`beaconinfo.getforobserved\`.
-- Calling this method on an already active beacon will do nothing (but
-- will return a successful response code).
--
-- /See:/ 'beaconsActivate' smart constructor.
data BeaconsActivate = BeaconsActivate'
    { _baXgafv          :: !(Maybe Text)
    , _baUploadProtocol :: !(Maybe Text)
    , _baPp             :: !Bool
    , _baAccessToken    :: !(Maybe Text)
    , _baBeaconName     :: !Text
    , _baUploadType     :: !(Maybe Text)
    , _baBearerToken    :: !(Maybe Text)
    , _baCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BeaconsActivate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'baXgafv'
--
-- * 'baUploadProtocol'
--
-- * 'baPp'
--
-- * 'baAccessToken'
--
-- * 'baBeaconName'
--
-- * 'baUploadType'
--
-- * 'baBearerToken'
--
-- * 'baCallback'
beaconsActivate
    :: Text -- ^ 'baBeaconName'
    -> BeaconsActivate
beaconsActivate pBaBeaconName_ =
    BeaconsActivate'
    { _baXgafv = Nothing
    , _baUploadProtocol = Nothing
    , _baPp = True
    , _baAccessToken = Nothing
    , _baBeaconName = pBaBeaconName_
    , _baUploadType = Nothing
    , _baBearerToken = Nothing
    , _baCallback = Nothing
    }

-- | V1 error format.
baXgafv :: Lens' BeaconsActivate (Maybe Text)
baXgafv = lens _baXgafv (\ s a -> s{_baXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
baUploadProtocol :: Lens' BeaconsActivate (Maybe Text)
baUploadProtocol
  = lens _baUploadProtocol
      (\ s a -> s{_baUploadProtocol = a})

-- | Pretty-print response.
baPp :: Lens' BeaconsActivate Bool
baPp = lens _baPp (\ s a -> s{_baPp = a})

-- | OAuth access token.
baAccessToken :: Lens' BeaconsActivate (Maybe Text)
baAccessToken
  = lens _baAccessToken
      (\ s a -> s{_baAccessToken = a})

-- | The beacon to activate. Required.
baBeaconName :: Lens' BeaconsActivate Text
baBeaconName
  = lens _baBeaconName (\ s a -> s{_baBeaconName = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
baUploadType :: Lens' BeaconsActivate (Maybe Text)
baUploadType
  = lens _baUploadType (\ s a -> s{_baUploadType = a})

-- | OAuth bearer token.
baBearerToken :: Lens' BeaconsActivate (Maybe Text)
baBearerToken
  = lens _baBearerToken
      (\ s a -> s{_baBearerToken = a})

-- | JSONP
baCallback :: Lens' BeaconsActivate (Maybe Text)
baCallback
  = lens _baCallback (\ s a -> s{_baCallback = a})

instance GoogleRequest BeaconsActivate where
        type Rs BeaconsActivate = Empty
        type Scopes BeaconsActivate = '[]
        requestClient BeaconsActivate'{..}
          = go _baBeaconName _baXgafv _baUploadProtocol
              (Just _baPp)
              _baAccessToken
              _baUploadType
              _baBearerToken
              _baCallback
              (Just AltJSON)
              proximityBeaconService
          where go
                  = buildClient
                      (Proxy :: Proxy BeaconsActivateResource)
                      mempty
