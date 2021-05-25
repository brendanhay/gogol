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
-- Module      : Network.Google.Resource.Compute.InstanceTemplates.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of instance templates that are contained within the
-- specified project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instanceTemplates.list@.
module Network.Google.Resource.Compute.InstanceTemplates.List
    (
    -- * REST Resource
      InstanceTemplatesListResource

    -- * Creating a Request
    , instanceTemplatesList
    , InstanceTemplatesList

    -- * Request Lenses
    , itlReturnPartialSuccess
    , itlOrderBy
    , itlProject
    , itlFilter
    , itlPageToken
    , itlMaxResults
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.instanceTemplates.list@ method which the
-- 'InstanceTemplatesList' request conforms to.
type InstanceTemplatesListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "instanceTemplates" :>
                 QueryParam "returnPartialSuccess" Bool :>
                   QueryParam "orderBy" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "maxResults" (Textual Word32) :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] InstanceTemplateList

-- | Retrieves a list of instance templates that are contained within the
-- specified project.
--
-- /See:/ 'instanceTemplatesList' smart constructor.
data InstanceTemplatesList =
  InstanceTemplatesList'
    { _itlReturnPartialSuccess :: !(Maybe Bool)
    , _itlOrderBy :: !(Maybe Text)
    , _itlProject :: !Text
    , _itlFilter :: !(Maybe Text)
    , _itlPageToken :: !(Maybe Text)
    , _itlMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstanceTemplatesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'itlReturnPartialSuccess'
--
-- * 'itlOrderBy'
--
-- * 'itlProject'
--
-- * 'itlFilter'
--
-- * 'itlPageToken'
--
-- * 'itlMaxResults'
instanceTemplatesList
    :: Text -- ^ 'itlProject'
    -> InstanceTemplatesList
instanceTemplatesList pItlProject_ =
  InstanceTemplatesList'
    { _itlReturnPartialSuccess = Nothing
    , _itlOrderBy = Nothing
    , _itlProject = pItlProject_
    , _itlFilter = Nothing
    , _itlPageToken = Nothing
    , _itlMaxResults = 500
    }


-- | Opt-in for partial success behavior which provides partial results in
-- case of failure. The default value is false.
itlReturnPartialSuccess :: Lens' InstanceTemplatesList (Maybe Bool)
itlReturnPartialSuccess
  = lens _itlReturnPartialSuccess
      (\ s a -> s{_itlReturnPartialSuccess = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- \`orderBy=\"creationTimestamp desc\"\`. This sorts results based on the
-- \`creationTimestamp\` field in reverse chronological order (newest
-- result first). Use this to sort resources like operations so that the
-- newest operation is returned first. Currently, only sorting by \`name\`
-- or \`creationTimestamp desc\` is supported.
itlOrderBy :: Lens' InstanceTemplatesList (Maybe Text)
itlOrderBy
  = lens _itlOrderBy (\ s a -> s{_itlOrderBy = a})

-- | Project ID for this request.
itlProject :: Lens' InstanceTemplatesList Text
itlProject
  = lens _itlProject (\ s a -> s{_itlProject = a})

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
itlFilter :: Lens' InstanceTemplatesList (Maybe Text)
itlFilter
  = lens _itlFilter (\ s a -> s{_itlFilter = a})

-- | Specifies a page token to use. Set \`pageToken\` to the
-- \`nextPageToken\` returned by a previous list request to get the next
-- page of results.
itlPageToken :: Lens' InstanceTemplatesList (Maybe Text)
itlPageToken
  = lens _itlPageToken (\ s a -> s{_itlPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than \`maxResults\`, Compute
-- Engine returns a \`nextPageToken\` that can be used to get the next page
-- of results in subsequent list requests. Acceptable values are \`0\` to
-- \`500\`, inclusive. (Default: \`500\`)
itlMaxResults :: Lens' InstanceTemplatesList Word32
itlMaxResults
  = lens _itlMaxResults
      (\ s a -> s{_itlMaxResults = a})
      . _Coerce

instance GoogleRequest InstanceTemplatesList where
        type Rs InstanceTemplatesList = InstanceTemplateList
        type Scopes InstanceTemplatesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient InstanceTemplatesList'{..}
          = go _itlProject _itlReturnPartialSuccess _itlOrderBy
              _itlFilter
              _itlPageToken
              (Just _itlMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstanceTemplatesListResource)
                      mempty
