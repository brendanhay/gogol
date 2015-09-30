{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Directory.Mobiledevices.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieve Mobile Device
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryMobiledevicesGet@.
module Directory.Mobiledevices.Get
    (
    -- * REST Resource
      MobiledevicesGetAPI

    -- * Creating a Request
    , mobiledevicesGet
    , MobiledevicesGet

    -- * Request Lenses
    , mggQuotaUser
    , mggResourceId
    , mggPrettyPrint
    , mggUserIp
    , mggCustomerId
    , mggKey
    , mggProjection
    , mggOauthToken
    , mggFields
    , mggAlt
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryMobiledevicesGet@ which the
-- 'MobiledevicesGet' request conforms to.
type MobiledevicesGetAPI =
     "customer" :>
       Capture "customerId" Text :>
         "devices" :>
           "mobile" :>
             Capture "resourceId" Text :>
               QueryParam "projection" Text :>
                 Get '[JSON] MobileDevice

-- | Retrieve Mobile Device
--
-- /See:/ 'mobiledevicesGet' smart constructor.
data MobiledevicesGet = MobiledevicesGet
    { _mggQuotaUser   :: !(Maybe Text)
    , _mggResourceId  :: !Text
    , _mggPrettyPrint :: !Bool
    , _mggUserIp      :: !(Maybe Text)
    , _mggCustomerId  :: !Text
    , _mggKey         :: !(Maybe Text)
    , _mggProjection  :: !(Maybe Text)
    , _mggOauthToken  :: !(Maybe Text)
    , _mggFields      :: !(Maybe Text)
    , _mggAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MobiledevicesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mggQuotaUser'
--
-- * 'mggResourceId'
--
-- * 'mggPrettyPrint'
--
-- * 'mggUserIp'
--
-- * 'mggCustomerId'
--
-- * 'mggKey'
--
-- * 'mggProjection'
--
-- * 'mggOauthToken'
--
-- * 'mggFields'
--
-- * 'mggAlt'
mobiledevicesGet
    :: Text -- ^ 'resourceId'
    -> Text -- ^ 'customerId'
    -> MobiledevicesGet
mobiledevicesGet pMggResourceId_ pMggCustomerId_ =
    MobiledevicesGet
    { _mggQuotaUser = Nothing
    , _mggResourceId = pMggResourceId_
    , _mggPrettyPrint = True
    , _mggUserIp = Nothing
    , _mggCustomerId = pMggCustomerId_
    , _mggKey = Nothing
    , _mggProjection = Nothing
    , _mggOauthToken = Nothing
    , _mggFields = Nothing
    , _mggAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mggQuotaUser :: Lens' MobiledevicesGet' (Maybe Text)
mggQuotaUser
  = lens _mggQuotaUser (\ s a -> s{_mggQuotaUser = a})

-- | Immutable id of Mobile Device
mggResourceId :: Lens' MobiledevicesGet' Text
mggResourceId
  = lens _mggResourceId
      (\ s a -> s{_mggResourceId = a})

-- | Returns response with indentations and line breaks.
mggPrettyPrint :: Lens' MobiledevicesGet' Bool
mggPrettyPrint
  = lens _mggPrettyPrint
      (\ s a -> s{_mggPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mggUserIp :: Lens' MobiledevicesGet' (Maybe Text)
mggUserIp
  = lens _mggUserIp (\ s a -> s{_mggUserIp = a})

-- | Immutable id of the Google Apps account
mggCustomerId :: Lens' MobiledevicesGet' Text
mggCustomerId
  = lens _mggCustomerId
      (\ s a -> s{_mggCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mggKey :: Lens' MobiledevicesGet' (Maybe Text)
mggKey = lens _mggKey (\ s a -> s{_mggKey = a})

-- | Restrict information returned to a set of selected fields.
mggProjection :: Lens' MobiledevicesGet' (Maybe Text)
mggProjection
  = lens _mggProjection
      (\ s a -> s{_mggProjection = a})

-- | OAuth 2.0 token for the current user.
mggOauthToken :: Lens' MobiledevicesGet' (Maybe Text)
mggOauthToken
  = lens _mggOauthToken
      (\ s a -> s{_mggOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mggFields :: Lens' MobiledevicesGet' (Maybe Text)
mggFields
  = lens _mggFields (\ s a -> s{_mggFields = a})

-- | Data format for the response.
mggAlt :: Lens' MobiledevicesGet' Text
mggAlt = lens _mggAlt (\ s a -> s{_mggAlt = a})

instance GoogleRequest MobiledevicesGet' where
        type Rs MobiledevicesGet' = MobileDevice
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u MobiledevicesGet{..}
          = go _mggQuotaUser _mggResourceId _mggPrettyPrint
              _mggUserIp
              _mggCustomerId
              _mggKey
              _mggProjection
              _mggOauthToken
              _mggFields
              _mggAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MobiledevicesGetAPI)
                      r
                      u
