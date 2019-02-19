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
-- Activates a beacon. A beacon that is active will return information and
-- attachment data when queried via \`beaconinfo.getforobserved\`. Calling
-- this method on an already active beacon will do nothing (but will return
-- a successful response code). Authenticate using an [OAuth access
-- token](https:\/\/developers.google.com\/identity\/protocols\/OAuth2)
-- from a signed-in user with **Is owner** or **Can edit** permissions in
-- the Google Developers Console project.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Proximity Beacon API Reference> for @proximitybeacon.beacons.activate@.
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
    , baAccessToken
    , baBeaconName
    , baUploadType
    , baProjectId
    , baCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ProximityBeacon.Types

-- | A resource alias for @proximitybeacon.beacons.activate@ method which the
-- 'BeaconsActivate' request conforms to.
type BeaconsActivateResource =
     "v1beta1" :>
       CaptureMode "beaconName" "activate" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "projectId" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Post '[JSON] Empty

-- | Activates a beacon. A beacon that is active will return information and
-- attachment data when queried via \`beaconinfo.getforobserved\`. Calling
-- this method on an already active beacon will do nothing (but will return
-- a successful response code). Authenticate using an [OAuth access
-- token](https:\/\/developers.google.com\/identity\/protocols\/OAuth2)
-- from a signed-in user with **Is owner** or **Can edit** permissions in
-- the Google Developers Console project.
--
-- /See:/ 'beaconsActivate' smart constructor.
data BeaconsActivate =
  BeaconsActivate'
    { _baXgafv          :: !(Maybe Xgafv)
    , _baUploadProtocol :: !(Maybe Text)
    , _baAccessToken    :: !(Maybe Text)
    , _baBeaconName     :: !Text
    , _baUploadType     :: !(Maybe Text)
    , _baProjectId      :: !(Maybe Text)
    , _baCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'BeaconsActivate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'baXgafv'
--
-- * 'baUploadProtocol'
--
-- * 'baAccessToken'
--
-- * 'baBeaconName'
--
-- * 'baUploadType'
--
-- * 'baProjectId'
--
-- * 'baCallback'
beaconsActivate
    :: Text -- ^ 'baBeaconName'
    -> BeaconsActivate
beaconsActivate pBaBeaconName_ =
  BeaconsActivate'
    { _baXgafv = Nothing
    , _baUploadProtocol = Nothing
    , _baAccessToken = Nothing
    , _baBeaconName = pBaBeaconName_
    , _baUploadType = Nothing
    , _baProjectId = Nothing
    , _baCallback = Nothing
    }

-- | V1 error format.
baXgafv :: Lens' BeaconsActivate (Maybe Xgafv)
baXgafv = lens _baXgafv (\ s a -> s{_baXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
baUploadProtocol :: Lens' BeaconsActivate (Maybe Text)
baUploadProtocol
  = lens _baUploadProtocol
      (\ s a -> s{_baUploadProtocol = a})

-- | OAuth access token.
baAccessToken :: Lens' BeaconsActivate (Maybe Text)
baAccessToken
  = lens _baAccessToken
      (\ s a -> s{_baAccessToken = a})

-- | Beacon that should be activated. A beacon name has the format
-- \"beacons\/N!beaconId\" where the beaconId is the base16 ID broadcast by
-- the beacon and N is a code for the beacon\'s type. Possible values are
-- \`3\` for Eddystone-UID, \`4\` for Eddystone-EID, \`1\` for iBeacon, or
-- \`5\` for AltBeacon. For Eddystone-EID beacons, you may use either the
-- current EID or the beacon\'s \"stable\" UID. Required.
baBeaconName :: Lens' BeaconsActivate Text
baBeaconName
  = lens _baBeaconName (\ s a -> s{_baBeaconName = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
baUploadType :: Lens' BeaconsActivate (Maybe Text)
baUploadType
  = lens _baUploadType (\ s a -> s{_baUploadType = a})

-- | The project id of the beacon to activate. If the project id is not
-- specified then the project making the request is used. The project id
-- must match the project that owns the beacon. Optional.
baProjectId :: Lens' BeaconsActivate (Maybe Text)
baProjectId
  = lens _baProjectId (\ s a -> s{_baProjectId = a})

-- | JSONP
baCallback :: Lens' BeaconsActivate (Maybe Text)
baCallback
  = lens _baCallback (\ s a -> s{_baCallback = a})

instance GoogleRequest BeaconsActivate where
        type Rs BeaconsActivate = Empty
        type Scopes BeaconsActivate =
             '["https://www.googleapis.com/auth/userlocation.beacon.registry"]
        requestClient BeaconsActivate'{..}
          = go _baBeaconName _baXgafv _baUploadProtocol
              _baAccessToken
              _baUploadType
              _baProjectId
              _baCallback
              (Just AltJSON)
              proximityBeaconService
          where go
                  = buildClient
                      (Proxy :: Proxy BeaconsActivateResource)
                      mempty
