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
-- Module      : Network.Google.Resource.Directory.Mobiledevices.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete Mobile Device
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryMobiledevicesDelete@.
module Network.Google.Resource.Directory.Mobiledevices.Delete
    (
    -- * REST Resource
      MobiledevicesDeleteResource

    -- * Creating a Request
    , mobiledevicesDelete'
    , MobiledevicesDelete'

    -- * Request Lenses
    , mobQuotaUser
    , mobResourceId
    , mobPrettyPrint
    , mobUserIp
    , mobCustomerId
    , mobKey
    , mobOauthToken
    , mobFields
    , mobAlt
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryMobiledevicesDelete@ which the
-- 'MobiledevicesDelete'' request conforms to.
type MobiledevicesDeleteResource =
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
    { _mobQuotaUser   :: !(Maybe Text)
    , _mobResourceId  :: !Text
    , _mobPrettyPrint :: !Bool
    , _mobUserIp      :: !(Maybe Text)
    , _mobCustomerId  :: !Text
    , _mobKey         :: !(Maybe Text)
    , _mobOauthToken  :: !(Maybe Text)
    , _mobFields      :: !(Maybe Text)
    , _mobAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MobiledevicesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mobQuotaUser'
--
-- * 'mobResourceId'
--
-- * 'mobPrettyPrint'
--
-- * 'mobUserIp'
--
-- * 'mobCustomerId'
--
-- * 'mobKey'
--
-- * 'mobOauthToken'
--
-- * 'mobFields'
--
-- * 'mobAlt'
mobiledevicesDelete'
    :: Text -- ^ 'resourceId'
    -> Text -- ^ 'customerId'
    -> MobiledevicesDelete'
mobiledevicesDelete' pMobResourceId_ pMobCustomerId_ =
    MobiledevicesDelete'
    { _mobQuotaUser = Nothing
    , _mobResourceId = pMobResourceId_
    , _mobPrettyPrint = True
    , _mobUserIp = Nothing
    , _mobCustomerId = pMobCustomerId_
    , _mobKey = Nothing
    , _mobOauthToken = Nothing
    , _mobFields = Nothing
    , _mobAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mobQuotaUser :: Lens' MobiledevicesDelete' (Maybe Text)
mobQuotaUser
  = lens _mobQuotaUser (\ s a -> s{_mobQuotaUser = a})

-- | Immutable id of Mobile Device
mobResourceId :: Lens' MobiledevicesDelete' Text
mobResourceId
  = lens _mobResourceId
      (\ s a -> s{_mobResourceId = a})

-- | Returns response with indentations and line breaks.
mobPrettyPrint :: Lens' MobiledevicesDelete' Bool
mobPrettyPrint
  = lens _mobPrettyPrint
      (\ s a -> s{_mobPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mobUserIp :: Lens' MobiledevicesDelete' (Maybe Text)
mobUserIp
  = lens _mobUserIp (\ s a -> s{_mobUserIp = a})

-- | Immutable id of the Google Apps account
mobCustomerId :: Lens' MobiledevicesDelete' Text
mobCustomerId
  = lens _mobCustomerId
      (\ s a -> s{_mobCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mobKey :: Lens' MobiledevicesDelete' (Maybe Text)
mobKey = lens _mobKey (\ s a -> s{_mobKey = a})

-- | OAuth 2.0 token for the current user.
mobOauthToken :: Lens' MobiledevicesDelete' (Maybe Text)
mobOauthToken
  = lens _mobOauthToken
      (\ s a -> s{_mobOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mobFields :: Lens' MobiledevicesDelete' (Maybe Text)
mobFields
  = lens _mobFields (\ s a -> s{_mobFields = a})

-- | Data format for the response.
mobAlt :: Lens' MobiledevicesDelete' Alt
mobAlt = lens _mobAlt (\ s a -> s{_mobAlt = a})

instance GoogleRequest MobiledevicesDelete' where
        type Rs MobiledevicesDelete' = ()
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u MobiledevicesDelete'{..}
          = go _mobQuotaUser _mobResourceId
              (Just _mobPrettyPrint)
              _mobUserIp
              _mobCustomerId
              _mobKey
              _mobOauthToken
              _mobFields
              (Just _mobAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MobiledevicesDeleteResource)
                      r
                      u
