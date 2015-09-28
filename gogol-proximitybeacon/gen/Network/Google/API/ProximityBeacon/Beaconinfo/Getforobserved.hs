{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.ProximityBeacon.Beaconinfo.Getforobserved
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Given one or more beacon observations, returns any beacon information
-- and attachments accessible to your application.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Google Proximity Beacon API Reference> for @proximitybeacon.beaconinfo.getforobserved@.
module Network.Google.API.ProximityBeacon.Beaconinfo.Getforobserved
    (
    -- * REST Resource
      BeaconinfoGetforobservedAPI

    -- * Creating a Request
    , beaconinfoGetforobserved'
    , BeaconinfoGetforobserved'

    -- * Request Lenses
    , bgXgafv
    , bgQuotaUser
    , bgPrettyPrint
    , bgUploadProtocol
    , bgPp
    , bgAccessToken
    , bgUploadType
    , bgBearerToken
    , bgKey
    , bgOauthToken
    , bgFields
    , bgCallback
    , bgAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.ProximityBeacon.Types

-- | A resource alias for proximitybeacon.beaconinfo.getforobserved which the
-- 'BeaconinfoGetforobserved'' request conforms to.
type BeaconinfoGetforobservedAPI =
     "v1beta1" :>
       "beaconinfo:getforobserved" :>
         QueryParam "$.xgafv" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "bearer_token" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" Text :>
                                   Post '[JSON]
                                     GetInfoForObservedBeaconsResponse

-- | Given one or more beacon observations, returns any beacon information
-- and attachments accessible to your application.
--
-- /See:/ 'beaconinfoGetforobserved'' smart constructor.
data BeaconinfoGetforobserved' = BeaconinfoGetforobserved'
    { _bgXgafv          :: !(Maybe Text)
    , _bgQuotaUser      :: !(Maybe Text)
    , _bgPrettyPrint    :: !Bool
    , _bgUploadProtocol :: !(Maybe Text)
    , _bgPp             :: !Bool
    , _bgAccessToken    :: !(Maybe Text)
    , _bgUploadType     :: !(Maybe Text)
    , _bgBearerToken    :: !(Maybe Text)
    , _bgKey            :: !(Maybe Text)
    , _bgOauthToken     :: !(Maybe Text)
    , _bgFields         :: !(Maybe Text)
    , _bgCallback       :: !(Maybe Text)
    , _bgAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BeaconinfoGetforobserved'' with the minimum fields required to make a request.
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
-- * 'bgUploadType'
--
-- * 'bgBearerToken'
--
-- * 'bgKey'
--
-- * 'bgOauthToken'
--
-- * 'bgFields'
--
-- * 'bgCallback'
--
-- * 'bgAlt'
beaconinfoGetforobserved'
    :: BeaconinfoGetforobserved'
beaconinfoGetforobserved' =
    BeaconinfoGetforobserved'
    { _bgXgafv = Nothing
    , _bgQuotaUser = Nothing
    , _bgPrettyPrint = True
    , _bgUploadProtocol = Nothing
    , _bgPp = True
    , _bgAccessToken = Nothing
    , _bgUploadType = Nothing
    , _bgBearerToken = Nothing
    , _bgKey = Nothing
    , _bgOauthToken = Nothing
    , _bgFields = Nothing
    , _bgCallback = Nothing
    , _bgAlt = "json"
    }

-- | V1 error format.
bgXgafv :: Lens' BeaconinfoGetforobserved' (Maybe Text)
bgXgafv = lens _bgXgafv (\ s a -> s{_bgXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
bgQuotaUser :: Lens' BeaconinfoGetforobserved' (Maybe Text)
bgQuotaUser
  = lens _bgQuotaUser (\ s a -> s{_bgQuotaUser = a})

-- | Returns response with indentations and line breaks.
bgPrettyPrint :: Lens' BeaconinfoGetforobserved' Bool
bgPrettyPrint
  = lens _bgPrettyPrint
      (\ s a -> s{_bgPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bgUploadProtocol :: Lens' BeaconinfoGetforobserved' (Maybe Text)
bgUploadProtocol
  = lens _bgUploadProtocol
      (\ s a -> s{_bgUploadProtocol = a})

-- | Pretty-print response.
bgPp :: Lens' BeaconinfoGetforobserved' Bool
bgPp = lens _bgPp (\ s a -> s{_bgPp = a})

-- | OAuth access token.
bgAccessToken :: Lens' BeaconinfoGetforobserved' (Maybe Text)
bgAccessToken
  = lens _bgAccessToken
      (\ s a -> s{_bgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bgUploadType :: Lens' BeaconinfoGetforobserved' (Maybe Text)
bgUploadType
  = lens _bgUploadType (\ s a -> s{_bgUploadType = a})

-- | OAuth bearer token.
bgBearerToken :: Lens' BeaconinfoGetforobserved' (Maybe Text)
bgBearerToken
  = lens _bgBearerToken
      (\ s a -> s{_bgBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
bgKey :: Lens' BeaconinfoGetforobserved' (Maybe Text)
bgKey = lens _bgKey (\ s a -> s{_bgKey = a})

-- | OAuth 2.0 token for the current user.
bgOauthToken :: Lens' BeaconinfoGetforobserved' (Maybe Text)
bgOauthToken
  = lens _bgOauthToken (\ s a -> s{_bgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
bgFields :: Lens' BeaconinfoGetforobserved' (Maybe Text)
bgFields = lens _bgFields (\ s a -> s{_bgFields = a})

-- | JSONP
bgCallback :: Lens' BeaconinfoGetforobserved' (Maybe Text)
bgCallback
  = lens _bgCallback (\ s a -> s{_bgCallback = a})

-- | Data format for response.
bgAlt :: Lens' BeaconinfoGetforobserved' Text
bgAlt = lens _bgAlt (\ s a -> s{_bgAlt = a})

instance GoogleRequest BeaconinfoGetforobserved'
         where
        type Rs BeaconinfoGetforobserved' =
             GetInfoForObservedBeaconsResponse
        request = requestWithRoute defReq proximityBeaconURL
        requestWithRoute r u BeaconinfoGetforobserved'{..}
          = go _bgXgafv _bgQuotaUser (Just _bgPrettyPrint)
              _bgUploadProtocol
              (Just _bgPp)
              _bgAccessToken
              _bgUploadType
              _bgBearerToken
              _bgKey
              _bgOauthToken
              _bgFields
              _bgCallback
              (Just _bgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy BeaconinfoGetforobservedAPI)
                      r
                      u
