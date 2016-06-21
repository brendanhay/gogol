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
-- Module      : Network.Google.Resource.Compute.GlobalOperations.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of Operation resources contained within the specified
-- project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.globalOperations.list@.
module Network.Google.Resource.Compute.GlobalOperations.List
    (
    -- * REST Resource
      GlobalOperationsListResource

    -- * Creating a Request
    , globalOperationsList
    , GlobalOperationsList

    -- * Request Lenses
    , golProject
    , golFilter
    , golPageToken
    , golMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.globalOperations.list@ method which the
-- 'GlobalOperationsList' request conforms to.
type GlobalOperationsListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "operations" :>
                 QueryParam "filter" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" (Textual Word32) :>
                       QueryParam "alt" AltJSON :> Get '[JSON] OperationList

-- | Retrieves a list of Operation resources contained within the specified
-- project.
--
-- /See:/ 'globalOperationsList' smart constructor.
data GlobalOperationsList = GlobalOperationsList'
    { _golProject    :: !Text
    , _golFilter     :: !(Maybe Text)
    , _golPageToken  :: !(Maybe Text)
    , _golMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GlobalOperationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'golProject'
--
-- * 'golFilter'
--
-- * 'golPageToken'
--
-- * 'golMaxResults'
globalOperationsList
    :: Text -- ^ 'golProject'
    -> GlobalOperationsList
globalOperationsList pGolProject_ =
    GlobalOperationsList'
    { _golProject = pGolProject_
    , _golFilter = Nothing
    , _golPageToken = Nothing
    , _golMaxResults = 500
    }

-- | Project ID for this request.
golProject :: Lens' GlobalOperationsList Text
golProject
  = lens _golProject (\ s a -> s{_golProject = a})

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
-- filter=name ne example-instance. Compute Engine Beta API Only: When
-- filtering in the Beta API, you can also filter on nested fields. For
-- example, you could filter on instances that have set the
-- scheduling.automaticRestart field to true. Use filtering on nested
-- fields to take advantage of labels to organize and search for results
-- based on label values. The Beta API also supports filtering on multiple
-- expressions by providing each separate expression within parentheses.
-- For example, (scheduling.automaticRestart eq true) (zone eq
-- us-central1-f). Multiple expressions are treated as AND expressions,
-- meaning that resources must match all expressions to pass the filters.
golFilter :: Lens' GlobalOperationsList (Maybe Text)
golFilter
  = lens _golFilter (\ s a -> s{_golFilter = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
golPageToken :: Lens' GlobalOperationsList (Maybe Text)
golPageToken
  = lens _golPageToken (\ s a -> s{_golPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests.
golMaxResults :: Lens' GlobalOperationsList Word32
golMaxResults
  = lens _golMaxResults
      (\ s a -> s{_golMaxResults = a})
      . _Coerce

instance GoogleRequest GlobalOperationsList where
        type Rs GlobalOperationsList = OperationList
        type Scopes GlobalOperationsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient GlobalOperationsList'{..}
          = go _golProject _golFilter _golPageToken
              (Just _golMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy GlobalOperationsListResource)
                      mempty
