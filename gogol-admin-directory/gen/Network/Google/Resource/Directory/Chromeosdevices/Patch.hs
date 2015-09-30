{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Directory.Chromeosdevices.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update Chrome OS Device. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryChromeosdevicesPatch@.
module Directory.Chromeosdevices.Patch
    (
    -- * REST Resource
      ChromeosdevicesPatchAPI

    -- * Creating a Request
    , chromeosdevicesPatch
    , ChromeosdevicesPatch

    -- * Request Lenses
    , cpQuotaUser
    , cpPrettyPrint
    , cpUserIp
    , cpCustomerId
    , cpKey
    , cpDeviceId
    , cpProjection
    , cpOauthToken
    , cpFields
    , cpAlt
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryChromeosdevicesPatch@ which the
-- 'ChromeosdevicesPatch' request conforms to.
type ChromeosdevicesPatchAPI =
     "customer" :>
       Capture "customerId" Text :>
         "devices" :>
           "chromeos" :>
             Capture "deviceId" Text :>
               QueryParam "projection" Text :>
                 Patch '[JSON] ChromeOsDevice

-- | Update Chrome OS Device. This method supports patch semantics.
--
-- /See:/ 'chromeosdevicesPatch' smart constructor.
data ChromeosdevicesPatch = ChromeosdevicesPatch
    { _cpQuotaUser   :: !(Maybe Text)
    , _cpPrettyPrint :: !Bool
    , _cpUserIp      :: !(Maybe Text)
    , _cpCustomerId  :: !Text
    , _cpKey         :: !(Maybe Text)
    , _cpDeviceId    :: !Text
    , _cpProjection  :: !(Maybe Text)
    , _cpOauthToken  :: !(Maybe Text)
    , _cpFields      :: !(Maybe Text)
    , _cpAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChromeosdevicesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpQuotaUser'
--
-- * 'cpPrettyPrint'
--
-- * 'cpUserIp'
--
-- * 'cpCustomerId'
--
-- * 'cpKey'
--
-- * 'cpDeviceId'
--
-- * 'cpProjection'
--
-- * 'cpOauthToken'
--
-- * 'cpFields'
--
-- * 'cpAlt'
chromeosdevicesPatch
    :: Text -- ^ 'customerId'
    -> Text -- ^ 'deviceId'
    -> ChromeosdevicesPatch
chromeosdevicesPatch pCpCustomerId_ pCpDeviceId_ =
    ChromeosdevicesPatch
    { _cpQuotaUser = Nothing
    , _cpPrettyPrint = True
    , _cpUserIp = Nothing
    , _cpCustomerId = pCpCustomerId_
    , _cpKey = Nothing
    , _cpDeviceId = pCpDeviceId_
    , _cpProjection = Nothing
    , _cpOauthToken = Nothing
    , _cpFields = Nothing
    , _cpAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cpQuotaUser :: Lens' ChromeosdevicesPatch' (Maybe Text)
cpQuotaUser
  = lens _cpQuotaUser (\ s a -> s{_cpQuotaUser = a})

-- | Returns response with indentations and line breaks.
cpPrettyPrint :: Lens' ChromeosdevicesPatch' Bool
cpPrettyPrint
  = lens _cpPrettyPrint
      (\ s a -> s{_cpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cpUserIp :: Lens' ChromeosdevicesPatch' (Maybe Text)
cpUserIp = lens _cpUserIp (\ s a -> s{_cpUserIp = a})

-- | Immutable id of the Google Apps account
cpCustomerId :: Lens' ChromeosdevicesPatch' Text
cpCustomerId
  = lens _cpCustomerId (\ s a -> s{_cpCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cpKey :: Lens' ChromeosdevicesPatch' (Maybe Text)
cpKey = lens _cpKey (\ s a -> s{_cpKey = a})

-- | Immutable id of Chrome OS Device
cpDeviceId :: Lens' ChromeosdevicesPatch' Text
cpDeviceId
  = lens _cpDeviceId (\ s a -> s{_cpDeviceId = a})

-- | Restrict information returned to a set of selected fields.
cpProjection :: Lens' ChromeosdevicesPatch' (Maybe Text)
cpProjection
  = lens _cpProjection (\ s a -> s{_cpProjection = a})

-- | OAuth 2.0 token for the current user.
cpOauthToken :: Lens' ChromeosdevicesPatch' (Maybe Text)
cpOauthToken
  = lens _cpOauthToken (\ s a -> s{_cpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cpFields :: Lens' ChromeosdevicesPatch' (Maybe Text)
cpFields = lens _cpFields (\ s a -> s{_cpFields = a})

-- | Data format for the response.
cpAlt :: Lens' ChromeosdevicesPatch' Text
cpAlt = lens _cpAlt (\ s a -> s{_cpAlt = a})

instance GoogleRequest ChromeosdevicesPatch' where
        type Rs ChromeosdevicesPatch' = ChromeOsDevice
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u ChromeosdevicesPatch{..}
          = go _cpQuotaUser _cpPrettyPrint _cpUserIp
              _cpCustomerId
              _cpKey
              _cpDeviceId
              _cpProjection
              _cpOauthToken
              _cpFields
              _cpAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ChromeosdevicesPatchAPI)
                      r
                      u
