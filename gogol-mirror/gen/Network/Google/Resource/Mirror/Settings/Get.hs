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
-- Module      : Network.Google.Resource.Mirror.Settings.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a single setting by ID.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @MirrorSettingsGet@.
module Network.Google.Resource.Mirror.Settings.Get
    (
    -- * REST Resource
      SettingsGetResource

    -- * Creating a Request
    , settingsGet'
    , SettingsGet'

    -- * Request Lenses
    , sgQuotaUser
    , sgPrettyPrint
    , sgUserIP
    , sgKey
    , sgId
    , sgOAuthToken
    , sgFields
    ) where

import           Network.Google.Mirror.Types
import           Network.Google.Prelude

-- | A resource alias for @MirrorSettingsGet@ which the
-- 'SettingsGet'' request conforms to.
type SettingsGetResource =
     "settings" :>
       Capture "id" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Setting

-- | Gets a single setting by ID.
--
-- /See:/ 'settingsGet'' smart constructor.
data SettingsGet' = SettingsGet'
    { _sgQuotaUser   :: !(Maybe Text)
    , _sgPrettyPrint :: !Bool
    , _sgUserIP      :: !(Maybe Text)
    , _sgKey         :: !(Maybe Key)
    , _sgId          :: !Text
    , _sgOAuthToken  :: !(Maybe OAuthToken)
    , _sgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SettingsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgQuotaUser'
--
-- * 'sgPrettyPrint'
--
-- * 'sgUserIP'
--
-- * 'sgKey'
--
-- * 'sgId'
--
-- * 'sgOAuthToken'
--
-- * 'sgFields'
settingsGet'
    :: Text -- ^ 'id'
    -> SettingsGet'
settingsGet' pSgId_ =
    SettingsGet'
    { _sgQuotaUser = Nothing
    , _sgPrettyPrint = True
    , _sgUserIP = Nothing
    , _sgKey = Nothing
    , _sgId = pSgId_
    , _sgOAuthToken = Nothing
    , _sgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sgQuotaUser :: Lens' SettingsGet' (Maybe Text)
sgQuotaUser
  = lens _sgQuotaUser (\ s a -> s{_sgQuotaUser = a})

-- | Returns response with indentations and line breaks.
sgPrettyPrint :: Lens' SettingsGet' Bool
sgPrettyPrint
  = lens _sgPrettyPrint
      (\ s a -> s{_sgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sgUserIP :: Lens' SettingsGet' (Maybe Text)
sgUserIP = lens _sgUserIP (\ s a -> s{_sgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sgKey :: Lens' SettingsGet' (Maybe Key)
sgKey = lens _sgKey (\ s a -> s{_sgKey = a})

-- | The ID of the setting. The following IDs are valid: - locale - The key
-- to the user’s language\/locale (BCP 47 identifier) that Glassware should
-- use to render localized content. - timezone - The key to the user’s
-- current time zone region as defined in the tz database. Example:
-- America\/Los_Angeles.
sgId :: Lens' SettingsGet' Text
sgId = lens _sgId (\ s a -> s{_sgId = a})

-- | OAuth 2.0 token for the current user.
sgOAuthToken :: Lens' SettingsGet' (Maybe OAuthToken)
sgOAuthToken
  = lens _sgOAuthToken (\ s a -> s{_sgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
sgFields :: Lens' SettingsGet' (Maybe Text)
sgFields = lens _sgFields (\ s a -> s{_sgFields = a})

instance GoogleAuth SettingsGet' where
        authKey = sgKey . _Just
        authToken = sgOAuthToken . _Just

instance GoogleRequest SettingsGet' where
        type Rs SettingsGet' = Setting
        request = requestWithRoute defReq mirrorURL
        requestWithRoute r u SettingsGet'{..}
          = go _sgId _sgQuotaUser (Just _sgPrettyPrint)
              _sgUserIP
              _sgFields
              _sgKey
              _sgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SettingsGetResource)
                      r
                      u
