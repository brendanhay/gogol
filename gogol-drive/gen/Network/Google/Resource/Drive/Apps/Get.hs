{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module Drive.Apps.Get
    (
    -- * REST Resource
      AppsGetAPI

    -- * Creating a Request
    , appsGet
    , AppsGet

    -- * Request Lenses
    , agQuotaUser
    , agPrettyPrint
    , agUserIp
    , agAppId
    , agKey
    , agOauthToken
    , agFields
    , agAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveAppsGet@ which the
-- 'AppsGet' request conforms to.
type AppsGetAPI =
     "apps" :> Capture "appId" Text :> Get '[JSON] App

-- | Gets a specific app.
--
-- /See:/ 'appsGet' smart constructor.
data AppsGet = AppsGet
    { _agQuotaUser   :: !(Maybe Text)
    , _agPrettyPrint :: !Bool
    , _agUserIp      :: !(Maybe Text)
    , _agAppId       :: !Text
    , _agKey         :: !(Maybe Text)
    , _agOauthToken  :: !(Maybe Text)
    , _agFields      :: !(Maybe Text)
    , _agAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AppsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agQuotaUser'
--
-- * 'agPrettyPrint'
--
-- * 'agUserIp'
--
-- * 'agAppId'
--
-- * 'agKey'
--
-- * 'agOauthToken'
--
-- * 'agFields'
--
-- * 'agAlt'
appsGet
    :: Text -- ^ 'appId'
    -> AppsGet
appsGet pAgAppId_ =
    AppsGet
    { _agQuotaUser = Nothing
    , _agPrettyPrint = True
    , _agUserIp = Nothing
    , _agAppId = pAgAppId_
    , _agKey = Nothing
    , _agOauthToken = Nothing
    , _agFields = Nothing
    , _agAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
agQuotaUser :: Lens' AppsGet' (Maybe Text)
agQuotaUser
  = lens _agQuotaUser (\ s a -> s{_agQuotaUser = a})

-- | Returns response with indentations and line breaks.
agPrettyPrint :: Lens' AppsGet' Bool
agPrettyPrint
  = lens _agPrettyPrint
      (\ s a -> s{_agPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
agUserIp :: Lens' AppsGet' (Maybe Text)
agUserIp = lens _agUserIp (\ s a -> s{_agUserIp = a})

-- | The ID of the app.
agAppId :: Lens' AppsGet' Text
agAppId = lens _agAppId (\ s a -> s{_agAppId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
agKey :: Lens' AppsGet' (Maybe Text)
agKey = lens _agKey (\ s a -> s{_agKey = a})

-- | OAuth 2.0 token for the current user.
agOauthToken :: Lens' AppsGet' (Maybe Text)
agOauthToken
  = lens _agOauthToken (\ s a -> s{_agOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
agFields :: Lens' AppsGet' (Maybe Text)
agFields = lens _agFields (\ s a -> s{_agFields = a})

-- | Data format for the response.
agAlt :: Lens' AppsGet' Text
agAlt = lens _agAlt (\ s a -> s{_agAlt = a})

instance GoogleRequest AppsGet' where
        type Rs AppsGet' = App
        request = requestWithRoute defReq driveURL
        requestWithRoute r u AppsGet{..}
          = go _agQuotaUser _agPrettyPrint _agUserIp _agAppId
              _agKey
              _agOauthToken
              _agFields
              _agAlt
          where go
                  = clientWithRoute (Proxy :: Proxy AppsGetAPI) r u
