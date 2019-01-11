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
-- Module      : Network.Google.Resource.ProximityBeacon.Beacons.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified beacon including all diagnostics data for the
-- beacon as well as any attachments on the beacon (including those
-- belonging to other projects). This operation cannot be undone.
-- Authenticate using an [OAuth access
-- token](https:\/\/developers.google.com\/identity\/protocols\/OAuth2)
-- from a signed-in user with **Is owner** or **Can edit** permissions in
-- the Google Developers Console project.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Proximity Beacon API Reference> for @proximitybeacon.beacons.delete@.
module Network.Google.Resource.ProximityBeacon.Beacons.Delete
    (
    -- * REST Resource
      BeaconsDeleteResource

    -- * Creating a Request
    , beaconsDelete
    , BeaconsDelete

    -- * Request Lenses
    , bXgafv
    , bUploadProtocol
    , bAccessToken
    , bBeaconName
    , bUploadType
    , bProjectId
    , bCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ProximityBeacon.Types

-- | A resource alias for @proximitybeacon.beacons.delete@ method which the
-- 'BeaconsDelete' request conforms to.
type BeaconsDeleteResource =
     "v1beta1" :>
       Capture "beaconName" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "projectId" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes the specified beacon including all diagnostics data for the
-- beacon as well as any attachments on the beacon (including those
-- belonging to other projects). This operation cannot be undone.
-- Authenticate using an [OAuth access
-- token](https:\/\/developers.google.com\/identity\/protocols\/OAuth2)
-- from a signed-in user with **Is owner** or **Can edit** permissions in
-- the Google Developers Console project.
--
-- /See:/ 'beaconsDelete' smart constructor.
data BeaconsDelete = BeaconsDelete'
    { _bXgafv          :: !(Maybe Xgafv)
    , _bUploadProtocol :: !(Maybe Text)
    , _bAccessToken    :: !(Maybe Text)
    , _bBeaconName     :: !Text
    , _bUploadType     :: !(Maybe Text)
    , _bProjectId      :: !(Maybe Text)
    , _bCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BeaconsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bXgafv'
--
-- * 'bUploadProtocol'
--
-- * 'bAccessToken'
--
-- * 'bBeaconName'
--
-- * 'bUploadType'
--
-- * 'bProjectId'
--
-- * 'bCallback'
beaconsDelete
    :: Text -- ^ 'bBeaconName'
    -> BeaconsDelete
beaconsDelete pBBeaconName_ =
    BeaconsDelete'
    { _bXgafv = Nothing
    , _bUploadProtocol = Nothing
    , _bAccessToken = Nothing
    , _bBeaconName = pBBeaconName_
    , _bUploadType = Nothing
    , _bProjectId = Nothing
    , _bCallback = Nothing
    }

-- | V1 error format.
bXgafv :: Lens' BeaconsDelete (Maybe Xgafv)
bXgafv = lens _bXgafv (\ s a -> s{_bXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bUploadProtocol :: Lens' BeaconsDelete (Maybe Text)
bUploadProtocol
  = lens _bUploadProtocol
      (\ s a -> s{_bUploadProtocol = a})

-- | OAuth access token.
bAccessToken :: Lens' BeaconsDelete (Maybe Text)
bAccessToken
  = lens _bAccessToken (\ s a -> s{_bAccessToken = a})

-- | Beacon that should be deleted. A beacon name has the format
-- \"beacons\/N!beaconId\" where the beaconId is the base16 ID broadcast by
-- the beacon and N is a code for the beacon\'s type. Possible values are
-- \`3\` for Eddystone-UID, \`4\` for Eddystone-EID, \`1\` for iBeacon, or
-- \`5\` for AltBeacon. For Eddystone-EID beacons, you may use either the
-- current EID or the beacon\'s \"stable\" UID. Required.
bBeaconName :: Lens' BeaconsDelete Text
bBeaconName
  = lens _bBeaconName (\ s a -> s{_bBeaconName = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bUploadType :: Lens' BeaconsDelete (Maybe Text)
bUploadType
  = lens _bUploadType (\ s a -> s{_bUploadType = a})

-- | The project id of the beacon to delete. If not provided, the project
-- that is making the request is used. Optional.
bProjectId :: Lens' BeaconsDelete (Maybe Text)
bProjectId
  = lens _bProjectId (\ s a -> s{_bProjectId = a})

-- | JSONP
bCallback :: Lens' BeaconsDelete (Maybe Text)
bCallback
  = lens _bCallback (\ s a -> s{_bCallback = a})

instance GoogleRequest BeaconsDelete where
        type Rs BeaconsDelete = Empty
        type Scopes BeaconsDelete =
             '["https://www.googleapis.com/auth/userlocation.beacon.registry"]
        requestClient BeaconsDelete'{..}
          = go _bBeaconName _bXgafv _bUploadProtocol
              _bAccessToken
              _bUploadType
              _bProjectId
              _bCallback
              (Just AltJSON)
              proximityBeaconService
          where go
                  = buildClient (Proxy :: Proxy BeaconsDeleteResource)
                      mempty
