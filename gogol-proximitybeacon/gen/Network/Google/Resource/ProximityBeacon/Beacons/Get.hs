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
-- Module      : Network.Google.Resource.ProximityBeacon.Beacons.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns detailed information about the specified beacon. Authenticate
-- using an [OAuth access
-- token](https:\/\/developers.google.com\/identity\/protocols\/OAuth2)
-- from a signed-in user with **viewer**, **Is owner** or **Can edit**
-- permissions in the Google Developers Console project. Requests may
-- supply an Eddystone-EID beacon name in the form: \`beacons\/4!beaconId\`
-- where the \`beaconId\` is the base16 ephemeral ID broadcast by the
-- beacon. The returned \`Beacon\` object will contain the beacon\'s stable
-- Eddystone-UID. Clients not authorized to resolve the beacon\'s ephemeral
-- Eddystone-EID broadcast will receive an error.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Proximity Beacon API Reference> for @proximitybeacon.beacons.get@.
module Network.Google.Resource.ProximityBeacon.Beacons.Get
    (
    -- * REST Resource
      BeaconsGetResource

    -- * Creating a Request
    , beaconsGet
    , BeaconsGet

    -- * Request Lenses
    , bgXgafv
    , bgUploadProtocol
    , bgAccessToken
    , bgBeaconName
    , bgUploadType
    , bgProjectId
    , bgCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ProximityBeacon.Types

-- | A resource alias for @proximitybeacon.beacons.get@ method which the
-- 'BeaconsGet' request conforms to.
type BeaconsGetResource =
     "v1beta1" :>
       Capture "beaconName" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "projectId" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Beacon

-- | Returns detailed information about the specified beacon. Authenticate
-- using an [OAuth access
-- token](https:\/\/developers.google.com\/identity\/protocols\/OAuth2)
-- from a signed-in user with **viewer**, **Is owner** or **Can edit**
-- permissions in the Google Developers Console project. Requests may
-- supply an Eddystone-EID beacon name in the form: \`beacons\/4!beaconId\`
-- where the \`beaconId\` is the base16 ephemeral ID broadcast by the
-- beacon. The returned \`Beacon\` object will contain the beacon\'s stable
-- Eddystone-UID. Clients not authorized to resolve the beacon\'s ephemeral
-- Eddystone-EID broadcast will receive an error.
--
-- /See:/ 'beaconsGet' smart constructor.
data BeaconsGet = BeaconsGet'
    { _bgXgafv          :: !(Maybe Xgafv)
    , _bgUploadProtocol :: !(Maybe Text)
    , _bgAccessToken    :: !(Maybe Text)
    , _bgBeaconName     :: !Text
    , _bgUploadType     :: !(Maybe Text)
    , _bgProjectId      :: !(Maybe Text)
    , _bgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BeaconsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgXgafv'
--
-- * 'bgUploadProtocol'
--
-- * 'bgAccessToken'
--
-- * 'bgBeaconName'
--
-- * 'bgUploadType'
--
-- * 'bgProjectId'
--
-- * 'bgCallback'
beaconsGet
    :: Text -- ^ 'bgBeaconName'
    -> BeaconsGet
beaconsGet pBgBeaconName_ =
    BeaconsGet'
    { _bgXgafv = Nothing
    , _bgUploadProtocol = Nothing
    , _bgAccessToken = Nothing
    , _bgBeaconName = pBgBeaconName_
    , _bgUploadType = Nothing
    , _bgProjectId = Nothing
    , _bgCallback = Nothing
    }

-- | V1 error format.
bgXgafv :: Lens' BeaconsGet (Maybe Xgafv)
bgXgafv = lens _bgXgafv (\ s a -> s{_bgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bgUploadProtocol :: Lens' BeaconsGet (Maybe Text)
bgUploadProtocol
  = lens _bgUploadProtocol
      (\ s a -> s{_bgUploadProtocol = a})

-- | OAuth access token.
bgAccessToken :: Lens' BeaconsGet (Maybe Text)
bgAccessToken
  = lens _bgAccessToken
      (\ s a -> s{_bgAccessToken = a})

-- | Resource name of this beacon. A beacon name has the format
-- \"beacons\/N!beaconId\" where the beaconId is the base16 ID broadcast by
-- the beacon and N is a code for the beacon\'s type. Possible values are
-- \`3\` for Eddystone-UID, \`4\` for Eddystone-EID, \`1\` for iBeacon, or
-- \`5\` for AltBeacon. For Eddystone-EID beacons, you may use either the
-- current EID or the beacon\'s \"stable\" UID. Required.
bgBeaconName :: Lens' BeaconsGet Text
bgBeaconName
  = lens _bgBeaconName (\ s a -> s{_bgBeaconName = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bgUploadType :: Lens' BeaconsGet (Maybe Text)
bgUploadType
  = lens _bgUploadType (\ s a -> s{_bgUploadType = a})

-- | The project id of the beacon to request. If the project id is not
-- specified then the project making the request is used. The project id
-- must match the project that owns the beacon. Optional.
bgProjectId :: Lens' BeaconsGet (Maybe Text)
bgProjectId
  = lens _bgProjectId (\ s a -> s{_bgProjectId = a})

-- | JSONP
bgCallback :: Lens' BeaconsGet (Maybe Text)
bgCallback
  = lens _bgCallback (\ s a -> s{_bgCallback = a})

instance GoogleRequest BeaconsGet where
        type Rs BeaconsGet = Beacon
        type Scopes BeaconsGet =
             '["https://www.googleapis.com/auth/userlocation.beacon.registry"]
        requestClient BeaconsGet'{..}
          = go _bgBeaconName _bgXgafv _bgUploadProtocol
              _bgAccessToken
              _bgUploadType
              _bgProjectId
              _bgCallback
              (Just AltJSON)
              proximityBeaconService
          where go
                  = buildClient (Proxy :: Proxy BeaconsGetResource)
                      mempty
