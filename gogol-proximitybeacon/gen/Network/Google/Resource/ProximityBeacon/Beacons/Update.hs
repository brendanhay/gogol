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
-- Module      : Network.Google.Resource.ProximityBeacon.Beacons.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the information about the specified beacon. **Any field that you
-- do not populate in the submitted beacon will be permanently erased**, so
-- you should follow the \"read, modify, write\" pattern to avoid
-- inadvertently destroying data. Changes to the beacon status via this
-- method will be silently ignored. To update beacon status, use the
-- separate methods on this API for activation, deactivation, and
-- decommissioning. Authenticate using an [OAuth access
-- token](https:\/\/developers.google.com\/identity\/protocols\/OAuth2)
-- from a signed-in user with **Is owner** or **Can edit** permissions in
-- the Google Developers Console project.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Proximity Beacon API Reference> for @proximitybeacon.beacons.update@.
module Network.Google.Resource.ProximityBeacon.Beacons.Update
    (
    -- * REST Resource
      BeaconsUpdateResource

    -- * Creating a Request
    , beaconsUpdate
    , BeaconsUpdate

    -- * Request Lenses
    , buXgafv
    , buUploadProtocol
    , buAccessToken
    , buBeaconName
    , buUploadType
    , buPayload
    , buProjectId
    , buCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ProximityBeacon.Types

-- | A resource alias for @proximitybeacon.beacons.update@ method which the
-- 'BeaconsUpdate' request conforms to.
type BeaconsUpdateResource =
     "v1beta1" :>
       Capture "beaconName" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "projectId" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Beacon :> Put '[JSON] Beacon

-- | Updates the information about the specified beacon. **Any field that you
-- do not populate in the submitted beacon will be permanently erased**, so
-- you should follow the \"read, modify, write\" pattern to avoid
-- inadvertently destroying data. Changes to the beacon status via this
-- method will be silently ignored. To update beacon status, use the
-- separate methods on this API for activation, deactivation, and
-- decommissioning. Authenticate using an [OAuth access
-- token](https:\/\/developers.google.com\/identity\/protocols\/OAuth2)
-- from a signed-in user with **Is owner** or **Can edit** permissions in
-- the Google Developers Console project.
--
-- /See:/ 'beaconsUpdate' smart constructor.
data BeaconsUpdate = BeaconsUpdate'
    { _buXgafv          :: !(Maybe Xgafv)
    , _buUploadProtocol :: !(Maybe Text)
    , _buAccessToken    :: !(Maybe Text)
    , _buBeaconName     :: !Text
    , _buUploadType     :: !(Maybe Text)
    , _buPayload        :: !Beacon
    , _buProjectId      :: !(Maybe Text)
    , _buCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BeaconsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'buXgafv'
--
-- * 'buUploadProtocol'
--
-- * 'buAccessToken'
--
-- * 'buBeaconName'
--
-- * 'buUploadType'
--
-- * 'buPayload'
--
-- * 'buProjectId'
--
-- * 'buCallback'
beaconsUpdate
    :: Text -- ^ 'buBeaconName'
    -> Beacon -- ^ 'buPayload'
    -> BeaconsUpdate
beaconsUpdate pBuBeaconName_ pBuPayload_ =
    BeaconsUpdate'
    { _buXgafv = Nothing
    , _buUploadProtocol = Nothing
    , _buAccessToken = Nothing
    , _buBeaconName = pBuBeaconName_
    , _buUploadType = Nothing
    , _buPayload = pBuPayload_
    , _buProjectId = Nothing
    , _buCallback = Nothing
    }

-- | V1 error format.
buXgafv :: Lens' BeaconsUpdate (Maybe Xgafv)
buXgafv = lens _buXgafv (\ s a -> s{_buXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
buUploadProtocol :: Lens' BeaconsUpdate (Maybe Text)
buUploadProtocol
  = lens _buUploadProtocol
      (\ s a -> s{_buUploadProtocol = a})

-- | OAuth access token.
buAccessToken :: Lens' BeaconsUpdate (Maybe Text)
buAccessToken
  = lens _buAccessToken
      (\ s a -> s{_buAccessToken = a})

-- | Resource name of this beacon. A beacon name has the format
-- \"beacons\/N!beaconId\" where the beaconId is the base16 ID broadcast by
-- the beacon and N is a code for the beacon\'s type. Possible values are
-- \`3\` for Eddystone, \`1\` for iBeacon, or \`5\` for AltBeacon. This
-- field must be left empty when registering. After reading a beacon,
-- clients can use the name for future operations.
buBeaconName :: Lens' BeaconsUpdate Text
buBeaconName
  = lens _buBeaconName (\ s a -> s{_buBeaconName = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
buUploadType :: Lens' BeaconsUpdate (Maybe Text)
buUploadType
  = lens _buUploadType (\ s a -> s{_buUploadType = a})

-- | Multipart request metadata.
buPayload :: Lens' BeaconsUpdate Beacon
buPayload
  = lens _buPayload (\ s a -> s{_buPayload = a})

-- | The project id of the beacon to update. If the project id is not
-- specified then the project making the request is used. The project id
-- must match the project that owns the beacon. Optional.
buProjectId :: Lens' BeaconsUpdate (Maybe Text)
buProjectId
  = lens _buProjectId (\ s a -> s{_buProjectId = a})

-- | JSONP
buCallback :: Lens' BeaconsUpdate (Maybe Text)
buCallback
  = lens _buCallback (\ s a -> s{_buCallback = a})

instance GoogleRequest BeaconsUpdate where
        type Rs BeaconsUpdate = Beacon
        type Scopes BeaconsUpdate =
             '["https://www.googleapis.com/auth/userlocation.beacon.registry"]
        requestClient BeaconsUpdate'{..}
          = go _buBeaconName _buXgafv _buUploadProtocol
              _buAccessToken
              _buUploadType
              _buProjectId
              _buCallback
              (Just AltJSON)
              _buPayload
              proximityBeaconService
          where go
                  = buildClient (Proxy :: Proxy BeaconsUpdateResource)
                      mempty
