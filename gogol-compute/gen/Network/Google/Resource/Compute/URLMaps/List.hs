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
-- Module      : Network.Google.Resource.Compute.URLMaps.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of UrlMap resources available to the specified
-- project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.urlMaps.list@.
module Network.Google.Resource.Compute.URLMaps.List
    (
    -- * REST Resource
      URLMapsListResource

    -- * Creating a Request
    , urlMapsList
    , URLMapsList

    -- * Request Lenses
    , umlProject
    , umlFilter
    , umlPageToken
    , umlMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.urlMaps.list@ method which the
-- 'URLMapsList' request conforms to.
type URLMapsListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "urlMaps" :>
                 QueryParam "filter" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" (Textual Word32) :>
                       QueryParam "alt" AltJSON :> Get '[JSON] URLMapList

-- | Retrieves the list of UrlMap resources available to the specified
-- project.
--
-- /See:/ 'urlMapsList' smart constructor.
data URLMapsList = URLMapsList
    { _umlProject    :: !Text
    , _umlFilter     :: !(Maybe Text)
    , _umlPageToken  :: !(Maybe Text)
    , _umlMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLMapsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umlProject'
--
-- * 'umlFilter'
--
-- * 'umlPageToken'
--
-- * 'umlMaxResults'
urlMapsList
    :: Text -- ^ 'umlProject'
    -> URLMapsList
urlMapsList pUmlProject_ =
    URLMapsList
    { _umlProject = pUmlProject_
    , _umlFilter = Nothing
    , _umlPageToken = Nothing
    , _umlMaxResults = 500
    }

-- | Project ID for this request.
umlProject :: Lens' URLMapsList Text
umlProject
  = lens _umlProject (\ s a -> s{_umlProject = a})

-- | Sets a filter expression for filtering listed resources, in the form
-- filter={expression}. Your {expression} must be in the format: field_name
-- comparison_string literal_string. The field_name is the name of the
-- field you want to compare. Only atomic field types are supported
-- (string, number, boolean). The comparison_string must be either eq
-- (equals) or ne (not equals). The literal_string is the string value to
-- filter to. The literal value must be valid for the type of field you are
-- filtering by (string, number, boolean). For string fields, the literal
-- value is interpreted as a regular expression using RE2 syntax. The
-- literal value must match the entire field. For example, to filter for
-- instances that do not have a name of example-instance, you would use
-- filter=name ne example-instance. Compute Engine Beta API Only: If you
-- use filtering in the Beta API, you can also filter on nested fields. For
-- example, you could filter on instances that have set the
-- scheduling.automaticRestart field to true. In particular, use filtering
-- on nested fields to take advantage of instance labels to organize and
-- filter results based on label values. The Beta API also supports
-- filtering on multiple expressions by providing each separate expression
-- within parentheses. For example, (scheduling.automaticRestart eq true)
-- (zone eq us-central1-f). Multiple expressions are treated as AND
-- expressions, meaning that resources must match all expressions to pass
-- the filters.
umlFilter :: Lens' URLMapsList (Maybe Text)
umlFilter
  = lens _umlFilter (\ s a -> s{_umlFilter = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
umlPageToken :: Lens' URLMapsList (Maybe Text)
umlPageToken
  = lens _umlPageToken (\ s a -> s{_umlPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests.
umlMaxResults :: Lens' URLMapsList Word32
umlMaxResults
  = lens _umlMaxResults
      (\ s a -> s{_umlMaxResults = a})
      . _Coerce

instance GoogleRequest URLMapsList where
        type Rs URLMapsList = URLMapList
        requestClient URLMapsList{..}
          = go _umlProject _umlFilter _umlPageToken
              (Just _umlMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy URLMapsListResource)
                      mempty
