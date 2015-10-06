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
    , tlUserIP
    , tlFormat
    , tlQ
    , tlKey
    , tlSource
    , tlOAuthToken
    , tlCid
    , tlTarget
    , tlFields
    ) where

import           Network.Google.Prelude
import           Network.Google.Translate.Types

-- | A resource alias for @LanguageTranslationsList@ which the
-- 'TranslationsList'' request conforms to.
type TranslationsListResource =
     "v2" :>
       QueryParams "q" Text :>
         QueryParam "target" Text :>
           QueryParam "format" TranslationsListFormat :>
             QueryParam "source" Text :>
               QueryParams "cid" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] TranslationsListResponse

-- | Returns text translations from one language to another.
--
-- /See:/ 'translationsList'' smart constructor.
data TranslationsList' = TranslationsList'
    { _tlQuotaUser   :: !(Maybe Text)
    , _tlPrettyPrint :: !Bool
    , _tlUserIP      :: !(Maybe Text)
    , _tlFormat      :: !(Maybe TranslationsListFormat)
    , _tlQ           :: ![Text]
    , _tlKey         :: !(Maybe AuthKey)
    , _tlSource      :: !(Maybe Text)
    , _tlOAuthToken  :: !(Maybe OAuthToken)
    , _tlCid         :: !(Maybe [Text])
    , _tlTarget      :: !Text
    , _tlFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TranslationsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlQuotaUser'
--
-- * 'tlPrettyPrint'
--
-- * 'tlUserIP'
--
-- * 'tlFormat'
--
-- * 'tlQ'
--
-- * 'tlKey'
--
-- * 'tlSource'
--
-- * 'tlOAuthToken'
--
-- * 'tlCid'
--
-- * 'tlTarget'
--
-- * 'tlFields'
translationsList'
    :: [Text] -- ^ 'q'
    -> Text -- ^ 'target'
    -> TranslationsList'
translationsList' pTlQ_ pTlTarget_ =
    TranslationsList'
    { _tlQuotaUser = Nothing
    , _tlPrettyPrint = True
    , _tlUserIP = Nothing
    , _tlFormat = Nothing
    , _tlQ = pTlQ_
    , _tlKey = Nothing
    , _tlSource = Nothing
    , _tlOAuthToken = Nothing
    , _tlCid = Nothing
    , _tlTarget = pTlTarget_
    , _tlFields = Nothing
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
tlUserIP :: Lens' TranslationsList' (Maybe Text)
tlUserIP = lens _tlUserIP (\ s a -> s{_tlUserIP = a})

-- | The format of the text
tlFormat :: Lens' TranslationsList' (Maybe TranslationsListFormat)
tlFormat = lens _tlFormat (\ s a -> s{_tlFormat = a})

-- | The text to translate
tlQ :: Lens' TranslationsList' [Text]
tlQ = lens _tlQ (\ s a -> s{_tlQ = a}) . _Coerce

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tlKey :: Lens' TranslationsList' (Maybe AuthKey)
tlKey = lens _tlKey (\ s a -> s{_tlKey = a})

-- | The source language of the text
tlSource :: Lens' TranslationsList' (Maybe Text)
tlSource = lens _tlSource (\ s a -> s{_tlSource = a})

-- | OAuth 2.0 token for the current user.
tlOAuthToken :: Lens' TranslationsList' (Maybe OAuthToken)
tlOAuthToken
  = lens _tlOAuthToken (\ s a -> s{_tlOAuthToken = a})

-- | The customization id for translate
tlCid :: Lens' TranslationsList' [Text]
tlCid
  = lens _tlCid (\ s a -> s{_tlCid = a}) . _Default .
      _Coerce

-- | The target language into which the text should be translated
tlTarget :: Lens' TranslationsList' Text
tlTarget = lens _tlTarget (\ s a -> s{_tlTarget = a})

-- | Selector specifying which fields to include in a partial response.
tlFields :: Lens' TranslationsList' (Maybe Text)
tlFields = lens _tlFields (\ s a -> s{_tlFields = a})

instance GoogleAuth TranslationsList' where
        authKey = tlKey . _Just
        authToken = tlOAuthToken . _Just

instance GoogleRequest TranslationsList' where
        type Rs TranslationsList' = TranslationsListResponse
        request = requestWith translateRequest
        requestWith rq TranslationsList'{..}
          = go _tlQ (Just _tlTarget) _tlFormat _tlSource
              (_tlCid ^. _Default)
              _tlQuotaUser
              (Just _tlPrettyPrint)
              _tlUserIP
              _tlFields
              _tlKey
              _tlOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy TranslationsListResource)
                      rq
