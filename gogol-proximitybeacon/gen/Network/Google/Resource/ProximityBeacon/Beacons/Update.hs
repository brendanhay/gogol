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
-- Module      : Network.Google.Resource.ProximityBeacon.Beacons.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates the information about the specified beacon. **Any field that you
-- do not populate in the submitted beacon will be permanently erased**, so
-- you should follow the \"read, modify, write\" pattern to avoid
-- inadvertently destroying data. Changes to the beacon status via this
-- method will be silently ignored. To update beacon status, use the
-- separate methods on this API for (de)activation and decommissioning.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Google Proximity Beacon API Reference> for @ProximitybeaconBeaconsUpdate@.
module Network.Google.Resource.ProximityBeacon.Beacons.Update
    (
    -- * REST Resource
      BeaconsUpdateResource

    -- * Creating a Request
    , beaconsUpdate'
    , BeaconsUpdate'

    -- * Request Lenses
    , buXgafv
    , buQuotaUser
    , buPrettyPrint
    , buUploadProtocol
    , buPp
    , buAccessToken
    , buBeaconName
    , buUploadType
    , buBeacon
    , buBearerToken
    , buKey
    , buOAuthToken
    , buFields
    , buCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ProximityBeacon.Types

-- | A resource alias for @ProximitybeaconBeaconsUpdate@ which the
-- 'BeaconsUpdate'' request conforms to.
type BeaconsUpdateResource =
     "v1beta1" :>
       "{+beaconName}" :>
         QueryParam "$.xgafv" Text :>
           QueryParam "access_token" Text :>
             QueryParam "bearer_token" Text :>
               QueryParam "callback" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "uploadType" Text :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "fields" Text :>
                             QueryParam "key" Key :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON] Beacon :> Put '[JSON] Beacon

-- | Updates the information about the specified beacon. **Any field that you
-- do not populate in the submitted beacon will be permanently erased**, so
-- you should follow the \"read, modify, write\" pattern to avoid
-- inadvertently destroying data. Changes to the beacon status via this
-- method will be silently ignored. To update beacon status, use the
-- separate methods on this API for (de)activation and decommissioning.
--
-- /See:/ 'beaconsUpdate'' smart constructor.
data BeaconsUpdate' = BeaconsUpdate'
    { _buXgafv          :: !(Maybe Text)
    , _buQuotaUser      :: !(Maybe Text)
    , _buPrettyPrint    :: !Bool
    , _buUploadProtocol :: !(Maybe Text)
    , _buPp             :: !Bool
    , _buAccessToken    :: !(Maybe Text)
    , _buBeaconName     :: !Text
    , _buUploadType     :: !(Maybe Text)
    , _buBeacon         :: !Beacon
    , _buBearerToken    :: !(Maybe Text)
    , _buKey            :: !(Maybe Key)
    , _buOAuthToken     :: !(Maybe OAuthToken)
    , _buFields         :: !(Maybe Text)
    , _buCallback       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BeaconsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'buXgafv'
--
-- * 'buQuotaUser'
--
-- * 'buPrettyPrint'
--
-- * 'buUploadProtocol'
--
-- * 'buPp'
--
-- * 'buAccessToken'
--
-- * 'buBeaconName'
--
-- * 'buUploadType'
--
-- * 'buBeacon'
--
-- * 'buBearerToken'
--
-- * 'buKey'
--
-- * 'buOAuthToken'
--
-- * 'buFields'
--
-- * 'buCallback'
beaconsUpdate'
    :: Text -- ^ 'beaconName'
    -> Beacon -- ^ 'Beacon'
    -> BeaconsUpdate'
beaconsUpdate' pBuBeaconName_ pBuBeacon_ =
    BeaconsUpdate'
    { _buXgafv = Nothing
    , _buQuotaUser = Nothing
    , _buPrettyPrint = True
    , _buUploadProtocol = Nothing
    , _buPp = True
    , _buAccessToken = Nothing
    , _buBeaconName = pBuBeaconName_
    , _buUploadType = Nothing
    , _buBeacon = pBuBeacon_
    , _buBearerToken = Nothing
    , _buKey = Nothing
    , _buOAuthToken = Nothing
    , _buFields = Nothing
    , _buCallback = Nothing
    }

-- | V1 error format.
buXgafv :: Lens' BeaconsUpdate' (Maybe Text)
buXgafv = lens _buXgafv (\ s a -> s{_buXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
buQuotaUser :: Lens' BeaconsUpdate' (Maybe Text)
buQuotaUser
  = lens _buQuotaUser (\ s a -> s{_buQuotaUser = a})

-- | Returns response with indentations and line breaks.
buPrettyPrint :: Lens' BeaconsUpdate' Bool
buPrettyPrint
  = lens _buPrettyPrint
      (\ s a -> s{_buPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
buUploadProtocol :: Lens' BeaconsUpdate' (Maybe Text)
buUploadProtocol
  = lens _buUploadProtocol
      (\ s a -> s{_buUploadProtocol = a})

-- | Pretty-print response.
buPp :: Lens' BeaconsUpdate' Bool
buPp = lens _buPp (\ s a -> s{_buPp = a})

-- | OAuth access token.
buAccessToken :: Lens' BeaconsUpdate' (Maybe Text)
buAccessToken
  = lens _buAccessToken
      (\ s a -> s{_buAccessToken = a})

-- | Resource name of this beacon. A beacon name has the format
-- \"beacons\/N!beaconId\" where the beaconId is the base16 ID broadcast by
-- the beacon and N is a code for the beacon\'s type. Possible values are
-- \`3\` for Eddystone, \`1\` for iBeacon, or \`5\` for AltBeacon. This
-- field must be left empty when registering. After reading a beacon,
-- clients can use the name for future operations.
buBeaconName :: Lens' BeaconsUpdate' Text
buBeaconName
  = lens _buBeaconName (\ s a -> s{_buBeaconName = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
buUploadType :: Lens' BeaconsUpdate' (Maybe Text)
buUploadType
  = lens _buUploadType (\ s a -> s{_buUploadType = a})

-- | Multipart request metadata.
buBeacon :: Lens' BeaconsUpdate' Beacon
buBeacon = lens _buBeacon (\ s a -> s{_buBeacon = a})

-- | OAuth bearer token.
buBearerToken :: Lens' BeaconsUpdate' (Maybe Text)
buBearerToken
  = lens _buBearerToken
      (\ s a -> s{_buBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
buKey :: Lens' BeaconsUpdate' (Maybe Key)
buKey = lens _buKey (\ s a -> s{_buKey = a})

-- | OAuth 2.0 token for the current user.
buOAuthToken :: Lens' BeaconsUpdate' (Maybe OAuthToken)
buOAuthToken
  = lens _buOAuthToken (\ s a -> s{_buOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
buFields :: Lens' BeaconsUpdate' (Maybe Text)
buFields = lens _buFields (\ s a -> s{_buFields = a})

-- | JSONP
buCallback :: Lens' BeaconsUpdate' (Maybe Text)
buCallback
  = lens _buCallback (\ s a -> s{_buCallback = a})

instance GoogleAuth BeaconsUpdate' where
        authKey = buKey . _Just
        authToken = buOAuthToken . _Just

instance GoogleRequest BeaconsUpdate' where
        type Rs BeaconsUpdate' = Beacon
        request = requestWithRoute defReq proximityBeaconURL
        requestWithRoute r u BeaconsUpdate'{..}
          = go _buXgafv _buAccessToken _buBearerToken
              _buCallback
              (Just _buPp)
              _buUploadType
              _buUploadProtocol
              _buBeaconName
              _buQuotaUser
              (Just _buPrettyPrint)
              _buFields
              _buKey
              _buOAuthToken
              (Just AltJSON)
              _buBeacon
          where go
                  = clientWithRoute
                      (Proxy :: Proxy BeaconsUpdateResource)
                      r
                      u
