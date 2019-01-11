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
-- Module      : Network.Google.Resource.ProximityBeacon.Beacons.Decommission
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Decommissions the specified beacon in the service. This beacon will no
-- longer be returned from \`beaconinfo.getforobserved\`. This operation is
-- permanent -- you will not be able to re-register a beacon with this ID
-- again. Authenticate using an [OAuth access
-- token](https:\/\/developers.google.com\/identity\/protocols\/OAuth2)
-- from a signed-in user with **Is owner** or **Can edit** permissions in
-- the Google Developers Console project.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Proximity Beacon API Reference> for @proximitybeacon.beacons.decommission@.
module Network.Google.Resource.ProximityBeacon.Beacons.Decommission
    (
    -- * REST Resource
      BeaconsDecommissionResource

    -- * Creating a Request
    , beaconsDecommission
    , BeaconsDecommission

    -- * Request Lenses
    , bddXgafv
    , bddUploadProtocol
    , bddAccessToken
    , bddBeaconName
    , bddUploadType
    , bddProjectId
    , bddCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ProximityBeacon.Types

-- | A resource alias for @proximitybeacon.beacons.decommission@ method which the
-- 'BeaconsDecommission' request conforms to.
type BeaconsDecommissionResource =
     "v1beta1" :>
       CaptureMode "beaconName" "decommission" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "projectId" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Post '[JSON] Empty

-- | Decommissions the specified beacon in the service. This beacon will no
-- longer be returned from \`beaconinfo.getforobserved\`. This operation is
-- permanent -- you will not be able to re-register a beacon with this ID
-- again. Authenticate using an [OAuth access
-- token](https:\/\/developers.google.com\/identity\/protocols\/OAuth2)
-- from a signed-in user with **Is owner** or **Can edit** permissions in
-- the Google Developers Console project.
--
-- /See:/ 'beaconsDecommission' smart constructor.
data BeaconsDecommission = BeaconsDecommission'
    { _bddXgafv          :: !(Maybe Xgafv)
    , _bddUploadProtocol :: !(Maybe Text)
    , _bddAccessToken    :: !(Maybe Text)
    , _bddBeaconName     :: !Text
    , _bddUploadType     :: !(Maybe Text)
    , _bddProjectId      :: !(Maybe Text)
    , _bddCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BeaconsDecommission' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bddXgafv'
--
-- * 'bddUploadProtocol'
--
-- * 'bddAccessToken'
--
-- * 'bddBeaconName'
--
-- * 'bddUploadType'
--
-- * 'bddProjectId'
--
-- * 'bddCallback'
beaconsDecommission
    :: Text -- ^ 'bddBeaconName'
    -> BeaconsDecommission
beaconsDecommission pBddBeaconName_ =
    BeaconsDecommission'
    { _bddXgafv = Nothing
    , _bddUploadProtocol = Nothing
    , _bddAccessToken = Nothing
    , _bddBeaconName = pBddBeaconName_
    , _bddUploadType = Nothing
    , _bddProjectId = Nothing
    , _bddCallback = Nothing
    }

-- | V1 error format.
bddXgafv :: Lens' BeaconsDecommission (Maybe Xgafv)
bddXgafv = lens _bddXgafv (\ s a -> s{_bddXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bddUploadProtocol :: Lens' BeaconsDecommission (Maybe Text)
bddUploadProtocol
  = lens _bddUploadProtocol
      (\ s a -> s{_bddUploadProtocol = a})

-- | OAuth access token.
bddAccessToken :: Lens' BeaconsDecommission (Maybe Text)
bddAccessToken
  = lens _bddAccessToken
      (\ s a -> s{_bddAccessToken = a})

-- | Beacon that should be decommissioned. A beacon name has the format
-- \"beacons\/N!beaconId\" where the beaconId is the base16 ID broadcast by
-- the beacon and N is a code for the beacon\'s type. Possible values are
-- \`3\` for Eddystone-UID, \`4\` for Eddystone-EID, \`1\` for iBeacon, or
-- \`5\` for AltBeacon. For Eddystone-EID beacons, you may use either the
-- current EID of the beacon\'s \"stable\" UID. Required.
bddBeaconName :: Lens' BeaconsDecommission Text
bddBeaconName
  = lens _bddBeaconName
      (\ s a -> s{_bddBeaconName = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bddUploadType :: Lens' BeaconsDecommission (Maybe Text)
bddUploadType
  = lens _bddUploadType
      (\ s a -> s{_bddUploadType = a})

-- | The project id of the beacon to decommission. If the project id is not
-- specified then the project making the request is used. The project id
-- must match the project that owns the beacon. Optional.
bddProjectId :: Lens' BeaconsDecommission (Maybe Text)
bddProjectId
  = lens _bddProjectId (\ s a -> s{_bddProjectId = a})

-- | JSONP
bddCallback :: Lens' BeaconsDecommission (Maybe Text)
bddCallback
  = lens _bddCallback (\ s a -> s{_bddCallback = a})

instance GoogleRequest BeaconsDecommission where
        type Rs BeaconsDecommission = Empty
        type Scopes BeaconsDecommission =
             '["https://www.googleapis.com/auth/userlocation.beacon.registry"]
        requestClient BeaconsDecommission'{..}
          = go _bddBeaconName _bddXgafv _bddUploadProtocol
              _bddAccessToken
              _bddUploadType
              _bddProjectId
              _bddCallback
              (Just AltJSON)
              proximityBeaconService
          where go
                  = buildClient
                      (Proxy :: Proxy BeaconsDecommissionResource)
                      mempty
