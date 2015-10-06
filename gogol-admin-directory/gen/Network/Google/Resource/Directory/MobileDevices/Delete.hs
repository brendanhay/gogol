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
-- Module      : Network.Google.Resource.Directory.MobileDevices.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete Mobile Device
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryMobileDevicesDelete@.
module Network.Google.Resource.Directory.MobileDevices.Delete
    (
    -- * REST Resource
      MobileDevicesDeleteResource

    -- * Creating a Request
    , mobileDevicesDelete'
    , MobileDevicesDelete'

    -- * Request Lenses
    , mddQuotaUser
    , mddResourceId
    , mddPrettyPrint
    , mddUserIP
    , mddCustomerId
    , mddKey
    , mddOAuthToken
    , mddFields
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryMobileDevicesDelete@ which the
-- 'MobileDevicesDelete'' request conforms to.
type MobileDevicesDeleteResource =
     "customer" :>
       Capture "customerId" Text :>
         "devices" :>
           "mobile" :>
             Capture "resourceId" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Delete Mobile Device
--
-- /See:/ 'mobileDevicesDelete'' smart constructor.
data MobileDevicesDelete' = MobileDevicesDelete'
    { _mddQuotaUser   :: !(Maybe Text)
    , _mddResourceId  :: !Text
    , _mddPrettyPrint :: !Bool
    , _mddUserIP      :: !(Maybe Text)
    , _mddCustomerId  :: !Text
    , _mddKey         :: !(Maybe AuthKey)
    , _mddOAuthToken  :: !(Maybe OAuthToken)
    , _mddFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MobileDevicesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mddQuotaUser'
--
-- * 'mddResourceId'
--
-- * 'mddPrettyPrint'
--
-- * 'mddUserIP'
--
-- * 'mddCustomerId'
--
-- * 'mddKey'
--
-- * 'mddOAuthToken'
--
-- * 'mddFields'
mobileDevicesDelete'
    :: Text -- ^ 'resourceId'
    -> Text -- ^ 'customerId'
    -> MobileDevicesDelete'
mobileDevicesDelete' pMddResourceId_ pMddCustomerId_ =
    MobileDevicesDelete'
    { _mddQuotaUser = Nothing
    , _mddResourceId = pMddResourceId_
    , _mddPrettyPrint = True
    , _mddUserIP = Nothing
    , _mddCustomerId = pMddCustomerId_
    , _mddKey = Nothing
    , _mddOAuthToken = Nothing
    , _mddFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mddQuotaUser :: Lens' MobileDevicesDelete' (Maybe Text)
mddQuotaUser
  = lens _mddQuotaUser (\ s a -> s{_mddQuotaUser = a})

-- | Immutable id of Mobile Device
mddResourceId :: Lens' MobileDevicesDelete' Text
mddResourceId
  = lens _mddResourceId
      (\ s a -> s{_mddResourceId = a})

-- | Returns response with indentations and line breaks.
mddPrettyPrint :: Lens' MobileDevicesDelete' Bool
mddPrettyPrint
  = lens _mddPrettyPrint
      (\ s a -> s{_mddPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mddUserIP :: Lens' MobileDevicesDelete' (Maybe Text)
mddUserIP
  = lens _mddUserIP (\ s a -> s{_mddUserIP = a})

-- | Immutable id of the Google Apps account
mddCustomerId :: Lens' MobileDevicesDelete' Text
mddCustomerId
  = lens _mddCustomerId
      (\ s a -> s{_mddCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mddKey :: Lens' MobileDevicesDelete' (Maybe AuthKey)
mddKey = lens _mddKey (\ s a -> s{_mddKey = a})

-- | OAuth 2.0 token for the current user.
mddOAuthToken :: Lens' MobileDevicesDelete' (Maybe OAuthToken)
mddOAuthToken
  = lens _mddOAuthToken
      (\ s a -> s{_mddOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mddFields :: Lens' MobileDevicesDelete' (Maybe Text)
mddFields
  = lens _mddFields (\ s a -> s{_mddFields = a})

instance GoogleAuth MobileDevicesDelete' where
        _AuthKey = mddKey . _Just
        _AuthToken = mddOAuthToken . _Just

instance GoogleRequest MobileDevicesDelete' where
        type Rs MobileDevicesDelete' = ()
        request = requestWith directoryRequest
        requestWith rq MobileDevicesDelete'{..}
          = go _mddCustomerId _mddResourceId _mddQuotaUser
              (Just _mddPrettyPrint)
              _mddUserIP
              _mddFields
              _mddKey
              _mddOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy MobileDevicesDeleteResource)
                      rq
