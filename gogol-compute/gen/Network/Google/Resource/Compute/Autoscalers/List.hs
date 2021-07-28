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
-- Module      : Network.Google.Resource.Compute.Autoscalers.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of autoscalers contained within the specified zone.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.autoscalers.list@.
module Network.Google.Resource.Compute.Autoscalers.List
    (
    -- * REST Resource
      AutoscalersListResource

    -- * Creating a Request
    , autoscalersList
    , AutoscalersList

    -- * Request Lenses
    , aReturnPartialSuccess
    , aOrderBy
    , aProject
    , aZone
    , aFilter
    , aPageToken
    , aMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.autoscalers.list@ method which the
-- 'AutoscalersList' request conforms to.
type AutoscalersListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "autoscalers" :>
                   QueryParam "returnPartialSuccess" Bool :>
                     QueryParam "orderBy" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] AutoscalerList

-- | Retrieves a list of autoscalers contained within the specified zone.
--
-- /See:/ 'autoscalersList' smart constructor.
data AutoscalersList =
  AutoscalersList'
    { _aReturnPartialSuccess :: !(Maybe Bool)
    , _aOrderBy :: !(Maybe Text)
    , _aProject :: !Text
    , _aZone :: !Text
    , _aFilter :: !(Maybe Text)
    , _aPageToken :: !(Maybe Text)
    , _aMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AutoscalersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aReturnPartialSuccess'
--
-- * 'aOrderBy'
--
-- * 'aProject'
--
-- * 'aZone'
--
-- * 'aFilter'
--
-- * 'aPageToken'
--
-- * 'aMaxResults'
autoscalersList
    :: Text -- ^ 'aProject'
    -> Text -- ^ 'aZone'
    -> AutoscalersList
autoscalersList pAProject_ pAZone_ =
  AutoscalersList'
    { _aReturnPartialSuccess = Nothing
    , _aOrderBy = Nothing
    , _aProject = pAProject_
    , _aZone = pAZone_
    , _aFilter = Nothing
    , _aPageToken = Nothing
    , _aMaxResults = 500
    }


-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
aReturnPartialSuccess :: Lens' AutoscalersList (Maybe Bool)
aReturnPartialSuccess
  = lens _aReturnPartialSuccess
      (\ s a -> s{_aReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
aOrderBy :: Lens' AutoscalersList (Maybe Text)
aOrderBy = lens _aOrderBy (\ s a -> s{_aOrderBy = a})

-- | Project ID for this request.
aProject :: Lens' AutoscalersList Text
aProject = lens _aProject (\ s a -> s{_aProject = a})

-- | Name of the zone for this request.
aZone :: Lens' AutoscalersList Text
aZone = lens _aZone (\ s a -> s{_aZone = a})

-- | A filter expression that filters resources listed in the response. The
-- expression must specify the field name, a comparison operator, and the
-- value that you want to use for filtering. The value must be a string, a
-- number, or a boolean. The comparison operator must be either \`=\`,
-- \`!=\`, \`>\`, or \`\<\`. For example, if you are filtering Compute
-- Engine instances, you can exclude instances named \`example-instance\`
-- by specifying \`name != example-instance\`. You can also filter nested
-- fields. For example, you could specify \`scheduling.automaticRestart =
-- false\` to include instances only if they are not scheduled for
-- automatic restarts. You can use filtering on nested fields to filter
-- based on resource labels. To filter on multiple expressions, provide
-- each separate expression within parentheses. For example: \`\`\`
-- (scheduling.automaticRestart = true) (cpuPlatform = \"Intel Skylake\")
-- \`\`\` By default, each expression is an \`AND\` expression. However,
-- you can include \`AND\` and \`OR\` expressions explicitly. For example:
-- \`\`\` (cpuPlatform = \"Intel Skylake\") OR (cpuPlatform = \"Intel
-- Broadwell\") AND (scheduling.automaticRestart = true) \`\`\`
aFilter :: Lens' AutoscalersList (Maybe Text)
aFilter = lens _aFilter (\ s a -> s{_aFilter = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
aPageToken :: Lens' AutoscalersList (Maybe Text)
aPageToken
  = lens _aPageToken (\ s a -> s{_aPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
aMaxResults :: Lens' AutoscalersList Word32
aMaxResults
  = lens _aMaxResults (\ s a -> s{_aMaxResults = a}) .
      _Coerce

instance GoogleRequest AutoscalersList where
        type Rs AutoscalersList = AutoscalerList
        type Scopes AutoscalersList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient AutoscalersList'{..}
          = go _aProject _aZone _aReturnPartialSuccess
              _aOrderBy
              _aFilter
              _aPageToken
              (Just _aMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy AutoscalersListResource)
                      mempty
