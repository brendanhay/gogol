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
-- Module      : Network.Google.Method.Freebase.Search
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Search Freebase open data.
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
    , sCursor
    , sWith
    , sDomain
    , sFormat
    , sHelp
    , sLang
    , sIndent
    , sOutput
    , sQuery
    , sScoring
    , sLimit
    , sFilter
    , sMqlOutput
    , sMid
    , sType
    , sStemmed
    , sExact
    , sSpell
    , sAsOfTime
    , sEncode
    , sPrefixed
    , sCallback
    ) where

import           Network.Google.FreebaseSearch.Types
import           Network.Google.Prelude

-- | A resource alias for @FreebaseSearch@ method which the
-- 'Search'' request conforms to.
type SearchMethod =
     "search" :>
       QueryParams "without" Text :>
         QueryParam "cursor" Int32 :>
           QueryParams "with" Text :>
             QueryParams "domain" Text :>
               QueryParam "format" FreebaseSearchFormat :>
                 QueryParam "help" FreebaseSearchHelp :>
                   QueryParams "lang" Text :>
                     QueryParam "indent" Bool :>
                       QueryParam "output" Text :>
                         QueryParam "query" Text :>
                           QueryParam "scoring" FreebaseSearchScoring :>
                             QueryParam "limit" Int32 :>
                               QueryParams "filter" Text :>
                                 QueryParam "mql_output" Text :>
                                   QueryParams "mid" Text :>
                                     QueryParams "type" Text :>
                                       QueryParam "stemmed" Bool :>
                                         QueryParam "exact" Bool :>
                                           QueryParam "spell"
                                             FreebaseSearchSpell
                                             :>
                                             QueryParam "as_of_time" Text :>
                                               QueryParam "encode"
                                                 FreebaseSearchEncode
                                                 :>
                                                 QueryParam "prefixed" Bool :>
                                                   QueryParam "callback" Text :>
                                                     QueryParam "alt" AltJSON :>
                                                       Get '[JSON] ()
       :<|>
       "search" :>
         QueryParams "without" Text :>
           QueryParam "cursor" Int32 :>
             QueryParams "with" Text :>
               QueryParams "domain" Text :>
                 QueryParam "format" FreebaseSearchFormat :>
                   QueryParam "help" FreebaseSearchHelp :>
                     QueryParams "lang" Text :>
                       QueryParam "indent" Bool :>
                         QueryParam "output" Text :>
                           QueryParam "query" Text :>
                             QueryParam "scoring" FreebaseSearchScoring :>
                               QueryParam "limit" Int32 :>
                                 QueryParams "filter" Text :>
                                   QueryParam "mql_output" Text :>
                                     QueryParams "mid" Text :>
                                       QueryParams "type" Text :>
                                         QueryParam "stemmed" Bool :>
                                           QueryParam "exact" Bool :>
                                             QueryParam "spell"
                                               FreebaseSearchSpell
                                               :>
                                               QueryParam "as_of_time" Text :>
                                                 QueryParam "encode"
                                                   FreebaseSearchEncode
                                                   :>
                                                   QueryParam "prefixed" Bool :>
                                                     QueryParam "callback" Text
                                                       :>
                                                       QueryParam "alt" AltMedia
                                                         :>
                                                         Get '[OctetStream]
                                                           Stream

-- | Search Freebase open data.
--
-- /See:/ 'search'' smart constructor.
data Search' = Search'
    { _sWithout   :: !(Maybe [Text])
    , _sCursor    :: !(Maybe Int32)
    , _sWith      :: !(Maybe [Text])
    , _sDomain    :: !(Maybe [Text])
    , _sFormat    :: !FreebaseSearchFormat
    , _sHelp      :: !(Maybe FreebaseSearchHelp)
    , _sLang      :: !(Maybe [Text])
    , _sIndent    :: !(Maybe Bool)
    , _sOutput    :: !(Maybe Text)
    , _sQuery     :: !(Maybe Text)
    , _sScoring   :: !FreebaseSearchScoring
    , _sLimit     :: !Int32
    , _sFilter    :: !(Maybe [Text])
    , _sMqlOutput :: !(Maybe Text)
    , _sMid       :: !(Maybe [Text])
    , _sType      :: !(Maybe [Text])
    , _sStemmed   :: !(Maybe Bool)
    , _sExact     :: !(Maybe Bool)
    , _sSpell     :: !FreebaseSearchSpell
    , _sAsOfTime  :: !(Maybe Text)
    , _sEncode    :: !FreebaseSearchEncode
    , _sPrefixed  :: !(Maybe Bool)
    , _sCallback  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Search'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sWithout'
--
-- * 'sCursor'
--
-- * 'sWith'
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
-- * 'sCallback'
search'
    :: Search'
search' =
    Search'
    { _sWithout = Nothing
    , _sCursor = Nothing
    , _sWith = Nothing
    , _sDomain = Nothing
    , _sFormat = Entity
    , _sHelp = Nothing
    , _sLang = Nothing
    , _sIndent = Nothing
    , _sOutput = Nothing
    , _sQuery = Nothing
    , _sScoring = FSSEntity
    , _sLimit = 20
    , _sFilter = Nothing
    , _sMqlOutput = Nothing
    , _sMid = Nothing
    , _sType = Nothing
    , _sStemmed = Nothing
    , _sExact = Nothing
    , _sSpell = NoSpelling
    , _sAsOfTime = Nothing
    , _sEncode = Off
    , _sPrefixed = Nothing
    , _sCallback = Nothing
    }

-- | A rule to not match against.
sWithout :: Lens' Search' [Text]
sWithout
  = lens _sWithout (\ s a -> s{_sWithout = a}) .
      _Default
      . _Coerce

-- | The cursor value to use for the next page of results.
sCursor :: Lens' Search' (Maybe Int32)
sCursor = lens _sCursor (\ s a -> s{_sCursor = a})

-- | A rule to match against.
sWith :: Lens' Search' [Text]
sWith
  = lens _sWith (\ s a -> s{_sWith = a}) . _Default .
      _Coerce

-- | Restrict to topics with this Freebase domain id.
sDomain :: Lens' Search' [Text]
sDomain
  = lens _sDomain (\ s a -> s{_sDomain = a}) . _Default
      . _Coerce

-- | Structural format of the json response.
sFormat :: Lens' Search' FreebaseSearchFormat
sFormat = lens _sFormat (\ s a -> s{_sFormat = a})

-- | The keyword to request help on.
sHelp :: Lens' Search' (Maybe FreebaseSearchHelp)
sHelp = lens _sHelp (\ s a -> s{_sHelp = a})

-- | The code of the language to run the query with. Default is \'en\'.
sLang :: Lens' Search' [Text]
sLang
  = lens _sLang (\ s a -> s{_sLang = a}) . _Default .
      _Coerce

-- | Whether to indent the json results or not.
sIndent :: Lens' Search' (Maybe Bool)
sIndent = lens _sIndent (\ s a -> s{_sIndent = a})

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
sFilter :: Lens' Search' [Text]
sFilter
  = lens _sFilter (\ s a -> s{_sFilter = a}) . _Default
      . _Coerce

-- | The MQL query to run againist the results to extract more data.
sMqlOutput :: Lens' Search' (Maybe Text)
sMqlOutput
  = lens _sMqlOutput (\ s a -> s{_sMqlOutput = a})

-- | A mid to use instead of a query.
sMid :: Lens' Search' [Text]
sMid
  = lens _sMid (\ s a -> s{_sMid = a}) . _Default .
      _Coerce

-- | Restrict to topics with this Freebase type id.
sType :: Lens' Search' [Text]
sType
  = lens _sType (\ s a -> s{_sType = a}) . _Default .
      _Coerce

-- | Query on stemmed names and aliases. May not be used with prefixed.
sStemmed :: Lens' Search' (Maybe Bool)
sStemmed = lens _sStemmed (\ s a -> s{_sStemmed = a})

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

-- | JS method name for JSONP callbacks.
sCallback :: Lens' Search' (Maybe Text)
sCallback
  = lens _sCallback (\ s a -> s{_sCallback = a})

instance GoogleRequest Search' where
        type Rs Search' = ()
        requestClient Search'{..}
          = go (_sWithout ^. _Default) _sCursor
              (_sWith ^. _Default)
              (_sDomain ^. _Default)
              (Just _sFormat)
              _sHelp
              (_sLang ^. _Default)
              _sIndent
              _sOutput
              _sQuery
              (Just _sScoring)
              (Just _sLimit)
              (_sFilter ^. _Default)
              _sMqlOutput
              (_sMid ^. _Default)
              (_sType ^. _Default)
              _sStemmed
              _sExact
              (Just _sSpell)
              _sAsOfTime
              (Just _sEncode)
              _sPrefixed
              _sCallback
              (Just AltJSON)
              freebaseSearchService
          where go :<|> _
                  = buildClient (Proxy :: Proxy SearchMethod) mempty

instance GoogleRequest (MediaDownload Search') where
        type Rs (MediaDownload Search') = Stream
        requestClient (MediaDownload Search'{..})
          = go (_sWithout ^. _Default) _sCursor
              (_sWith ^. _Default)
              (_sDomain ^. _Default)
              (Just _sFormat)
              _sHelp
              (_sLang ^. _Default)
              _sIndent
              _sOutput
              _sQuery
              (Just _sScoring)
              (Just _sLimit)
              (_sFilter ^. _Default)
              _sMqlOutput
              (_sMid ^. _Default)
              (_sType ^. _Default)
              _sStemmed
              _sExact
              (Just _sSpell)
              _sAsOfTime
              (Just _sEncode)
              _sPrefixed
              _sCallback
              (Just AltMedia)
              freebaseSearchService
          where _ :<|> go
                  = buildClient (Proxy :: Proxy SearchMethod) mempty
