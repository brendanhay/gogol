{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Directory.Chromeosdevices.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update Chrome OS Device
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.chromeosdevices.update@.
module Network.Google.API.Directory.Chromeosdevices.Update
    (
    -- * REST Resource
      ChromeosdevicesUpdateAPI

    -- * Creating a Request
    , chromeosdevicesUpdate'
    , ChromeosdevicesUpdate'

    -- * Request Lenses
    , cuQuotaUser
    , cuPrettyPrint
    , cuUserIp
    , cuCustomerId
    , cuKey
    , cuDeviceId
    , cuProjection
    , cuOauthToken
    , cuFields
    , cuAlt
    ) where

import           Network.Google.Admin.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for directory.chromeosdevices.update which the
-- 'ChromeosdevicesUpdate'' request conforms to.
type ChromeosdevicesUpdateAPI =
     "customer" :>
       Capture "customerId" Text :>
         "devices" :>
           "chromeos" :>
             Capture "deviceId" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "projection"
                         ChromeosdevicesUpdate'Projection
                         :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Put '[JSON] ChromeOsDevice

-- | Update Chrome OS Device
--
-- /See:/ 'chromeosdevicesUpdate'' smart constructor.
data ChromeosdevicesUpdate' = ChromeosdevicesUpdate'
    { _cuQuotaUser   :: !(Maybe Text)
    , _cuPrettyPrint :: !Bool
    , _cuUserIp      :: !(Maybe Text)
    , _cuCustomerId  :: !Text
    , _cuKey         :: !(Maybe Text)
    , _cuDeviceId    :: !Text
    , _cuProjection  :: !(Maybe ChromeosdevicesUpdate'Projection)
    , _cuOauthToken  :: !(Maybe Text)
    , _cuFields      :: !(Maybe Text)
    , _cuAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChromeosdevicesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuQuotaUser'
--
-- * 'cuPrettyPrint'
--
-- * 'cuUserIp'
--
-- * 'cuCustomerId'
--
-- * 'cuKey'
--
-- * 'cuDeviceId'
--
-- * 'cuProjection'
--
-- * 'cuOauthToken'
--
-- * 'cuFields'
--
-- * 'cuAlt'
chromeosdevicesUpdate'
    :: Text -- ^ 'customerId'
    -> Text -- ^ 'deviceId'
    -> ChromeosdevicesUpdate'
chromeosdevicesUpdate' pCuCustomerId_ pCuDeviceId_ =
    ChromeosdevicesUpdate'
    { _cuQuotaUser = Nothing
    , _cuPrettyPrint = True
    , _cuUserIp = Nothing
    , _cuCustomerId = pCuCustomerId_
    , _cuKey = Nothing
    , _cuDeviceId = pCuDeviceId_
    , _cuProjection = Nothing
    , _cuOauthToken = Nothing
    , _cuFields = Nothing
    , _cuAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cuQuotaUser :: Lens' ChromeosdevicesUpdate' (Maybe Text)
cuQuotaUser
  = lens _cuQuotaUser (\ s a -> s{_cuQuotaUser = a})

-- | Returns response with indentations and line breaks.
cuPrettyPrint :: Lens' ChromeosdevicesUpdate' Bool
cuPrettyPrint
  = lens _cuPrettyPrint
      (\ s a -> s{_cuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cuUserIp :: Lens' ChromeosdevicesUpdate' (Maybe Text)
cuUserIp = lens _cuUserIp (\ s a -> s{_cuUserIp = a})

-- | Immutable id of the Google Apps account
cuCustomerId :: Lens' ChromeosdevicesUpdate' Text
cuCustomerId
  = lens _cuCustomerId (\ s a -> s{_cuCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cuKey :: Lens' ChromeosdevicesUpdate' (Maybe Text)
cuKey = lens _cuKey (\ s a -> s{_cuKey = a})

-- | Immutable id of Chrome OS Device
cuDeviceId :: Lens' ChromeosdevicesUpdate' Text
cuDeviceId
  = lens _cuDeviceId (\ s a -> s{_cuDeviceId = a})

-- | Restrict information returned to a set of selected fields.
cuProjection :: Lens' ChromeosdevicesUpdate' (Maybe ChromeosdevicesUpdate'Projection)
cuProjection
  = lens _cuProjection (\ s a -> s{_cuProjection = a})

-- | OAuth 2.0 token for the current user.
cuOauthToken :: Lens' ChromeosdevicesUpdate' (Maybe Text)
cuOauthToken
  = lens _cuOauthToken (\ s a -> s{_cuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cuFields :: Lens' ChromeosdevicesUpdate' (Maybe Text)
cuFields = lens _cuFields (\ s a -> s{_cuFields = a})

-- | Data format for the response.
cuAlt :: Lens' ChromeosdevicesUpdate' Alt
cuAlt = lens _cuAlt (\ s a -> s{_cuAlt = a})

instance GoogleRequest ChromeosdevicesUpdate' where
        type Rs ChromeosdevicesUpdate' = ChromeOsDevice
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u ChromeosdevicesUpdate'{..}
          = go _cuQuotaUser (Just _cuPrettyPrint) _cuUserIp
              _cuCustomerId
              _cuKey
              _cuDeviceId
              _cuProjection
              _cuOauthToken
              _cuFields
              (Just _cuAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ChromeosdevicesUpdateAPI)
                      r
                      u
