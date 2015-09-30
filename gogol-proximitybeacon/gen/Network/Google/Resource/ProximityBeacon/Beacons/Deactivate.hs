{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.ProximityBeacon.Beacons.Deactivate
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deactivates a beacon. Once deactivated, the API will not return
-- information nor attachment data for the beacon when queried via
-- \`beaconinfo.getforobserved\`. Calling this method on an already
-- inactive beacon will do nothing (but will return a successful response
-- code).
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Google Proximity Beacon API Reference> for @ProximitybeaconBeaconsDeactivate@.
module ProximityBeacon.Beacons.Deactivate
    (
    -- * REST Resource
      BeaconsDeactivateAPI

    -- * Creating a Request
    , beaconsDeactivate
    , BeaconsDeactivate

    -- * Request Lenses
    , bdXgafv
    , bdQuotaUser
    , bdPrettyPrint
    , bdUploadProtocol
    , bdPp
    , bdAccessToken
    , bdBeaconName
    , bdUploadType
    , bdBearerToken
    , bdKey
    , bdOauthToken
    , bdFields
    , bdCallback
    , bdAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.ProximityBeacon.Types

-- | A resource alias for @ProximitybeaconBeaconsDeactivate@ which the
-- 'BeaconsDeactivate' request conforms to.
type BeaconsDeactivateAPI =
     "v1beta1" :>
       "{+beaconName}:deactivate" :> Post '[JSON] Empty

-- | Deactivates a beacon. Once deactivated, the API will not return
-- information nor attachment data for the beacon when queried via
-- \`beaconinfo.getforobserved\`. Calling this method on an already
-- inactive beacon will do nothing (but will return a successful response
-- code).
--
-- /See:/ 'beaconsDeactivate' smart constructor.
data BeaconsDeactivate = BeaconsDeactivate
    { _bdXgafv          :: !(Maybe Text)
    , _bdQuotaUser      :: !(Maybe Text)
    , _bdPrettyPrint    :: !Bool
    , _bdUploadProtocol :: !(Maybe Text)
    , _bdPp             :: !Bool
    , _bdAccessToken    :: !(Maybe Text)
    , _bdBeaconName     :: !Text
    , _bdUploadType     :: !(Maybe Text)
    , _bdBearerToken    :: !(Maybe Text)
    , _bdKey            :: !(Maybe Text)
    , _bdOauthToken     :: !(Maybe Text)
    , _bdFields         :: !(Maybe Text)
    , _bdCallback       :: !(Maybe Text)
    , _bdAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BeaconsDeactivate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bdXgafv'
--
-- * 'bdQuotaUser'
--
-- * 'bdPrettyPrint'
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
-- * 'bdKey'
--
-- * 'bdOauthToken'
--
-- * 'bdFields'
--
-- * 'bdCallback'
--
-- * 'bdAlt'
beaconsDeactivate
    :: Text -- ^ 'beaconName'
    -> BeaconsDeactivate
beaconsDeactivate pBdBeaconName_ =
    BeaconsDeactivate
    { _bdXgafv = Nothing
    , _bdQuotaUser = Nothing
    , _bdPrettyPrint = True
    , _bdUploadProtocol = Nothing
    , _bdPp = True
    , _bdAccessToken = Nothing
    , _bdBeaconName = pBdBeaconName_
    , _bdUploadType = Nothing
    , _bdBearerToken = Nothing
    , _bdKey = Nothing
    , _bdOauthToken = Nothing
    , _bdFields = Nothing
    , _bdCallback = Nothing
    , _bdAlt = "json"
    }

-- | V1 error format.
bdXgafv :: Lens' BeaconsDeactivate' (Maybe Text)
bdXgafv = lens _bdXgafv (\ s a -> s{_bdXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
bdQuotaUser :: Lens' BeaconsDeactivate' (Maybe Text)
bdQuotaUser
  = lens _bdQuotaUser (\ s a -> s{_bdQuotaUser = a})

-- | Returns response with indentations and line breaks.
bdPrettyPrint :: Lens' BeaconsDeactivate' Bool
bdPrettyPrint
  = lens _bdPrettyPrint
      (\ s a -> s{_bdPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bdUploadProtocol :: Lens' BeaconsDeactivate' (Maybe Text)
bdUploadProtocol
  = lens _bdUploadProtocol
      (\ s a -> s{_bdUploadProtocol = a})

-- | Pretty-print response.
bdPp :: Lens' BeaconsDeactivate' Bool
bdPp = lens _bdPp (\ s a -> s{_bdPp = a})

-- | OAuth access token.
bdAccessToken :: Lens' BeaconsDeactivate' (Maybe Text)
bdAccessToken
  = lens _bdAccessToken
      (\ s a -> s{_bdAccessToken = a})

-- | The beacon name of this beacon.
bdBeaconName :: Lens' BeaconsDeactivate' Text
bdBeaconName
  = lens _bdBeaconName (\ s a -> s{_bdBeaconName = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bdUploadType :: Lens' BeaconsDeactivate' (Maybe Text)
bdUploadType
  = lens _bdUploadType (\ s a -> s{_bdUploadType = a})

-- | OAuth bearer token.
bdBearerToken :: Lens' BeaconsDeactivate' (Maybe Text)
bdBearerToken
  = lens _bdBearerToken
      (\ s a -> s{_bdBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
bdKey :: Lens' BeaconsDeactivate' (Maybe Text)
bdKey = lens _bdKey (\ s a -> s{_bdKey = a})

-- | OAuth 2.0 token for the current user.
bdOauthToken :: Lens' BeaconsDeactivate' (Maybe Text)
bdOauthToken
  = lens _bdOauthToken (\ s a -> s{_bdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
bdFields :: Lens' BeaconsDeactivate' (Maybe Text)
bdFields = lens _bdFields (\ s a -> s{_bdFields = a})

-- | JSONP
bdCallback :: Lens' BeaconsDeactivate' (Maybe Text)
bdCallback
  = lens _bdCallback (\ s a -> s{_bdCallback = a})

-- | Data format for response.
bdAlt :: Lens' BeaconsDeactivate' Text
bdAlt = lens _bdAlt (\ s a -> s{_bdAlt = a})

instance GoogleRequest BeaconsDeactivate' where
        type Rs BeaconsDeactivate' = Empty
        request = requestWithRoute defReq proximityBeaconURL
        requestWithRoute r u BeaconsDeactivate{..}
          = go _bdXgafv _bdQuotaUser _bdPrettyPrint
              _bdUploadProtocol
              _bdPp
              _bdAccessToken
              _bdBeaconName
              _bdUploadType
              _bdBearerToken
              _bdKey
              _bdOauthToken
              _bdFields
              _bdCallback
              _bdAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy BeaconsDeactivateAPI)
                      r
                      u
