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
-- Module      : Network.Google.Resource.Compute.TargetPools.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of TargetPool resources available to the specified
-- project and region.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetPools.list@.
module Network.Google.Resource.Compute.TargetPools.List
    (
    -- * REST Resource
      TargetPoolsListResource

    -- * Creating a Request
    , targetPoolsList
    , TargetPoolsList

    -- * Request Lenses
    , tplProject
    , tplFilter
    , tplRegion
    , tplPageToken
    , tplMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.targetPools.list@ method which the
-- 'TargetPoolsList' request conforms to.
type TargetPoolsListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "targetPools" :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" Word32 :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] TargetPoolList

-- | Retrieves the list of TargetPool resources available to the specified
-- project and region.
--
-- /See:/ 'targetPoolsList' smart constructor.
data TargetPoolsList = TargetPoolsList
    { _tplProject    :: !Text
    , _tplFilter     :: !(Maybe Text)
    , _tplRegion     :: !Text
    , _tplPageToken  :: !(Maybe Text)
    , _tplMaxResults :: !Word32
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetPoolsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tplProject'
--
-- * 'tplFilter'
--
-- * 'tplRegion'
--
-- * 'tplPageToken'
--
-- * 'tplMaxResults'
targetPoolsList
    :: Text -- ^ 'tplProject'
    -> Text -- ^ 'tplRegion'
    -> TargetPoolsList
targetPoolsList pTplProject_ pTplRegion_ =
    TargetPoolsList
    { _tplProject = pTplProject_
    , _tplFilter = Nothing
    , _tplRegion = pTplRegion_
    , _tplPageToken = Nothing
    , _tplMaxResults = 500
    }

-- | Name of the project scoping this request.
tplProject :: Lens' TargetPoolsList Text
tplProject
  = lens _tplProject (\ s a -> s{_tplProject = a})

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
tplFilter :: Lens' TargetPoolsList (Maybe Text)
tplFilter
  = lens _tplFilter (\ s a -> s{_tplFilter = a})

-- | Name of the region scoping this request.
tplRegion :: Lens' TargetPoolsList Text
tplRegion
  = lens _tplRegion (\ s a -> s{_tplRegion = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
tplPageToken :: Lens' TargetPoolsList (Maybe Text)
tplPageToken
  = lens _tplPageToken (\ s a -> s{_tplPageToken = a})

-- | Maximum count of results to be returned.
tplMaxResults :: Lens' TargetPoolsList Word32
tplMaxResults
  = lens _tplMaxResults
      (\ s a -> s{_tplMaxResults = a})

instance GoogleRequest TargetPoolsList where
        type Rs TargetPoolsList = TargetPoolList
        requestClient TargetPoolsList{..}
          = go _tplProject _tplRegion _tplFilter _tplPageToken
              (Just _tplMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetPoolsListResource)
                      mempty
