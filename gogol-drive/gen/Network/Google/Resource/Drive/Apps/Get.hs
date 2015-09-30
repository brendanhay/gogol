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
-- Module      : Network.Google.Resource.Drive.Apps.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a specific app.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveAppsGet@.
module Network.Google.Resource.Drive.Apps.Get
    (
    -- * REST Resource
      AppsGetResource

    -- * Creating a Request
    , appsGet'
    , AppsGet'

    -- * Request Lenses
    , aQuotaUser
    , aPrettyPrint
    , aUserIp
    , aAppId
    , aKey
    , aOauthToken
    , aFields
    , aAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveAppsGet@ which the
-- 'AppsGet'' request conforms to.
type AppsGetResource =
     "apps" :>
       Capture "appId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Get '[JSON] App

-- | Gets a specific app.
--
-- /See:/ 'appsGet'' smart constructor.
data AppsGet' = AppsGet'
    { _aQuotaUser   :: !(Maybe Text)
    , _aPrettyPrint :: !Bool
    , _aUserIp      :: !(Maybe Text)
    , _aAppId       :: !Text
    , _aKey         :: !(Maybe Text)
    , _aOauthToken  :: !(Maybe Text)
    , _aFields      :: !(Maybe Text)
    , _aAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AppsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aQuotaUser'
--
-- * 'aPrettyPrint'
--
-- * 'aUserIp'
--
-- * 'aAppId'
--
-- * 'aKey'
--
-- * 'aOauthToken'
--
-- * 'aFields'
--
-- * 'aAlt'
appsGet'
    :: Text -- ^ 'appId'
    -> AppsGet'
appsGet' pAAppId_ =
    AppsGet'
    { _aQuotaUser = Nothing
    , _aPrettyPrint = True
    , _aUserIp = Nothing
    , _aAppId = pAAppId_
    , _aKey = Nothing
    , _aOauthToken = Nothing
    , _aFields = Nothing
    , _aAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aQuotaUser :: Lens' AppsGet' (Maybe Text)
aQuotaUser
  = lens _aQuotaUser (\ s a -> s{_aQuotaUser = a})

-- | Returns response with indentations and line breaks.
aPrettyPrint :: Lens' AppsGet' Bool
aPrettyPrint
  = lens _aPrettyPrint (\ s a -> s{_aPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aUserIp :: Lens' AppsGet' (Maybe Text)
aUserIp = lens _aUserIp (\ s a -> s{_aUserIp = a})

-- | The ID of the app.
aAppId :: Lens' AppsGet' Text
aAppId = lens _aAppId (\ s a -> s{_aAppId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aKey :: Lens' AppsGet' (Maybe Text)
aKey = lens _aKey (\ s a -> s{_aKey = a})

-- | OAuth 2.0 token for the current user.
aOauthToken :: Lens' AppsGet' (Maybe Text)
aOauthToken
  = lens _aOauthToken (\ s a -> s{_aOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
aFields :: Lens' AppsGet' (Maybe Text)
aFields = lens _aFields (\ s a -> s{_aFields = a})

-- | Data format for the response.
aAlt :: Lens' AppsGet' Alt
aAlt = lens _aAlt (\ s a -> s{_aAlt = a})

instance GoogleRequest AppsGet' where
        type Rs AppsGet' = App
        request = requestWithRoute defReq driveURL
        requestWithRoute r u AppsGet'{..}
          = go _aQuotaUser (Just _aPrettyPrint) _aUserIp
              _aAppId
              _aKey
              _aOauthToken
              _aFields
              (Just _aAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy AppsGetResource) r
                      u
