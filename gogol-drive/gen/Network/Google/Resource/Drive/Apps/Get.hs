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
    , aUserIP
    , aAppId
    , aKey
    , aOAuthToken
    , aFields
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
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Get '[JSON] App

-- | Gets a specific app.
--
-- /See:/ 'appsGet'' smart constructor.
data AppsGet' = AppsGet'
    { _aQuotaUser   :: !(Maybe Text)
    , _aPrettyPrint :: !Bool
    , _aUserIP      :: !(Maybe Text)
    , _aAppId       :: !Text
    , _aKey         :: !(Maybe Key)
    , _aOAuthToken  :: !(Maybe OAuthToken)
    , _aFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AppsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aQuotaUser'
--
-- * 'aPrettyPrint'
--
-- * 'aUserIP'
--
-- * 'aAppId'
--
-- * 'aKey'
--
-- * 'aOAuthToken'
--
-- * 'aFields'
appsGet'
    :: Text -- ^ 'appId'
    -> AppsGet'
appsGet' pAAppId_ =
    AppsGet'
    { _aQuotaUser = Nothing
    , _aPrettyPrint = True
    , _aUserIP = Nothing
    , _aAppId = pAAppId_
    , _aKey = Nothing
    , _aOAuthToken = Nothing
    , _aFields = Nothing
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
aUserIP :: Lens' AppsGet' (Maybe Text)
aUserIP = lens _aUserIP (\ s a -> s{_aUserIP = a})

-- | The ID of the app.
aAppId :: Lens' AppsGet' Text
aAppId = lens _aAppId (\ s a -> s{_aAppId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aKey :: Lens' AppsGet' (Maybe Key)
aKey = lens _aKey (\ s a -> s{_aKey = a})

-- | OAuth 2.0 token for the current user.
aOAuthToken :: Lens' AppsGet' (Maybe OAuthToken)
aOAuthToken
  = lens _aOAuthToken (\ s a -> s{_aOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
aFields :: Lens' AppsGet' (Maybe Text)
aFields = lens _aFields (\ s a -> s{_aFields = a})

instance GoogleAuth AppsGet' where
        authKey = aKey . _Just
        authToken = aOAuthToken . _Just

instance GoogleRequest AppsGet' where
        type Rs AppsGet' = App
        request = requestWithRoute defReq driveURL
        requestWithRoute r u AppsGet'{..}
          = go _aAppId _aQuotaUser (Just _aPrettyPrint)
              _aUserIP
              _aFields
              _aKey
              _aOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy AppsGetResource) r
                      u
