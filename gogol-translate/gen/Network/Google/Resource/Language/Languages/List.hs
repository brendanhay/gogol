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
module Network.Google.Resource.Language.Languages.List
    (
    -- * REST Resource
      LanguagesListResource

    -- * Creating a Request
    , languagesList'
    , LanguagesList'

    -- * Request Lenses
    , llQuotaUser
    , llPrettyPrint
    , llUserIP
    , llKey
    , llOAuthToken
    , llTarget
    , llFields
    ) where

import           Network.Google.Prelude
import           Network.Google.Translate.Types

-- | A resource alias for @LanguageLanguagesList@ which the
-- 'LanguagesList'' request conforms to.
type LanguagesListResource =
     "v2" :>
       "languages" :>
         QueryParam "target" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] LanguagesListResponse

-- | List the source\/target languages supported by the API
--
-- /See:/ 'languagesList'' smart constructor.
data LanguagesList' = LanguagesList'
    { _llQuotaUser   :: !(Maybe Text)
    , _llPrettyPrint :: !Bool
    , _llUserIP      :: !(Maybe Text)
    , _llKey         :: !(Maybe AuthKey)
    , _llOAuthToken  :: !(Maybe OAuthToken)
    , _llTarget      :: !(Maybe Text)
    , _llFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LanguagesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llQuotaUser'
--
-- * 'llPrettyPrint'
--
-- * 'llUserIP'
--
-- * 'llKey'
--
-- * 'llOAuthToken'
--
-- * 'llTarget'
--
-- * 'llFields'
languagesList'
    :: LanguagesList'
languagesList' =
    LanguagesList'
    { _llQuotaUser = Nothing
    , _llPrettyPrint = True
    , _llUserIP = Nothing
    , _llKey = Nothing
    , _llOAuthToken = Nothing
    , _llTarget = Nothing
    , _llFields = Nothing
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
llUserIP :: Lens' LanguagesList' (Maybe Text)
llUserIP = lens _llUserIP (\ s a -> s{_llUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
llKey :: Lens' LanguagesList' (Maybe AuthKey)
llKey = lens _llKey (\ s a -> s{_llKey = a})

-- | OAuth 2.0 token for the current user.
llOAuthToken :: Lens' LanguagesList' (Maybe OAuthToken)
llOAuthToken
  = lens _llOAuthToken (\ s a -> s{_llOAuthToken = a})

-- | the language and collation in which the localized results should be
-- returned
llTarget :: Lens' LanguagesList' (Maybe Text)
llTarget = lens _llTarget (\ s a -> s{_llTarget = a})

-- | Selector specifying which fields to include in a partial response.
llFields :: Lens' LanguagesList' (Maybe Text)
llFields = lens _llFields (\ s a -> s{_llFields = a})

instance GoogleAuth LanguagesList' where
        _AuthKey = llKey . _Just
        _AuthToken = llOAuthToken . _Just

instance GoogleRequest LanguagesList' where
        type Rs LanguagesList' = LanguagesListResponse
        request = requestWith translateRequest
        requestWith rq LanguagesList'{..}
          = go _llTarget _llQuotaUser (Just _llPrettyPrint)
              _llUserIP
              _llFields
              _llKey
              _llOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy LanguagesListResource)
                      rq
