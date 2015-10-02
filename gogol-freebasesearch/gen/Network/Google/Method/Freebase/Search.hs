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
-- Module      : Network.Google.Method.Freebase.Search
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Search Freebase open data.
--
-- /See:/ <https://developers.google.com/freebase/ Freebase Search Reference> for @FreebaseSearch@.
module Network.Google.Method.Freebase.Search
    (
    -- * REST Resource
      SearchMethod

    -- * Creating a Request
    , search'
    , Search'

    -- * Request Lenses
    , sWithout
    , sQuotaUser
    , sPrettyPrint
    , sCursor
    , sWith
    , sUserIP
    , sDomain
    , sFormat
    , sHelp
    , sLang
    , sIndent
    , sKey
    , sOutput
    , sQuery
    , sScoring
    , sLimit
    , sFilter
    , sMqlOutput
    , sMid
    , sType
    , sStemmed
    , sOAuthToken
    , sExact
    , sSpell
    , sAsOfTime
    , sEncode
    , sPrefixed
    , sFields
    , sCallback
    ) where

import           Network.Google.FreebaseSearch.Types
import           Network.Google.Prelude

-- | A resource alias for @FreebaseSearch@ which the
-- 'Search'' request conforms to.
type SearchMethod =
     "search" :>
       QueryParam "as_of_time" Text :>
         QueryParam "callback" Text :>
           QueryParam "cursor" Int32 :>
             QueryParams "domain" Text :>
               QueryParam "encode" FreebaseSearchEncode :>
                 QueryParam "exact" Bool :>
                   QueryParams "filter" Text :>
                     QueryParam "format" FreebaseSearchFormat :>
                       QueryParam "help" FreebaseSearchHelp :>
                         QueryParam "indent" Bool :>
                           QueryParams "lang" Text :>
                             QueryParam "limit" Int32 :>
                               QueryParams "mid" Text :>
                                 QueryParam "mql_output" Text :>
                                   QueryParam "output" Text :>
                                     QueryParam "prefixed" Bool :>
                                       QueryParam "query" Text :>
                                         QueryParam "scoring"
                                           FreebaseSearchScoring
                                           :>
                                           QueryParam "spell"
                                             FreebaseSearchSpell
                                             :>
                                             QueryParam "stemmed" Bool :>
                                               QueryParams "type" Text :>
                                                 QueryParams "with" Text :>
                                                   QueryParams "without" Text :>
                                                     QueryParam "quotaUser" Text
                                                       :>
                                                       QueryParam "prettyPrint"
                                                         Bool
                                                         :>
                                                         QueryParam "userIp"
                                                           Text
                                                           :>
                                                           QueryParam "fields"
                                                             Text
                                                             :>
                                                             QueryParam "key"
                                                               Key
                                                               :>
                                                               QueryParam
                                                                 "oauth_token"
                                                                 OAuthToken
                                                                 :>
                                                                 QueryParam
                                                                   "alt"
                                                                   AltJSON
                                                                   :>
                                                                   Get '[JSON]
                                                                     ()
       :<|>
       "search" :>
         QueryParam "as_of_time" Text :>
           QueryParam "callback" Text :>
             QueryParam "cursor" Int32 :>
               QueryParams "domain" Text :>
                 QueryParam "encode" FreebaseSearchEncode :>
                   QueryParam "exact" Bool :>
                     QueryParams "filter" Text :>
                       QueryParam "format" FreebaseSearchFormat :>
                         QueryParam "help" FreebaseSearchHelp :>
                           QueryParam "indent" Bool :>
                             QueryParams "lang" Text :>
                               QueryParam "limit" Int32 :>
                                 QueryParams "mid" Text :>
                                   QueryParam "mql_output" Text :>
                                     QueryParam "output" Text :>
                                       QueryParam "prefixed" Bool :>
                                         QueryParam "query" Text :>
                                           QueryParam "scoring"
                                             FreebaseSearchScoring
                                             :>
                                             QueryParam "spell"
                                               FreebaseSearchSpell
                                               :>
                                               QueryParam "stemmed" Bool :>
                                                 QueryParams "type" Text :>
                                                   QueryParams "with" Text :>
                                                     QueryParams "without" Text
                                                       :>
                                                       QueryParam "quotaUser"
                                                         Text
                                                         :>
                                                         QueryParam
                                                           "prettyPrint"
                                                           Bool
                                                           :>
                                                           QueryParam "userIp"
                                                             Text
                                                             :>
                                                             QueryParam "fields"
                                                               Text
                                                               :>
                                                               QueryParam "key"
                                                                 Key
                                                                 :>
                                                                 QueryParam
                                                                   "oauth_token"
                                                                   OAuthToken
                                                                   :>
                                                                   QueryParam
                                                                     "alt"
                                                                     Media
                                                                     :>
                                                                     Get
                                                                       '[OctetStream]
                                                                       Stream

-- | Search Freebase open data.
--
-- /See:/ 'search'' smart constructor.
data Search' = Search'
    { _sWithout     :: !(Maybe Text)
    , _sQuotaUser   :: !(Maybe Text)
    , _sPrettyPrint :: !Bool
    , _sCursor      :: !(Maybe Int32)
    , _sWith        :: !(Maybe Text)
    , _sUserIP      :: !(Maybe Text)
    , _sDomain      :: !(Maybe Text)
    , _sFormat      :: !FreebaseSearchFormat
    , _sHelp        :: !(Maybe FreebaseSearchHelp)
    , _sLang        :: !(Maybe Text)
    , _sIndent      :: !(Maybe Bool)
    , _sKey         :: !(Maybe Key)
    , _sOutput      :: !(Maybe Text)
    , _sQuery       :: !(Maybe Text)
    , _sScoring     :: !FreebaseSearchScoring
    , _sLimit       :: !Int32
    , _sFilter      :: !(Maybe Text)
    , _sMqlOutput   :: !(Maybe Text)
    , _sMid         :: !(Maybe Text)
    , _sType        :: !(Maybe Text)
    , _sStemmed     :: !(Maybe Bool)
    , _sOAuthToken  :: !(Maybe OAuthToken)
    , _sExact       :: !(Maybe Bool)
    , _sSpell       :: !FreebaseSearchSpell
    , _sAsOfTime    :: !(Maybe Text)
    , _sEncode      :: !FreebaseSearchEncode
    , _sPrefixed    :: !(Maybe Bool)
    , _sFields      :: !(Maybe Text)
    , _sCallback    :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Search'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sWithout'
--
-- * 'sQuotaUser'
--
-- * 'sPrettyPrint'
--
-- * 'sCursor'
--
-- * 'sWith'
--
-- * 'sUserIP'
--
-- * 'sDomain'
--
-- * 'sFormat'
--
-- * 'sHelp'
--
-- * 'sLang'
--
-- * 'sIndent'
--
-- * 'sKey'
--
-- * 'sOutput'
--
-- * 'sQuery'
--
-- * 'sScoring'
--
-- * 'sLimit'
--
-- * 'sFilter'
--
-- * 'sMqlOutput'
--
-- * 'sMid'
--
-- * 'sType'
--
-- * 'sStemmed'
--
-- * 'sOAuthToken'
--
-- * 'sExact'
--
-- * 'sSpell'
--
-- * 'sAsOfTime'
--
-- * 'sEncode'
--
-- * 'sPrefixed'
--
-- * 'sFields'
--
-- * 'sCallback'
search'
    :: Search'
search' =
    Search'
    { _sWithout = Nothing
    , _sQuotaUser = Nothing
    , _sPrettyPrint = True
    , _sCursor = Nothing
    , _sWith = Nothing
    , _sUserIP = Nothing
    , _sDomain = Nothing
    , _sFormat = Entity
    , _sHelp = Nothing
    , _sLang = Nothing
    , _sIndent = Nothing
    , _sKey = Nothing
    , _sOutput = Nothing
    , _sQuery = Nothing
    , _sScoring = FSSEntity
    , _sLimit = 20
    , _sFilter = Nothing
    , _sMqlOutput = Nothing
    , _sMid = Nothing
    , _sType = Nothing
    , _sStemmed = Nothing
    , _sOAuthToken = Nothing
    , _sExact = Nothing
    , _sSpell = NoSpelling
    , _sAsOfTime = Nothing
    , _sEncode = Off
    , _sPrefixed = Nothing
    , _sFields = Nothing
    , _sCallback = Nothing
    }

-- | A rule to not match against.
sWithout :: Lens' Search' (Maybe Text)
sWithout = lens _sWithout (\ s a -> s{_sWithout = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sQuotaUser :: Lens' Search' (Maybe Text)
sQuotaUser
  = lens _sQuotaUser (\ s a -> s{_sQuotaUser = a})

-- | Returns response with indentations and line breaks.
sPrettyPrint :: Lens' Search' Bool
sPrettyPrint
  = lens _sPrettyPrint (\ s a -> s{_sPrettyPrint = a})

-- | The cursor value to use for the next page of results.
sCursor :: Lens' Search' (Maybe Int32)
sCursor = lens _sCursor (\ s a -> s{_sCursor = a})

-- | A rule to match against.
sWith :: Lens' Search' (Maybe Text)
sWith = lens _sWith (\ s a -> s{_sWith = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sUserIP :: Lens' Search' (Maybe Text)
sUserIP = lens _sUserIP (\ s a -> s{_sUserIP = a})

-- | Restrict to topics with this Freebase domain id.
sDomain :: Lens' Search' (Maybe Text)
sDomain = lens _sDomain (\ s a -> s{_sDomain = a})

-- | Structural format of the json response.
sFormat :: Lens' Search' FreebaseSearchFormat
sFormat = lens _sFormat (\ s a -> s{_sFormat = a})

-- | The keyword to request help on.
sHelp :: Lens' Search' (Maybe FreebaseSearchHelp)
sHelp = lens _sHelp (\ s a -> s{_sHelp = a})

-- | The code of the language to run the query with. Default is \'en\'.
sLang :: Lens' Search' (Maybe Text)
sLang = lens _sLang (\ s a -> s{_sLang = a})

-- | Whether to indent the json results or not.
sIndent :: Lens' Search' (Maybe Bool)
sIndent = lens _sIndent (\ s a -> s{_sIndent = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sKey :: Lens' Search' (Maybe Key)
sKey = lens _sKey (\ s a -> s{_sKey = a})

-- | An output expression to request data from matches.
sOutput :: Lens' Search' (Maybe Text)
sOutput = lens _sOutput (\ s a -> s{_sOutput = a})

-- | Query term to search for.
sQuery :: Lens' Search' (Maybe Text)
sQuery = lens _sQuery (\ s a -> s{_sQuery = a})

-- | Relevance scoring algorithm to use.
sScoring :: Lens' Search' FreebaseSearchScoring
sScoring = lens _sScoring (\ s a -> s{_sScoring = a})

-- | Maximum number of results to return.
sLimit :: Lens' Search' Int32
sLimit = lens _sLimit (\ s a -> s{_sLimit = a})

-- | A filter to apply to the query.
sFilter :: Lens' Search' (Maybe Text)
sFilter = lens _sFilter (\ s a -> s{_sFilter = a})

-- | The MQL query to run againist the results to extract more data.
sMqlOutput :: Lens' Search' (Maybe Text)
sMqlOutput
  = lens _sMqlOutput (\ s a -> s{_sMqlOutput = a})

-- | A mid to use instead of a query.
sMid :: Lens' Search' (Maybe Text)
sMid = lens _sMid (\ s a -> s{_sMid = a})

-- | Restrict to topics with this Freebase type id.
sType :: Lens' Search' (Maybe Text)
sType = lens _sType (\ s a -> s{_sType = a})

-- | Query on stemmed names and aliases. May not be used with prefixed.
sStemmed :: Lens' Search' (Maybe Bool)
sStemmed = lens _sStemmed (\ s a -> s{_sStemmed = a})

-- | OAuth 2.0 token for the current user.
sOAuthToken :: Lens' Search' (Maybe OAuthToken)
sOAuthToken
  = lens _sOAuthToken (\ s a -> s{_sOAuthToken = a})

-- | Query on exact name and keys only.
sExact :: Lens' Search' (Maybe Bool)
sExact = lens _sExact (\ s a -> s{_sExact = a})

-- | Request \'did you mean\' suggestions
sSpell :: Lens' Search' FreebaseSearchSpell
sSpell = lens _sSpell (\ s a -> s{_sSpell = a})

-- | A mql as_of_time value to use with mql_output queries.
sAsOfTime :: Lens' Search' (Maybe Text)
sAsOfTime
  = lens _sAsOfTime (\ s a -> s{_sAsOfTime = a})

-- | The encoding of the response. You can use this parameter to enable html
-- encoding.
sEncode :: Lens' Search' FreebaseSearchEncode
sEncode = lens _sEncode (\ s a -> s{_sEncode = a})

-- | Prefix match against names and aliases.
sPrefixed :: Lens' Search' (Maybe Bool)
sPrefixed
  = lens _sPrefixed (\ s a -> s{_sPrefixed = a})

-- | Selector specifying which fields to include in a partial response.
sFields :: Lens' Search' (Maybe Text)
sFields = lens _sFields (\ s a -> s{_sFields = a})

-- | JS method name for JSONP callbacks.
sCallback :: Lens' Search' (Maybe Text)
sCallback
  = lens _sCallback (\ s a -> s{_sCallback = a})

instance GoogleAuth Search' where
        authKey = sKey . _Just
        authToken = sOAuthToken . _Just

instance GoogleRequest Search' where
        type Rs Search' = ()
        request = requestWithRoute defReq freebaseSearchURL
        requestWithRoute r u Search'{..}
          = go _sAsOfTime _sCallback _sCursor _sDomain
              (Just _sEncode)
              _sExact
              _sFilter
              (Just _sFormat)
              _sHelp
              _sIndent
              _sLang
              (Just _sLimit)
              _sMid
              _sMqlOutput
              _sOutput
              _sPrefixed
              _sQuery
              (Just _sScoring)
              (Just _sSpell)
              _sStemmed
              _sType
              _sWith
              _sWithout
              _sQuotaUser
              (Just _sPrettyPrint)
              _sUserIP
              _sFields
              _sKey
              _sOAuthToken
              (Just AltJSON)
          where go :<|> _
                  = clientWithRoute (Proxy :: Proxy SearchMethod) r u

instance GoogleRequest Search' where
        type Rs (Download Search') = Stream
        request = requestWithRoute defReq freebaseSearchURL
        requestWithRoute r u Search'{..}
          = go _sAsOfTime _sCallback _sCursor _sDomain
              (Just _sEncode)
              _sExact
              _sFilter
              (Just _sFormat)
              _sHelp
              _sIndent
              _sLang
              (Just _sLimit)
              _sMid
              _sMqlOutput
              _sOutput
              _sPrefixed
              _sQuery
              (Just _sScoring)
              (Just _sSpell)
              _sStemmed
              _sType
              _sWith
              _sWithout
              _sQuotaUser
              (Just _sPrettyPrint)
              _sUserIP
              _sFields
              _sKey
              _sOAuthToken
              (Just Media)
          where go :<|> _
                  = clientWithRoute (Proxy :: Proxy SearchMethod) r u
