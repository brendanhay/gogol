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
-- Module      : Network.Google.Resource.AndroidEnterprise.Installs.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Requests to remove an app from a device. A call to get or list will
-- still show the app as installed on the device until it is actually
-- removed.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseInstallsDelete@.
module Network.Google.Resource.AndroidEnterprise.Installs.Delete
    (
    -- * REST Resource
      InstallsDeleteResource

    -- * Creating a Request
    , installsDelete'
    , InstallsDelete'

    -- * Request Lenses
    , idQuotaUser
    , idPrettyPrint
    , idEnterpriseId
    , idUserIP
    , idUserId
    , idInstallId
    , idKey
    , idDeviceId
    , idOAuthToken
    , idFields
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseInstallsDelete@ which the
-- 'InstallsDelete'' request conforms to.
type InstallsDeleteResource =
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
                                 QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Requests to remove an app from a device. A call to get or list will
-- still show the app as installed on the device until it is actually
-- removed.
--
-- /See:/ 'installsDelete'' smart constructor.
data InstallsDelete' = InstallsDelete'
    { _idQuotaUser    :: !(Maybe Text)
    , _idPrettyPrint  :: !Bool
    , _idEnterpriseId :: !Text
    , _idUserIP       :: !(Maybe Text)
    , _idUserId       :: !Text
    , _idInstallId    :: !Text
    , _idKey          :: !(Maybe AuthKey)
    , _idDeviceId     :: !Text
    , _idOAuthToken   :: !(Maybe OAuthToken)
    , _idFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstallsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'idQuotaUser'
--
-- * 'idPrettyPrint'
--
-- * 'idEnterpriseId'
--
-- * 'idUserIP'
--
-- * 'idUserId'
--
-- * 'idInstallId'
--
-- * 'idKey'
--
-- * 'idDeviceId'
--
-- * 'idOAuthToken'
--
-- * 'idFields'
installsDelete'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'userId'
    -> Text -- ^ 'installId'
    -> Text -- ^ 'deviceId'
    -> InstallsDelete'
installsDelete' pIdEnterpriseId_ pIdUserId_ pIdInstallId_ pIdDeviceId_ =
    InstallsDelete'
    { _idQuotaUser = Nothing
    , _idPrettyPrint = True
    , _idEnterpriseId = pIdEnterpriseId_
    , _idUserIP = Nothing
    , _idUserId = pIdUserId_
    , _idInstallId = pIdInstallId_
    , _idKey = Nothing
    , _idDeviceId = pIdDeviceId_
    , _idOAuthToken = Nothing
    , _idFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
idQuotaUser :: Lens' InstallsDelete' (Maybe Text)
idQuotaUser
  = lens _idQuotaUser (\ s a -> s{_idQuotaUser = a})

-- | Returns response with indentations and line breaks.
idPrettyPrint :: Lens' InstallsDelete' Bool
idPrettyPrint
  = lens _idPrettyPrint
      (\ s a -> s{_idPrettyPrint = a})

-- | The ID of the enterprise.
idEnterpriseId :: Lens' InstallsDelete' Text
idEnterpriseId
  = lens _idEnterpriseId
      (\ s a -> s{_idEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
idUserIP :: Lens' InstallsDelete' (Maybe Text)
idUserIP = lens _idUserIP (\ s a -> s{_idUserIP = a})

-- | The ID of the user.
idUserId :: Lens' InstallsDelete' Text
idUserId = lens _idUserId (\ s a -> s{_idUserId = a})

-- | The ID of the product represented by the install, e.g.
-- \"app:com.google.android.gm\".
idInstallId :: Lens' InstallsDelete' Text
idInstallId
  = lens _idInstallId (\ s a -> s{_idInstallId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
idKey :: Lens' InstallsDelete' (Maybe AuthKey)
idKey = lens _idKey (\ s a -> s{_idKey = a})

-- | The Android ID of the device.
idDeviceId :: Lens' InstallsDelete' Text
idDeviceId
  = lens _idDeviceId (\ s a -> s{_idDeviceId = a})

-- | OAuth 2.0 token for the current user.
idOAuthToken :: Lens' InstallsDelete' (Maybe OAuthToken)
idOAuthToken
  = lens _idOAuthToken (\ s a -> s{_idOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
idFields :: Lens' InstallsDelete' (Maybe Text)
idFields = lens _idFields (\ s a -> s{_idFields = a})

instance GoogleAuth InstallsDelete' where
        _AuthKey = idKey . _Just
        _AuthToken = idOAuthToken . _Just

instance GoogleRequest InstallsDelete' where
        type Rs InstallsDelete' = ()
        request = requestWith androidEnterpriseRequest
        requestWith rq InstallsDelete'{..}
          = go _idEnterpriseId _idUserId _idDeviceId
              _idInstallId
              _idQuotaUser
              (Just _idPrettyPrint)
              _idUserIP
              _idFields
              _idKey
              _idOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy InstallsDeleteResource)
                      rq
