{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.ProximityBeacon.Beacons.Register
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Registers a previously unregistered beacon given its \`advertisedId\`.
-- These IDs are unique within the system. An ID can be registered only
-- once.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Google Proximity Beacon API Reference> for @ProximitybeaconBeaconsRegister@.
module ProximityBeacon.Beacons.Register
    (
    -- * REST Resource
      BeaconsRegisterAPI

    -- * Creating a Request
    , beaconsRegister
    , BeaconsRegister

    -- * Request Lenses
    , brXgafv
    , brQuotaUser
    , brPrettyPrint
    , brUploadProtocol
    , brPp
    , brAccessToken
    , brUploadType
    , brBearerToken
    , brKey
    , brOauthToken
    , brFields
    , brCallback
    , brAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.ProximityBeacon.Types

-- | A resource alias for @ProximitybeaconBeaconsRegister@ which the
-- 'BeaconsRegister' request conforms to.
type BeaconsRegisterAPI =
     "v1beta1" :>
       "beacons:register" :> Post '[JSON] Beacon

-- | Registers a previously unregistered beacon given its \`advertisedId\`.
-- These IDs are unique within the system. An ID can be registered only
-- once.
--
-- /See:/ 'beaconsRegister' smart constructor.
data BeaconsRegister = BeaconsRegister
    { _brXgafv          :: !(Maybe Text)
    , _brQuotaUser      :: !(Maybe Text)
    , _brPrettyPrint    :: !Bool
    , _brUploadProtocol :: !(Maybe Text)
    , _brPp             :: !Bool
    , _brAccessToken    :: !(Maybe Text)
    , _brUploadType     :: !(Maybe Text)
    , _brBearerToken    :: !(Maybe Text)
    , _brKey            :: !(Maybe Text)
    , _brOauthToken     :: !(Maybe Text)
    , _brFields         :: !(Maybe Text)
    , _brCallback       :: !(Maybe Text)
    , _brAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BeaconsRegister'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'brXgafv'
--
-- * 'brQuotaUser'
--
-- * 'brPrettyPrint'
--
-- * 'brUploadProtocol'
--
-- * 'brPp'
--
-- * 'brAccessToken'
--
-- * 'brUploadType'
--
-- * 'brBearerToken'
--
-- * 'brKey'
--
-- * 'brOauthToken'
--
-- * 'brFields'
--
-- * 'brCallback'
--
-- * 'brAlt'
beaconsRegister
    :: BeaconsRegister
beaconsRegister =
    BeaconsRegister
    { _brXgafv = Nothing
    , _brQuotaUser = Nothing
    , _brPrettyPrint = True
    , _brUploadProtocol = Nothing
    , _brPp = True
    , _brAccessToken = Nothing
    , _brUploadType = Nothing
    , _brBearerToken = Nothing
    , _brKey = Nothing
    , _brOauthToken = Nothing
    , _brFields = Nothing
    , _brCallback = Nothing
    , _brAlt = "json"
    }

-- | V1 error format.
brXgafv :: Lens' BeaconsRegister' (Maybe Text)
brXgafv = lens _brXgafv (\ s a -> s{_brXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
brQuotaUser :: Lens' BeaconsRegister' (Maybe Text)
brQuotaUser
  = lens _brQuotaUser (\ s a -> s{_brQuotaUser = a})

-- | Returns response with indentations and line breaks.
brPrettyPrint :: Lens' BeaconsRegister' Bool
brPrettyPrint
  = lens _brPrettyPrint
      (\ s a -> s{_brPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
brUploadProtocol :: Lens' BeaconsRegister' (Maybe Text)
brUploadProtocol
  = lens _brUploadProtocol
      (\ s a -> s{_brUploadProtocol = a})

-- | Pretty-print response.
brPp :: Lens' BeaconsRegister' Bool
brPp = lens _brPp (\ s a -> s{_brPp = a})

-- | OAuth access token.
brAccessToken :: Lens' BeaconsRegister' (Maybe Text)
brAccessToken
  = lens _brAccessToken
      (\ s a -> s{_brAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
brUploadType :: Lens' BeaconsRegister' (Maybe Text)
brUploadType
  = lens _brUploadType (\ s a -> s{_brUploadType = a})

-- | OAuth bearer token.
brBearerToken :: Lens' BeaconsRegister' (Maybe Text)
brBearerToken
  = lens _brBearerToken
      (\ s a -> s{_brBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
brKey :: Lens' BeaconsRegister' (Maybe Text)
brKey = lens _brKey (\ s a -> s{_brKey = a})

-- | OAuth 2.0 token for the current user.
brOauthToken :: Lens' BeaconsRegister' (Maybe Text)
brOauthToken
  = lens _brOauthToken (\ s a -> s{_brOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
brFields :: Lens' BeaconsRegister' (Maybe Text)
brFields = lens _brFields (\ s a -> s{_brFields = a})

-- | JSONP
brCallback :: Lens' BeaconsRegister' (Maybe Text)
brCallback
  = lens _brCallback (\ s a -> s{_brCallback = a})

-- | Data format for response.
brAlt :: Lens' BeaconsRegister' Text
brAlt = lens _brAlt (\ s a -> s{_brAlt = a})

instance GoogleRequest BeaconsRegister' where
        type Rs BeaconsRegister' = Beacon
        request = requestWithRoute defReq proximityBeaconURL
        requestWithRoute r u BeaconsRegister{..}
          = go _brXgafv _brQuotaUser _brPrettyPrint
              _brUploadProtocol
              _brPp
              _brAccessToken
              _brUploadType
              _brBearerToken
              _brKey
              _brOauthToken
              _brFields
              _brCallback
              _brAlt
          where go
                  = clientWithRoute (Proxy :: Proxy BeaconsRegisterAPI)
                      r
                      u
