{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.YouTube.I18nLanguages.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a list of application languages that the YouTube website
-- supports.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.i18nLanguages.list@.
module Network.Google.API.YouTube.I18nLanguages.List
    (
    -- * REST Resource
      I18nLanguagesListAPI

    -- * Creating a Request
    , i18nLanguagesList'
    , I18nLanguagesList'

    -- * Request Lenses
    , illQuotaUser
    , illPart
    , illPrettyPrint
    , illUserIp
    , illHl
    , illKey
    , illOauthToken
    , illFields
    , illAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for youtube.i18nLanguages.list which the
-- 'I18nLanguagesList'' request conforms to.
type I18nLanguagesListAPI =
     "i18nLanguages" :>
       QueryParam "quotaUser" Text :>
         QueryParam "part" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "hl" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :>
                         Get '[JSON] I18nLanguageListResponse

-- | Returns a list of application languages that the YouTube website
-- supports.
--
-- /See:/ 'i18nLanguagesList'' smart constructor.
data I18nLanguagesList' = I18nLanguagesList'
    { _illQuotaUser   :: !(Maybe Text)
    , _illPart        :: !Text
    , _illPrettyPrint :: !Bool
    , _illUserIp      :: !(Maybe Text)
    , _illHl          :: !Text
    , _illKey         :: !(Maybe Text)
    , _illOauthToken  :: !(Maybe Text)
    , _illFields      :: !(Maybe Text)
    , _illAlt         :: !Alt
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
-- * 'illUserIp'
--
-- * 'illHl'
--
-- * 'illKey'
--
-- * 'illOauthToken'
--
-- * 'illFields'
--
-- * 'illAlt'
i18nLanguagesList'
    :: Text -- ^ 'part'
    -> I18nLanguagesList'
i18nLanguagesList' pIllPart_ =
    I18nLanguagesList'
    { _illQuotaUser = Nothing
    , _illPart = pIllPart_
    , _illPrettyPrint = True
    , _illUserIp = Nothing
    , _illHl = "en_US"
    , _illKey = Nothing
    , _illOauthToken = Nothing
    , _illFields = Nothing
    , _illAlt = JSON
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
illUserIp :: Lens' I18nLanguagesList' (Maybe Text)
illUserIp
  = lens _illUserIp (\ s a -> s{_illUserIp = a})

-- | The hl parameter specifies the language that should be used for text
-- values in the API response.
illHl :: Lens' I18nLanguagesList' Text
illHl = lens _illHl (\ s a -> s{_illHl = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
illKey :: Lens' I18nLanguagesList' (Maybe Text)
illKey = lens _illKey (\ s a -> s{_illKey = a})

-- | OAuth 2.0 token for the current user.
illOauthToken :: Lens' I18nLanguagesList' (Maybe Text)
illOauthToken
  = lens _illOauthToken
      (\ s a -> s{_illOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
illFields :: Lens' I18nLanguagesList' (Maybe Text)
illFields
  = lens _illFields (\ s a -> s{_illFields = a})

-- | Data format for the response.
illAlt :: Lens' I18nLanguagesList' Alt
illAlt = lens _illAlt (\ s a -> s{_illAlt = a})

instance GoogleRequest I18nLanguagesList' where
        type Rs I18nLanguagesList' = I18nLanguageListResponse
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u I18nLanguagesList'{..}
          = go _illQuotaUser (Just _illPart)
              (Just _illPrettyPrint)
              _illUserIp
              (Just _illHl)
              _illKey
              _illOauthToken
              _illFields
              (Just _illAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy I18nLanguagesListAPI)
                      r
                      u
