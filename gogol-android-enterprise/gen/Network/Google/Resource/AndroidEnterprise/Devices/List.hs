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
-- Module      : Network.Google.Resource.AndroidEnterprise.Devices.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the IDs of all of a user\'s devices.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseDevicesList@.
module Network.Google.Resource.AndroidEnterprise.Devices.List
    (
    -- * REST Resource
      DevicesListResource

    -- * Creating a Request
    , devicesList'
    , DevicesList'

    -- * Request Lenses
    , dlQuotaUser
    , dlPrettyPrint
    , dlEnterpriseId
    , dlUserIP
    , dlUserId
    , dlKey
    , dlOAuthToken
    , dlFields
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseDevicesList@ method which the
-- 'DevicesList'' request conforms to.
type DevicesListResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "users" :>
           Capture "userId" Text :>
             "devices" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] DevicesListResponse

-- | Retrieves the IDs of all of a user\'s devices.
--
-- /See:/ 'devicesList'' smart constructor.
data DevicesList' = DevicesList'
    { _dlQuotaUser    :: !(Maybe Text)
    , _dlPrettyPrint  :: !Bool
    , _dlEnterpriseId :: !Text
    , _dlUserIP       :: !(Maybe Text)
    , _dlUserId       :: !Text
    , _dlKey          :: !(Maybe AuthKey)
    , _dlOAuthToken   :: !(Maybe OAuthToken)
    , _dlFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DevicesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlQuotaUser'
--
-- * 'dlPrettyPrint'
--
-- * 'dlEnterpriseId'
--
-- * 'dlUserIP'
--
-- * 'dlUserId'
--
-- * 'dlKey'
--
-- * 'dlOAuthToken'
--
-- * 'dlFields'
devicesList'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'userId'
    -> DevicesList'
devicesList' pDlEnterpriseId_ pDlUserId_ =
    DevicesList'
    { _dlQuotaUser = Nothing
    , _dlPrettyPrint = True
    , _dlEnterpriseId = pDlEnterpriseId_
    , _dlUserIP = Nothing
    , _dlUserId = pDlUserId_
    , _dlKey = Nothing
    , _dlOAuthToken = Nothing
    , _dlFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dlQuotaUser :: Lens' DevicesList' (Maybe Text)
dlQuotaUser
  = lens _dlQuotaUser (\ s a -> s{_dlQuotaUser = a})

-- | Returns response with indentations and line breaks.
dlPrettyPrint :: Lens' DevicesList' Bool
dlPrettyPrint
  = lens _dlPrettyPrint
      (\ s a -> s{_dlPrettyPrint = a})

-- | The ID of the enterprise.
dlEnterpriseId :: Lens' DevicesList' Text
dlEnterpriseId
  = lens _dlEnterpriseId
      (\ s a -> s{_dlEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dlUserIP :: Lens' DevicesList' (Maybe Text)
dlUserIP = lens _dlUserIP (\ s a -> s{_dlUserIP = a})

-- | The ID of the user.
dlUserId :: Lens' DevicesList' Text
dlUserId = lens _dlUserId (\ s a -> s{_dlUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dlKey :: Lens' DevicesList' (Maybe AuthKey)
dlKey = lens _dlKey (\ s a -> s{_dlKey = a})

-- | OAuth 2.0 token for the current user.
dlOAuthToken :: Lens' DevicesList' (Maybe OAuthToken)
dlOAuthToken
  = lens _dlOAuthToken (\ s a -> s{_dlOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
dlFields :: Lens' DevicesList' (Maybe Text)
dlFields = lens _dlFields (\ s a -> s{_dlFields = a})

instance GoogleAuth DevicesList' where
        _AuthKey = dlKey . _Just
        _AuthToken = dlOAuthToken . _Just

instance GoogleRequest DevicesList' where
        type Rs DevicesList' = DevicesListResponse
        request = requestWith androidEnterpriseRequest
        requestWith rq DevicesList'{..}
          = go _dlEnterpriseId _dlUserId _dlQuotaUser
              (Just _dlPrettyPrint)
              _dlUserIP
              _dlFields
              _dlKey
              _dlOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy DevicesListResource) rq
