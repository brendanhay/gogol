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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Decommissions the specified beacon in the service. This beacon will no
-- longer be returned from \`beaconinfo.getforobserved\`. This operation is
-- permanent -- you will not be able to re-register a beacon with this ID
-- again.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Google Proximity Beacon API Reference> for @ProximitybeaconBeaconsDecommission@.
module Network.Google.Resource.ProximityBeacon.Beacons.Decommission
    (
    -- * REST Resource
      BeaconsDecommissionResource

    -- * Creating a Request
    , beaconsDecommission'
    , BeaconsDecommission'

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

-- | A resource alias for @ProximitybeaconBeaconsDecommission@ method which the
-- 'BeaconsDecommission'' request conforms to.
type BeaconsDecommissionResource =
     "v1beta1" :>
       CaptureMode "beaconName" "decommission" Text :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Post '[JSON] Empty

-- | Decommissions the specified beacon in the service. This beacon will no
-- longer be returned from \`beaconinfo.getforobserved\`. This operation is
-- permanent -- you will not be able to re-register a beacon with this ID
-- again.
--
-- /See:/ 'beaconsDecommission'' smart constructor.
data BeaconsDecommission' = BeaconsDecommission'
    { _bdXgafv          :: !(Maybe Text)
    , _bdUploadProtocol :: !(Maybe Text)
    , _bdPp             :: !Bool
    , _bdAccessToken    :: !(Maybe Text)
    , _bdBeaconName     :: !Text
    , _bdUploadType     :: !(Maybe Text)
    , _bdBearerToken    :: !(Maybe Text)
    , _bdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BeaconsDecommission'' with the minimum fields required to make a request.
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
beaconsDecommission'
    :: Text -- ^ 'beaconName'
    -> BeaconsDecommission'
beaconsDecommission' pBdBeaconName_ =
    BeaconsDecommission'
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
bdXgafv :: Lens' BeaconsDecommission' (Maybe Text)
bdXgafv = lens _bdXgafv (\ s a -> s{_bdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bdUploadProtocol :: Lens' BeaconsDecommission' (Maybe Text)
bdUploadProtocol
  = lens _bdUploadProtocol
      (\ s a -> s{_bdUploadProtocol = a})

-- | Pretty-print response.
bdPp :: Lens' BeaconsDecommission' Bool
bdPp = lens _bdPp (\ s a -> s{_bdPp = a})

-- | OAuth access token.
bdAccessToken :: Lens' BeaconsDecommission' (Maybe Text)
bdAccessToken
  = lens _bdAccessToken
      (\ s a -> s{_bdAccessToken = a})

-- | Beacon that should be decommissioned. Required.
bdBeaconName :: Lens' BeaconsDecommission' Text
bdBeaconName
  = lens _bdBeaconName (\ s a -> s{_bdBeaconName = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bdUploadType :: Lens' BeaconsDecommission' (Maybe Text)
bdUploadType
  = lens _bdUploadType (\ s a -> s{_bdUploadType = a})

-- | OAuth bearer token.
bdBearerToken :: Lens' BeaconsDecommission' (Maybe Text)
bdBearerToken
  = lens _bdBearerToken
      (\ s a -> s{_bdBearerToken = a})

-- | JSONP
bdCallback :: Lens' BeaconsDecommission' (Maybe Text)
bdCallback
  = lens _bdCallback (\ s a -> s{_bdCallback = a})

instance GoogleRequest BeaconsDecommission' where
        type Rs BeaconsDecommission' = Empty
        requestClient BeaconsDecommission'{..}
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
                      (Proxy :: Proxy BeaconsDecommissionResource)
                      mempty
