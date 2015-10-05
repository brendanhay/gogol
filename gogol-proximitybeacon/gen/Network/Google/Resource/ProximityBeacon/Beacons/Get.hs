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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns detailed information about the specified beacon.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Google Proximity Beacon API Reference> for @ProximitybeaconBeaconsGet@.
module Network.Google.Resource.ProximityBeacon.Beacons.Get
    (
    -- * REST Resource
      BeaconsGetResource

    -- * Creating a Request
    , beaconsGet'
    , BeaconsGet'

    -- * Request Lenses
    , bgXgafv
    , bgQuotaUser
    , bgPrettyPrint
    , bgUploadProtocol
    , bgPp
    , bgAccessToken
    , bgBeaconName
    , bgUploadType
    , bgBearerToken
    , bgKey
    , bgOAuthToken
    , bgFields
    , bgCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ProximityBeacon.Types

-- | A resource alias for @ProximitybeaconBeaconsGet@ which the
-- 'BeaconsGet'' request conforms to.
type BeaconsGetResource =
     "v1beta1" :>
       Capture "beaconName" Text :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "fields" Text :>
                             QueryParam "key" AuthKey :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "alt" AltJSON :> Get '[JSON] Beacon

-- | Returns detailed information about the specified beacon.
--
-- /See:/ 'beaconsGet'' smart constructor.
data BeaconsGet' = BeaconsGet'
    { _bgXgafv          :: !(Maybe Text)
    , _bgQuotaUser      :: !(Maybe Text)
    , _bgPrettyPrint    :: !Bool
    , _bgUploadProtocol :: !(Maybe Text)
    , _bgPp             :: !Bool
    , _bgAccessToken    :: !(Maybe Text)
    , _bgBeaconName     :: !Text
    , _bgUploadType     :: !(Maybe Text)
    , _bgBearerToken    :: !(Maybe Text)
    , _bgKey            :: !(Maybe AuthKey)
    , _bgOAuthToken     :: !(Maybe OAuthToken)
    , _bgFields         :: !(Maybe Text)
    , _bgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BeaconsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgXgafv'
--
-- * 'bgQuotaUser'
--
-- * 'bgPrettyPrint'
--
-- * 'bgUploadProtocol'
--
-- * 'bgPp'
--
-- * 'bgAccessToken'
--
-- * 'bgBeaconName'
--
-- * 'bgUploadType'
--
-- * 'bgBearerToken'
--
-- * 'bgKey'
--
-- * 'bgOAuthToken'
--
-- * 'bgFields'
--
-- * 'bgCallback'
beaconsGet'
    :: Text -- ^ 'beaconName'
    -> BeaconsGet'
beaconsGet' pBgBeaconName_ =
    BeaconsGet'
    { _bgXgafv = Nothing
    , _bgQuotaUser = Nothing
    , _bgPrettyPrint = True
    , _bgUploadProtocol = Nothing
    , _bgPp = True
    , _bgAccessToken = Nothing
    , _bgBeaconName = pBgBeaconName_
    , _bgUploadType = Nothing
    , _bgBearerToken = Nothing
    , _bgKey = Nothing
    , _bgOAuthToken = Nothing
    , _bgFields = Nothing
    , _bgCallback = Nothing
    }

-- | V1 error format.
bgXgafv :: Lens' BeaconsGet' (Maybe Text)
bgXgafv = lens _bgXgafv (\ s a -> s{_bgXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
bgQuotaUser :: Lens' BeaconsGet' (Maybe Text)
bgQuotaUser
  = lens _bgQuotaUser (\ s a -> s{_bgQuotaUser = a})

-- | Returns response with indentations and line breaks.
bgPrettyPrint :: Lens' BeaconsGet' Bool
bgPrettyPrint
  = lens _bgPrettyPrint
      (\ s a -> s{_bgPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bgUploadProtocol :: Lens' BeaconsGet' (Maybe Text)
bgUploadProtocol
  = lens _bgUploadProtocol
      (\ s a -> s{_bgUploadProtocol = a})

-- | Pretty-print response.
bgPp :: Lens' BeaconsGet' Bool
bgPp = lens _bgPp (\ s a -> s{_bgPp = a})

-- | OAuth access token.
bgAccessToken :: Lens' BeaconsGet' (Maybe Text)
bgAccessToken
  = lens _bgAccessToken
      (\ s a -> s{_bgAccessToken = a})

-- | Beacon that is requested.
bgBeaconName :: Lens' BeaconsGet' Text
bgBeaconName
  = lens _bgBeaconName (\ s a -> s{_bgBeaconName = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bgUploadType :: Lens' BeaconsGet' (Maybe Text)
bgUploadType
  = lens _bgUploadType (\ s a -> s{_bgUploadType = a})

-- | OAuth bearer token.
bgBearerToken :: Lens' BeaconsGet' (Maybe Text)
bgBearerToken
  = lens _bgBearerToken
      (\ s a -> s{_bgBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
bgKey :: Lens' BeaconsGet' (Maybe AuthKey)
bgKey = lens _bgKey (\ s a -> s{_bgKey = a})

-- | OAuth 2.0 token for the current user.
bgOAuthToken :: Lens' BeaconsGet' (Maybe OAuthToken)
bgOAuthToken
  = lens _bgOAuthToken (\ s a -> s{_bgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
bgFields :: Lens' BeaconsGet' (Maybe Text)
bgFields = lens _bgFields (\ s a -> s{_bgFields = a})

-- | JSONP
bgCallback :: Lens' BeaconsGet' (Maybe Text)
bgCallback
  = lens _bgCallback (\ s a -> s{_bgCallback = a})

instance GoogleAuth BeaconsGet' where
        authKey = bgKey . _Just
        authToken = bgOAuthToken . _Just

instance GoogleRequest BeaconsGet' where
        type Rs BeaconsGet' = Beacon
        request = requestWithRoute defReq proximityBeaconURL
        requestWithRoute r u BeaconsGet'{..}
          = go _bgBeaconName _bgXgafv _bgUploadProtocol
              (Just _bgPp)
              _bgAccessToken
              _bgUploadType
              _bgBearerToken
              _bgCallback
              _bgQuotaUser
              (Just _bgPrettyPrint)
              _bgFields
              _bgKey
              _bgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy BeaconsGetResource)
                      r
                      u
