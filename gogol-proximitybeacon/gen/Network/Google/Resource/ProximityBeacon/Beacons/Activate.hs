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
-- Module      : Network.Google.Resource.ProximityBeacon.Beacons.Activate
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | (Re)activates a beacon. A beacon that is active will return information
-- and attachment data when queried via \`beaconinfo.getforobserved\`.
-- Calling this method on an already active beacon will do nothing (but
-- will return a successful response code).
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Google Proximity Beacon API Reference> for @ProximitybeaconBeaconsActivate@.
module Network.Google.Resource.ProximityBeacon.Beacons.Activate
    (
    -- * REST Resource
      BeaconsActivateResource

    -- * Creating a Request
    , beaconsActivate'
    , BeaconsActivate'

    -- * Request Lenses
    , baXgafv
    , baQuotaUser
    , baPrettyPrint
    , baUploadProtocol
    , baPp
    , baAccessToken
    , baBeaconName
    , baUploadType
    , baBearerToken
    , baKey
    , baOAuthToken
    , baFields
    , baCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ProximityBeacon.Types

-- | A resource alias for @ProximitybeaconBeaconsActivate@ which the
-- 'BeaconsActivate'' request conforms to.
type BeaconsActivateResource =
     "v1beta1" :>
       CaptureMode "beaconName" "activate" Text :>
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
                                 QueryParam "alt" AltJSON :> Post '[JSON] Empty

-- | (Re)activates a beacon. A beacon that is active will return information
-- and attachment data when queried via \`beaconinfo.getforobserved\`.
-- Calling this method on an already active beacon will do nothing (but
-- will return a successful response code).
--
-- /See:/ 'beaconsActivate'' smart constructor.
data BeaconsActivate' = BeaconsActivate'
    { _baXgafv          :: !(Maybe Text)
    , _baQuotaUser      :: !(Maybe Text)
    , _baPrettyPrint    :: !Bool
    , _baUploadProtocol :: !(Maybe Text)
    , _baPp             :: !Bool
    , _baAccessToken    :: !(Maybe Text)
    , _baBeaconName     :: !Text
    , _baUploadType     :: !(Maybe Text)
    , _baBearerToken    :: !(Maybe Text)
    , _baKey            :: !(Maybe AuthKey)
    , _baOAuthToken     :: !(Maybe OAuthToken)
    , _baFields         :: !(Maybe Text)
    , _baCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BeaconsActivate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'baXgafv'
--
-- * 'baQuotaUser'
--
-- * 'baPrettyPrint'
--
-- * 'baUploadProtocol'
--
-- * 'baPp'
--
-- * 'baAccessToken'
--
-- * 'baBeaconName'
--
-- * 'baUploadType'
--
-- * 'baBearerToken'
--
-- * 'baKey'
--
-- * 'baOAuthToken'
--
-- * 'baFields'
--
-- * 'baCallback'
beaconsActivate'
    :: Text -- ^ 'beaconName'
    -> BeaconsActivate'
beaconsActivate' pBaBeaconName_ =
    BeaconsActivate'
    { _baXgafv = Nothing
    , _baQuotaUser = Nothing
    , _baPrettyPrint = True
    , _baUploadProtocol = Nothing
    , _baPp = True
    , _baAccessToken = Nothing
    , _baBeaconName = pBaBeaconName_
    , _baUploadType = Nothing
    , _baBearerToken = Nothing
    , _baKey = Nothing
    , _baOAuthToken = Nothing
    , _baFields = Nothing
    , _baCallback = Nothing
    }

-- | V1 error format.
baXgafv :: Lens' BeaconsActivate' (Maybe Text)
baXgafv = lens _baXgafv (\ s a -> s{_baXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
baQuotaUser :: Lens' BeaconsActivate' (Maybe Text)
baQuotaUser
  = lens _baQuotaUser (\ s a -> s{_baQuotaUser = a})

-- | Returns response with indentations and line breaks.
baPrettyPrint :: Lens' BeaconsActivate' Bool
baPrettyPrint
  = lens _baPrettyPrint
      (\ s a -> s{_baPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
baUploadProtocol :: Lens' BeaconsActivate' (Maybe Text)
baUploadProtocol
  = lens _baUploadProtocol
      (\ s a -> s{_baUploadProtocol = a})

-- | Pretty-print response.
baPp :: Lens' BeaconsActivate' Bool
baPp = lens _baPp (\ s a -> s{_baPp = a})

-- | OAuth access token.
baAccessToken :: Lens' BeaconsActivate' (Maybe Text)
baAccessToken
  = lens _baAccessToken
      (\ s a -> s{_baAccessToken = a})

-- | The beacon to activate. Required.
baBeaconName :: Lens' BeaconsActivate' Text
baBeaconName
  = lens _baBeaconName (\ s a -> s{_baBeaconName = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
baUploadType :: Lens' BeaconsActivate' (Maybe Text)
baUploadType
  = lens _baUploadType (\ s a -> s{_baUploadType = a})

-- | OAuth bearer token.
baBearerToken :: Lens' BeaconsActivate' (Maybe Text)
baBearerToken
  = lens _baBearerToken
      (\ s a -> s{_baBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
baKey :: Lens' BeaconsActivate' (Maybe AuthKey)
baKey = lens _baKey (\ s a -> s{_baKey = a})

-- | OAuth 2.0 token for the current user.
baOAuthToken :: Lens' BeaconsActivate' (Maybe OAuthToken)
baOAuthToken
  = lens _baOAuthToken (\ s a -> s{_baOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
baFields :: Lens' BeaconsActivate' (Maybe Text)
baFields = lens _baFields (\ s a -> s{_baFields = a})

-- | JSONP
baCallback :: Lens' BeaconsActivate' (Maybe Text)
baCallback
  = lens _baCallback (\ s a -> s{_baCallback = a})

instance GoogleAuth BeaconsActivate' where
        authKey = baKey . _Just
        authToken = baOAuthToken . _Just

instance GoogleRequest BeaconsActivate' where
        type Rs BeaconsActivate' = Empty
        request = requestWithRoute defReq proximityBeaconURL
        requestWithRoute r u BeaconsActivate'{..}
          = go _baBeaconName _baXgafv _baUploadProtocol
              (Just _baPp)
              _baAccessToken
              _baUploadType
              _baBearerToken
              _baCallback
              _baQuotaUser
              (Just _baPrettyPrint)
              _baFields
              _baKey
              _baOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy BeaconsActivateResource)
                      r
                      u
