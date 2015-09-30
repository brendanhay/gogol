{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Language.Languages.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List the source\/target languages supported by the API
--
-- /See:/ <https://developers.google.com/translate/v2/using_rest Translate API Reference> for @LanguageLanguagesList@.
module Language.Languages.List
    (
    -- * REST Resource
      LanguagesListAPI

    -- * Creating a Request
    , languagesList
    , LanguagesList

    -- * Request Lenses
    , llQuotaUser
    , llPrettyPrint
    , llUserIp
    , llKey
    , llOauthToken
    , llTarget
    , llFields
    , llAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.Translate.Types

-- | A resource alias for @LanguageLanguagesList@ which the
-- 'LanguagesList' request conforms to.
type LanguagesListAPI =
     "v2" :>
       "languages" :>
         QueryParam "target" Text :>
           Get '[JSON] LanguagesListResponse

-- | List the source\/target languages supported by the API
--
-- /See:/ 'languagesList' smart constructor.
data LanguagesList = LanguagesList
    { _llQuotaUser   :: !(Maybe Text)
    , _llPrettyPrint :: !Bool
    , _llUserIp      :: !(Maybe Text)
    , _llKey         :: !(Maybe Text)
    , _llOauthToken  :: !(Maybe Text)
    , _llTarget      :: !(Maybe Text)
    , _llFields      :: !(Maybe Text)
    , _llAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LanguagesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llQuotaUser'
--
-- * 'llPrettyPrint'
--
-- * 'llUserIp'
--
-- * 'llKey'
--
-- * 'llOauthToken'
--
-- * 'llTarget'
--
-- * 'llFields'
--
-- * 'llAlt'
languagesList
    :: LanguagesList
languagesList =
    LanguagesList
    { _llQuotaUser = Nothing
    , _llPrettyPrint = True
    , _llUserIp = Nothing
    , _llKey = Nothing
    , _llOauthToken = Nothing
    , _llTarget = Nothing
    , _llFields = Nothing
    , _llAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
llQuotaUser :: Lens' LanguagesList' (Maybe Text)
llQuotaUser
  = lens _llQuotaUser (\ s a -> s{_llQuotaUser = a})

-- | Returns response with indentations and line breaks.
llPrettyPrint :: Lens' LanguagesList' Bool
llPrettyPrint
  = lens _llPrettyPrint
      (\ s a -> s{_llPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
llUserIp :: Lens' LanguagesList' (Maybe Text)
llUserIp = lens _llUserIp (\ s a -> s{_llUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
llKey :: Lens' LanguagesList' (Maybe Text)
llKey = lens _llKey (\ s a -> s{_llKey = a})

-- | OAuth 2.0 token for the current user.
llOauthToken :: Lens' LanguagesList' (Maybe Text)
llOauthToken
  = lens _llOauthToken (\ s a -> s{_llOauthToken = a})

-- | the language and collation in which the localized results should be
-- returned
llTarget :: Lens' LanguagesList' (Maybe Text)
llTarget = lens _llTarget (\ s a -> s{_llTarget = a})

-- | Selector specifying which fields to include in a partial response.
llFields :: Lens' LanguagesList' (Maybe Text)
llFields = lens _llFields (\ s a -> s{_llFields = a})

-- | Data format for the response.
llAlt :: Lens' LanguagesList' Text
llAlt = lens _llAlt (\ s a -> s{_llAlt = a})

instance GoogleRequest LanguagesList' where
        type Rs LanguagesList' = LanguagesListResponse
        request = requestWithRoute defReq translateURL
        requestWithRoute r u LanguagesList{..}
          = go _llQuotaUser _llPrettyPrint _llUserIp _llKey
              _llOauthToken
              _llTarget
              _llFields
              _llAlt
          where go
                  = clientWithRoute (Proxy :: Proxy LanguagesListAPI) r
                      u
