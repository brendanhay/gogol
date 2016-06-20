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
-- Module      : Network.Google.Resource.ProximityBeacon.Beacons.Deactivate
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deactivates a beacon. Once deactivated, the API will not return
-- information nor attachment data for the beacon when queried via
-- \`beaconinfo.getforobserved\`. Calling this method on an already
-- inactive beacon will do nothing (but will return a successful response
-- code). Authenticate using an [OAuth access
-- token](https:\/\/developers.google.com\/identity\/protocols\/OAuth2)
-- from a signed-in user with **Is owner** or **Can edit** permissions in
-- the Google Developers Console project.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Google Proximity Beacon API Reference> for @proximitybeacon.beacons.deactivate@.
module Network.Google.Resource.ProximityBeacon.Beacons.Deactivate
    (
    -- * REST Resource
      BeaconsDeactivateResource

    -- * Creating a Request
    , beaconsDeactivate
    , BeaconsDeactivate

    -- * Request Lenses
    , bdXgafv
    , bdUploadProtocol
    , bdPp
    , bdAccessToken
    , bdBeaconName
    , bdUploadType
    , bdBearerToken
    , bdProjectId
    , bdCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ProximityBeacon.Types

-- | A resource alias for @proximitybeacon.beacons.deactivate@ method which the
-- 'BeaconsDeactivate' request conforms to.
type BeaconsDeactivateResource =
     "v1beta1" :>
       CaptureMode "beaconName" "deactivate" Text :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "projectId" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Post '[JSON] Empty

-- | Deactivates a beacon. Once deactivated, the API will not return
-- information nor attachment data for the beacon when queried via
-- \`beaconinfo.getforobserved\`. Calling this method on an already
-- inactive beacon will do nothing (but will return a successful response
-- code). Authenticate using an [OAuth access
-- token](https:\/\/developers.google.com\/identity\/protocols\/OAuth2)
-- from a signed-in user with **Is owner** or **Can edit** permissions in
-- the Google Developers Console project.
--
-- /See:/ 'beaconsDeactivate' smart constructor.
data BeaconsDeactivate = BeaconsDeactivate'
    { _bdXgafv          :: !(Maybe Text)
    , _bdUploadProtocol :: !(Maybe Text)
    , _bdPp             :: !Bool
    , _bdAccessToken    :: !(Maybe Text)
    , _bdBeaconName     :: !Text
    , _bdUploadType     :: !(Maybe Text)
    , _bdBearerToken    :: !(Maybe Text)
    , _bdProjectId      :: !(Maybe Text)
    , _bdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BeaconsDeactivate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bdXgafv'
--
-- * 'bdUploadProtocol'
--
-- * 'bdPp'
--
-- * 'bdAccessToken'
--
-- * 'bdBeaconName'
--
-- * 'bdUploadType'
--
-- * 'bdBearerToken'
--
-- * 'bdProjectId'
--
-- * 'bdCallback'
beaconsDeactivate
    :: Text -- ^ 'bdBeaconName'
    -> BeaconsDeactivate
beaconsDeactivate pBdBeaconName_ =
    BeaconsDeactivate'
    { _bdXgafv = Nothing
    , _bdUploadProtocol = Nothing
    , _bdPp = True
    , _bdAccessToken = Nothing
    , _bdBeaconName = pBdBeaconName_
    , _bdUploadType = Nothing
    , _bdBearerToken = Nothing
    , _bdProjectId = Nothing
    , _bdCallback = Nothing
    }

-- | V1 error format.
bdXgafv :: Lens' BeaconsDeactivate (Maybe Text)
bdXgafv = lens _bdXgafv (\ s a -> s{_bdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bdUploadProtocol :: Lens' BeaconsDeactivate (Maybe Text)
bdUploadProtocol
  = lens _bdUploadProtocol
      (\ s a -> s{_bdUploadProtocol = a})

-- | Pretty-print response.
bdPp :: Lens' BeaconsDeactivate Bool
bdPp = lens _bdPp (\ s a -> s{_bdPp = a})

-- | OAuth access token.
bdAccessToken :: Lens' BeaconsDeactivate (Maybe Text)
bdAccessToken
  = lens _bdAccessToken
      (\ s a -> s{_bdAccessToken = a})

-- | Beacon that should be deactivated. A beacon name has the format
-- \"beacons\/N!beaconId\" where the beaconId is the base16 ID broadcast by
-- the beacon and N is a code for the beacon\'s type. Possible values are
-- \`3\` for Eddystone-UID, \`4\` for Eddystone-EID, \`1\` for iBeacon, or
-- \`5\` for AltBeacon. For Eddystone-EID beacons, you may use either the
-- current EID or the beacon\'s \"stable\" UID. Required.
bdBeaconName :: Lens' BeaconsDeactivate Text
bdBeaconName
  = lens _bdBeaconName (\ s a -> s{_bdBeaconName = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bdUploadType :: Lens' BeaconsDeactivate (Maybe Text)
bdUploadType
  = lens _bdUploadType (\ s a -> s{_bdUploadType = a})

-- | OAuth bearer token.
bdBearerToken :: Lens' BeaconsDeactivate (Maybe Text)
bdBearerToken
  = lens _bdBearerToken
      (\ s a -> s{_bdBearerToken = a})

-- | The project id of the beacon to deactivate. If the project id is not
-- specified then the project making the request is used. The project id
-- must match the project that owns the beacon. Optional.
bdProjectId :: Lens' BeaconsDeactivate (Maybe Text)
bdProjectId
  = lens _bdProjectId (\ s a -> s{_bdProjectId = a})

-- | JSONP
bdCallback :: Lens' BeaconsDeactivate (Maybe Text)
bdCallback
  = lens _bdCallback (\ s a -> s{_bdCallback = a})

instance GoogleRequest BeaconsDeactivate where
        type Rs BeaconsDeactivate = Empty
        type Scopes BeaconsDeactivate =
             '["https://www.googleapis.com/auth/userlocation.beacon.registry"]
        requestClient BeaconsDeactivate'{..}
          = go _bdBeaconName _bdXgafv _bdUploadProtocol
              (Just _bdPp)
              _bdAccessToken
              _bdUploadType
              _bdBearerToken
              _bdProjectId
              _bdCallback
              (Just AltJSON)
              proximityBeaconService
          where go
                  = buildClient
                      (Proxy :: Proxy BeaconsDeactivateResource)
                      mempty
