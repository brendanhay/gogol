{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Directory.Mobiledevices.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete Mobile Device
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.mobiledevices.delete@.
module Network.Google.API.Directory.Mobiledevices.Delete
    (
    -- * REST Resource
      MobiledevicesDeleteAPI

    -- * Creating a Request
    , mobiledevicesDelete'
    , MobiledevicesDelete'

    -- * Request Lenses
    , mQuotaUser
    , mResourceId
    , mPrettyPrint
    , mUserIp
    , mCustomerId
    , mKey
    , mOauthToken
    , mFields
    , mAlt
    ) where

import           Network.Google.Admin.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for directory.mobiledevices.delete which the
-- 'MobiledevicesDelete'' request conforms to.
type MobiledevicesDeleteAPI =
     "customer" :>
       Capture "customerId" Text :>
         "devices" :>
           "mobile" :>
             Capture "resourceId" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Delete Mobile Device
--
-- /See:/ 'mobiledevicesDelete'' smart constructor.
data MobiledevicesDelete' = MobiledevicesDelete'
    { _mQuotaUser   :: !(Maybe Text)
    , _mResourceId  :: !Text
    , _mPrettyPrint :: !Bool
    , _mUserIp      :: !(Maybe Text)
    , _mCustomerId  :: !Text
    , _mKey         :: !(Maybe Text)
    , _mOauthToken  :: !(Maybe Text)
    , _mFields      :: !(Maybe Text)
    , _mAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MobiledevicesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mQuotaUser'
--
-- * 'mResourceId'
--
-- * 'mPrettyPrint'
--
-- * 'mUserIp'
--
-- * 'mCustomerId'
--
-- * 'mKey'
--
-- * 'mOauthToken'
--
-- * 'mFields'
--
-- * 'mAlt'
mobiledevicesDelete'
    :: Text -- ^ 'resourceId'
    -> Text -- ^ 'customerId'
    -> MobiledevicesDelete'
mobiledevicesDelete' pMResourceId_ pMCustomerId_ =
    MobiledevicesDelete'
    { _mQuotaUser = Nothing
    , _mResourceId = pMResourceId_
    , _mPrettyPrint = True
    , _mUserIp = Nothing
    , _mCustomerId = pMCustomerId_
    , _mKey = Nothing
    , _mOauthToken = Nothing
    , _mFields = Nothing
    , _mAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mQuotaUser :: Lens' MobiledevicesDelete' (Maybe Text)
mQuotaUser
  = lens _mQuotaUser (\ s a -> s{_mQuotaUser = a})

-- | Immutable id of Mobile Device
mResourceId :: Lens' MobiledevicesDelete' Text
mResourceId
  = lens _mResourceId (\ s a -> s{_mResourceId = a})

-- | Returns response with indentations and line breaks.
mPrettyPrint :: Lens' MobiledevicesDelete' Bool
mPrettyPrint
  = lens _mPrettyPrint (\ s a -> s{_mPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mUserIp :: Lens' MobiledevicesDelete' (Maybe Text)
mUserIp = lens _mUserIp (\ s a -> s{_mUserIp = a})

-- | Immutable id of the Google Apps account
mCustomerId :: Lens' MobiledevicesDelete' Text
mCustomerId
  = lens _mCustomerId (\ s a -> s{_mCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mKey :: Lens' MobiledevicesDelete' (Maybe Text)
mKey = lens _mKey (\ s a -> s{_mKey = a})

-- | OAuth 2.0 token for the current user.
mOauthToken :: Lens' MobiledevicesDelete' (Maybe Text)
mOauthToken
  = lens _mOauthToken (\ s a -> s{_mOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mFields :: Lens' MobiledevicesDelete' (Maybe Text)
mFields = lens _mFields (\ s a -> s{_mFields = a})

-- | Data format for the response.
mAlt :: Lens' MobiledevicesDelete' Alt
mAlt = lens _mAlt (\ s a -> s{_mAlt = a})

instance GoogleRequest MobiledevicesDelete' where
        type Rs MobiledevicesDelete' = ()
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u MobiledevicesDelete'{..}
          = go _mQuotaUser _mResourceId (Just _mPrettyPrint)
              _mUserIp
              _mCustomerId
              _mKey
              _mOauthToken
              _mFields
              (Just _mAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MobiledevicesDeleteAPI)
                      r
                      u
