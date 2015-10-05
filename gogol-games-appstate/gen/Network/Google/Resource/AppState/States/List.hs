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
-- Module      : Network.Google.Resource.AppState.States.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all the states keys, and optionally the state data.
--
-- /See:/ <https://developers.google.com/games/services/web/api/states Google App State API Reference> for @AppStateStatesList@.
module Network.Google.Resource.AppState.States.List
    (
    -- * REST Resource
      StatesListResource

    -- * Creating a Request
    , statesList'
    , StatesList'

    -- * Request Lenses
    , slIncludeData
    , slQuotaUser
    , slPrettyPrint
    , slUserIP
    , slKey
    , slOAuthToken
    , slFields
    ) where

import           Network.Google.AppState.Types
import           Network.Google.Prelude

-- | A resource alias for @AppStateStatesList@ which the
-- 'StatesList'' request conforms to.
type StatesListResource =
     "states" :>
       QueryParam "includeData" Bool :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Get '[JSON] ListResponse

-- | Lists all the states keys, and optionally the state data.
--
-- /See:/ 'statesList'' smart constructor.
data StatesList' = StatesList'
    { _slIncludeData :: !Bool
    , _slQuotaUser   :: !(Maybe Text)
    , _slPrettyPrint :: !Bool
    , _slUserIP      :: !(Maybe Text)
    , _slKey         :: !(Maybe Key)
    , _slOAuthToken  :: !(Maybe OAuthToken)
    , _slFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'StatesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slIncludeData'
--
-- * 'slQuotaUser'
--
-- * 'slPrettyPrint'
--
-- * 'slUserIP'
--
-- * 'slKey'
--
-- * 'slOAuthToken'
--
-- * 'slFields'
statesList'
    :: StatesList'
statesList' =
    StatesList'
    { _slIncludeData = False
    , _slQuotaUser = Nothing
    , _slPrettyPrint = True
    , _slUserIP = Nothing
    , _slKey = Nothing
    , _slOAuthToken = Nothing
    , _slFields = Nothing
    }

-- | Whether to include the full data in addition to the version number
slIncludeData :: Lens' StatesList' Bool
slIncludeData
  = lens _slIncludeData
      (\ s a -> s{_slIncludeData = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
slQuotaUser :: Lens' StatesList' (Maybe Text)
slQuotaUser
  = lens _slQuotaUser (\ s a -> s{_slQuotaUser = a})

-- | Returns response with indentations and line breaks.
slPrettyPrint :: Lens' StatesList' Bool
slPrettyPrint
  = lens _slPrettyPrint
      (\ s a -> s{_slPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
slUserIP :: Lens' StatesList' (Maybe Text)
slUserIP = lens _slUserIP (\ s a -> s{_slUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
slKey :: Lens' StatesList' (Maybe Key)
slKey = lens _slKey (\ s a -> s{_slKey = a})

-- | OAuth 2.0 token for the current user.
slOAuthToken :: Lens' StatesList' (Maybe OAuthToken)
slOAuthToken
  = lens _slOAuthToken (\ s a -> s{_slOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
slFields :: Lens' StatesList' (Maybe Text)
slFields = lens _slFields (\ s a -> s{_slFields = a})

instance GoogleAuth StatesList' where
        authKey = slKey . _Just
        authToken = slOAuthToken . _Just

instance GoogleRequest StatesList' where
        type Rs StatesList' = ListResponse
        request = requestWithRoute defReq appStateURL
        requestWithRoute r u StatesList'{..}
          = go (Just _slIncludeData) _slQuotaUser
              (Just _slPrettyPrint)
              _slUserIP
              _slFields
              _slKey
              _slOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy StatesListResource)
                      r
                      u
