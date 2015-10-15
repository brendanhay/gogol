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
-- | Retrieves the list of UrlMap resources available to the specified
-- project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeURLMapsList@.
module Network.Google.Resource.Compute.URLMaps.List
    (
    -- * REST Resource
      URLMapsListResource

    -- * Creating a Request
    , urlMapsList'
    , URLMapsList'

    -- * Request Lenses
    , umlProject
    , umlFilter
    , umlPageToken
    , umlMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeURLMapsList@ method which the
-- 'URLMapsList'' request conforms to.
type URLMapsListResource =
     Capture "project" Text :>
       "global" :>
         "urlMaps" :>
           QueryParam "filter" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Word32 :>
                 QueryParam "alt" AltJSON :> Get '[JSON] URLMapList

-- | Retrieves the list of UrlMap resources available to the specified
-- project.
--
-- /See:/ 'urlMapsList'' smart constructor.
data URLMapsList' = URLMapsList'
    { _umlProject    :: !Text
    , _umlFilter     :: !(Maybe Text)
    , _umlPageToken  :: !(Maybe Text)
    , _umlMaxResults :: !Word32
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLMapsList'' with the minimum fields required to make a request.
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
urlMapsList'
    :: Text -- ^ 'project'
    -> URLMapsList'
urlMapsList' pUmlProject_ =
    URLMapsList'
    { _umlProject = pUmlProject_
    , _umlFilter = Nothing
    , _umlPageToken = Nothing
    , _umlMaxResults = 500
    }

-- | Name of the project scoping this request.
umlProject :: Lens' URLMapsList' Text
umlProject
  = lens _umlProject (\ s a -> s{_umlProject = a})

-- | Sets a filter expression for filtering listed resources, in the form
-- filter={expression}. Your {expression} must be in the format: FIELD_NAME
-- COMPARISON_STRING LITERAL_STRING. The FIELD_NAME is the name of the
-- field you want to compare. Only atomic field types are supported
-- (string, number, boolean). The COMPARISON_STRING must be either eq
-- (equals) or ne (not equals). The LITERAL_STRING is the string value to
-- filter to. The literal value must be valid for the type of field
-- (string, number, boolean). For string fields, the literal value is
-- interpreted as a regular expression using RE2 syntax. The literal value
-- must match the entire field. For example, filter=name ne
-- example-instance.
umlFilter :: Lens' URLMapsList' (Maybe Text)
umlFilter
  = lens _umlFilter (\ s a -> s{_umlFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
umlPageToken :: Lens' URLMapsList' (Maybe Text)
umlPageToken
  = lens _umlPageToken (\ s a -> s{_umlPageToken = a})

-- | Maximum count of results to be returned.
umlMaxResults :: Lens' URLMapsList' Word32
umlMaxResults
  = lens _umlMaxResults
      (\ s a -> s{_umlMaxResults = a})

instance GoogleRequest URLMapsList' where
        type Rs URLMapsList' = URLMapList
        requestClient URLMapsList'{..}
          = go _umlProject _umlFilter _umlPageToken
              (Just _umlMaxResults)
              (Just AltJSON)
              compute
          where go
                  = buildClient (Proxy :: Proxy URLMapsListResource)
                      mempty
