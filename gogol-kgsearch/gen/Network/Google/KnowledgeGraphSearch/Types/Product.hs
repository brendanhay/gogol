{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.KnowledgeGraphSearch.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.KnowledgeGraphSearch.Types.Product where

import Network.Google.KnowledgeGraphSearch.Types.Sum
import Network.Google.Prelude

-- | Response message includes the context and a list of matching results
-- which contain the detail of associated entities.
--
-- /See:/ 'searchResponse' smart constructor.
data SearchResponse =
  SearchResponse'
    { _srContext :: !(Maybe JSONValue)
    , _srItemListElement :: !(Maybe [JSONValue])
    , _srType :: !(Maybe JSONValue)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SearchResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srContext'
--
-- * 'srItemListElement'
--
-- * 'srType'
searchResponse
    :: SearchResponse
searchResponse =
  SearchResponse'
    {_srContext = Nothing, _srItemListElement = Nothing, _srType = Nothing}


-- | The local context applicable for the response. See more details at
-- http:\/\/www.w3.org\/TR\/json-ld\/#context-definitions.
srContext :: Lens' SearchResponse (Maybe JSONValue)
srContext
  = lens _srContext (\ s a -> s{_srContext = a})

-- | The item list of search results.
srItemListElement :: Lens' SearchResponse [JSONValue]
srItemListElement
  = lens _srItemListElement
      (\ s a -> s{_srItemListElement = a})
      . _Default
      . _Coerce

-- | The schema type of top-level JSON-LD object, e.g. ItemList.
srType :: Lens' SearchResponse (Maybe JSONValue)
srType = lens _srType (\ s a -> s{_srType = a})

instance FromJSON SearchResponse where
        parseJSON
          = withObject "SearchResponse"
              (\ o ->
                 SearchResponse' <$>
                   (o .:? "@context") <*>
                     (o .:? "itemListElement" .!= mempty)
                     <*> (o .:? "@type"))

instance ToJSON SearchResponse where
        toJSON SearchResponse'{..}
          = object
              (catMaybes
                 [("@context" .=) <$> _srContext,
                  ("itemListElement" .=) <$> _srItemListElement,
                  ("@type" .=) <$> _srType])
