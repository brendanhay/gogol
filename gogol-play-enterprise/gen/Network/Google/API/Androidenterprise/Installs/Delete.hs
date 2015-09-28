{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Androidenterprise.Installs.Delete
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
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @androidenterprise.installs.delete@.
module Network.Google.API.Androidenterprise.Installs.Delete
    (
    -- * REST Resource
      InstallsDeleteAPI

    -- * Creating a Request
    , installsDelete'
    , InstallsDelete'

    -- * Request Lenses
    , idQuotaUser
    , idPrettyPrint
    , idEnterpriseId
    , idUserIp
    , idUserId
    , idInstallId
    , idKey
    , idDeviceId
    , idOauthToken
    , idFields
    , idAlt
    ) where

import           Network.Google.Play.Enterprise.Types
import           Network.Google.Prelude

-- | A resource alias for androidenterprise.installs.delete which the
-- 'InstallsDelete'' request conforms to.
type InstallsDeleteAPI =
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
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Requests to remove an app from a device. A call to get or list will
-- still show the app as installed on the device until it is actually
-- removed.
--
-- /See:/ 'installsDelete'' smart constructor.
data InstallsDelete' = InstallsDelete'
    { _idQuotaUser    :: !(Maybe Text)
    , _idPrettyPrint  :: !Bool
    , _idEnterpriseId :: !Text
    , _idUserIp       :: !(Maybe Text)
    , _idUserId       :: !Text
    , _idInstallId    :: !Text
    , _idKey          :: !(Maybe Text)
    , _idDeviceId     :: !Text
    , _idOauthToken   :: !(Maybe Text)
    , _idFields       :: !(Maybe Text)
    , _idAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'idUserIp'
--
-- * 'idUserId'
--
-- * 'idInstallId'
--
-- * 'idKey'
--
-- * 'idDeviceId'
--
-- * 'idOauthToken'
--
-- * 'idFields'
--
-- * 'idAlt'
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
    , _idUserIp = Nothing
    , _idUserId = pIdUserId_
    , _idInstallId = pIdInstallId_
    , _idKey = Nothing
    , _idDeviceId = pIdDeviceId_
    , _idOauthToken = Nothing
    , _idFields = Nothing
    , _idAlt = JSON
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
idUserIp :: Lens' InstallsDelete' (Maybe Text)
idUserIp = lens _idUserIp (\ s a -> s{_idUserIp = a})

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
idKey :: Lens' InstallsDelete' (Maybe Text)
idKey = lens _idKey (\ s a -> s{_idKey = a})

-- | The Android ID of the device.
idDeviceId :: Lens' InstallsDelete' Text
idDeviceId
  = lens _idDeviceId (\ s a -> s{_idDeviceId = a})

-- | OAuth 2.0 token for the current user.
idOauthToken :: Lens' InstallsDelete' (Maybe Text)
idOauthToken
  = lens _idOauthToken (\ s a -> s{_idOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
idFields :: Lens' InstallsDelete' (Maybe Text)
idFields = lens _idFields (\ s a -> s{_idFields = a})

-- | Data format for the response.
idAlt :: Lens' InstallsDelete' Alt
idAlt = lens _idAlt (\ s a -> s{_idAlt = a})

instance GoogleRequest InstallsDelete' where
        type Rs InstallsDelete' = ()
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u InstallsDelete'{..}
          = go _idQuotaUser (Just _idPrettyPrint)
              _idEnterpriseId
              _idUserIp
              _idUserId
              _idInstallId
              _idKey
              _idDeviceId
              _idOauthToken
              _idFields
              (Just _idAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy InstallsDeleteAPI)
                      r
                      u
