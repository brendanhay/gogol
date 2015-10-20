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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of Operation resources contained within the specified
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
     Capture "project" Text :>
       "global" :>
         "operations" :>
           QueryParam "filter" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Word32 :>
                 QueryParam "alt" AltJSON :> Get '[JSON] OperationList

-- | Retrieves the list of Operation resources contained within the specified
-- project.
--
-- /See:/ 'globalOperationsList' smart constructor.
data GlobalOperationsList = GlobalOperationsList
    { _golProject    :: !Text
    , _golFilter     :: !(Maybe Text)
    , _golPageToken  :: !(Maybe Text)
    , _golMaxResults :: !Word32
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
    GlobalOperationsList
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
golFilter :: Lens' GlobalOperationsList (Maybe Text)
golFilter
  = lens _golFilter (\ s a -> s{_golFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
golPageToken :: Lens' GlobalOperationsList (Maybe Text)
golPageToken
  = lens _golPageToken (\ s a -> s{_golPageToken = a})

-- | Maximum count of results to be returned.
golMaxResults :: Lens' GlobalOperationsList Word32
golMaxResults
  = lens _golMaxResults
      (\ s a -> s{_golMaxResults = a})

instance GoogleRequest GlobalOperationsList where
        type Rs GlobalOperationsList = OperationList
        requestClient GlobalOperationsList{..}
          = go _golProject _golFilter _golPageToken
              (Just _golMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy GlobalOperationsListResource)
                      mempty
