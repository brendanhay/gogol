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
-- Module      : Network.Google.Resource.YouTube.I18nLanguages.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a list of application languages that the YouTube website
-- supports.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeI18nLanguagesList@.
module Network.Google.Resource.YouTube.I18nLanguages.List
    (
    -- * REST Resource
      I18nLanguagesListResource

    -- * Creating a Request
    , i18nLanguagesList'
    , I18nLanguagesList'

    -- * Request Lenses
    , illQuotaUser
    , illPart
    , illPrettyPrint
    , illUserIP
    , illHl
    , illKey
    , illOAuthToken
    , illFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeI18nLanguagesList@ which the
-- 'I18nLanguagesList'' request conforms to.
type I18nLanguagesListResource =
     "i18nLanguages" :>
       QueryParam "hl" Text :>
         QueryParam "part" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] I18nLanguageListResponse

-- | Returns a list of application languages that the YouTube website
-- supports.
--
-- /See:/ 'i18nLanguagesList'' smart constructor.
data I18nLanguagesList' = I18nLanguagesList'
    { _illQuotaUser   :: !(Maybe Text)
    , _illPart        :: !Text
    , _illPrettyPrint :: !Bool
    , _illUserIP      :: !(Maybe Text)
    , _illHl          :: !Text
    , _illKey         :: !(Maybe Key)
    , _illOAuthToken  :: !(Maybe OAuthToken)
    , _illFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'I18nLanguagesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'illQuotaUser'
--
-- * 'illPart'
--
-- * 'illPrettyPrint'
--
-- * 'illUserIP'
--
-- * 'illHl'
--
-- * 'illKey'
--
-- * 'illOAuthToken'
--
-- * 'illFields'
i18nLanguagesList'
    :: Text -- ^ 'part'
    -> I18nLanguagesList'
i18nLanguagesList' pIllPart_ =
    I18nLanguagesList'
    { _illQuotaUser = Nothing
    , _illPart = pIllPart_
    , _illPrettyPrint = True
    , _illUserIP = Nothing
    , _illHl = "en_US"
    , _illKey = Nothing
    , _illOAuthToken = Nothing
    , _illFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
illQuotaUser :: Lens' I18nLanguagesList' (Maybe Text)
illQuotaUser
  = lens _illQuotaUser (\ s a -> s{_illQuotaUser = a})

-- | The part parameter specifies the i18nLanguage resource properties that
-- the API response will include. Set the parameter value to snippet.
illPart :: Lens' I18nLanguagesList' Text
illPart = lens _illPart (\ s a -> s{_illPart = a})

-- | Returns response with indentations and line breaks.
illPrettyPrint :: Lens' I18nLanguagesList' Bool
illPrettyPrint
  = lens _illPrettyPrint
      (\ s a -> s{_illPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
illUserIP :: Lens' I18nLanguagesList' (Maybe Text)
illUserIP
  = lens _illUserIP (\ s a -> s{_illUserIP = a})

-- | The hl parameter specifies the language that should be used for text
-- values in the API response.
illHl :: Lens' I18nLanguagesList' Text
illHl = lens _illHl (\ s a -> s{_illHl = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
illKey :: Lens' I18nLanguagesList' (Maybe Key)
illKey = lens _illKey (\ s a -> s{_illKey = a})

-- | OAuth 2.0 token for the current user.
illOAuthToken :: Lens' I18nLanguagesList' (Maybe OAuthToken)
illOAuthToken
  = lens _illOAuthToken
      (\ s a -> s{_illOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
illFields :: Lens' I18nLanguagesList' (Maybe Text)
illFields
  = lens _illFields (\ s a -> s{_illFields = a})

instance GoogleAuth I18nLanguagesList' where
        authKey = illKey . _Just
        authToken = illOAuthToken . _Just

instance GoogleRequest I18nLanguagesList' where
        type Rs I18nLanguagesList' = I18nLanguageListResponse
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u I18nLanguagesList'{..}
          = go (Just _illHl) (Just _illPart) _illQuotaUser
              (Just _illPrettyPrint)
              _illUserIP
              _illFields
              _illKey
              _illOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy I18nLanguagesListResource)
                      r
                      u
