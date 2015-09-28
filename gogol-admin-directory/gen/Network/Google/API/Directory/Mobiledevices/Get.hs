{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Directory.Mobiledevices.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieve Mobile Device
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.mobiledevices.get@.
module Network.Google.API.Directory.Mobiledevices.Get
    (
    -- * REST Resource
      MobiledevicesGetAPI

    -- * Creating a Request
    , mobiledevicesGet'
    , MobiledevicesGet'

    -- * Request Lenses
    , mgQuotaUser
    , mgResourceId
    , mgPrettyPrint
    , mgUserIp
    , mgCustomerId
    , mgKey
    , mgProjection
    , mgOauthToken
    , mgFields
    , mgAlt
    ) where

import           Network.Google.Admin.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for directory.mobiledevices.get which the
-- 'MobiledevicesGet'' request conforms to.
type MobiledevicesGetAPI =
     "customer" :>
       Capture "customerId" Text :>
         "devices" :>
           "mobile" :>
             Capture "resourceId" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "projection" MobiledevicesGet'Projection
                         :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Get '[JSON] MobileDevice

-- | Retrieve Mobile Device
--
-- /See:/ 'mobiledevicesGet'' smart constructor.
data MobiledevicesGet' = MobiledevicesGet'
    { _mgQuotaUser   :: !(Maybe Text)
    , _mgResourceId  :: !Text
    , _mgPrettyPrint :: !Bool
    , _mgUserIp      :: !(Maybe Text)
    , _mgCustomerId  :: !Text
    , _mgKey         :: !(Maybe Text)
    , _mgProjection  :: !(Maybe MobiledevicesGet'Projection)
    , _mgOauthToken  :: !(Maybe Text)
    , _mgFields      :: !(Maybe Text)
    , _mgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MobiledevicesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mgQuotaUser'
--
-- * 'mgResourceId'
--
-- * 'mgPrettyPrint'
--
-- * 'mgUserIp'
--
-- * 'mgCustomerId'
--
-- * 'mgKey'
--
-- * 'mgProjection'
--
-- * 'mgOauthToken'
--
-- * 'mgFields'
--
-- * 'mgAlt'
mobiledevicesGet'
    :: Text -- ^ 'resourceId'
    -> Text -- ^ 'customerId'
    -> MobiledevicesGet'
mobiledevicesGet' pMgResourceId_ pMgCustomerId_ =
    MobiledevicesGet'
    { _mgQuotaUser = Nothing
    , _mgResourceId = pMgResourceId_
    , _mgPrettyPrint = True
    , _mgUserIp = Nothing
    , _mgCustomerId = pMgCustomerId_
    , _mgKey = Nothing
    , _mgProjection = Nothing
    , _mgOauthToken = Nothing
    , _mgFields = Nothing
    , _mgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mgQuotaUser :: Lens' MobiledevicesGet' (Maybe Text)
mgQuotaUser
  = lens _mgQuotaUser (\ s a -> s{_mgQuotaUser = a})

-- | Immutable id of Mobile Device
mgResourceId :: Lens' MobiledevicesGet' Text
mgResourceId
  = lens _mgResourceId (\ s a -> s{_mgResourceId = a})

-- | Returns response with indentations and line breaks.
mgPrettyPrint :: Lens' MobiledevicesGet' Bool
mgPrettyPrint
  = lens _mgPrettyPrint
      (\ s a -> s{_mgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mgUserIp :: Lens' MobiledevicesGet' (Maybe Text)
mgUserIp = lens _mgUserIp (\ s a -> s{_mgUserIp = a})

-- | Immutable id of the Google Apps account
mgCustomerId :: Lens' MobiledevicesGet' Text
mgCustomerId
  = lens _mgCustomerId (\ s a -> s{_mgCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mgKey :: Lens' MobiledevicesGet' (Maybe Text)
mgKey = lens _mgKey (\ s a -> s{_mgKey = a})

-- | Restrict information returned to a set of selected fields.
mgProjection :: Lens' MobiledevicesGet' (Maybe MobiledevicesGet'Projection)
mgProjection
  = lens _mgProjection (\ s a -> s{_mgProjection = a})

-- | OAuth 2.0 token for the current user.
mgOauthToken :: Lens' MobiledevicesGet' (Maybe Text)
mgOauthToken
  = lens _mgOauthToken (\ s a -> s{_mgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mgFields :: Lens' MobiledevicesGet' (Maybe Text)
mgFields = lens _mgFields (\ s a -> s{_mgFields = a})

-- | Data format for the response.
mgAlt :: Lens' MobiledevicesGet' Alt
mgAlt = lens _mgAlt (\ s a -> s{_mgAlt = a})

instance GoogleRequest MobiledevicesGet' where
        type Rs MobiledevicesGet' = MobileDevice
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u MobiledevicesGet'{..}
          = go _mgQuotaUser _mgResourceId (Just _mgPrettyPrint)
              _mgUserIp
              _mgCustomerId
              _mgKey
              _mgProjection
              _mgOauthToken
              _mgFields
              (Just _mgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MobiledevicesGetAPI)
                      r
                      u
