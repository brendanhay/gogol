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
-- Module      : Network.Google.Resource.YouTube.I18nRegions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a list of content regions that the YouTube website supports.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeI18nRegionsList@.
module Network.Google.Resource.YouTube.I18nRegions.List
    (
    -- * REST Resource
      I18nRegionsListResource

    -- * Creating a Request
    , i18nRegionsList'
    , I18nRegionsList'

    -- * Request Lenses
    , irlQuotaUser
    , irlPart
    , irlPrettyPrint
    , irlUserIP
    , irlHl
    , irlKey
    , irlOAuthToken
    , irlFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeI18nRegionsList@ which the
-- 'I18nRegionsList'' request conforms to.
type I18nRegionsListResource =
     "i18nRegions" :>
       QueryParam "quotaUser" Text :>
         QueryParam "part" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "hl" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] I18nRegionListResponse

-- | Returns a list of content regions that the YouTube website supports.
--
-- /See:/ 'i18nRegionsList'' smart constructor.
data I18nRegionsList' = I18nRegionsList'
    { _irlQuotaUser   :: !(Maybe Text)
    , _irlPart        :: !Text
    , _irlPrettyPrint :: !Bool
    , _irlUserIP      :: !(Maybe Text)
    , _irlHl          :: !Text
    , _irlKey         :: !(Maybe Key)
    , _irlOAuthToken  :: !(Maybe OAuthToken)
    , _irlFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'I18nRegionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irlQuotaUser'
--
-- * 'irlPart'
--
-- * 'irlPrettyPrint'
--
-- * 'irlUserIP'
--
-- * 'irlHl'
--
-- * 'irlKey'
--
-- * 'irlOAuthToken'
--
-- * 'irlFields'
i18nRegionsList'
    :: Text -- ^ 'part'
    -> I18nRegionsList'
i18nRegionsList' pIrlPart_ =
    I18nRegionsList'
    { _irlQuotaUser = Nothing
    , _irlPart = pIrlPart_
    , _irlPrettyPrint = True
    , _irlUserIP = Nothing
    , _irlHl = "en_US"
    , _irlKey = Nothing
    , _irlOAuthToken = Nothing
    , _irlFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
irlQuotaUser :: Lens' I18nRegionsList' (Maybe Text)
irlQuotaUser
  = lens _irlQuotaUser (\ s a -> s{_irlQuotaUser = a})

-- | The part parameter specifies the i18nRegion resource properties that the
-- API response will include. Set the parameter value to snippet.
irlPart :: Lens' I18nRegionsList' Text
irlPart = lens _irlPart (\ s a -> s{_irlPart = a})

-- | Returns response with indentations and line breaks.
irlPrettyPrint :: Lens' I18nRegionsList' Bool
irlPrettyPrint
  = lens _irlPrettyPrint
      (\ s a -> s{_irlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
irlUserIP :: Lens' I18nRegionsList' (Maybe Text)
irlUserIP
  = lens _irlUserIP (\ s a -> s{_irlUserIP = a})

-- | The hl parameter specifies the language that should be used for text
-- values in the API response.
irlHl :: Lens' I18nRegionsList' Text
irlHl = lens _irlHl (\ s a -> s{_irlHl = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
irlKey :: Lens' I18nRegionsList' (Maybe Key)
irlKey = lens _irlKey (\ s a -> s{_irlKey = a})

-- | OAuth 2.0 token for the current user.
irlOAuthToken :: Lens' I18nRegionsList' (Maybe OAuthToken)
irlOAuthToken
  = lens _irlOAuthToken
      (\ s a -> s{_irlOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
irlFields :: Lens' I18nRegionsList' (Maybe Text)
irlFields
  = lens _irlFields (\ s a -> s{_irlFields = a})

instance GoogleAuth I18nRegionsList' where
        authKey = irlKey . _Just
        authToken = irlOAuthToken . _Just

instance GoogleRequest I18nRegionsList' where
        type Rs I18nRegionsList' = I18nRegionListResponse
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u I18nRegionsList'{..}
          = go _irlQuotaUser (Just _irlPart)
              (Just _irlPrettyPrint)
              _irlUserIP
              (Just _irlHl)
              _irlKey
              _irlOAuthToken
              _irlFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy I18nRegionsListResource)
                      r
                      u
