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
-- Module      : Network.Google.Resource.Directory.MobileDevices.Action
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Take action on Mobile Device
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryMobileDevicesAction@.
module Network.Google.Resource.Directory.MobileDevices.Action
    (
    -- * REST Resource
      MobileDevicesActionResource

    -- * Creating a Request
    , mobileDevicesAction'
    , MobileDevicesAction'

    -- * Request Lenses
    , mdaQuotaUser
    , mdaResourceId
    , mdaPrettyPrint
    , mdaUserIP
    , mdaCustomerId
    , mdaKey
    , mdaOAuthToken
    , mdaMobileDeviceAction
    , mdaFields
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryMobileDevicesAction@ which the
-- 'MobileDevicesAction'' request conforms to.
type MobileDevicesActionResource =
     "customer" :>
       Capture "customerId" Text :>
         "devices" :>
           "mobile" :>
             Capture "resourceId" Text :>
               "action" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] MobileDeviceAction :>
                                 Post '[JSON] ()

-- | Take action on Mobile Device
--
-- /See:/ 'mobileDevicesAction'' smart constructor.
data MobileDevicesAction' = MobileDevicesAction'
    { _mdaQuotaUser          :: !(Maybe Text)
    , _mdaResourceId         :: !Text
    , _mdaPrettyPrint        :: !Bool
    , _mdaUserIP             :: !(Maybe Text)
    , _mdaCustomerId         :: !Text
    , _mdaKey                :: !(Maybe Key)
    , _mdaOAuthToken         :: !(Maybe OAuthToken)
    , _mdaMobileDeviceAction :: !MobileDeviceAction
    , _mdaFields             :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MobileDevicesAction'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdaQuotaUser'
--
-- * 'mdaResourceId'
--
-- * 'mdaPrettyPrint'
--
-- * 'mdaUserIP'
--
-- * 'mdaCustomerId'
--
-- * 'mdaKey'
--
-- * 'mdaOAuthToken'
--
-- * 'mdaMobileDeviceAction'
--
-- * 'mdaFields'
mobileDevicesAction'
    :: Text -- ^ 'resourceId'
    -> Text -- ^ 'customerId'
    -> MobileDeviceAction -- ^ 'MobileDeviceAction'
    -> MobileDevicesAction'
mobileDevicesAction' pMdaResourceId_ pMdaCustomerId_ pMdaMobileDeviceAction_ =
    MobileDevicesAction'
    { _mdaQuotaUser = Nothing
    , _mdaResourceId = pMdaResourceId_
    , _mdaPrettyPrint = True
    , _mdaUserIP = Nothing
    , _mdaCustomerId = pMdaCustomerId_
    , _mdaKey = Nothing
    , _mdaOAuthToken = Nothing
    , _mdaMobileDeviceAction = pMdaMobileDeviceAction_
    , _mdaFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mdaQuotaUser :: Lens' MobileDevicesAction' (Maybe Text)
mdaQuotaUser
  = lens _mdaQuotaUser (\ s a -> s{_mdaQuotaUser = a})

-- | Immutable id of Mobile Device
mdaResourceId :: Lens' MobileDevicesAction' Text
mdaResourceId
  = lens _mdaResourceId
      (\ s a -> s{_mdaResourceId = a})

-- | Returns response with indentations and line breaks.
mdaPrettyPrint :: Lens' MobileDevicesAction' Bool
mdaPrettyPrint
  = lens _mdaPrettyPrint
      (\ s a -> s{_mdaPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mdaUserIP :: Lens' MobileDevicesAction' (Maybe Text)
mdaUserIP
  = lens _mdaUserIP (\ s a -> s{_mdaUserIP = a})

-- | Immutable id of the Google Apps account
mdaCustomerId :: Lens' MobileDevicesAction' Text
mdaCustomerId
  = lens _mdaCustomerId
      (\ s a -> s{_mdaCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mdaKey :: Lens' MobileDevicesAction' (Maybe Key)
mdaKey = lens _mdaKey (\ s a -> s{_mdaKey = a})

-- | OAuth 2.0 token for the current user.
mdaOAuthToken :: Lens' MobileDevicesAction' (Maybe OAuthToken)
mdaOAuthToken
  = lens _mdaOAuthToken
      (\ s a -> s{_mdaOAuthToken = a})

-- | Multipart request metadata.
mdaMobileDeviceAction :: Lens' MobileDevicesAction' MobileDeviceAction
mdaMobileDeviceAction
  = lens _mdaMobileDeviceAction
      (\ s a -> s{_mdaMobileDeviceAction = a})

-- | Selector specifying which fields to include in a partial response.
mdaFields :: Lens' MobileDevicesAction' (Maybe Text)
mdaFields
  = lens _mdaFields (\ s a -> s{_mdaFields = a})

instance GoogleAuth MobileDevicesAction' where
        authKey = mdaKey . _Just
        authToken = mdaOAuthToken . _Just

instance GoogleRequest MobileDevicesAction' where
        type Rs MobileDevicesAction' = ()
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u MobileDevicesAction'{..}
          = go _mdaQuotaUser _mdaResourceId
              (Just _mdaPrettyPrint)
              _mdaUserIP
              _mdaCustomerId
              _mdaKey
              _mdaOAuthToken
              _mdaFields
              (Just AltJSON)
              _mdaMobileDeviceAction
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MobileDevicesActionResource)
                      r
                      u
