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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deactivates a beacon. Once deactivated, the API will not return
-- information nor attachment data for the beacon when queried via
-- \`beaconinfo.getforobserved\`. Calling this method on an already
-- inactive beacon will do nothing (but will return a successful response
-- code).
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
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Post '[JSON] Empty

-- | Deactivates a beacon. Once deactivated, the API will not return
-- information nor attachment data for the beacon when queried via
-- \`beaconinfo.getforobserved\`. Calling this method on an already
-- inactive beacon will do nothing (but will return a successful response
-- code).
--
-- /See:/ 'beaconsDeactivate' smart constructor.
data BeaconsDeactivate = BeaconsDeactivate
    { _bdXgafv          :: !(Maybe Text)
    , _bdUploadProtocol :: !(Maybe Text)
    , _bdPp             :: !Bool
    , _bdAccessToken    :: !(Maybe Text)
    , _bdBeaconName     :: !Text
    , _bdUploadType     :: !(Maybe Text)
    , _bdBearerToken    :: !(Maybe Text)
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
-- * 'bdCallback'
beaconsDeactivate
    :: Text -- ^ 'bdBeaconName'
    -> BeaconsDeactivate
beaconsDeactivate pBdBeaconName_ =
    BeaconsDeactivate
    { _bdXgafv = Nothing
    , _bdUploadProtocol = Nothing
    , _bdPp = True
    , _bdAccessToken = Nothing
    , _bdBeaconName = pBdBeaconName_
    , _bdUploadType = Nothing
    , _bdBearerToken = Nothing
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

-- | The beacon name of this beacon.
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

-- | JSONP
bdCallback :: Lens' BeaconsDeactivate (Maybe Text)
bdCallback
  = lens _bdCallback (\ s a -> s{_bdCallback = a})

instance GoogleRequest BeaconsDeactivate where
        type Rs BeaconsDeactivate = Empty
        requestClient BeaconsDeactivate{..}
          = go _bdBeaconName _bdXgafv _bdUploadProtocol
              (Just _bdPp)
              _bdAccessToken
              _bdUploadType
              _bdBearerToken
              _bdCallback
              (Just AltJSON)
              proximityBeaconService
          where go
                  = buildClient
                      (Proxy :: Proxy BeaconsDeactivateResource)
                      mempty
