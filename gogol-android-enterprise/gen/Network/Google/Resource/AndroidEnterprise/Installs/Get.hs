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
-- Module      : Network.Google.Resource.AndroidEnterprise.Installs.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves details of an installation of an app on a device.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseInstallsGet@.
module Network.Google.Resource.AndroidEnterprise.Installs.Get
    (
    -- * REST Resource
      InstallsGetResource

    -- * Creating a Request
    , installsGet'
    , InstallsGet'

    -- * Request Lenses
    , igQuotaUser
    , igPrettyPrint
    , igEnterpriseId
    , igUserIP
    , igUserId
    , igInstallId
    , igKey
    , igDeviceId
    , igOAuthToken
    , igFields
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseInstallsGet@ which the
-- 'InstallsGet'' request conforms to.
type InstallsGetResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "users" :>
           Capture "userId" Text :>
             "devices" :>
               Capture "deviceId" Text :>
                 "installs" :>
                   Capture "installId" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "key" AuthKey :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "alt" AltJSON :> Get '[JSON] Install

-- | Retrieves details of an installation of an app on a device.
--
-- /See:/ 'installsGet'' smart constructor.
data InstallsGet' = InstallsGet'
    { _igQuotaUser    :: !(Maybe Text)
    , _igPrettyPrint  :: !Bool
    , _igEnterpriseId :: !Text
    , _igUserIP       :: !(Maybe Text)
    , _igUserId       :: !Text
    , _igInstallId    :: !Text
    , _igKey          :: !(Maybe AuthKey)
    , _igDeviceId     :: !Text
    , _igOAuthToken   :: !(Maybe OAuthToken)
    , _igFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstallsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igQuotaUser'
--
-- * 'igPrettyPrint'
--
-- * 'igEnterpriseId'
--
-- * 'igUserIP'
--
-- * 'igUserId'
--
-- * 'igInstallId'
--
-- * 'igKey'
--
-- * 'igDeviceId'
--
-- * 'igOAuthToken'
--
-- * 'igFields'
installsGet'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'userId'
    -> Text -- ^ 'installId'
    -> Text -- ^ 'deviceId'
    -> InstallsGet'
installsGet' pIgEnterpriseId_ pIgUserId_ pIgInstallId_ pIgDeviceId_ =
    InstallsGet'
    { _igQuotaUser = Nothing
    , _igPrettyPrint = True
    , _igEnterpriseId = pIgEnterpriseId_
    , _igUserIP = Nothing
    , _igUserId = pIgUserId_
    , _igInstallId = pIgInstallId_
    , _igKey = Nothing
    , _igDeviceId = pIgDeviceId_
    , _igOAuthToken = Nothing
    , _igFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
igQuotaUser :: Lens' InstallsGet' (Maybe Text)
igQuotaUser
  = lens _igQuotaUser (\ s a -> s{_igQuotaUser = a})

-- | Returns response with indentations and line breaks.
igPrettyPrint :: Lens' InstallsGet' Bool
igPrettyPrint
  = lens _igPrettyPrint
      (\ s a -> s{_igPrettyPrint = a})

-- | The ID of the enterprise.
igEnterpriseId :: Lens' InstallsGet' Text
igEnterpriseId
  = lens _igEnterpriseId
      (\ s a -> s{_igEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
igUserIP :: Lens' InstallsGet' (Maybe Text)
igUserIP = lens _igUserIP (\ s a -> s{_igUserIP = a})

-- | The ID of the user.
igUserId :: Lens' InstallsGet' Text
igUserId = lens _igUserId (\ s a -> s{_igUserId = a})

-- | The ID of the product represented by the install, e.g.
-- \"app:com.google.android.gm\".
igInstallId :: Lens' InstallsGet' Text
igInstallId
  = lens _igInstallId (\ s a -> s{_igInstallId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
igKey :: Lens' InstallsGet' (Maybe AuthKey)
igKey = lens _igKey (\ s a -> s{_igKey = a})

-- | The Android ID of the device.
igDeviceId :: Lens' InstallsGet' Text
igDeviceId
  = lens _igDeviceId (\ s a -> s{_igDeviceId = a})

-- | OAuth 2.0 token for the current user.
igOAuthToken :: Lens' InstallsGet' (Maybe OAuthToken)
igOAuthToken
  = lens _igOAuthToken (\ s a -> s{_igOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
igFields :: Lens' InstallsGet' (Maybe Text)
igFields = lens _igFields (\ s a -> s{_igFields = a})

instance GoogleAuth InstallsGet' where
        _AuthKey = igKey . _Just
        _AuthToken = igOAuthToken . _Just

instance GoogleRequest InstallsGet' where
        type Rs InstallsGet' = Install
        request = requestWith androidEnterpriseRequest
        requestWith rq InstallsGet'{..}
          = go _igEnterpriseId _igUserId _igDeviceId
              _igInstallId
              _igQuotaUser
              (Just _igPrettyPrint)
              _igUserIP
              _igFields
              _igKey
              _igOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy InstallsGetResource) rq
