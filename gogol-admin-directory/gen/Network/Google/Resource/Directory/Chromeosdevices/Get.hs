{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Directory.Chromeosdevices.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieve Chrome OS Device
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryChromeosdevicesGet@.
module Directory.Chromeosdevices.Get
    (
    -- * REST Resource
      ChromeosdevicesGetAPI

    -- * Creating a Request
    , chromeosdevicesGet
    , ChromeosdevicesGet

    -- * Request Lenses
    , cgQuotaUser
    , cgPrettyPrint
    , cgUserIp
    , cgCustomerId
    , cgKey
    , cgDeviceId
    , cgProjection
    , cgOauthToken
    , cgFields
    , cgAlt
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryChromeosdevicesGet@ which the
-- 'ChromeosdevicesGet' request conforms to.
type ChromeosdevicesGetAPI =
     "customer" :>
       Capture "customerId" Text :>
         "devices" :>
           "chromeos" :>
             Capture "deviceId" Text :>
               QueryParam "projection" Text :>
                 Get '[JSON] ChromeOsDevice

-- | Retrieve Chrome OS Device
--
-- /See:/ 'chromeosdevicesGet' smart constructor.
data ChromeosdevicesGet = ChromeosdevicesGet
    { _cgQuotaUser   :: !(Maybe Text)
    , _cgPrettyPrint :: !Bool
    , _cgUserIp      :: !(Maybe Text)
    , _cgCustomerId  :: !Text
    , _cgKey         :: !(Maybe Text)
    , _cgDeviceId    :: !Text
    , _cgProjection  :: !(Maybe Text)
    , _cgOauthToken  :: !(Maybe Text)
    , _cgFields      :: !(Maybe Text)
    , _cgAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChromeosdevicesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgQuotaUser'
--
-- * 'cgPrettyPrint'
--
-- * 'cgUserIp'
--
-- * 'cgCustomerId'
--
-- * 'cgKey'
--
-- * 'cgDeviceId'
--
-- * 'cgProjection'
--
-- * 'cgOauthToken'
--
-- * 'cgFields'
--
-- * 'cgAlt'
chromeosdevicesGet
    :: Text -- ^ 'customerId'
    -> Text -- ^ 'deviceId'
    -> ChromeosdevicesGet
chromeosdevicesGet pCgCustomerId_ pCgDeviceId_ =
    ChromeosdevicesGet
    { _cgQuotaUser = Nothing
    , _cgPrettyPrint = True
    , _cgUserIp = Nothing
    , _cgCustomerId = pCgCustomerId_
    , _cgKey = Nothing
    , _cgDeviceId = pCgDeviceId_
    , _cgProjection = Nothing
    , _cgOauthToken = Nothing
    , _cgFields = Nothing
    , _cgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cgQuotaUser :: Lens' ChromeosdevicesGet' (Maybe Text)
cgQuotaUser
  = lens _cgQuotaUser (\ s a -> s{_cgQuotaUser = a})

-- | Returns response with indentations and line breaks.
cgPrettyPrint :: Lens' ChromeosdevicesGet' Bool
cgPrettyPrint
  = lens _cgPrettyPrint
      (\ s a -> s{_cgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cgUserIp :: Lens' ChromeosdevicesGet' (Maybe Text)
cgUserIp = lens _cgUserIp (\ s a -> s{_cgUserIp = a})

-- | Immutable id of the Google Apps account
cgCustomerId :: Lens' ChromeosdevicesGet' Text
cgCustomerId
  = lens _cgCustomerId (\ s a -> s{_cgCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cgKey :: Lens' ChromeosdevicesGet' (Maybe Text)
cgKey = lens _cgKey (\ s a -> s{_cgKey = a})

-- | Immutable id of Chrome OS Device
cgDeviceId :: Lens' ChromeosdevicesGet' Text
cgDeviceId
  = lens _cgDeviceId (\ s a -> s{_cgDeviceId = a})

-- | Restrict information returned to a set of selected fields.
cgProjection :: Lens' ChromeosdevicesGet' (Maybe Text)
cgProjection
  = lens _cgProjection (\ s a -> s{_cgProjection = a})

-- | OAuth 2.0 token for the current user.
cgOauthToken :: Lens' ChromeosdevicesGet' (Maybe Text)
cgOauthToken
  = lens _cgOauthToken (\ s a -> s{_cgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cgFields :: Lens' ChromeosdevicesGet' (Maybe Text)
cgFields = lens _cgFields (\ s a -> s{_cgFields = a})

-- | Data format for the response.
cgAlt :: Lens' ChromeosdevicesGet' Text
cgAlt = lens _cgAlt (\ s a -> s{_cgAlt = a})

instance GoogleRequest ChromeosdevicesGet' where
        type Rs ChromeosdevicesGet' = ChromeOsDevice
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u ChromeosdevicesGet{..}
          = go _cgQuotaUser _cgPrettyPrint _cgUserIp
              _cgCustomerId
              _cgKey
              _cgDeviceId
              _cgProjection
              _cgOauthToken
              _cgFields
              _cgAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ChromeosdevicesGetAPI)
                      r
                      u
