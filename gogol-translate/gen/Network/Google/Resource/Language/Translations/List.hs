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
-- Module      : Network.Google.Resource.Language.Translations.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns text translations from one language to another.
--
-- /See:/ <https://developers.google.com/translate/v2/using_rest Translate API Reference> for @LanguageTranslationsList@.
module Network.Google.Resource.Language.Translations.List
    (
    -- * REST Resource
      TranslationsListResource

    -- * Creating a Request
    , translationsList'
    , TranslationsList'

    -- * Request Lenses
    , tlQuotaUser
    , tlPrettyPrint
    , tlUserIp
    , tlFormat
    , tlQ
    , tlKey
    , tlSource
    , tlOauthToken
    , tlCid
    , tlTarget
    , tlFields
    , tlAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.Translate.Types

-- | A resource alias for @LanguageTranslationsList@ which the
-- 'TranslationsList'' request conforms to.
type TranslationsListResource =
     "v2" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "format" LanguageTranslationsListFormat :>
               QueryParams "q" Text :>
                 QueryParam "key" Text :>
                   QueryParam "source" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParams "cid" Text :>
                         QueryParam "target" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :>
                               Get '[JSON] TranslationsListResponse

-- | Returns text translations from one language to another.
--
-- /See:/ 'translationsList'' smart constructor.
data TranslationsList' = TranslationsList'
    { _tlQuotaUser   :: !(Maybe Text)
    , _tlPrettyPrint :: !Bool
    , _tlUserIp      :: !(Maybe Text)
    , _tlFormat      :: !(Maybe LanguageTranslationsListFormat)
    , _tlQ           :: !Text
    , _tlKey         :: !(Maybe Text)
    , _tlSource      :: !(Maybe Text)
    , _tlOauthToken  :: !(Maybe Text)
    , _tlCid         :: !(Maybe Text)
    , _tlTarget      :: !Text
    , _tlFields      :: !(Maybe Text)
    , _tlAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TranslationsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlQuotaUser'
--
-- * 'tlPrettyPrint'
--
-- * 'tlUserIp'
--
-- * 'tlFormat'
--
-- * 'tlQ'
--
-- * 'tlKey'
--
-- * 'tlSource'
--
-- * 'tlOauthToken'
--
-- * 'tlCid'
--
-- * 'tlTarget'
--
-- * 'tlFields'
--
-- * 'tlAlt'
translationsList'
    :: Text -- ^ 'q'
    -> Text -- ^ 'target'
    -> TranslationsList'
translationsList' pTlQ_ pTlTarget_ =
    TranslationsList'
    { _tlQuotaUser = Nothing
    , _tlPrettyPrint = True
    , _tlUserIp = Nothing
    , _tlFormat = Nothing
    , _tlQ = pTlQ_
    , _tlKey = Nothing
    , _tlSource = Nothing
    , _tlOauthToken = Nothing
    , _tlCid = Nothing
    , _tlTarget = pTlTarget_
    , _tlFields = Nothing
    , _tlAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tlQuotaUser :: Lens' TranslationsList' (Maybe Text)
tlQuotaUser
  = lens _tlQuotaUser (\ s a -> s{_tlQuotaUser = a})

-- | Returns response with indentations and line breaks.
tlPrettyPrint :: Lens' TranslationsList' Bool
tlPrettyPrint
  = lens _tlPrettyPrint
      (\ s a -> s{_tlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tlUserIp :: Lens' TranslationsList' (Maybe Text)
tlUserIp = lens _tlUserIp (\ s a -> s{_tlUserIp = a})

-- | The format of the text
tlFormat :: Lens' TranslationsList' (Maybe LanguageTranslationsListFormat)
tlFormat = lens _tlFormat (\ s a -> s{_tlFormat = a})

-- | The text to translate
tlQ :: Lens' TranslationsList' Text
tlQ = lens _tlQ (\ s a -> s{_tlQ = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tlKey :: Lens' TranslationsList' (Maybe Text)
tlKey = lens _tlKey (\ s a -> s{_tlKey = a})

-- | The source language of the text
tlSource :: Lens' TranslationsList' (Maybe Text)
tlSource = lens _tlSource (\ s a -> s{_tlSource = a})

-- | OAuth 2.0 token for the current user.
tlOauthToken :: Lens' TranslationsList' (Maybe Text)
tlOauthToken
  = lens _tlOauthToken (\ s a -> s{_tlOauthToken = a})

-- | The customization id for translate
tlCid :: Lens' TranslationsList' (Maybe Text)
tlCid = lens _tlCid (\ s a -> s{_tlCid = a})

-- | The target language into which the text should be translated
tlTarget :: Lens' TranslationsList' Text
tlTarget = lens _tlTarget (\ s a -> s{_tlTarget = a})

-- | Selector specifying which fields to include in a partial response.
tlFields :: Lens' TranslationsList' (Maybe Text)
tlFields = lens _tlFields (\ s a -> s{_tlFields = a})

-- | Data format for the response.
tlAlt :: Lens' TranslationsList' Alt
tlAlt = lens _tlAlt (\ s a -> s{_tlAlt = a})

instance GoogleRequest TranslationsList' where
        type Rs TranslationsList' = TranslationsListResponse
        request = requestWithRoute defReq translateURL
        requestWithRoute r u TranslationsList'{..}
          = go _tlQuotaUser (Just _tlPrettyPrint) _tlUserIp
              _tlFormat
              (Just _tlQ)
              _tlKey
              _tlSource
              _tlOauthToken
              _tlCid
              (Just _tlTarget)
              _tlFields
              (Just _tlAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TranslationsListResource)
                      r
                      u
