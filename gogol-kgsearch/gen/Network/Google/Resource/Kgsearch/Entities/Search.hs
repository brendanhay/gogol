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
-- Module      : Network.Google.Resource.Kgsearch.Entities.Search
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches Knowledge Graph for entities that match the constraints. A list
-- of matched entities will be returned in response, which will be in
-- JSON-LD format and compatible with http:\/\/schema.org
--
-- /See:/ <https://developers.google.com/knowledge-graph/ Knowledge Graph Search API Reference> for @kgsearch.entities.search@.
module Network.Google.Resource.Kgsearch.Entities.Search
    (
    -- * REST Resource
      EntitiesSearchResource

    -- * Creating a Request
    , entitiesSearch
    , EntitiesSearch

    -- * Request Lenses
    , esXgafv
    , esUploadProtocol
    , esPrefix
    , esPp
    , esAccessToken
    , esUploadType
    , esTypes
    , esIds
    , esLanguages
    , esIndent
    , esBearerToken
    , esQuery
    , esLimit
    , esCallback
    ) where

import           Network.Google.KnowledgeGraphSearch.Types
import           Network.Google.Prelude

-- | A resource alias for @kgsearch.entities.search@ method which the
-- 'EntitiesSearch' request conforms to.
type EntitiesSearchResource =
     "v1" :>
       "entities:search" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "prefix" Bool :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParams "types" Text :>
                       QueryParams "ids" Text :>
                         QueryParams "languages" Text :>
                           QueryParam "indent" Bool :>
                             QueryParam "bearer_token" Text :>
                               QueryParam "query" Text :>
                                 QueryParam "limit" (Textual Int32) :>
                                   QueryParam "callback" Text :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON] SearchResponse

-- | Searches Knowledge Graph for entities that match the constraints. A list
-- of matched entities will be returned in response, which will be in
-- JSON-LD format and compatible with http:\/\/schema.org
--
-- /See:/ 'entitiesSearch' smart constructor.
data EntitiesSearch = EntitiesSearch'
    { _esXgafv          :: !(Maybe Xgafv)
    , _esUploadProtocol :: !(Maybe Text)
    , _esPrefix         :: !(Maybe Bool)
    , _esPp             :: !Bool
    , _esAccessToken    :: !(Maybe Text)
    , _esUploadType     :: !(Maybe Text)
    , _esTypes          :: !(Maybe [Text])
    , _esIds            :: !(Maybe [Text])
    , _esLanguages      :: !(Maybe [Text])
    , _esIndent         :: !(Maybe Bool)
    , _esBearerToken    :: !(Maybe Text)
    , _esQuery          :: !(Maybe Text)
    , _esLimit          :: !(Maybe (Textual Int32))
    , _esCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EntitiesSearch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'esXgafv'
--
-- * 'esUploadProtocol'
--
-- * 'esPrefix'
--
-- * 'esPp'
--
-- * 'esAccessToken'
--
-- * 'esUploadType'
--
-- * 'esTypes'
--
-- * 'esIds'
--
-- * 'esLanguages'
--
-- * 'esIndent'
--
-- * 'esBearerToken'
--
-- * 'esQuery'
--
-- * 'esLimit'
--
-- * 'esCallback'
entitiesSearch
    :: EntitiesSearch
entitiesSearch =
    EntitiesSearch'
    { _esXgafv = Nothing
    , _esUploadProtocol = Nothing
    , _esPrefix = Nothing
    , _esPp = True
    , _esAccessToken = Nothing
    , _esUploadType = Nothing
    , _esTypes = Nothing
    , _esIds = Nothing
    , _esLanguages = Nothing
    , _esIndent = Nothing
    , _esBearerToken = Nothing
    , _esQuery = Nothing
    , _esLimit = Nothing
    , _esCallback = Nothing
    }

-- | V1 error format.
esXgafv :: Lens' EntitiesSearch (Maybe Xgafv)
esXgafv = lens _esXgafv (\ s a -> s{_esXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
esUploadProtocol :: Lens' EntitiesSearch (Maybe Text)
esUploadProtocol
  = lens _esUploadProtocol
      (\ s a -> s{_esUploadProtocol = a})

-- | Enables prefix match against names and aliases of entities
esPrefix :: Lens' EntitiesSearch (Maybe Bool)
esPrefix = lens _esPrefix (\ s a -> s{_esPrefix = a})

-- | Pretty-print response.
esPp :: Lens' EntitiesSearch Bool
esPp = lens _esPp (\ s a -> s{_esPp = a})

-- | OAuth access token.
esAccessToken :: Lens' EntitiesSearch (Maybe Text)
esAccessToken
  = lens _esAccessToken
      (\ s a -> s{_esAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
esUploadType :: Lens' EntitiesSearch (Maybe Text)
esUploadType
  = lens _esUploadType (\ s a -> s{_esUploadType = a})

-- | Restricts returned entities with these types, e.g. Person (as defined in
-- http:\/\/schema.org\/Person). If multiple types are specified, returned
-- entities will contain one or more of these types.
esTypes :: Lens' EntitiesSearch [Text]
esTypes
  = lens _esTypes (\ s a -> s{_esTypes = a}) . _Default
      . _Coerce

-- | The list of entity id to be used for search instead of query string. To
-- specify multiple ids in the HTTP request, repeat the parameter in the
-- URL as in ...?ids=A&ids=B
esIds :: Lens' EntitiesSearch [Text]
esIds
  = lens _esIds (\ s a -> s{_esIds = a}) . _Default .
      _Coerce

-- | The list of language codes (defined in ISO 693) to run the query with,
-- e.g. \'en\'.
esLanguages :: Lens' EntitiesSearch [Text]
esLanguages
  = lens _esLanguages (\ s a -> s{_esLanguages = a}) .
      _Default
      . _Coerce

-- | Enables indenting of json results.
esIndent :: Lens' EntitiesSearch (Maybe Bool)
esIndent = lens _esIndent (\ s a -> s{_esIndent = a})

-- | OAuth bearer token.
esBearerToken :: Lens' EntitiesSearch (Maybe Text)
esBearerToken
  = lens _esBearerToken
      (\ s a -> s{_esBearerToken = a})

-- | The literal query string for search.
esQuery :: Lens' EntitiesSearch (Maybe Text)
esQuery = lens _esQuery (\ s a -> s{_esQuery = a})

-- | Limits the number of entities to be returned.
esLimit :: Lens' EntitiesSearch (Maybe Int32)
esLimit
  = lens _esLimit (\ s a -> s{_esLimit = a}) .
      mapping _Coerce

-- | JSONP
esCallback :: Lens' EntitiesSearch (Maybe Text)
esCallback
  = lens _esCallback (\ s a -> s{_esCallback = a})

instance GoogleRequest EntitiesSearch where
        type Rs EntitiesSearch = SearchResponse
        type Scopes EntitiesSearch = '[]
        requestClient EntitiesSearch'{..}
          = go _esXgafv _esUploadProtocol _esPrefix
              (Just _esPp)
              _esAccessToken
              _esUploadType
              (_esTypes ^. _Default)
              (_esIds ^. _Default)
              (_esLanguages ^. _Default)
              _esIndent
              _esBearerToken
              _esQuery
              _esLimit
              _esCallback
              (Just AltJSON)
              knowledgeGraphSearchService
          where go
                  = buildClient (Proxy :: Proxy EntitiesSearchResource)
                      mempty
