{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
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
module Network.Google.Resource.ProximityBeacon.Beacons.Deactivate
    (
    -- * REST Resource
      BeaconsDeactivateResource

    -- * Creating a Request
    , beaconsDeactivate'
    , BeaconsDeactivate'

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
    , beaOAuthToken
    , beaFields
    , beaCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ProximityBeacon.Types

-- | A resource alias for @ProximitybeaconBeaconsDeactivate@ which the
-- 'BeaconsDeactivate'' request conforms to.
type BeaconsDeactivateResource =
     "v1beta1" :>
       "{+beaconName}:deactivate" :>
         QueryParam "$.xgafv" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "bearer_token" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "fields" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :> Post '[JSON] Empty

-- | Deactivates a beacon. Once deactivated, the API will not return
-- information nor attachment data for the beacon when queried via
-- \`beaconinfo.getforobserved\`. Calling this method on an already
-- inactive beacon will do nothing (but will return a successful response
-- code).
--
-- /See:/ 'beaconsDeactivate'' smart constructor.
data BeaconsDeactivate' = BeaconsDeactivate'
    { _beaXgafv          :: !(Maybe Text)
    , _beaQuotaUser      :: !(Maybe Text)
    , _beaPrettyPrint    :: !Bool
    , _beaUploadProtocol :: !(Maybe Text)
    , _beaPp             :: !Bool
    , _beaAccessToken    :: !(Maybe Text)
    , _beaBeaconName     :: !Text
    , _beaUploadType     :: !(Maybe Text)
    , _beaBearerToken    :: !(Maybe Text)
    , _beaKey            :: !(Maybe Key)
    , _beaOAuthToken     :: !(Maybe OAuthToken)
    , _beaFields         :: !(Maybe Text)
    , _beaCallback       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BeaconsDeactivate'' with the minimum fields required to make a request.
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
-- * 'beaOAuthToken'
--
-- * 'beaFields'
--
-- * 'beaCallback'
beaconsDeactivate'
    :: Text -- ^ 'beaconName'
    -> BeaconsDeactivate'
beaconsDeactivate' pBeaBeaconName_ =
    BeaconsDeactivate'
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
    , _beaOAuthToken = Nothing
    , _beaFields = Nothing
    , _beaCallback = Nothing
    }

-- | V1 error format.
beaXgafv :: Lens' BeaconsDeactivate' (Maybe Text)
beaXgafv = lens _beaXgafv (\ s a -> s{_beaXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
beaQuotaUser :: Lens' BeaconsDeactivate' (Maybe Text)
beaQuotaUser
  = lens _beaQuotaUser (\ s a -> s{_beaQuotaUser = a})

-- | Returns response with indentations and line breaks.
beaPrettyPrint :: Lens' BeaconsDeactivate' Bool
beaPrettyPrint
  = lens _beaPrettyPrint
      (\ s a -> s{_beaPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
beaUploadProtocol :: Lens' BeaconsDeactivate' (Maybe Text)
beaUploadProtocol
  = lens _beaUploadProtocol
      (\ s a -> s{_beaUploadProtocol = a})

-- | Pretty-print response.
beaPp :: Lens' BeaconsDeactivate' Bool
beaPp = lens _beaPp (\ s a -> s{_beaPp = a})

-- | OAuth access token.
beaAccessToken :: Lens' BeaconsDeactivate' (Maybe Text)
beaAccessToken
  = lens _beaAccessToken
      (\ s a -> s{_beaAccessToken = a})

-- | The beacon name of this beacon.
beaBeaconName :: Lens' BeaconsDeactivate' Text
beaBeaconName
  = lens _beaBeaconName
      (\ s a -> s{_beaBeaconName = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
beaUploadType :: Lens' BeaconsDeactivate' (Maybe Text)
beaUploadType
  = lens _beaUploadType
      (\ s a -> s{_beaUploadType = a})

-- | OAuth bearer token.
beaBearerToken :: Lens' BeaconsDeactivate' (Maybe Text)
beaBearerToken
  = lens _beaBearerToken
      (\ s a -> s{_beaBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
beaKey :: Lens' BeaconsDeactivate' (Maybe Key)
beaKey = lens _beaKey (\ s a -> s{_beaKey = a})

-- | OAuth 2.0 token for the current user.
beaOAuthToken :: Lens' BeaconsDeactivate' (Maybe OAuthToken)
beaOAuthToken
  = lens _beaOAuthToken
      (\ s a -> s{_beaOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
beaFields :: Lens' BeaconsDeactivate' (Maybe Text)
beaFields
  = lens _beaFields (\ s a -> s{_beaFields = a})

-- | JSONP
beaCallback :: Lens' BeaconsDeactivate' (Maybe Text)
beaCallback
  = lens _beaCallback (\ s a -> s{_beaCallback = a})

instance GoogleAuth BeaconsDeactivate' where
        authKey = beaKey . _Just
        authToken = beaOAuthToken . _Just

instance GoogleRequest BeaconsDeactivate' where
        type Rs BeaconsDeactivate' = Empty
        request = requestWithRoute defReq proximityBeaconURL
        requestWithRoute r u BeaconsDeactivate'{..}
          = go _beaXgafv _beaQuotaUser (Just _beaPrettyPrint)
              _beaUploadProtocol
              (Just _beaPp)
              _beaAccessToken
              _beaBeaconName
              _beaUploadType
              _beaBearerToken
              _beaKey
              _beaOAuthToken
              _beaFields
              _beaCallback
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy BeaconsDeactivateResource)
                      r
                      u
