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
-- Module      : Network.Google.Resource.AdSense.Savedadstyles.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all saved ad styles in the user\'s account.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @AdsenseSavedadstylesList@.
module Network.Google.Resource.AdSense.Savedadstyles.List
    (
    -- * REST Resource
      SavedadstylesListResource

    -- * Creating a Request
    , savedadstylesList'
    , SavedadstylesList'

    -- * Request Lenses
    , slQuotaUser
    , slPrettyPrint
    , slUserIP
    , slKey
    , slPageToken
    , slOAuthToken
    , slMaxResults
    , slFields
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsenseSavedadstylesList@ which the
-- 'SavedadstylesList'' request conforms to.
type SavedadstylesListResource =
     "savedadstyles" :>
       QueryParam "maxResults" Int32 :>
         QueryParam "pageToken" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Get '[JSON] SavedAdStyles

-- | List all saved ad styles in the user\'s account.
--
-- /See:/ 'savedadstylesList'' smart constructor.
data SavedadstylesList' = SavedadstylesList'
    { _slQuotaUser   :: !(Maybe Text)
    , _slPrettyPrint :: !Bool
    , _slUserIP      :: !(Maybe Text)
    , _slKey         :: !(Maybe Key)
    , _slPageToken   :: !(Maybe Text)
    , _slOAuthToken  :: !(Maybe OAuthToken)
    , _slMaxResults  :: !(Maybe Int32)
    , _slFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SavedadstylesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slQuotaUser'
--
-- * 'slPrettyPrint'
--
-- * 'slUserIP'
--
-- * 'slKey'
--
-- * 'slPageToken'
--
-- * 'slOAuthToken'
--
-- * 'slMaxResults'
--
-- * 'slFields'
savedadstylesList'
    :: SavedadstylesList'
savedadstylesList' =
    SavedadstylesList'
    { _slQuotaUser = Nothing
    , _slPrettyPrint = True
    , _slUserIP = Nothing
    , _slKey = Nothing
    , _slPageToken = Nothing
    , _slOAuthToken = Nothing
    , _slMaxResults = Nothing
    , _slFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
slQuotaUser :: Lens' SavedadstylesList' (Maybe Text)
slQuotaUser
  = lens _slQuotaUser (\ s a -> s{_slQuotaUser = a})

-- | Returns response with indentations and line breaks.
slPrettyPrint :: Lens' SavedadstylesList' Bool
slPrettyPrint
  = lens _slPrettyPrint
      (\ s a -> s{_slPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
slUserIP :: Lens' SavedadstylesList' (Maybe Text)
slUserIP = lens _slUserIP (\ s a -> s{_slUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
slKey :: Lens' SavedadstylesList' (Maybe Key)
slKey = lens _slKey (\ s a -> s{_slKey = a})

-- | A continuation token, used to page through saved ad styles. To retrieve
-- the next page, set this parameter to the value of \"nextPageToken\" from
-- the previous response.
slPageToken :: Lens' SavedadstylesList' (Maybe Text)
slPageToken
  = lens _slPageToken (\ s a -> s{_slPageToken = a})

-- | OAuth 2.0 token for the current user.
slOAuthToken :: Lens' SavedadstylesList' (Maybe OAuthToken)
slOAuthToken
  = lens _slOAuthToken (\ s a -> s{_slOAuthToken = a})

-- | The maximum number of saved ad styles to include in the response, used
-- for paging.
slMaxResults :: Lens' SavedadstylesList' (Maybe Int32)
slMaxResults
  = lens _slMaxResults (\ s a -> s{_slMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
slFields :: Lens' SavedadstylesList' (Maybe Text)
slFields = lens _slFields (\ s a -> s{_slFields = a})

instance GoogleAuth SavedadstylesList' where
        authKey = slKey . _Just
        authToken = slOAuthToken . _Just

instance GoogleRequest SavedadstylesList' where
        type Rs SavedadstylesList' = SavedAdStyles
        request = requestWithRoute defReq adSenseURL
        requestWithRoute r u SavedadstylesList'{..}
          = go _slMaxResults _slPageToken _slQuotaUser
              (Just _slPrettyPrint)
              _slUserIP
              _slFields
              _slKey
              _slOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SavedadstylesListResource)
                      r
                      u
