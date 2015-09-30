{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.ProximityBeacon.Beacons.Decommission
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Decommissions the specified beacon in the service. This beacon will no
-- longer be returned from \`beaconinfo.getforobserved\`. This operation is
-- permanent -- you will not be able to re-register a beacon with this ID
-- again.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Google Proximity Beacon API Reference> for @ProximitybeaconBeaconsDecommission@.
module ProximityBeacon.Beacons.Decommission
    (
    -- * REST Resource
      BeaconsDecommissionAPI

    -- * Creating a Request
    , beaconsDecommission
    , BeaconsDecommission

    -- * Request Lenses
    , beaXgafv
    , beaQuotaUser
    , beaPrettyPrint
    , beaUploadProtocol
    , beaPp
    , beaAccessToken
    , beaBeaconName
    , beaUploadType
    , beaBearerToken
    , beaKey
    , beaOauthToken
    , beaFields
    , beaCallback
    , beaAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.ProximityBeacon.Types

-- | A resource alias for @ProximitybeaconBeaconsDecommission@ which the
-- 'BeaconsDecommission' request conforms to.
type BeaconsDecommissionAPI =
     "v1beta1" :>
       "{+beaconName}:decommission" :> Post '[JSON] Empty

-- | Decommissions the specified beacon in the service. This beacon will no
-- longer be returned from \`beaconinfo.getforobserved\`. This operation is
-- permanent -- you will not be able to re-register a beacon with this ID
-- again.
--
-- /See:/ 'beaconsDecommission' smart constructor.
data BeaconsDecommission = BeaconsDecommission
    { _beaXgafv          :: !(Maybe Text)
    , _beaQuotaUser      :: !(Maybe Text)
    , _beaPrettyPrint    :: !Bool
    , _beaUploadProtocol :: !(Maybe Text)
    , _beaPp             :: !Bool
    , _beaAccessToken    :: !(Maybe Text)
    , _beaBeaconName     :: !Text
    , _beaUploadType     :: !(Maybe Text)
    , _beaBearerToken    :: !(Maybe Text)
    , _beaKey            :: !(Maybe Text)
    , _beaOauthToken     :: !(Maybe Text)
    , _beaFields         :: !(Maybe Text)
    , _beaCallback       :: !(Maybe Text)
    , _beaAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BeaconsDecommission'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'beaXgafv'
--
-- * 'beaQuotaUser'
--
-- * 'beaPrettyPrint'
--
-- * 'beaUploadProtocol'
--
-- * 'beaPp'
--
-- * 'beaAccessToken'
--
-- * 'beaBeaconName'
--
-- * 'beaUploadType'
--
-- * 'beaBearerToken'
--
-- * 'beaKey'
--
-- * 'beaOauthToken'
--
-- * 'beaFields'
--
-- * 'beaCallback'
--
-- * 'beaAlt'
beaconsDecommission
    :: Text -- ^ 'beaconName'
    -> BeaconsDecommission
beaconsDecommission pBeaBeaconName_ =
    BeaconsDecommission
    { _beaXgafv = Nothing
    , _beaQuotaUser = Nothing
    , _beaPrettyPrint = True
    , _beaUploadProtocol = Nothing
    , _beaPp = True
    , _beaAccessToken = Nothing
    , _beaBeaconName = pBeaBeaconName_
    , _beaUploadType = Nothing
    , _beaBearerToken = Nothing
    , _beaKey = Nothing
    , _beaOauthToken = Nothing
    , _beaFields = Nothing
    , _beaCallback = Nothing
    , _beaAlt = "json"
    }

-- | V1 error format.
beaXgafv :: Lens' BeaconsDecommission' (Maybe Text)
beaXgafv = lens _beaXgafv (\ s a -> s{_beaXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
beaQuotaUser :: Lens' BeaconsDecommission' (Maybe Text)
beaQuotaUser
  = lens _beaQuotaUser (\ s a -> s{_beaQuotaUser = a})

-- | Returns response with indentations and line breaks.
beaPrettyPrint :: Lens' BeaconsDecommission' Bool
beaPrettyPrint
  = lens _beaPrettyPrint
      (\ s a -> s{_beaPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
beaUploadProtocol :: Lens' BeaconsDecommission' (Maybe Text)
beaUploadProtocol
  = lens _beaUploadProtocol
      (\ s a -> s{_beaUploadProtocol = a})

-- | Pretty-print response.
beaPp :: Lens' BeaconsDecommission' Bool
beaPp = lens _beaPp (\ s a -> s{_beaPp = a})

-- | OAuth access token.
beaAccessToken :: Lens' BeaconsDecommission' (Maybe Text)
beaAccessToken
  = lens _beaAccessToken
      (\ s a -> s{_beaAccessToken = a})

-- | Beacon that should be decommissioned. Required.
beaBeaconName :: Lens' BeaconsDecommission' Text
beaBeaconName
  = lens _beaBeaconName
      (\ s a -> s{_beaBeaconName = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
beaUploadType :: Lens' BeaconsDecommission' (Maybe Text)
beaUploadType
  = lens _beaUploadType
      (\ s a -> s{_beaUploadType = a})

-- | OAuth bearer token.
beaBearerToken :: Lens' BeaconsDecommission' (Maybe Text)
beaBearerToken
  = lens _beaBearerToken
      (\ s a -> s{_beaBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
beaKey :: Lens' BeaconsDecommission' (Maybe Text)
beaKey = lens _beaKey (\ s a -> s{_beaKey = a})

-- | OAuth 2.0 token for the current user.
beaOauthToken :: Lens' BeaconsDecommission' (Maybe Text)
beaOauthToken
  = lens _beaOauthToken
      (\ s a -> s{_beaOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
beaFields :: Lens' BeaconsDecommission' (Maybe Text)
beaFields
  = lens _beaFields (\ s a -> s{_beaFields = a})

-- | JSONP
beaCallback :: Lens' BeaconsDecommission' (Maybe Text)
beaCallback
  = lens _beaCallback (\ s a -> s{_beaCallback = a})

-- | Data format for response.
beaAlt :: Lens' BeaconsDecommission' Text
beaAlt = lens _beaAlt (\ s a -> s{_beaAlt = a})

instance GoogleRequest BeaconsDecommission' where
        type Rs BeaconsDecommission' = Empty
        request = requestWithRoute defReq proximityBeaconURL
        requestWithRoute r u BeaconsDecommission{..}
          = go _beaXgafv _beaQuotaUser _beaPrettyPrint
              _beaUploadProtocol
              _beaPp
              _beaAccessToken
              _beaBeaconName
              _beaUploadType
              _beaBearerToken
              _beaKey
              _beaOauthToken
              _beaFields
              _beaCallback
              _beaAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy BeaconsDecommissionAPI)
                      r
                      u
