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
-- Module      : Network.Google.Resource.Directory.MobileDevices.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieve Mobile Device
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryMobileDevicesGet@.
module Network.Google.Resource.Directory.MobileDevices.Get
    (
    -- * REST Resource
      MobileDevicesGetResource

    -- * Creating a Request
    , mobileDevicesGet'
    , MobileDevicesGet'

    -- * Request Lenses
    , mdgQuotaUser
    , mdgResourceId
    , mdgPrettyPrint
    , mdgUserIP
    , mdgCustomerId
    , mdgKey
    , mdgProjection
    , mdgOAuthToken
    , mdgFields
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryMobileDevicesGet@ which the
-- 'MobileDevicesGet'' request conforms to.
type MobileDevicesGetResource =
     "customer" :>
       Capture "customerId" Text :>
         "devices" :>
           "mobile" :>
             Capture "resourceId" Text :>
               QueryParam "projection" MobileDevicesGetProjection :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] MobileDevice

-- | Retrieve Mobile Device
--
-- /See:/ 'mobileDevicesGet'' smart constructor.
data MobileDevicesGet' = MobileDevicesGet'
    { _mdgQuotaUser   :: !(Maybe Text)
    , _mdgResourceId  :: !Text
    , _mdgPrettyPrint :: !Bool
    , _mdgUserIP      :: !(Maybe Text)
    , _mdgCustomerId  :: !Text
    , _mdgKey         :: !(Maybe Key)
    , _mdgProjection  :: !(Maybe MobileDevicesGetProjection)
    , _mdgOAuthToken  :: !(Maybe OAuthToken)
    , _mdgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MobileDevicesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdgQuotaUser'
--
-- * 'mdgResourceId'
--
-- * 'mdgPrettyPrint'
--
-- * 'mdgUserIP'
--
-- * 'mdgCustomerId'
--
-- * 'mdgKey'
--
-- * 'mdgProjection'
--
-- * 'mdgOAuthToken'
--
-- * 'mdgFields'
mobileDevicesGet'
    :: Text -- ^ 'resourceId'
    -> Text -- ^ 'customerId'
    -> MobileDevicesGet'
mobileDevicesGet' pMdgResourceId_ pMdgCustomerId_ =
    MobileDevicesGet'
    { _mdgQuotaUser = Nothing
    , _mdgResourceId = pMdgResourceId_
    , _mdgPrettyPrint = True
    , _mdgUserIP = Nothing
    , _mdgCustomerId = pMdgCustomerId_
    , _mdgKey = Nothing
    , _mdgProjection = Nothing
    , _mdgOAuthToken = Nothing
    , _mdgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mdgQuotaUser :: Lens' MobileDevicesGet' (Maybe Text)
mdgQuotaUser
  = lens _mdgQuotaUser (\ s a -> s{_mdgQuotaUser = a})

-- | Immutable id of Mobile Device
mdgResourceId :: Lens' MobileDevicesGet' Text
mdgResourceId
  = lens _mdgResourceId
      (\ s a -> s{_mdgResourceId = a})

-- | Returns response with indentations and line breaks.
mdgPrettyPrint :: Lens' MobileDevicesGet' Bool
mdgPrettyPrint
  = lens _mdgPrettyPrint
      (\ s a -> s{_mdgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mdgUserIP :: Lens' MobileDevicesGet' (Maybe Text)
mdgUserIP
  = lens _mdgUserIP (\ s a -> s{_mdgUserIP = a})

-- | Immutable id of the Google Apps account
mdgCustomerId :: Lens' MobileDevicesGet' Text
mdgCustomerId
  = lens _mdgCustomerId
      (\ s a -> s{_mdgCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mdgKey :: Lens' MobileDevicesGet' (Maybe Key)
mdgKey = lens _mdgKey (\ s a -> s{_mdgKey = a})

-- | Restrict information returned to a set of selected fields.
mdgProjection :: Lens' MobileDevicesGet' (Maybe MobileDevicesGetProjection)
mdgProjection
  = lens _mdgProjection
      (\ s a -> s{_mdgProjection = a})

-- | OAuth 2.0 token for the current user.
mdgOAuthToken :: Lens' MobileDevicesGet' (Maybe OAuthToken)
mdgOAuthToken
  = lens _mdgOAuthToken
      (\ s a -> s{_mdgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mdgFields :: Lens' MobileDevicesGet' (Maybe Text)
mdgFields
  = lens _mdgFields (\ s a -> s{_mdgFields = a})

instance GoogleAuth MobileDevicesGet' where
        authKey = mdgKey . _Just
        authToken = mdgOAuthToken . _Just

instance GoogleRequest MobileDevicesGet' where
        type Rs MobileDevicesGet' = MobileDevice
        request = requestWithRoute defReq directoryURL
        requestWithRoute r u MobileDevicesGet'{..}
          = go _mdgCustomerId _mdgResourceId _mdgProjection
              _mdgQuotaUser
              (Just _mdgPrettyPrint)
              _mdgUserIP
              _mdgFields
              _mdgKey
              _mdgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MobileDevicesGetResource)
                      r
                      u
