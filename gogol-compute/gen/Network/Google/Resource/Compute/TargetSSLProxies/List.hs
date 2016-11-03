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
-- Module      : Network.Google.Resource.Compute.TargetSSLProxies.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of TargetSslProxy resources available to the
-- specified project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetSslProxies.list@.
module Network.Google.Resource.Compute.TargetSSLProxies.List
    (
    -- * REST Resource
      TargetSSLProxiesListResource

    -- * Creating a Request
    , targetSSLProxiesList
    , TargetSSLProxiesList

    -- * Request Lenses
    , tsplOrderBy
    , tsplProject
    , tsplFilter
    , tsplPageToken
    , tsplMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.targetSslProxies.list@ method which the
-- 'TargetSSLProxiesList' request conforms to.
type TargetSSLProxiesListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "targetSslProxies" :>
                 QueryParam "orderBy" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" (Textual Word32) :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] TargetSSLProxyList

-- | Retrieves the list of TargetSslProxy resources available to the
-- specified project.
--
-- /See:/ 'targetSSLProxiesList' smart constructor.
data TargetSSLProxiesList = TargetSSLProxiesList'
    { _tsplOrderBy    :: !(Maybe Text)
    , _tsplProject    :: !Text
    , _tsplFilter     :: !(Maybe Text)
    , _tsplPageToken  :: !(Maybe Text)
    , _tsplMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetSSLProxiesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsplOrderBy'
--
-- * 'tsplProject'
--
-- * 'tsplFilter'
--
-- * 'tsplPageToken'
--
-- * 'tsplMaxResults'
targetSSLProxiesList
    :: Text -- ^ 'tsplProject'
    -> TargetSSLProxiesList
targetSSLProxiesList pTsplProject_ =
    TargetSSLProxiesList'
    { _tsplOrderBy = Nothing
    , _tsplProject = pTsplProject_
    , _tsplFilter = Nothing
    , _tsplPageToken = Nothing
    , _tsplMaxResults = 500
    }

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
tsplOrderBy :: Lens' TargetSSLProxiesList (Maybe Text)
tsplOrderBy
  = lens _tsplOrderBy (\ s a -> s{_tsplOrderBy = a})

-- | Project ID for this request.
tsplProject :: Lens' TargetSSLProxiesList Text
tsplProject
  = lens _tsplProject (\ s a -> s{_tsplProject = a})

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
-- filter=name ne example-instance. You can filter on nested fields. For
-- example, you could filter on instances that have set the
-- scheduling.automaticRestart field to true. Use filtering on nested
-- fields to take advantage of labels to organize and search for results
-- based on label values. To filter on multiple expressions, provide each
-- separate expression within parentheses. For example,
-- (scheduling.automaticRestart eq true) (zone eq us-central1-f). Multiple
-- expressions are treated as AND expressions, meaning that resources must
-- match all expressions to pass the filters.
tsplFilter :: Lens' TargetSSLProxiesList (Maybe Text)
tsplFilter
  = lens _tsplFilter (\ s a -> s{_tsplFilter = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
tsplPageToken :: Lens' TargetSSLProxiesList (Maybe Text)
tsplPageToken
  = lens _tsplPageToken
      (\ s a -> s{_tsplPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests.
tsplMaxResults :: Lens' TargetSSLProxiesList Word32
tsplMaxResults
  = lens _tsplMaxResults
      (\ s a -> s{_tsplMaxResults = a})
      . _Coerce

instance GoogleRequest TargetSSLProxiesList where
        type Rs TargetSSLProxiesList = TargetSSLProxyList
        type Scopes TargetSSLProxiesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient TargetSSLProxiesList'{..}
          = go _tsplProject _tsplOrderBy _tsplFilter
              _tsplPageToken
              (Just _tsplMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetSSLProxiesListResource)
                      mempty
